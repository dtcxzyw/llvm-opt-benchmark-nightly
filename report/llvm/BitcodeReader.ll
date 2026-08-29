Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/BitcodeReader?download=true
inline.NumInlined: 16889
inline.NumDeleted: 7457
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZN12_GLOBAL__N_113BitcodeReaderD2Ev:bb.a
  br label %_ZNSt6vectorIPN4llvm10StructTypeESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4llvm10StructTypeESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1984
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !879  ; 3 uses
  %.not.i.i.i2 = icmp eq ptr %i.i, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIPN4llvm10StructTypeESaIS2_EED2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2000
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !880
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub i64 %i.l, %i.m
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #31
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZNSt6vectorIPN4llvm10StructTypeESaIS2_EED2Ev.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1944 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1976 ; 2 uses
  %i.q = load i8, ptr %i.p, align 8, !tbaa !536, !range !18, !noundef !19
  %i.r = trunc nuw i8 %i.q to i1
  store i8 0, ptr %i.p, align 8, !tbaa !536
  br i1 %i.r, label %bb.d, label %_ZNSt14_Optional_baseISt8functionIFvPN4llvm5ValueEjS0_IFPNS1_4TypeEjEES0_IFjjjEEEELb0ELb0EED2Ev.exit

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1960
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !10   ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i, label %_ZNSt14_Optional_baseISt8functionIFvPN4llvm5ValueEjS0_IFPNS1_4TypeEjEES0_IFjjjEEEELb0ELb0EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = tail call noundef zeroext i1 %i.t(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %i.o, i32 noundef 3) #29, !inline_history !1329 ; 0 uses
  br label %_ZNSt14_Optional_baseISt8functionIFvPN4llvm5ValueEjS0_IFPNS1_4TypeEjEES0_IFjjjEEEELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseISt8functionIFvPN4llvm5ValueEjS0_IFPNS1_4TypeEjEES0_IFjjjEEEELb0ELb0EED2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.d, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1912
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !533  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1936
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZN4llvm11SmallVectorIhLj8EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt14_Optional_baseISt8functionIFvPN4llvm5ValueEjS0_IFPNS1_4TypeEjEES0_IFjjjEEEELb0ELb0EED2Ev.exit
  tail call void @free(ptr noundef %i.w) #29
  br label %_ZN4llvm11SmallVectorIhLj8EED2Ev.exit

_ZN4llvm11SmallVectorIhLj8EED2Ev.exit:            ; preds = %_ZNSt14_Optional_baseISt8functionIFvPN4llvm5ValueEjS0_IFPNS1_4TypeEjEES0_IFjjjEEEELb0ELb0EED2Ev.exit, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1888 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !1330 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1896
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1331 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.aa, %i.ac
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN4llvm11SmallVectorIhLj8EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ai, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.aa, %_ZN4llvm11SmallVectorIhLj8EED2Ev.exit ] ; 3 uses
  %i.ad = load ptr, ptr %.05.i.i.i, align 8, !tbaa !48 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.ag = load i64, ptr %i.ae, align 8, !tbaa !47
  %i.ah = add i64 %i.ag, 1
  tail call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ah) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i3 = icmp eq ptr %i.ai, %i.ac
  br i1 %.not.i.i.i3, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1332

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.z, align 8, !tbaa !1330
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i, %_ZN4llvm11SmallVectorIhLj8EED2Ev.exit
  %i.aj = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i ], [ %i.aa, %_ZN4llvm11SmallVectorIhLj8EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1904
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1333
  %i.am = ptrtoint ptr %i.al to i64
  %i.an = ptrtoint ptr %i.aj to i64
  %i.ao = sub i64 %i.am, %i.an
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.ao) #31
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i, %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1884
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !1334 ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %_ZN4llvm8DenseMapIPKNS_6MDNodeEbNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEED2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1864
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1335
  %i.au = zext i32 %i.aq to i64                   ; 2 uses
  %i.av = shl nuw nsw i64 %i.au, 4
  %i.aw = add nuw nsw i64 %i.au, 31
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 1073741820
  %i.az = add nuw nsw i64 %i.ay, %i.av
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.at, i64 noundef %i.az, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPKNS_6MDNodeEbNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEED2Ev.exit.i

_ZN4llvm8DenseMapIPKNS_6MDNodeEbNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEED2Ev.exit.i: ; preds = %bb.h, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1860
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !1336 ; 2 uses
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %_ZN4llvm12TBAAVerifierD2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZN4llvm8DenseMapIPKNS_6MDNodeEbNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEED2Ev.exit.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1840
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !1337
  %i.bf = zext i32 %i.bb to i64                   ; 2 uses
  %i.bg = shl nuw nsw i64 %i.bf, 4
  %i.bh = add nuw nsw i64 %i.bf, 31
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = and i64 %i.bi, 1073741820
  %i.bk = add nuw nsw i64 %i.bj, %i.bg
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.be, i64 noundef %i.bk, i64 noundef 8) #29
  br label %_ZN4llvm12TBAAVerifierD2Ev.exit

_ZN4llvm12TBAAVerifierD2Ev.exit:                  ; preds = %_ZN4llvm8DenseMapIPKNS_6MDNodeEbNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_bEEED2Ev.exit.i, %bb.i
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1800
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !674 ; 3 uses
  %.not.i.i.i4 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i4, label %_ZNSt6vectorIPN4llvm8FunctionESaIS2_EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm12TBAAVerifierD2Ev.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1816
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !1338
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.br) #31
  br label %_ZNSt6vectorIPN4llvm8FunctionESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4llvm8FunctionESaIS2_EED2Ev.exit:  ; preds = %_ZN4llvm12TBAAVerifierD2Ev.exit, %bb.j
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1720 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !526 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i, label %_ZNSt5dequeIPN4llvm8FunctionESaIS2_EED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIPN4llvm8FunctionESaIS2_EED2Ev.exit
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1792
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1760
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !662 ; 2 uses
  %i.bx = load ptr, ptr %i.bu, align 8, !tbaa !1339 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = icmp ult ptr %i.bw, %i.by
  br i1 %i.bz, label %.lr.ph.i.i.i5, label %_ZNSt11_Deque_baseIPN4llvm8FunctionESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i

.lr.ph.i.i.i5:                                    ; preds = %bb.k, %.lr.ph.i.i.i5
  %.06.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i5 ], [ %i.bw, %bb.k ] ; 3 uses
  %i.ca = load ptr, ptr %.06.i.i.i, align 8, !tbaa !527
  tail call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef 512) #31
  %i.cb = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 8
  %i.cc = icmp ult ptr %.06.i.i.i, %i.bx
  br i1 %i.cc, label %.lr.ph.i.i.i5, label %_ZNSt11_Deque_baseIPN4llvm8FunctionESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i, !llvm.loop !1340

_ZNSt11_Deque_baseIPN4llvm8FunctionESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i5
  %.pre.i.i = load ptr, ptr %i.bs, align 8, !tbaa !526
  br label %_ZNSt11_Deque_baseIPN4llvm8FunctionESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i

_ZNSt11_Deque_baseIPN4llvm8FunctionESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i: ; preds = %_ZNSt11_Deque_baseIPN4llvm8FunctionESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i, %bb.k
  %i.cd = phi ptr [ %.pre.i.i, %_ZNSt11_Deque_baseIPN4llvm8FunctionESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.loopexit.i.i ], [ %i.bt, %bb.k ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1728
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !525
  %i.cg = shl i64 %i.cf, 3
  tail call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.cg) #31
  br label %_ZNSt5dequeIPN4llvm8FunctionESaIS2_EED2Ev.exit

_ZNSt5dequeIPN4llvm8FunctionESaIS2_EED2Ev.exit:   ; preds = %_ZNSt6vectorIPN4llvm8FunctionESaIS2_EED2Ev.exit, %_ZNSt11_Deque_baseIPN4llvm8FunctionESaIS2_EE16_M_destroy_nodesEPPS2_S6_.exit.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1696 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1716 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !670 ; 2 uses
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %_ZN4llvm8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %_ZNSt5dequeIPN4llvm8FunctionESaIS2_EED2Ev.exit
  %i.cl = load ptr, ptr %i.ch, align 8, !tbaa !663
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1704
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !669
  %i.co = zext i32 %i.cj to i64
  %i.cp = add nuw nsw i64 %i.co, 31
  %i.cq = lshr i64 %i.cp, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.i.i
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !101 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.cs, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ct = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.l

bb.l:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.cs, %.lr.ph.i.i ], [ %i.dg, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.cu = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.cv = or disjoint i32 %i.cu, %i.ct
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw [32 x i8], ptr %i.cl, i64 %i.cw ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !1341 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !1342
  %i.dc = ptrtoint ptr %i.db to i64
  %i.dd = ptrtoint ptr %i.cz to i64
  %i.de = sub i64 %i.dc, %i.dd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.de) #31
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.m, %bb.l
  %i.df = add i32 %.0.i3.i.i, -1
  %i.dg = and i32 %i.df, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.dg, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.l, !llvm.loop !1343

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i6 = icmp eq i64 %indvars.iv.next.i.i, %i.cq
  br i1 %.not.i.i.i6, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !1344

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i7 = load i32, ptr %i.ci, align 4, !tbaa !670 ; 2 uses
  %i.dh = icmp eq i32 %.pr.i7, 0
  br i1 %i.dh, label %_ZN4llvm8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit.i
  %i.di = load ptr, ptr %i.ch, align 8, !tbaa !663
  %i.dj = zext i32 %.pr.i7 to i64                 ; 2 uses
  %i.dk = shl nuw nsw i64 %i.dj, 5
  %i.dl = add nuw nsw i64 %i.dj, 31
  %i.dm = lshr i64 %i.dl, 3
  %i.dn = and i64 %i.dm, 1073741820
  %i.do = add nuw nsw i64 %i.dn, %i.dk
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.di, i64 noundef %i.do, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit: ; preds = %_ZNSt5dequeIPN4llvm8FunctionESaIS2_EED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit.i, %bb.n
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 1672
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !879 ; 3 uses
  %.not.i.i.i8 = icmp eq ptr %i.dq, null
  br i1 %.not.i.i.i8, label %_ZNSt6vectorImSaImEED2Ev.exit9, label %bb.o

bb.o:                                             ; preds = %_ZN4llvm8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 1688
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !880
  %i.dt = ptrtoint ptr %i.ds to i64
  %i.du = ptrtoint ptr %i.dq to i64
  %i.dv = sub i64 %i.dt, %i.du
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dq, i64 noundef %i.dv) #31
  br label %_ZNSt6vectorImSaImEED2Ev.exit9

_ZNSt6vectorImSaImEED2Ev.exit9:                   ; preds = %_ZN4llvm8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit, %bb.o
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 1668
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !1345 ; 2 uses
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %_ZN4llvm8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEED2Ev.exit, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit9
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 1648
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !1346
  %i.eb = zext i32 %i.dx to i64                   ; 2 uses
  %i.ec = shl nuw nsw i64 %i.eb, 4
  %i.ed = add nuw nsw i64 %i.eb, 31
  %i.ee = lshr i64 %i.ed, 3
  %i.ef = and i64 %i.ee, 1073741820
  %i.eg = add nuw nsw i64 %i.ef, %i.ec
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ea, i64 noundef %i.eg, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEED2Ev.exit

_ZN4llvm8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEED2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit9, %bb.p
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 1636
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !1347 ; 2 uses
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %_ZN4llvm8DenseMapIPNS_8FunctionES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %_ZN4llvm8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEED2Ev.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 1616
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !1348
  %i.em = zext i32 %i.ei to i64                   ; 2 uses
  %i.en = shl nuw nsw i64 %i.em, 4
  %i.eo = add nuw nsw i64 %i.em, 31
  %i.ep = lshr i64 %i.eo, 3
  %i.eq = and i64 %i.ep, 1073741820
  %i.er = add nuw nsw i64 %i.eq, %i.en
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.el, i64 noundef %i.er, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPNS_8FunctionES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_8FunctionES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEED2Ev.exit, %bb.q
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 1592
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !674 ; 3 uses
  %.not.i.i.i10 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIPN4llvm8FunctionESaIS2_EED2Ev.exit11, label %bb.r

bb.r:                                             ; preds = %_ZN4llvm8DenseMapIPNS_8FunctionES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 1608
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !1338
  %i.ew = ptrtoint ptr %i.ev to i64
  %i.ex = ptrtoint ptr %i.et to i64
  %i.ey = sub i64 %i.ew, %i.ex
  tail call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.ey) #31
  br label %_ZNSt6vectorIPN4llvm8FunctionESaIS2_EED2Ev.exit11

_ZNSt6vectorIPN4llvm8FunctionESaIS2_EED2Ev.exit11: ; preds = %_ZN4llvm8DenseMapIPNS_8FunctionES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit, %bb.r
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 1568
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !1341 ; 3 uses
  %.not.i.i.i12 = icmp eq ptr %i.fa, null
  br i1 %.not.i.i.i12, label %_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIPN4llvm8FunctionESaIS2_EED2Ev.exit11
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 1584
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !1342
  %i.fd = ptrtoint ptr %i.fc to i64
  %i.fe = ptrtoint ptr %i.fa to i64
  %i.ff = sub i64 %i.fd, %i.fe
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fa, i64 noundef %i.ff) #31
  br label %_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN4llvm8FunctionESaIS2_EED2Ev.exit11, %bb.s
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 1520
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !522
  tail call void @_ZNSt8_Rb_treeIjSt4pairIKjN4llvm13AttributeListEESt10_Select1stIS4_ESt4lessIjESaIS4_EE8_M_eraseEPSt13_Rb_tree_nodeIS4_E(ptr noundef nonnull align 8 dereferenceable(48) %i.fg, ptr noundef %i.fi)
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 1496
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !1349 ; 3 uses
  %.not.i.i.i13 = icmp eq ptr %i.fk, null
  br i1 %.not.i.i.i13, label %_ZNSt6vectorIN4llvm13AttributeListESaIS1_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EED2Ev.exit
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !1350
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = ptrtoint ptr %i.fk to i64
  %i.fp = sub i64 %i.fn, %i.fo
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fk, i64 noundef %i.fp) #31
  br label %_ZNSt6vectorIN4llvm13AttributeListESaIS1_EED2Ev.exit

_ZNSt6vectorIN4llvm13AttributeListESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EED2Ev.exit, %bb.t
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 1472
  %.val = load ptr, ptr %i.fq, align 8, !tbaa !1351 ; 3 uses
  %.not.i.i.i14 = icmp eq ptr %.val, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIN12_GLOBAL__N_113BitcodeReader19FunctionOperandInfoESaIS2_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN4llvm13AttributeListESaIS1_EED2Ev.exit
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 1488
  %.val1 = load ptr, ptr %i.fr, align 8, !tbaa !1352
  %i.fs = ptrtoint ptr %.val1 to i64
  %i.ft = ptrtoint ptr %.val to i64
  %i.fu = sub i64 %i.fs, %i.ft
  tail call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.fu) #31
  br label %_ZNSt6vectorIN12_GLOBAL__N_113BitcodeReader19FunctionOperandInfoESaIS2_EED2Ev.exit

_ZNSt6vectorIN12_GLOBAL__N_113BitcodeReader19FunctionOperandInfoESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN4llvm13AttributeListESaIS1_EED2Ev.exit, %bb.u
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !1353 ; 3 uses
  %.not.i.i.i15 = icmp eq ptr %i.fw, null
  br i1 %.not.i.i.i15, label %_ZNSt6vectorISt4pairIPN4llvm11GlobalValueEjESaIS4_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN12_GLOBAL__N_113BitcodeReader19FunctionOperandInfoESaIS2_EED2Ev.exit
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !1354
  %i.fz = ptrtoint ptr %i.fy to i64
  %i.ga = ptrtoint ptr %i.fw to i64
  %i.gb = sub i64 %i.fz, %i.ga
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fw, i64 noundef %i.gb) #31
  br label %_ZNSt6vectorISt4pairIPN4llvm11GlobalValueEjESaIS4_EED2Ev.exit

_ZNSt6vectorISt4pairIPN4llvm11GlobalValueEjESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorIN12_GLOBAL__N_113BitcodeReader19FunctionOperandInfoESaIS2_EED2Ev.exit, %bb.v
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 1424
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !1355 ; 3 uses
  %.not.i.i.i16 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorISt4pairIPN4llvm14GlobalVariableEjESaIS4_EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorISt4pairIPN4llvm11GlobalValueEjESaIS4_EED2Ev.exit
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !1356
  %i.gg = ptrtoint ptr %i.gf to i64
  %i.gh = ptrtoint ptr %i.gd to i64
  %i.gi = sub i64 %i.gg, %i.gh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gd, i64 noundef %i.gi) #31
  br label %_ZNSt6vectorISt4pairIPN4llvm14GlobalVariableEjESaIS4_EED2Ev.exit

_ZNSt6vectorISt4pairIPN4llvm14GlobalVariableEjESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIPN4llvm11GlobalValueEjESaIS4_EED2Ev.exit, %bb.w
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !21 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.gm = icmp eq ptr %i.gk, %i.gl
  br i1 %i.gm, label %_ZN4llvm11SmallVectorIPNS_11InstructionELj64EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorISt4pairIPN4llvm14GlobalVariableEjESaIS4_EED2Ev.exit
  tail call void @free(ptr noundef %i.gk) #29
  br label %_ZN4llvm11SmallVectorIPNS_11InstructionELj64EED2Ev.exit

_ZN4llvm11SmallVectorIPNS_11InstructionELj64EED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairIPN4llvm14GlobalVariableEjESaIS4_EED2Ev.exit, %bb.x
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 892
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !1357 ; 2 uses
  %i.gp = icmp eq i32 %i.go, 0
  br i1 %i.gp, label %_ZN4llvm6detail12DenseSetImplIPNS_12GlobalObjectENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN4llvm11SmallVectorIPNS_11InstructionELj64EED2Ev.exit
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !1358
  %i.gs = zext i32 %i.go to i64                   ; 2 uses
  %i.gt = shl nuw nsw i64 %i.gs, 3
  %i.gu = add nuw nsw i64 %i.gs, 31
  %i.gv = lshr i64 %i.gu, 3
  %i.gw = and i64 %i.gv, 1073741820
  %i.gx = add nuw nsw i64 %i.gw, %i.gt
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.gr, i64 noundef %i.gx, i64 noundef 8) #29
  br label %_ZN4llvm6detail12DenseSetImplIPNS_12GlobalObjectENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit

_ZN4llvm6detail12DenseSetImplIPNS_12GlobalObjectENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit: ; preds = %_ZN4llvm11SmallVectorIPNS_11InstructionELj64EED2Ev.exit, %bb.y
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !1359 ; 3 uses
  %.not.i.i.i17 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i17, label %_ZNSt6vectorIPN4llvm6ComdatESaIS2_EED2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZN4llvm6detail12DenseSetImplIPNS_12GlobalObjectENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !1360
  %i.hc = ptrtoint ptr %i.hb to i64
  %i.hd = ptrtoint ptr %i.gz to i64
  %i.he = sub i64 %i.hc, %i.hd
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gz, i64 noundef %i.he) #31
  br label %_ZNSt6vectorIPN4llvm6ComdatESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4llvm6ComdatESaIS2_EED2Ev.exit:    ; preds = %_ZN4llvm6detail12DenseSetImplIPNS_12GlobalObjectENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEED2Ev.exit, %bb.z
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 840 ; 2 uses
  %i.hg = load i8, ptr %i.hf, align 8, !tbaa !520, !range !18, !noundef !19
  %i.hh = trunc nuw i8 %i.hg to i1
  store i8 0, ptr %i.hf, align 8, !tbaa !520
  br i1 %i.hh, label %bb.aa, label %_ZNSt14_Optional_baseIN4llvm14MetadataLoaderELb0ELb0EED2Ev.exit

bb.aa:                                            ; preds = %_ZNSt6vectorIPN4llvm6ComdatESaIS2_EED2Ev.exit
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 832
  tail call void @_ZN4llvm14MetadataLoaderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(16) %i.hi) #29
  br label %_ZNSt14_Optional_baseIN4llvm14MetadataLoaderELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm14MetadataLoaderELb0ELb0EED2Ev.exit: ; preds = %_ZNSt6vectorIPN4llvm6ComdatESaIS2_EED2Ev.exit, %bb.aa
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 768 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.hl = load ptr, ptr %i.hk, align 8, !tbaa !10 ; 2 uses
  %.not.i.i18 = icmp eq ptr %i.hl, null
  br i1 %.not.i.i18, label %_ZNSt14_Function_baseD2Ev.exit.i, label %bb.ab

bb.ab:                                            ; preds = %_ZNSt14_Optional_baseIN4llvm14MetadataLoaderELb0ELb0EED2Ev.exit
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.hn = tail call noundef zeroext i1 %i.hl(ptr noundef nonnull align 8 dereferenceable(32) %i.hm, ptr noundef nonnull align 8 dereferenceable(32) %i.hm, i32 noundef 3) #29, !inline_history !1361 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit.i

_ZNSt14_Function_baseD2Ev.exit.i:                 ; preds = %bb.ab, %_ZNSt14_Optional_baseIN4llvm14MetadataLoaderELb0ELb0EED2Ev.exit
  %i.ho = load ptr, ptr %i.hj, align 8, !tbaa !1362 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 776
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !1363 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.ho, %i.hq
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIN4llvm14WeakTrackingVHEjEEvT_S5_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt14_Function_baseD2Ev.exit.i, %_ZSt8_DestroyISt4pairIN4llvm14WeakTrackingVHEjEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.ht, %_ZSt8_DestroyISt4pairIN4llvm14WeakTrackingVHEjEEvPT_.exit.i.i.i.i ], [ %i.ho, %_ZNSt14_Function_baseD2Ev.exit.i ] ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !1364
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.hs, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt4pairIN4llvm14WeakTrackingVHEjEEvPT_.exit.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph.i.i.i.i
  tail call void @_ZN4llvm15ValueHandleBase17RemoveFromUseListEv(ptr noundef nonnull align 8 dereferenceable(28) %.05.i.i.i.i) #29
  br label %_ZSt8_DestroyISt4pairIN4llvm14WeakTrackingVHEjEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt4pairIN4llvm14WeakTrackingVHEjEEvPT_.exit.i.i.i.i: ; preds = %bb.ac, %.lr.ph.i.i.i.i
  %i.ht = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ht, %i.hq
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt4pairIN4llvm14WeakTrackingVHEjEEvT_S5_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1370

_ZSt8_DestroyIPSt4pairIN4llvm14WeakTrackingVHEjEEvT_S5_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyISt4pairIN4llvm14WeakTrackingVHEjEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.hj, align 8, !tbaa !1362
  br label %_ZSt8_DestroyIPSt4pairIN4llvm14WeakTrackingVHEjEEvT_S5_.exit.i.i

_ZSt8_DestroyIPSt4pairIN4llvm14WeakTrackingVHEjEEvT_S5_.exit.i.i: ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm14WeakTrackingVHEjEEvT_S5_.exitthread-pre-split.i.i, %_ZNSt14_Function_baseD2Ev.exit.i
  %i.hu = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPSt4pairIN4llvm14WeakTrackingVHEjEEvT_S5_.exitthread-pre-split.i.i ], [ %i.ho, %_ZNSt14_Function_baseD2Ev.exit.i ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.hu, null
  br i1 %.not.i.i1.i.i, label %_ZN4llvm22BitcodeReaderValueListD2Ev.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm14WeakTrackingVHEjEEvT_S5_.exit.i.i
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !1371
  %i.hx = ptrtoint ptr %i.hw to i64
  %i.hy = ptrtoint ptr %i.hu to i64
  %i.hz = sub i64 %i.hx, %i.hy
  tail call void @_ZdlPvm(ptr noundef nonnull %i.hu, i64 noundef %i.hz) #31
  br label %_ZN4llvm22BitcodeReaderValueListD2Ev.exit

_ZN4llvm22BitcodeReaderValueListD2Ev.exit:        ; preds = %_ZSt8_DestroyIPSt4pairIN4llvm14WeakTrackingVHEjEEvT_S5_.exit.i.i, %bb.ad
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 688
  tail call void @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ia) #29
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !1372 ; 2 uses
  %i.id = icmp eq i32 %i.ic, 0
  br i1 %i.id, label %_ZN4llvm8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN4llvm22BitcodeReaderValueListD2Ev.exit
  %i.ie = getelementptr inbounds nuw i8, ptr %0, i64 664
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !1373
  %i.ig = zext i32 %i.ic to i64                   ; 2 uses
  %i.ih = shl nuw nsw i64 %i.ig, 4
  %i.ii = add nuw nsw i64 %i.ig, 31
  %i.ij = lshr i64 %i.ii, 3
  %i.ik = and i64 %i.ij, 1073741820
  %i.il = add nuw nsw i64 %i.ik, %i.ih
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.if, i64 noundef %i.il, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit

_ZN4llvm8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit: ; preds = %_ZN4llvm22BitcodeReaderValueListD2Ev.exit, %bb.ae
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 660
  %i.in = load i32, ptr %i.im, align 4, !tbaa !1374 ; 2 uses
  %i.io = icmp eq i32 %i.in, 0
  br i1 %i.io, label %_ZN4llvm8DenseMapISt4pairIPNS_4TypeEjEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEED2Ev.exit, label %bb.af

bb.af:                                            ; preds = %_ZN4llvm8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !1375
  %i.ir = zext i32 %i.in to i64                   ; 2 uses
  %i.is = mul nuw nsw i64 %i.ir, 24
  %i.it = add nuw nsw i64 %i.ir, 31
  %i.iu = lshr i64 %i.it, 3
  %i.iv = and i64 %i.iu, 1073741820
  %i.iw = add nuw nsw i64 %i.iv, %i.is
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.iq, i64 noundef %i.iw, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapISt4pairIPNS_4TypeEjEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEED2Ev.exit

_ZN4llvm8DenseMapISt4pairIPNS_4TypeEjEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit, %bb.af
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 616 ; 2 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 636 ; 2 uses
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !1376 ; 2 uses
  %i.ja = icmp eq i32 %i.iz, 0
  br i1 %i.ja, label %_ZN4llvm8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit, label %.lr.ph7.preheader.i.i19

.lr.ph7.preheader.i.i19:                          ; preds = %_ZN4llvm8DenseMapISt4pairIPNS_4TypeEjEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEED2Ev.exit
  %i.jb = load ptr, ptr %i.ix, align 8, !tbaa !1377
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !1378
  %i.je = zext i32 %i.iz to i64
  %i.jf = add nuw nsw i64 %i.je, 31
  %i.jg = lshr i64 %i.jf, 5
  br label %.lr.ph7.i.i20

.lr.ph7.i.i20:                                    ; preds = %._crit_edge.i.i27, %.lr.ph7.preheader.i.i19
  %indvars.iv.i.i21 = phi i64 [ 0, %.lr.ph7.preheader.i.i19 ], [ %indvars.iv.next.i.i28, %._crit_edge.i.i27 ] ; 3 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.jd, i64 %indvars.iv.i.i21
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !101 ; 2 uses
  %.not11.i2.i.i22 = icmp eq i32 %i.ji, 0
  br i1 %.not11.i2.i.i22, label %._crit_edge.i.i27, label %.lr.ph.i.i23

.lr.ph.i.i23:                                     ; preds = %.lr.ph7.i.i20
  %indvars.iv.tr.i.i24 = trunc nuw i64 %indvars.iv.i.i21 to i32
  %i.jj = shl nuw i32 %indvars.iv.tr.i.i24, 5
  br label %bb.ag

bb.ag:                                            ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i23
  %.0.i3.i.i25 = phi i32 [ %i.ji, %.lr.ph.i.i23 ], [ %i.jt, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.jk = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i25, i1 true)
  %i.jl = or disjoint i32 %i.jk, %i.jj
  %i.jm = zext i32 %i.jl to i64
  %i.jn = getelementptr inbounds nuw [32 x i8], ptr %i.jb, i64 %i.jm ; 2 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8, !tbaa !21 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 24
  %i.jr = icmp eq ptr %i.jp, %i.jq
  br i1 %i.jr, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @free(ptr noundef %i.jp) #29
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.ah, %bb.ag
  %i.js = add i32 %.0.i3.i.i25, -1
  %i.jt = and i32 %i.js, %.0.i3.i.i25             ; 2 uses
  %.not11.i.i.i26 = icmp eq i32 %i.jt, 0
  br i1 %.not11.i.i.i26, label %._crit_edge.i.i27, label %bb.ag, !llvm.loop !1379

._crit_edge.i.i27:                                ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i20
  %indvars.iv.next.i.i28 = add nuw nsw i64 %indvars.iv.i.i21, 1 ; 2 uses
  %.not.i.i.i29 = icmp eq i64 %indvars.iv.next.i.i28, %i.jg
  br i1 %.not.i.i.i29, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEv.exit.i, label %.lr.ph7.i.i20, !llvm.loop !1380

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i27
  %.pr.i30 = load i32, ptr %i.iy, align 4, !tbaa !1376 ; 2 uses
  %i.ju = icmp eq i32 %.pr.i30, 0
  br i1 %i.ju, label %_ZN4llvm8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit, label %bb.ai

bb.ai:                                            ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEv.exit.i
  %i.jv = load ptr, ptr %i.ix, align 8, !tbaa !1377
  %i.jw = zext i32 %.pr.i30 to i64                ; 2 uses
  %i.jx = shl nuw nsw i64 %i.jw, 5
  %i.jy = add nuw nsw i64 %i.jw, 31
  %i.jz = lshr i64 %i.jy, 3
  %i.ka = and i64 %i.jz, 1073741820
  %i.kb = add nuw nsw i64 %i.ka, %i.jx
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.jv, i64 noundef %i.kb, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit

_ZN4llvm8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit: ; preds = %_ZN4llvm8DenseMapISt4pairIPNS_4TypeEjEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEED2Ev.exit, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEv.exit.i, %bb.ai
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !1381 ; 3 uses
  %.not.i.i.i31 = icmp eq ptr %i.kd, null
  br i1 %.not.i.i.i31, label %_ZNSt6vectorIPN4llvm4TypeESaIS2_EED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZN4llvm8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 608
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !1382
  %i.kg = ptrtoint ptr %i.kf to i64
  %i.kh = ptrtoint ptr %i.kd to i64
  %i.ki = sub i64 %i.kg, %i.kh
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kd, i64 noundef %i.ki) #31
  br label %_ZNSt6vectorIPN4llvm4TypeESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4llvm4TypeESaIS2_EED2Ev.exit:      ; preds = %_ZN4llvm8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit, %bb.aj
  %i.kj = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 2 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !1330 ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !1331 ; 2 uses
  %.not4.i.i.i32 = icmp eq ptr %i.kk, %i.km
  br i1 %.not4.i.i.i32, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i40, label %.lr.ph.i.i.i33

.lr.ph.i.i.i33:                                   ; preds = %_ZNSt6vectorIPN4llvm4TypeESaIS2_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i36
  %.05.i.i.i34 = phi ptr [ %i.ks, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i36 ], [ %i.kk, %_ZNSt6vectorIPN4llvm4TypeESaIS2_EED2Ev.exit ] ; 3 uses
  %i.kn = load ptr, ptr %.05.i.i.i34, align 8, !tbaa !48 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.05.i.i.i34, i64 16 ; 2 uses
  %i.kp = icmp eq ptr %i.kn, %i.ko
  br i1 %i.kp, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i35: ; preds = %.lr.ph.i.i.i33
  %i.kq = load i64, ptr %i.ko, align 8, !tbaa !47
  %i.kr = add i64 %i.kq, 1
  tail call void @_ZdlPvm(ptr noundef %i.kn, i64 noundef %i.kr) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i36

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i36: ; preds = %.lr.ph.i.i.i33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i35
  %i.ks = getelementptr inbounds nuw i8, ptr %.05.i.i.i34, i64 32 ; 2 uses
  %.not.i.i.i37 = icmp eq ptr %i.ks, %i.km
  br i1 %.not.i.i.i37, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i38, label %.lr.ph.i.i.i33, !llvm.loop !1332

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i38: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i36
  %.pr.i39 = load ptr, ptr %i.kj, align 8, !tbaa !1330
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i40

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i40: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i38, %_ZNSt6vectorIPN4llvm4TypeESaIS2_EED2Ev.exit
  %i.kt = phi ptr [ %.pr.i39, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i38 ], [ %i.kk, %_ZNSt6vectorIPN4llvm4TypeESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i41 = icmp eq ptr %i.kt, null
  br i1 %.not.i.i1.i41, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit43, label %bb.ak

bb.ak:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i40
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !1333
  %i.kw = ptrtoint ptr %i.kv to i64
  %i.kx = ptrtoint ptr %i.kt to i64
  %i.ky = sub i64 %i.kw, %i.kx
  tail call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef %i.ky) #31
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit43

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit43: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i40, %bb.ak
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !1330 ; 3 uses
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !1331 ; 2 uses
  %.not4.i.i.i44 = icmp eq ptr %i.la, %i.lc
  br i1 %.not4.i.i.i44, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i52, label %.lr.ph.i.i.i45

.lr.ph.i.i.i45:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit43, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i48
  %.05.i.i.i46 = phi ptr [ %i.li, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i48 ], [ %i.la, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit43 ] ; 3 uses
  %i.ld = load ptr, ptr %.05.i.i.i46, align 8, !tbaa !48 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.05.i.i.i46, i64 16 ; 2 uses
  %i.lf = icmp eq ptr %i.ld, %i.le
  br i1 %i.lf, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i47: ; preds = %.lr.ph.i.i.i45
  %i.lg = load i64, ptr %i.le, align 8, !tbaa !47
  %i.lh = add i64 %i.lg, 1
  tail call void @_ZdlPvm(ptr noundef %i.ld, i64 noundef %i.lh) #31
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i48

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i48: ; preds = %.lr.ph.i.i.i45, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i47
  %i.li = getelementptr inbounds nuw i8, ptr %.05.i.i.i46, i64 32 ; 2 uses
  %.not.i.i.i49 = icmp eq ptr %i.li, %i.lc
  br i1 %.not.i.i.i49, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i50, label %.lr.ph.i.i.i45, !llvm.loop !1332

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i50: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i48
  %.pr.i51 = load ptr, ptr %i.kz, align 8, !tbaa !1330
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i52

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i52: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i50, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit43
  %i.lj = phi ptr [ %.pr.i51, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exitthread-pre-split.i50 ], [ %i.la, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit43 ] ; 3 uses
  %.not.i.i1.i53 = icmp eq ptr %i.lj, null
  br i1 %.not.i.i1.i53, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit55, label %bb.al

bb.al:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i52
  %i.lk = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !1333
  %i.lm = ptrtoint ptr %i.ll to i64
  %i.ln = ptrtoint ptr %i.lj to i64
  %i.lo = sub i64 %i.lm, %i.ln
  tail call void @_ZdlPvm(ptr noundef nonnull %i.lj, i64 noundef %i.lo) #31
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit55

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit55: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvT_S7_.exit.i52, %bb.al
  %i.lp = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 2 uses
  %i.lq = load i8, ptr %i.lp, align 8, !tbaa !514, !range !18, !noundef !19
  %i.lr = trunc nuw i8 %i.lq to i1
  store i8 0, ptr %i.lp, align 8, !tbaa !514
  br i1 %i.lr, label %bb.am, label %_ZNSt14_Optional_baseIN4llvm6TripleELb0ELb0EED2Ev.exit

bb.am:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit55
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !48 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.lv = icmp eq ptr %i.lt, %i.lu
  br i1 %i.lv, label %_ZNSt14_Optional_baseIN4llvm6TripleELb0ELb0EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %bb.am
  %i.lw = load i64, ptr %i.lu, align 8, !tbaa !47
  %i.lx = add i64 %i.lw, 1
  tail call void @_ZdlPvm(ptr noundef %i.lt, i64 noundef %i.lx) #31
  br label %_ZNSt14_Optional_baseIN4llvm6TripleELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN4llvm6TripleELb0ELb0EED2Ev.exit: ; preds = %bb.am, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit55, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  tail call void @_ZN4llvm14GVMaterializerD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #29
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_ZN12_GLOBAL__N_117BitcodeReaderBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(424) dereferenceable(424) %i.ly) #29
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_113BitcodeReaderD0Ev(ptr noundef nonnull align 8 dereferenceable(2040) initializes((0, 8)) %0) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN12_GLOBAL__N_113BitcodeReaderD2Ev(ptr noundef nonnull align 8 dead_on_return(2040) dereferenceable(2040) %0) #29
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 2040) #31
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN12_GLOBAL__N_113BitcodeReader11materializeEPN4llvm11GlobalValueE(ptr dead_on_unwind noalias writable sret(%"class.llvm::Error") align 8 %0, ptr noundef nonnull align 8 dereferenceable(2040) %1, ptr noundef %2) unnamed_addr #3 align 2 {
bb.a:
  %3 = alloca %"class.llvm::AttributeList", align 8 ; 4 uses
  %4 = alloca %"class.llvm::AttributeList", align 8 ; 4 uses
  %5 = alloca %"class.llvm::Expected.385", align 8 ; 6 uses
  %6 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  %7 = alloca %"class.llvm::Expected.385", align 8 ; 6 uses
  %8 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %9 = alloca %"class.llvm::Twine", align 8       ; 6 uses
  %10 = alloca %"class.llvm::Expected.25", align 8 ; 9 uses
  %11 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %12 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %13 = alloca %"class.llvm::Twine", align 8      ; 6 uses
  %14 = alloca %"class.llvm::AttributeMask", align 8 ; 6 uses
  %15 = alloca %"class.llvm::AttributeMask", align 8 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E15LookupBucketForIjEEbRKT_RPS8_:bb.a
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !101
  %i.ag = icmp eq i32 %i.l, %i.af                 ; 3 uses
  br i1 %i.ag, label %.thread, label %bb.c, !prof !672

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa29.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.x, %bb.c ], [ %i.ae, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ag, %bb.c ], [ %i.ag, %.lr.ph ]
  store ptr %.lcssa29.sink, ptr %2, align 8, !tbaa !1728
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 72
  br label %_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEC2EjNS_12DenseMapBaseIS8_jS2_S4_S7_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 4                  ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #29 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !47
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !47
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !47
  br label %_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEC2EjNS_12DenseMapBaseIS8_jS2_S4_S7_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEC2EjNS_12DenseMapBaseIS8_jS2_S4_S7_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE13maybeMoveFastEOS8_.exit.thread, label %_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE13maybeMoveFastEOS8_.exit

_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE13maybeMoveFastEOS8_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEC2EjNS_12DenseMapBaseIS8_jS2_S4_S7_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !1735
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !47
  br label %bb.b

_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE13maybeMoveFastEOS8_.exit: ; preds = %_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEEC2EjNS_12DenseMapBaseIS8_jS2_S4_S7_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE13maybeMoveFastEOS8_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE13maybeMoveFastEOS8_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 4                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #29 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !47
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !47
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !47
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(80) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE13maybeMoveFastEOS8_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE13maybeMoveFastEOS8_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !47 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !47
  %i.bm = zext i32 %i.bi to i64                   ; 2 uses
  %i.bn = shl nuw nsw i64 %i.bm, 4
  %i.bo = add nuw nsw i64 %i.bm, 31
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = and i64 %i.bp, 1073741820
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bl, i64 noundef %i.br, i64 noundef 8) #29
  br label %_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit

_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = select i1 %.not.i.i, i32 %i.k, i32 4
  %i.m = load i32, ptr %0, align 8
  %i.n = and i32 %i.m, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %.not.i.i.i, ptr %i.q, ptr %i.o ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %.not.i.i.i, ptr %i.t, ptr %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8
  %i.x = add i32 %i.w, -1
  %i.y = select i1 %.not.i.i.i, i32 %i.x, i32 3
  %i.z = zext i32 %i.l to i64
  %i.aa = add nuw nsw i64 %i.z, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %.not.i22 = icmp eq i64 %i.ab, 0
  br i1 %.not.i22, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph25

.lr.ph25:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !101 ; 2 uses
  %.not11.i20 = icmp eq i32 %i.ad, 0
  br i1 %.not11.i20, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph25
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.ae = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i21 = phi i32 [ %i.ad, %.lr.ph ], [ %i.bc, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i21, i1 true)
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !101 ; 2 uses
  %i.ak = mul i32 %i.aj, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.ak, %bb.b ], [ %i.as, %bb.c ]
  %.0.i11 = and i32 %.pn.i, %i.y                  ; 3 uses
  %i.al = zext i32 %.0.i11 to i64                 ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !101
  %i.ap = and i32 %.0.i11, 31                     ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  %i.as = add i32 %.0.i11, 1
  br i1 %i.ar, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !1737

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.al ; 2 uses
  store i32 %i.aj, ptr %i.au, align 4, !tbaa !101
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !1544
  store ptr %i.ax, ptr %i.av, align 8, !tbaa !1544
  %i.ay = shl nuw i32 1, %i.ap
  %i.az = load i32, ptr %i.at, align 4, !tbaa !101
  %i.ba = or i32 %i.az, %i.ay
  store i32 %i.ba, ptr %i.at, align 4, !tbaa !101
  %i.bb = add i32 %.0.i21, -1
  %i.bc = and i32 %i.bb, %.0.i21                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bc, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1738

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph25, !llvm.loop !1739

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8
  %.pre29 = load i32, ptr %0, align 8
  %.pre30 = and i32 %.pre29, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre30, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.n, %bb.a ]
  %i.bd = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.be = and i32 %i.bd, -2
  %i.bf = or disjoint i32 %.pre-phi, %i.be
  store i32 %i.bf, ptr %0, align 8
  %i.bg = load i32, ptr %1, align 8               ; 3 uses
  %i.bh = and i32 %i.bg, 1
  %.not.i.i12 = icmp eq i32 %i.bh, 0
  br i1 %.not.i.i12, label %bb.d, label %_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE4killEv.exit

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bi = load i32, ptr %i.j, align 8, !tbaa !47  ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE4killEv.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bk = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.bl = zext i32 %i.bi to i64                   ; 2 uses
  %i.bm = shl nuw nsw i64 %i.bl, 4
  %i.bn = add nuw nsw i64 %i.bl, 31
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = and i64 %i.bo, 1073741820
  %i.bq = add nuw nsw i64 %i.bp, %i.bm
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bk, i64 noundef %i.bq, i64 noundef 8) #29
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE4killEv.exit

_ZN4llvm13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.d, %bb.e
  %i.br = phi i32 [ %i.bg, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIjPNS_5ValueELj4ENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit ], [ %i.bg, %bb.d ], [ %.pre.i, %bb.e ]
  %i.bs = and i32 %i.br, -2
  store i32 %i.bs, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #19

declare void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_5ValueELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !66
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #29
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !66
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !66
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_8ConstantELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !66
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #29
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !66
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !66
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !66
  ret void
}

declare noundef zeroext i1 @_ZN4llvm12ConstantExpr16isSupportedBinOpEj(i32 noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4llvm12ConstantExpr17isSupportedCastOpEj(i32 noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm4Type12isScalableTyEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPSD_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !663, !noalias !1740 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !669, !noalias !1740 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !670, !noalias !1740 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !658    ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !101
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !671

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !658
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPSD_.exit, label %bb.c, !prof !672

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !101
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !673, !llvm.loop !1745

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !1746
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !1515
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E22findBucketForInsertionIS3_EEPSD_RKT_SH_.exit, label %bb.d, !prof !672

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1746
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !669
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !663
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E22findBucketForInsertionIS3_EEPSD_RKT_SH_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E22findBucketForInsertionIS3_EEPSD_RKT_SH_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 5                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !101
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !101
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1515
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1515
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !658
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !658
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPSD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPSD_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E22findBucketForInsertionIS3_EEPSD_RKT_SH_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E22findBucketForInsertionIS3_EEPSD_RKT_SH_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E22findBucketForInsertionIS3_EEPSD_RKT_SH_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E15LookupBucketForIS3_EEbRKT_RPSD_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !663, !noalias !1747 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !669, !noalias !1747 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !670, !noalias !1747 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !658    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !101
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !671

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !658
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !672

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !101
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !673, !llvm.loop !1745

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1746
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.200", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !670
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 5                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !663
  store ptr %i.y, ptr %i.q, align 8, !tbaa !669
  store i32 0, ptr %i.p, align 16, !tbaa !1515
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !1746   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1736 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !79
  store ptr %i.z, ptr %2, align 16, !tbaa !1746
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !79
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !1736
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !101 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !101
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !101
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !101
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !101
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !101 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !1341 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !1342
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ax, %i.ay
  call void @_ZdlPvm(ptr noundef nonnull %i.au, i64 noundef %i.az) #31
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ba = add i32 %.0.i3.i.i, -1
  %i.bb = and i32 %i.ba, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !1343

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !1344

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !670 ; 2 uses
  %i.bc = icmp eq i32 %.pr.i, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit.i
  %i.bd = load ptr, ptr %2, align 16, !tbaa !663
  %i.be = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bf = shl nuw nsw i64 %i.be, 5
  %i.bg = add nuw nsw i64 %i.be, 31
  %i.bh = lshr i64 %i.bg, 3
  %i.bi = and i64 %i.bh, 1073741820
  %i.bj = add nuw nsw i64 %i.bi, %i.bf
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bd, i64 noundef %i.bj, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !663
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !669
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !670  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !669  ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !663
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !670
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS9_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !101  ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.be, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.t ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !658  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !101
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.014.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !101
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, !llvm.loop !1752

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %.lcssa12.i ; 3 uses
  store ptr %i.v, ptr %i.as, align 8, !tbaa !658
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  %i.av = load <2 x ptr>, ptr %i.au, align 8, !tbaa !1618
  store <2 x ptr> %i.av, ptr %i.at, align 8, !tbaa !1618
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1342
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !1342
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  %i.az = shl nuw i32 1, %.lcssa.i
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !101
  %i.bc = or i32 %i.bb, %i.az
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !101
  %i.bd = add i32 %.0.i17, -1
  %i.be = and i32 %i.bd, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.be, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1753

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E8moveFromERSE_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS9_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !1754

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS9_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !670
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS9_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS9_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS9_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bf = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS9_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !1515
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bh, ptr %i.bi, align 8, !tbaa !1515
  %i.bj = icmp eq i32 %i.bf, 0
  br i1 %i.bj, label %_ZN4llvm8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS9_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit
  %i.bk = load ptr, ptr %1, align 8, !tbaa !663
  %i.bl = zext i32 %i.bf to i64                   ; 2 uses
  %i.bm = shl nuw nsw i64 %i.bl, 5
  %i.bn = add nuw nsw i64 %i.bl, 31
  %i.bo = lshr i64 %i.bn, 3
  %i.bp = and i64 %i.bo, 1073741820
  %i.bq = add nuw nsw i64 %i.bp, %i.bm
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bk, i64 noundef %i.bq, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !670
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS5_EENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S7_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS9_EENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_SB_EEEES6_SB_SD_SG_E8moveFromERSH_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIPN4llvm8FunctionESaIS2_EE16_M_push_back_auxIJRKS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !528  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !528
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = shl nsw i64 %i.l, 6
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !657
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !529
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !530
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !657
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 1152921504606846975
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !525
  %i.ag = load ptr, ptr %0, align 8, !tbaa !526
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeIPN4llvm8FunctionESaIS2_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeIPN4llvm8FunctionESaIS2_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeIPN4llvm8FunctionESaIS2_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeIPN4llvm8FunctionESaIS2_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(512) ptr @_Znwm(i64 noundef 512) #32 ; 4 uses
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !1339
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 2 uses
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !527
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !532
  %i.aq = load ptr, ptr %1, align 8, !tbaa !658
  store ptr %i.aq, ptr %i.ap, align 8, !tbaa !658
  store ptr %i.ao, ptr %i.c, align 8, !tbaa !528
  store ptr %i.am, ptr %i.o, align 8, !tbaa !529
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 512
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !530
  store ptr %i.am, ptr %i.a, align 8, !tbaa !532
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5dequeIPN4llvm8FunctionESaIS2_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1339 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !662  ; 6 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
  %i.j = add i64 %i.i, %1                         ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !525  ; 4 uses
  %i.m = shl i64 %i.j, 1
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %0, align 8, !tbaa !526
  %i.p = sub i64 %i.l, %i.j
  %i.q = lshr i64 %i.p, 1
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.q
  %i.s = select i1 %2, i64 %1, i64 0
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s ; 10 uses
  %i.u = icmp ult ptr %i.t, %i.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.u, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
end_hunk_1
begin_hunk_2_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit, label %bb.d, !prof !672

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !1972
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1397
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1346
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !101
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !101
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1973
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !658
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !658
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i64 0, ptr %i.bi, align 8, !tbaa !68
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1346, !noalias !1974 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1397, !noalias !1974 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1345, !noalias !1974 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !658    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !101
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !671

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !658
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !672

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !101
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !673, !llvm.loop !1971

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !1972
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.193", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1345
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1346
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1397
  store i32 0, ptr %i.p, align 16, !tbaa !1973
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !79
  %i.aa = load ptr, ptr %0, align 8, !tbaa !1972
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !79
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !79
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !79
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !101 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !101
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !101
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !101
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !101
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEED2Ev.exit

_ZN4llvm8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1346   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1397
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1345 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1397 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1346
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1345
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !101  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !658  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !101 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E8moveFromERS9_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !101 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !1979

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !658
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !68
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !68
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !101
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !1980

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEEES3_mS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !1981

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1345
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !1973
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !1973
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !1345
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEE4killEv.exit

_ZN4llvm8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_mEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionEmNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_mEEEES6_mS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm14MetadataLoader10hasFwdRefsEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare noundef i32 @_ZNK4llvm14MetadataLoader4sizeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i32 @_ZN12_GLOBAL__N_113BitcodeReader18getContainedTypeIDEjj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(2040) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #20 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1377, !noalias !1982 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1378, !noalias !1982 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 636
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1376, !noalias !1982 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = mul i32 %1, 37
  %.017.i.i.i.i = and i32 %i.h, %i.i              ; 3 uses
  %i.j = zext i32 %.017.i.i.i.i to i64            ; 2 uses
  %i.k = lshr i64 %i.j, 5
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !101, !noalias !1991
  %i.n = and i32 %.017.i.i.i.i, 31
  %i.o = lshr i32 %i.m, %i.n
  %i.p = trunc i32 %i.o to i1
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !671

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.q = add nuw i32 %.018.i.i.i.i, 1
  %.0.i.i.i.i = and i32 %i.q, %i.h                ; 3 uses
  %i.r = zext i32 %.0.i.i.i.i to i64              ; 2 uses
  %i.s = lshr i64 %i.r, 5
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !101, !noalias !1991
  %i.v = and i32 %.0.i.i.i.i, 31
  %i.w = lshr i32 %i.u, %i.v
  %i.x = trunc i32 %i.w to i1
  br i1 %i.x, label %.lr.ph.i.i.i.i, label %.loopexit.i.i, !prof !673

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %bb.c
  %i.y = phi i64 [ %i.r, %bb.c ], [ %i.j, %bb.b ]
  %.018.i.i.i.i = phi i32 [ %.0.i.i.i.i, %bb.c ], [ %.017.i.i.i.i, %bb.b ]
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !101, !noalias !1991
  %i.ab = icmp eq i32 %1, %i.aa
  br i1 %i.ab, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4findERKj.exit.loopexit, label %bb.c, !prof !672

.loopexit.i.i:                                    ; preds = %bb.c, %bb.b, %bb.a
  %i.ac = zext i32 %i.f to i64                    ; 2 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.ac
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4findERKj.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4findERKj.exit.loopexit: ; preds = %.lr.ph.i.i.i.i
  %.pre = zext i32 %i.f to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4findERKj.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4findERKj.exit: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4findERKj.exit.loopexit, %.loopexit.i.i
  %.pre-phi = phi i64 [ %.pre, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4findERKj.exit.loopexit ], [ %i.ac, %.loopexit.i.i ]
  %.lcssa.sink.i.i = phi ptr [ %i.z, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4findERKj.exit.loopexit ], [ %i.ad, %.loopexit.i.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.pre-phi
  %i.af = icmp eq ptr %.lcssa.sink.i.i, %i.ae
  br i1 %i.af, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4findERKj.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !66
  %.not = icmp ugt i32 %i.ah, %2
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ai = zext i32 %2 to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !21
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %i.ai
  %i.am = load i32, ptr %i.al, align 4, !tbaa !101
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4findERKj.exit, %bb.e
  %.0 = phi i32 [ %i.am, %bb.e ], [ -1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4findERKj.exit ], [ -1, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm22BitcodeReaderValueList9push_backEPNS_5ValueEj(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %i.b = alloca i32, align 4                      ; 2 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !1544
  store i32 %2, ptr %i.b, align 4, !tbaa !101
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1363 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1371
  %.not.i = icmp eq ptr %i.d, %i.f
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i64 6, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr null, ptr %i.g, align 8, !tbaa !1819
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %1, ptr %i.h, align 8, !tbaa !1364
  %.not.i.i.i.i = icmp eq ptr %1, null
  br i1 %.not.i.i.i.i, label %_ZNSt4pairIN4llvm14WeakTrackingVHEjEC2IRPNS0_5ValueERjTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4llvm15ValueHandleBase12AddToUseListEv(ptr noundef nonnull align 8 dereferenceable(28) %i.d) #29
end_hunk_2
begin_hunk_3_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E24lookupOrInsertIntoBucketIRKS3_JEEESt4pairIPS8_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit, label %bb.d, !prof !672

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2244
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !2242
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1373
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !101
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !101
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !2245
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !2245
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !658
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !658
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store i32 0, ptr %i.bi, align 8, !tbaa !101
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1373, !noalias !2246 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2242, !noalias !2246 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1372, !noalias !2246 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !658    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !101
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !671

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !658
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !672

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !101
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !673, !llvm.loop !2243

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2244
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.107", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1372
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1373
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2242
  store i32 0, ptr %i.p, align 16, !tbaa !2245
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !79
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2244
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !79
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !79
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !79
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !101 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !101
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !101
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !101
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !101
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit

_ZN4llvm8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1373   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2242
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1372 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2242 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1373
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1372
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i15 = icmp eq i64 %i.n, 0
  br i1 %.not.i15, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !101  ; 2 uses
  %.not11.i13 = icmp eq i32 %i.p, 0
  br i1 %.not11.i13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph18
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i14 = phi i32 [ %i.p, %.lr.ph ], [ %i.bb, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i14, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !658  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !101
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.015.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !101
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !2251

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa14.i ; 2 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !658
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !101
  store i32 %i.aw, ptr %i.au, align 8, !tbaa !101
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !101
  %i.az = or i32 %i.ay, %i.ax
  store i32 %i.az, ptr %i.as, align 4, !tbaa !101
  %i.ba = add i32 %.0.i14, -1
  %i.bb = and i32 %i.ba, %.0.i14                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bb, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2252

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEES3_jS5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph18, !llvm.loop !2253

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1372
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bc = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !2245
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.be, ptr %i.bf, align 8, !tbaa !2245
  %i.bg = icmp eq i32 %i.bc, 0
  br i1 %i.bg, label %_ZN4llvm8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bh = zext i32 %i.bc to i64                   ; 2 uses
  %i.bi = shl nuw nsw i64 %i.bh, 4
  %i.bj = add nuw nsw i64 %i.bh, 31
  %i.bk = lshr i64 %i.bj, 3
  %i.bl = and i64 %i.bk, 1073741820
  %i.bm = add nuw nsw i64 %i.bl, %i.bi
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bm, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !1372
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit

_ZN4llvm8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionEjNS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_jEEEES6_jS8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare void @_ZNK4llvm8Function18BuildLazyArgumentsEv(ptr noundef nonnull align 8 dereferenceable(140)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt4pairIN4llvm14WeakTrackingVHEjESaIS3_EE17_M_realloc_insertIJRPNS1_5ValueERjEEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1363 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !1362   ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775776
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorISt4pairIN4llvm14WeakTrackingVHEjESaIS3_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.139) #33
  unreachable

_ZNKSt6vectorISt4pairIN4llvm14WeakTrackingVHEjESaIS3_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 5                   ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 288230376151711743)
  %i.l = select i1 %i.j, i64 288230376151711743, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = shl nuw nsw i64 %i.l, 5
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #32 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 5 uses
  %i.r = load ptr, ptr %2, align 8, !tbaa !1544   ; 2 uses
  store i64 6, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr null, ptr %i.s, align 8, !tbaa !1819
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %i.r, ptr %i.t, align 8, !tbaa !1364
  %.not.i.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i, label %_ZNSt4pairIN4llvm14WeakTrackingVHEjEC2IRPNS0_5ValueERjTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorISt4pairIN4llvm14WeakTrackingVHEjESaIS3_EE12_M_check_lenEmPKc.exit
  tail call void @_ZN4llvm15ValueHandleBase12AddToUseListEv(ptr noundef nonnull align 8 dereferenceable(28) %i.q) #29
  br label %_ZNSt4pairIN4llvm14WeakTrackingVHEjEC2IRPNS0_5ValueERjTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_.exit

_ZNSt4pairIN4llvm14WeakTrackingVHEjEC2IRPNS0_5ValueERjTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_.exit: ; preds = %_ZNKSt6vectorISt4pairIN4llvm14WeakTrackingVHEjESaIS3_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.v = load i32, ptr %3, align 4, !tbaa !101
  store i32 %i.v, ptr %i.u, align 8, !tbaa !1820
  %.not9.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not9.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm14WeakTrackingVHEjES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt4pairIN4llvm14WeakTrackingVHEjEC2IRPNS0_5ValueERjTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_.exit, %_ZSt10_ConstructISt4pairIN4llvm14WeakTrackingVHEjEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.011.i.i.i.i.i = phi ptr [ %i.ag, %_ZSt10_ConstructISt4pairIN4llvm14WeakTrackingVHEjEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt4pairIN4llvm14WeakTrackingVHEjEC2IRPNS0_5ValueERjTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_.exit ] ; 6 uses
  %.0810.i.i.i.i.i = phi ptr [ %i.af, %_ZSt10_ConstructISt4pairIN4llvm14WeakTrackingVHEjEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt4pairIN4llvm14WeakTrackingVHEjEC2IRPNS0_5ValueERjTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_.exit ] ; 4 uses
  store i64 6, ptr %.011.i.i.i.i.i, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 8
  store ptr null, ptr %i.w, align 8, !tbaa !1819
  %i.x = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1364 ; 2 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !1364
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt10_ConstructISt4pairIN4llvm14WeakTrackingVHEjEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.0810.i.i.i.i.i, align 8
  %i.aa = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i, -8
  %i.ab = inttoptr i64 %i.aa to ptr
  tail call void @_ZN4llvm15ValueHandleBase20AddToExistingUseListEPPS0_(ptr noundef nonnull align 8 dereferenceable(28) %.011.i.i.i.i.i, ptr noundef %i.ab) #29
  br label %_ZSt10_ConstructISt4pairIN4llvm14WeakTrackingVHEjEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i

_ZSt10_ConstructISt4pairIN4llvm14WeakTrackingVHEjEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %bb.d, %.lr.ph.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !1820
  store i32 %i.ae, ptr %i.ac, align 8, !tbaa !1820
  %i.af = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i, i64 32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.af, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm14WeakTrackingVHEjES4_SaIS3_EET0_T_S7_S6_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !2254

_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm14WeakTrackingVHEjES4_SaIS3_EET0_T_S7_S6_RT1_.exit: ; preds = %_ZSt10_ConstructISt4pairIN4llvm14WeakTrackingVHEjEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt4pairIN4llvm14WeakTrackingVHEjEC2IRPNS0_5ValueERjTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNSt4pairIN4llvm14WeakTrackingVHEjEC2IRPNS0_5ValueERjTnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS9_SA_EEEbE4typeELb1EEEOS9_OSA_.exit ], [ %i.ag, %_ZSt10_ConstructISt4pairIN4llvm14WeakTrackingVHEjEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 32 ; 2 uses
  %.not9.i.i.i.i.i19 = icmp eq ptr %1, %i.b
  br i1 %.not9.i.i.i.i.i19, label %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm14WeakTrackingVHEjES4_SaIS3_EET0_T_S7_S6_RT1_.exit28, label %.lr.ph.i.i.i.i.i20

.lr.ph.i.i.i.i.i20:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm14WeakTrackingVHEjES4_SaIS3_EET0_T_S7_S6_RT1_.exit, %_ZSt10_ConstructISt4pairIN4llvm14WeakTrackingVHEjEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i25
  %.011.i.i.i.i.i21 = phi ptr [ %i.as, %_ZSt10_ConstructISt4pairIN4llvm14WeakTrackingVHEjEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i25 ], [ %i.ah, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm14WeakTrackingVHEjES4_SaIS3_EET0_T_S7_S6_RT1_.exit ] ; 6 uses
  %.0810.i.i.i.i.i22 = phi ptr [ %i.ar, %_ZSt10_ConstructISt4pairIN4llvm14WeakTrackingVHEjEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i25 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPSt4pairIN4llvm14WeakTrackingVHEjES4_SaIS3_EET0_T_S7_S6_RT1_.exit ] ; 4 uses
  store i64 6, ptr %.011.i.i.i.i.i21, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i21, i64 8
  store ptr null, ptr %i.ai, align 8, !tbaa !1819
  %i.aj = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i.i21, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i.i22, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !1364 ; 2 uses
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !1364
  %.not.i.i.i.i.i.i.i.i.i23 = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i.i.i.i23, label %_ZSt10_ConstructISt4pairIN4llvm14WeakTrackingVHEjEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i25, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i20
  %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i24 = load i64, ptr %.0810.i.i.i.i.i22, align 8
  %i.am = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i.i.i.i24, -8
  %i.an = inttoptr i64 %i.am to ptr
  tail call void @_ZN4llvm15ValueHandleBase20AddToExistingUseListEPPS0_(ptr noundef nonnull align 8 dereferenceable(28) %.011.i.i.i.i.i21, ptr noundef %i.an) #29
  br label %_ZSt10_ConstructISt4pairIN4llvm14WeakTrackingVHEjEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i25

_ZSt10_ConstructISt4pairIN4llvm14WeakTrackingVHEjEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i.i25: ; preds = %bb.e, %.lr.ph.i.i.i.i.i20
end_hunk_3
begin_hunk_4_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_:bb.a
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !673, !llvm.loop !2337

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2338
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.716", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 17                      ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 264
  br label %_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEC2EjNS_12DenseMapBaseIS9_S3_jS5_S8_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 4                  ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #29 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !47
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !47
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !47
  br label %_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEC2EjNS_12DenseMapBaseIS9_S3_jS5_S8_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEC2EjNS_12DenseMapBaseIS9_S3_jS5_S8_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 16, %_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(272) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE13maybeMoveFastEOS9_.exit.thread, label %_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE13maybeMoveFastEOS9_.exit

_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE13maybeMoveFastEOS9_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEC2EjNS_12DenseMapBaseIS9_S3_jS5_S8_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !2345
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !47
  br label %bb.b

_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE13maybeMoveFastEOS9_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEEC2EjNS_12DenseMapBaseIS9_S3_jS5_S8_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE13maybeMoveFastEOS9_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 264
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE13maybeMoveFastEOS9_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 4                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #29 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !47
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !47
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !47
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 16
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 264
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(272) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE13maybeMoveFastEOS9_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE13maybeMoveFastEOS9_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !47 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !47
  %i.bm = zext i32 %i.bi to i64                   ; 2 uses
  %i.bn = shl nuw nsw i64 %i.bm, 4
  %i.bo = add nuw nsw i64 %i.bm, 31
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = and i64 %i.bp, 1073741820
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bl, i64 noundef %i.br, i64 noundef 8) #29
  br label %_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit

_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(272) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = select i1 %.not.i.i, i32 %i.k, i32 16
  %i.m = load i32, ptr %0, align 8
  %i.n = and i32 %i.m, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %.not.i.i.i, ptr %i.q, ptr %i.o ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %.not.i.i.i, ptr %i.t, ptr %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8
  %i.x = add i32 %i.w, -1
  %i.y = select i1 %.not.i.i.i, i32 %i.x, i32 15  ; 2 uses
  %i.z = zext i32 %i.l to i64
  %i.aa = add nuw nsw i64 %i.z, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %.not.i20 = icmp eq i64 %i.ab, 0
  br i1 %.not.i20, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !101 ; 2 uses
  %.not11.i18 = icmp eq i32 %i.ad, 0
  br i1 %.not11.i18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph23
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.ae = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i19 = phi i32 [ %i.ad, %.lr.ph ], [ %i.bp, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i19, i1 true)
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1525 ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = mul i64 %i.ak, -4658895280553007687     ; 2 uses
  %i.am = lshr i64 %i.al, 31
  %i.an = xor i64 %i.am, %i.al
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.y, %i.ao                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !101
  %i.au = and i32 %i.ap, 31                       ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.ay, %.lr.ph.i ], [ %i.ap, %bb.b ]
  %i.ax = add i32 %.015.i, 1
  %i.ay = and i32 %i.ax, %i.y                     ; 3 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = lshr i64 %i.az, 5                       ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !101
  %i.bd = and i32 %i.ay, 31                       ; 2 uses
  %i.be = lshr i32 %i.bc, %i.bd
  %i.bf = trunc i32 %i.be to i1
  br i1 %i.bf, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2346

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ar, %bb.b ], [ %i.ba, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.aq, %bb.b ], [ %i.az, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.au, %bb.b ], [ %i.bd, %.lr.ph.i ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.lcssa14.i ; 2 uses
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.lcssa12.i ; 2 uses
  store ptr %i.aj, ptr %i.bh, align 8, !tbaa !1525
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !101
  store i32 %i.bk, ptr %i.bi, align 8, !tbaa !101
  %i.bl = shl nuw i32 1, %.lcssa.i
  %i.bm = load i32, ptr %i.bg, align 4, !tbaa !101
  %i.bn = or i32 %i.bm, %i.bl
  store i32 %i.bn, ptr %i.bg, align 4, !tbaa !101
  %i.bo = add i32 %.0.i19, -1
  %i.bp = and i32 %i.bo, %.0.i19                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bp, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2347

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEEES4_jS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph23, !llvm.loop !2348

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8
  %.pre27 = load i32, ptr %0, align 8
  %.pre28 = and i32 %.pre27, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre28, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.n, %bb.a ]
  %i.bq = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.br = and i32 %i.bq, -2
  %i.bs = or disjoint i32 %.pre-phi, %i.br
  store i32 %i.bs, ptr %0, align 8
  %i.bt = load i32, ptr %1, align 8               ; 3 uses
  %i.bu = and i32 %i.bt, 1
  %.not.i.i11 = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i11, label %bb.c, label %_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE4killEv.exit

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bv = load i32, ptr %i.j, align 8, !tbaa !47  ; 2 uses
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bx = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.by = zext i32 %i.bv to i64                   ; 2 uses
  %i.bz = shl nuw nsw i64 %i.by, 4
  %i.ca = add nuw nsw i64 %i.by, 31
  %i.cb = lshr i64 %i.ca, 3
  %i.cc = and i64 %i.cb, 1073741820
  %i.cd = add nuw nsw i64 %i.cc, %i.bz
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bx, i64 noundef %i.cd, i64 noundef 8) #29
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE4killEv.exit

_ZN4llvm13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c, %bb.d
  %i.ce = phi i32 [ %i.bt, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPKNS_3UseEjLj16ENS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_jEEEES7_jS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit ], [ %i.bt, %bb.c ], [ %.pre.i, %bb.d ]
  %i.cf = and i32 %i.ce, -2
  store i32 %i.cf, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionESt6vectorIPNS_10BasicBlockESaIS6_EENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S8_EEEES3_S8_SA_SD_E21eraseFromFilledBucketIZNSF_21eraseFromFilledBucketEPSD_EUlRSD_E_EEvSH_OT_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1341 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1342
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #31
  br label %_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EED2Ev.exit

_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !1515
  %i.j = add i32 %i.i, -1
  store i32 %i.j, ptr %i.h, align 8, !tbaa !1515
  %i.k = load ptr, ptr %0, align 8, !tbaa !663    ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !669  ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !670
  %i.p = add i32 %i.o, -1                         ; 4 uses
  %i.q = ptrtoint ptr %1 to i64
  %i.r = ptrtoint ptr %i.k to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = lshr exact i64 %i.s, 5
  %i.u = trunc i64 %i.t to i32                    ; 3 uses
  %i.v = add i32 %i.u, 1
  %i.w = and i32 %i.v, %i.p                       ; 3 uses
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = lshr i64 %i.x, 5
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !101
  %i.ab = and i32 %i.w, 31
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EED2Ev.exit, %bb.c
  %.pn = phi i64 [ %i.bb, %bb.c ], [ %i.x, %_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EED2Ev.exit ]
  %i.ae = phi i32 [ %i.ba, %bb.c ], [ %i.w, %_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EED2Ev.exit ] ; 3 uses
  %.03339 = phi i32 [ %.2, %bb.c ], [ %i.u, %_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EED2Ev.exit ] ; 3 uses
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %.pn ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !658 ; 2 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = mul i64 %i.ah, -4658895280553007687     ; 2 uses
  %i.aj = lshr i64 %i.ai, 31
  %i.ak = xor i64 %i.aj, %i.ai
  %i.al = trunc i64 %i.ak to i32                  ; 2 uses
  %i.am = sub i32 %.03339, %i.al
  %i.an = and i32 %i.am, %i.p
  %i.ao = sub i32 %i.ae, %i.al
  %i.ap = and i32 %i.ao, %i.p
  %i.aq = icmp ult i32 %i.an, %i.ap
  br i1 %i.aq, label %_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EED2Ev.exit35, label %bb.c

_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EED2Ev.exit35: ; preds = %.lr.ph
  %i.ar = zext i32 %.03339 to i64
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %i.ar ; 3 uses
  store ptr %i.ag, ptr %i.as, align 8, !tbaa !658
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.av = load <2 x ptr>, ptr %i.au, align 8, !tbaa !1618
  store <2 x ptr> %i.av, ptr %i.at, align 8, !tbaa !1618
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !1342
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !1342
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EED2Ev.exit35
  %.2 = phi i32 [ %.03339, %.lr.ph ], [ %i.ae, %_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EED2Ev.exit35 ] ; 2 uses
  %i.az = add i32 %i.ae, 1
  %i.ba = and i32 %i.az, %i.p                     ; 3 uses
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = lshr i64 %i.bb, 5
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !101
  %i.bf = and i32 %i.ba, 31
  %i.bg = lshr i32 %i.be, %i.bf
  %i.bh = trunc i32 %i.bg to i1
  br i1 %i.bh, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EED2Ev.exit
  %.033.lcssa = phi i32 [ %i.u, %_ZNSt6vectorIPN4llvm10BasicBlockESaIS2_EED2Ev.exit ], [ %.2, %bb.c ] ; 2 uses
  %i.bi = and i32 %.033.lcssa, 31
  %i.bj = shl nuw i32 1, %i.bi
  %i.bk = xor i32 %i.bj, -1
  %i.bl = lshr i32 %.033.lcssa, 5
end_hunk_4
begin_hunk_5_@_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E24lookupOrInsertIntoBucketIRKjJEEESt4pairIPS8_bEOT_DpOT0_:bb.a
  %i.s = add nuw i32 %.025.i, 1
  %.0.i = and i32 %i.s, %i.h                      ; 3 uses
  %i.t = zext i32 %.0.i to i64                    ; 2 uses
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !101
  %i.y = and i32 %.0.i, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !673, !llvm.loop !2367

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.u, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %.025.i = phi i32 [ %.0.i, %bb.c ], [ %.024.i, %bb.b ]
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !101
  %i.ad = icmp eq i32 %i.i, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E15LookupBucketForIjEEbRKT_RPS8_.exit, label %bb.c, !prof !672

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa30.sink.i.ph = phi ptr [ %i.l, %bb.b ], [ null, %bb.a ], [ %i.u, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !2368
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !2369
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit, label %bb.d, !prof !672

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E15LookupBucketForIjEEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2368
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1378
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1377
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 7 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 5                 ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !101
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !101
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !2369
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !2369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !101
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !101
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store ptr %i.bd, ptr %i.bc, align 8, !tbaa !21
  %i.be = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i32 0, ptr %i.be, align 8, !tbaa !66
  %i.bf = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  store i32 1, ptr %i.bf, align 4, !tbaa !67
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E15LookupBucketForIjEEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E15LookupBucketForIjEEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E15LookupBucketForIjEEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1377, !noalias !2370 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1378, !noalias !2370 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1376, !noalias !2370 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !101    ; 2 uses
  %i.i = mul i32 %i.h, 37
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !101
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !671

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %.025, 1
  %.0 = and i32 %i.r, %i.g                        ; 3 uses
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !101
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !673, !llvm.loop !2367

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !101
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !672

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !2368
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap", align 16   ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1376
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 5                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1377
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1378
  store i32 0, ptr %i.p, align 16, !tbaa !2369
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load ptr, ptr %0, align 8, !tbaa !2368   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1736 ; 2 uses
  %i.ac = load <2 x ptr>, ptr %2, align 16, !tbaa !79
  store ptr %i.z, ptr %2, align 16, !tbaa !2368
  store <2 x ptr> %i.ac, ptr %0, align 8, !tbaa !79
  store ptr %i.ab, ptr %i.q, align 8, !tbaa !1736
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !101 ; 2 uses
  %i.ag = load <2 x i32>, ptr %i.ad, align 8, !tbaa !101
  %i.ah = load <2 x i32>, ptr %i.p, align 16, !tbaa !101
  store <2 x i32> %i.ah, ptr %i.ad, align 8, !tbaa !101
  store <2 x i32> %i.ag, ptr %i.p, align 16, !tbaa !101
  %i.ai = icmp eq i32 %i.af, 0
  br i1 %i.ai, label %_ZN4llvm8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit, label %.lr.ph7.preheader.i.i

.lr.ph7.preheader.i.i:                            ; preds = %bb.a
  %i.aj = zext i32 %i.af to i64
  %i.ak = add nuw nsw i64 %i.aj, 31
  %i.al = lshr i64 %i.ak, 5
  br label %.lr.ph7.i.i

.lr.ph7.i.i:                                      ; preds = %._crit_edge.i.i, %.lr.ph7.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph7.preheader.i.i ], [ %indvars.iv.next.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv.i.i
  %i.an = load i32, ptr %i.am, align 4, !tbaa !101 ; 2 uses
  %.not11.i2.i.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph7.i.i
  %indvars.iv.tr.i.i = trunc nuw i64 %indvars.iv.i.i to i32
  %i.ao = shl nuw i32 %indvars.iv.tr.i.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph.i.i
  %.0.i3.i.i = phi i32 [ %i.an, %.lr.ph.i.i ], [ %i.ay, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i ] ; 3 uses
  %i.ap = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i.i, i1 true)
  %i.aq = or disjoint i32 %i.ap, %i.ao
  %i.ar = zext i32 %i.aq to i64
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ar ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !21 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @free(ptr noundef %i.au) #29
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i: ; preds = %bb.c, %bb.b
  %i.ax = add i32 %.0.i3.i.i, -1
  %i.ay = and i32 %i.ax, %.0.i3.i.i               ; 2 uses
  %.not11.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not11.i.i.i, label %._crit_edge.i.i, label %bb.b, !llvm.loop !1379

._crit_edge.i.i:                                  ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEvENKUljE_clEj.exit.i.i, %.lr.ph7.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %.not.i.i.i3 = icmp eq i64 %indvars.iv.next.i.i, %i.al
  br i1 %.not.i.i.i3, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEv.exit.i, label %.lr.ph7.i.i, !llvm.loop !1380

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEv.exit.i: ; preds = %._crit_edge.i.i
  %.pr.i = load i32, ptr %i.o, align 4, !tbaa !1376 ; 2 uses
  %i.az = icmp eq i32 %.pr.i, 0
  br i1 %i.az, label %_ZN4llvm8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEv.exit.i
  %i.ba = load ptr, ptr %2, align 16, !tbaa !1377
  %i.bb = zext i32 %.pr.i to i64                  ; 2 uses
  %i.bc = shl nuw nsw i64 %i.bb, 5
  %i.bd = add nuw nsw i64 %i.bb, 31
  %i.be = lshr i64 %i.bd, 3
  %i.bf = and i64 %i.be, 1073741820
  %i.bg = add nuw nsw i64 %i.bf, %i.bc
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ba, i64 noundef %i.bg, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit

_ZN4llvm8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E10destroyAllEv.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1377
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1378
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1376 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1378 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1377
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1376
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !101  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.p, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph22
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.p, %.lr.ph ], [ %i.bh, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [32 x i8], ptr %i.a, i64 %i.t ; 8 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !101  ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !101
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %bb.d, !llvm.loop !2375

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.x ; 6 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !101
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 24 ; 2 uses
  store ptr %i.ai, ptr %i.ah, align 8, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 3 uses
  store i32 0, ptr %i.aj, align 8, !tbaa !66
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 20 ; 2 uses
  store i32 1, ptr %i.ak, align 4, !tbaa !67
  %i.al = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  %i.am = load i32, ptr %i.al, align 8, !tbaa !66 ; 5 uses
  %.not.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not.i.i.i, label %_ZN4llvm11SmallVectorIjLj1EEC2EOS1_.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  %i.ao = icmp eq ptr %i.ag, %i.u
  br i1 %i.ao, label %_ZN4llvm11SmallVectorIjLj1EEC2EOS1_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !21 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.ar = icmp eq ptr %i.ap, %i.aq
  br i1 %i.ar, label %bb.g, label %_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit.i

_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit.i: ; preds = %bb.f
  store ptr %i.ap, ptr %i.ah, align 8, !tbaa !21
  store i32 %i.am, ptr %i.aj, align 8, !tbaa !66
  %i.as = getelementptr inbounds nuw i8, ptr %i.u, i64 20 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !67
  store i32 %i.at, ptr %i.ak, align 4, !tbaa !67
  store ptr %i.aq, ptr %i.an, align 8, !tbaa !21
  store i32 0, ptr %i.as, align 4, !tbaa !67
  br label %_ZN4llvm11SmallVectorIjLj1EEC2EOS1_.exit.i.sink.split

bb.g:                                             ; preds = %bb.f
  %.not = icmp eq i32 %i.am, 1
  br i1 %.not, label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = zext i32 %i.am to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(20) %i.ah, ptr noundef nonnull %i.ai, i64 noundef %i.au, i64 noundef 4) #29
  br label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i

_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i:             ; preds = %bb.g, %bb.h
  %i.av = load i32, ptr %i.al, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i10 = icmp eq i32 %i.av, 0
  br i1 %.not.i.i.i10, label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i
  %i.aw = zext i32 %i.av to i64
  %i.ax = load ptr, ptr %i.an, align 8, !tbaa !21
  %i.ay = load ptr, ptr %i.ah, align 8, !tbaa !21
  %gepdiff.i = shl nuw nsw i64 %i.aw, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ay, ptr align 4 %i.ax, i64 %gepdiff.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i

_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i: ; preds = %bb.i, %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit34.i
  store i32 %i.am, ptr %i.aj, align 8, !tbaa !66
  br label %_ZN4llvm11SmallVectorIjLj1EEC2EOS1_.exit.i.sink.split

_ZN4llvm11SmallVectorIjLj1EEC2EOS1_.exit.i.sink.split: ; preds = %_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseIjLb1EE18uninitialized_moveIPjS3_EEvT_S4_T0_.exit.i
  store i32 0, ptr %i.al, align 8, !tbaa !66
  br label %_ZN4llvm11SmallVectorIjLj1EEC2EOS1_.exit.i

_ZN4llvm11SmallVectorIjLj1EEC2EOS1_.exit.i:       ; preds = %_ZN4llvm11SmallVectorIjLj1EEC2EOS1_.exit.i.sink.split, %bb.e, %bb.d
  %i.az = shl nuw i32 1, %i.ab
  %i.ba = load i32, ptr %i.af, align 4, !tbaa !101
  %i.bb = or i32 %i.ba, %i.az
  store i32 %i.bb, ptr %i.af, align 4, !tbaa !101
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !21 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bf = icmp eq ptr %i.bd, %i.be
  br i1 %i.bf, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, label %bb.j

bb.j:                                             ; preds = %_ZN4llvm11SmallVectorIjLj1EEC2EOS1_.exit.i
  tail call void @free(ptr noundef %i.bd) #29
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %_ZN4llvm11SmallVectorIjLj1EEC2EOS1_.exit.i, %bb.j
  %i.bg = add i32 %.0.i18, -1
  %i.bh = and i32 %i.bg, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bh, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2376

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph22, !llvm.loop !2377

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1376
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bi = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !2369
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bk, ptr %i.bl, align 8, !tbaa !2369
  %i.bm = icmp eq i32 %i.bi, 0
  br i1 %i.bm, label %_ZN4llvm8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE4killEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bn = load ptr, ptr %1, align 8, !tbaa !1377
  %i.bo = zext i32 %i.bi to i64                   ; 2 uses
  %i.bp = shl nuw nsw i64 %i.bo, 5
  %i.bq = add nuw nsw i64 %i.bo, 31
  %i.br = lshr i64 %i.bq, 3
  %i.bs = and i64 %i.br, 1073741820
  %i.bt = add nuw nsw i64 %i.bs, %i.bp
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bn, i64 noundef %i.bt, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !1376
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE4killEv.exit

_ZN4llvm8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.k
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4llvm15SmallVectorImplIjEaSEOS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !21     ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef %i.e) #29
  %.pre = load ptr, ptr %1, align 8, !tbaa !21
  br label %_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit

_ZN4llvm15SmallVectorImplIjE12assignRemoteEOS1_.exit: ; preds = %bb.c, %bb.d
  %i.h = phi ptr [ %i.b, %bb.c ], [ %.pre, %bb.d ]
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %0, align 8, !tbaa !21
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !101
  store <2 x i32> %i.l, ptr %i.i, align 8, !tbaa !101
  store ptr %i.c, ptr %1, align 8, !tbaa !21
  store i32 0, ptr %i.k, align 4, !tbaa !67
  store i32 0, ptr %i.j, align 8, !tbaa !66
  br label %bb.p

bb.e:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !66   ; 6 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !66   ; 4 uses
  %i.r = zext i32 %i.q to i64                     ; 2 uses
  %.not = icmp ult i32 %i.q, %i.n
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %0, align 8, !tbaa !21     ; 2 uses
  switch i32 %i.n, label %bb.g [
    i32 0, label %_ZSt4moveIPjS0_ET0_T_S2_S1_.exit
    i32 1, label %bb.h
  ], !prof !2378
end_hunk_5
begin_hunk_6_@_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_4TypeEjEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E24lookupOrInsertIntoBucketIS5_JjEEES2_IPSA_bEOT_DpOT0_:bb.a

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_4TypeEjEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.be = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.bf = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.bg = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = ptrtoint ptr %i.be to i64
  %i.bj = sub i64 %i.bh, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 24                ; 2 uses
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = and i32 %i.bl, 31
  %i.bn = shl nuw i32 1, %i.bm
  %i.bo = lshr i64 %i.bk, 5
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %i.bo ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !101
  %i.br = or i32 %i.bn, %i.bq
  store i32 %i.br, ptr %i.bp, align 4, !tbaa !101
  %i.bs = load i32, ptr %i.ax, align 8, !tbaa !2386
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.ax, align 8, !tbaa !2386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bv = load i32, ptr %2, align 4, !tbaa !101
  store i32 %i.bv, ptr %i.bu, align 8, !tbaa !101
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_4TypeEjEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_4TypeEjEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_4TypeEjEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.bg, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_4TypeEjEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit ], [ %i.ag, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_4TypeEjEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_4TypeEjEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1375, !noalias !2387 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2155, !noalias !2387 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1374, !noalias !2387 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !2157   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i32, ptr %i.m, align 8, !tbaa !101  ; 2 uses
  %i.o = mul i32 %i.n, 37
  %i.p = shl i64 %i.l, 32
  %i.q = zext i32 %i.o to i64
  %i.r = or disjoint i64 %i.p, %i.q
  %i.s = mul i64 %i.r, -4658895280553007687       ; 2 uses
  %i.t = lshr i64 %i.s, 31
  %i.u = xor i64 %i.t, %i.s
  %i.v = trunc i64 %i.u to i32
  %i.w = and i32 %i.g, %i.v                       ; 3 uses
  %i.x = zext i32 %i.w to i64                     ; 2 uses
  %i.y = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.x ; 2 uses
  %i.z = lshr i64 %i.x, 5
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !101
  %i.ac = and i32 %i.w, 31
  %i.ad = lshr i32 %i.ab, %i.ac
  %i.ae = trunc i32 %i.ad to i1
  br i1 %i.ae, label %.lr.ph, label %.thread, !prof !671

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.af = phi ptr [ %i.ap, %bb.c ], [ %i.y, %bb.b ] ; 3 uses
  %.024 = phi i32 [ %i.an, %bb.c ], [ %i.w, %bb.b ]
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !2157
  %i.ah = icmp eq ptr %i.h, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = icmp eq i32 %i.n, %i.aj
  %i.al = select i1 %i.ah, i1 %i.ak, i1 false     ; 3 uses
  br i1 %i.al, label %.thread, label %bb.c, !prof !672

bb.c:                                             ; preds = %.lr.ph
  %i.am = add nuw i32 %.024, 1
  %i.an = and i32 %i.am, %i.g                     ; 3 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.ao ; 2 uses
  %i.aq = lshr i64 %i.ao, 5
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !101
  %i.at = and i32 %i.an, 31
  %i.au = lshr i32 %i.as, %i.at
  %i.av = trunc i32 %i.au to i1
  br i1 %i.av, label %.lr.ph, label %.thread, !prof !673, !llvm.loop !2384

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.y, %bb.b ], [ null, %bb.a ], [ %i.ap, %bb.c ], [ %i.af, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.al, %bb.c ], [ %i.al, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2385
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_4TypeEjEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.105", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1374
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1375
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2155
  store i32 0, ptr %i.p, align 16, !tbaa !2386
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_4TypeEjEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !79
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2385
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !79
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !79
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !79
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !101 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !101
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !101
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !101
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !101
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapISt4pairIPNS_4TypeEjEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapISt4pairIPNS_4TypeEjEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEED2Ev.exit

_ZN4llvm8DenseMapISt4pairIPNS_4TypeEjEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_4TypeEjEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1375
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2155
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1374 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2155 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1375
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1374
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_4TypeEjEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !101  ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_4TypeEjEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.bk, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_4TypeEjEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2157
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !101
  %i.ac = mul i32 %i.ab, 37
  %i.ad = shl i64 %i.z, 32
  %i.ae = zext i32 %i.ac to i64
  %i.af = or disjoint i64 %i.ad, %i.ae
  %i.ag = mul i64 %i.af, -4658895280553007687     ; 2 uses
  %i.ah = lshr i64 %i.ag, 31
  %i.ai = xor i64 %i.ah, %i.ag
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = and i32 %i.k, %i.aj                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !101
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_4TypeEjEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.at, %.lr.ph.i ], [ %i.ak, %bb.b ]
  %i.as = add i32 %.014.i, 1
  %i.at = and i32 %i.as, %i.k                     ; 3 uses
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = lshr i64 %i.au, 5                       ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !101
  %i.ay = and i32 %i.at, 31                       ; 2 uses
  %i.az = lshr i32 %i.ax, %i.ay
  %i.ba = trunc i32 %i.az to i1
  br i1 %i.ba, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_4TypeEjEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !2392

_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_4TypeEjEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.al, %bb.b ], [ %i.au, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.am, %bb.b ], [ %i.av, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ap, %bb.b ], [ %i.ay, %.lr.ph.i ]
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !101
  store i32 %i.be, ptr %i.bc, align 8, !tbaa !101
  %i.bf = shl nuw i32 1, %.lcssa.i
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !101
  %i.bi = or i32 %i.bh, %i.bf
  store i32 %i.bi, ptr %i.bg, align 4, !tbaa !101
  %i.bj = add i32 %.0.i17, -1
  %i.bk = and i32 %i.bj, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bk, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2393

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_4TypeEjEjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_4TypeEjEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !2394

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_4TypeEjEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1374
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_4TypeEjEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_4TypeEjEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_4TypeEjEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bl = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_4TypeEjEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !2386
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bn, ptr %i.bo, align 8, !tbaa !2386
  %i.bp = icmp eq i32 %i.bl, 0
  br i1 %i.bp, label %_ZN4llvm8DenseMapISt4pairIPNS_4TypeEjEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_4TypeEjEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bq = load ptr, ptr %1, align 8, !tbaa !1375
  %i.br = zext i32 %i.bl to i64                   ; 2 uses
  %i.bs = mul nuw nsw i64 %i.br, 24
  %i.bt = add nuw nsw i64 %i.br, 31
  %i.bu = lshr i64 %i.bt, 3
  %i.bv = and i64 %i.bu, 1073741820
  %i.bw = add nuw nsw i64 %i.bv, %i.bs
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bq, i64 noundef %i.bw, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !1374
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapISt4pairIPNS_4TypeEjEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEE4killEv.exit

_ZN4llvm8DenseMapISt4pairIPNS_4TypeEjEjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_4TypeEjEjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare noundef ptr @_ZN4llvm16ExtractValueInst14getIndexedTypeEPNS_4TypeENS_8ArrayRefIjEE(ptr noundef, ptr, i64) local_unnamed_addr #4

declare void @_ZN4llvm16ExtractValueInst4initENS_8ArrayRefIjEERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(104), ptr, i64, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #4

declare void @_ZN4llvm7CmpInstC2EPNS_4TypeENS_11Instruction8OtherOpsENS0_9PredicateEPNS_5ValueES7_RKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(34), ptr noundef byval(%"class.llvm::InsertPosition") align 8) unnamed_addr #4

declare void @_ZN4llvm11Instruction11copyIRFlagsEPKNS_5ValueEb(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare void @_ZN4llvm10ReturnInstC1ERNS_11LLVMContextEPNS_5ValueENS_4User9AllocInfoENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32, ptr, i64) unnamed_addr #4

declare void @_ZN4llvm12UncondBrInstC1EPNS_10BasicBlockENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr, i64) unnamed_addr #4

declare void @_ZN4llvm10CondBrInstC1EPNS_5ValueEPNS_10BasicBlockES4_NS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef, ptr noundef, ptr, i64) unnamed_addr #4

declare void @_ZN4llvm17CleanupReturnInstC1EPNS_5ValueEPNS_10BasicBlockENS_4User9AllocInfoENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef, i32, ptr, i64) unnamed_addr #4

declare void @_ZN4llvm15CatchReturnInstC1EPNS_5ValueEPNS_10BasicBlockENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef, ptr, i64) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_10BasicBlockELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !66
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #29
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !66
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !66
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !66
  ret void
}

declare void @_ZN4llvm15CatchSwitchInstC1EPNS_5ValueEPNS_10BasicBlockEjRKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(76), ptr noundef, ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(34), ptr noundef byval(%"class.llvm::InsertPosition") align 8) unnamed_addr #4

declare noundef ptr @_ZN4llvm4UsernwEmNS0_26HungOffOperandsAllocMarkerE(i64 noundef) local_unnamed_addr #4

declare void @_ZN4llvm14FuncletPadInstC2ENS_11Instruction13FuncletPadOpsEPNS_5ValueENS_8ArrayRefIS4_EENS_4User9AllocInfoERKNS_5TwineENS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(72), i32 noundef, ptr noundef, ptr, i64, i32, ptr noundef nonnull align 8 dereferenceable(34), ptr noundef byval(%"class.llvm::InsertPosition") align 8) unnamed_addr #4

declare void @_ZN4llvm10SwitchInstC1EPNS_5ValueEPNS_10BasicBlockEjNS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(76), ptr noundef, ptr noundef, i32 noundef, ptr, i64) unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef i32 @_ZNK4llvm5APInt7compareERKS0_(ptr noundef nonnull align 8 dereferenceable(12), ptr noundef nonnull align 8 dereferenceable(12)) local_unnamed_addr #23

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseIPNS_11ConstantIntELb1EE15growAndPushBackES2_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !66
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #29
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !66
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.h
  store ptr %1, ptr %i.i, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !66
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !66
  ret void
}

declare noundef ptr @_ZN4llvm15MetadataAsValue3getERNS_11LLVMContextEPNS_8MetadataE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN4llvm22BitcodeReaderValueList14getValueFwdRefEjPNS_4TypeEjPNS_10BasicBlockE(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4llvm4UserdlEPvNS0_26HungOffOperandsAllocMarkerE(ptr noundef) local_unnamed_addr #6

declare void @_ZN4llvm14IndirectBrInstC1EPNS_5ValueEjNS_14InsertPositionE(ptr noundef nonnull align 8 dereferenceable(76), ptr noundef, i32 noundef, ptr, i64) unnamed_addr #4

declare noundef ptr @_ZN4llvm4UsernwEmNS0_41IntrusiveOperandsAndDescriptorAllocMarkerE(i64 noundef, i64) local_unnamed_addr #4

declare void @_ZN4llvm10InvokeInst4initEPNS_12FunctionTypeEPNS_5ValueEPNS_10BasicBlockES6_NS_8ArrayRefIS4_EENS7_INS_17OperandBundleDefTIS4_EEEERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef byval(%"class.llvm::ArrayRef.529") align 8, ptr noundef byval(%"class.llvm::ArrayRef.635") align 8, ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #4

declare noundef ptr @_ZNK4llvm9Attribute14getValueAsTypeEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #4

declare ptr @_ZN4llvm9Attribute16getWithByValTypeERNS_11LLVMContextEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

declare ptr @_ZN4llvm9Attribute20getWithStructRetTypeERNS_11LLVMContextEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

declare ptr @_ZN4llvm9Attribute19getWithInAllocaTypeERNS_11LLVMContextEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #4

declare ptr @_ZNK4llvm13AttributeList17addParamAttributeERNS_11LLVMContextENS_8ArrayRefIjEENS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr, i64, ptr) local_unnamed_addr #4

declare noundef ptr @_ZNK4llvm13AttributeList19getParamElementTypeEj(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

declare ptr @_ZN4llvm9Attribute3getERNS_11LLVMContextENS0_8AttrKindEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef) local_unnamed_addr #4

declare noundef i32 @_ZNK4llvm8CallBase14getIntrinsicIDEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZNK4llvm13AttributeList19hasAttributeAtIndexEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #4
end_hunk_6
begin_hunk_7_@_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_EjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E24lookupOrInsertIntoBucketIRKS5_JEEES2_IPSA_bEOT_DpOT0_:bb.a
  %i.bh = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.bi = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.bj = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = ptrtoint ptr %i.bh to i64
  %i.bm = sub i64 %i.bk, %i.bl
  %i.bn = sdiv exact i64 %i.bm, 24                ; 2 uses
  %i.bo = trunc i64 %i.bn to i32
  %i.bp = and i32 %i.bo, 31
  %i.bq = shl nuw i32 1, %i.bp
  %i.br = lshr i64 %i.bn, 5
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !101
  %i.bu = or i32 %i.bq, %i.bt
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !101
  %i.bv = load i32, ptr %i.ba, align 8, !tbaa !2399
  %i.bw = add i32 %i.bv, 1
  store i32 %i.bw, ptr %i.ba, align 8, !tbaa !2399
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store i32 0, ptr %i.bx, align 8, !tbaa !101
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_EjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_EjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_EjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit
  %.sroa.0.0 = phi ptr [ %i.bj, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_EjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit ], [ %i.aj, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_EjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E22findBucketForInsertionIS5_EEPSA_RKT_SE_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_EjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E15LookupBucketForIS5_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1965, !noalias !2441 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2409, !noalias !2441 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1962, !noalias !2441 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1910   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1912 ; 2 uses
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = mul i64 %i.o, -4658895280553007687       ; 2 uses
  %i.q = lshr i64 %i.p, 31
  %i.r = xor i64 %i.q, %i.p
  %i.s = shl i64 %i.l, 32
  %i.t = and i64 %i.r, 4294967295
  %i.u = or disjoint i64 %i.t, %i.s
  %i.v = mul i64 %i.u, -4658895280553007687       ; 2 uses
  %i.w = lshr i64 %i.v, 31
  %i.x = xor i64 %i.w, %i.v
  %i.y = trunc i64 %i.x to i32
  %i.z = and i32 %i.g, %i.y                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !101
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %.thread, !prof !671

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.ai = phi ptr [ %i.as, %bb.c ], [ %i.ab, %bb.b ] ; 3 uses
  %.024 = phi i32 [ %i.aq, %bb.c ], [ %i.z, %bb.b ]
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1910
  %i.ak = icmp eq ptr %i.h, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = icmp eq ptr %i.n, %i.am
  %i.ao = select i1 %i.ak, i1 %i.an, i1 false     ; 3 uses
  br i1 %i.ao, label %.thread, label %bb.c, !prof !672

bb.c:                                             ; preds = %.lr.ph
  %i.ap = add nuw i32 %.024, 1
  %i.aq = and i32 %i.ap, %i.g                     ; 3 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.ar ; 2 uses
  %i.at = lshr i64 %i.ar, 5
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !101
  %i.aw = and i32 %i.aq, 31
  %i.ax = lshr i32 %i.av, %i.aw
  %i.ay = trunc i32 %i.ax to i1
  br i1 %i.ay, label %.lr.ph, label %.thread, !prof !673, !llvm.loop !2439

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.ab, %bb.b ], [ null, %bb.a ], [ %i.as, %bb.c ], [ %i.ai, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ao, %bb.c ], [ %i.ao, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2440
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_EjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.597", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1962
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1965
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2409
  store i32 0, ptr %i.p, align 16, !tbaa !2399
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_EjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !79
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2440
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !79
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !79
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !79
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !101 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !101
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !101
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !101
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !101
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapISt4pairIPNS_10BasicBlockES3_EjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapISt4pairIPNS_10BasicBlockES3_EjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEED2Ev.exit

_ZN4llvm8DenseMapISt4pairIPNS_10BasicBlockES3_EjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_EjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1965
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2409
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1962 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2409 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1965
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1962
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i18 = icmp eq i64 %i.n, 0
  br i1 %.not.i18, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES7_EjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph21

.lr.ph21:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !101  ; 2 uses
  %.not11.i16 = icmp eq i32 %i.p, 0
  br i1 %.not11.i16, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph21
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_EjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i17 = phi i32 [ %i.p, %.lr.ph ], [ %i.bn, %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_EjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i17, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1910
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !1912
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = mul i64 %i.ac, -4658895280553007687     ; 2 uses
  %i.ae = lshr i64 %i.ad, 31
  %i.af = xor i64 %i.ae, %i.ad
  %i.ag = shl i64 %i.z, 32
  %i.ah = and i64 %i.af, 4294967295
  %i.ai = or disjoint i64 %i.ah, %i.ag
  %i.aj = mul i64 %i.ai, -4658895280553007687     ; 2 uses
  %i.ak = lshr i64 %i.aj, 31
  %i.al = xor i64 %i.ak, %i.aj
  %i.am = trunc i64 %i.al to i32
  %i.an = and i32 %i.k, %i.am                     ; 3 uses
  %i.ao = zext i32 %i.an to i64                   ; 2 uses
  %i.ap = lshr i64 %i.ao, 5                       ; 2 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ap
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !101
  %i.as = and i32 %i.an, 31                       ; 2 uses
  %i.at = lshr i32 %i.ar, %i.as
  %i.au = trunc i32 %i.at to i1
  br i1 %i.au, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_EjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.aw, %.lr.ph.i ], [ %i.an, %bb.b ]
  %i.av = add i32 %.014.i, 1
  %i.aw = and i32 %i.av, %i.k                     ; 3 uses
  %i.ax = zext i32 %i.aw to i64                   ; 2 uses
  %i.ay = lshr i64 %i.ax, 5                       ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !101
  %i.bb = and i32 %i.aw, 31                       ; 2 uses
  %i.bc = lshr i32 %i.ba, %i.bb
  %i.bd = trunc i32 %i.bc to i1
  br i1 %i.bd, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_EjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !2446

_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_EjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ao, %bb.b ], [ %i.ax, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ap, %bb.b ], [ %i.ay, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.as, %bb.b ], [ %i.bb, %.lr.ph.i ]
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !101
  store i32 %i.bh, ptr %i.bf, align 8, !tbaa !101
  %i.bi = shl nuw i32 1, %.lcssa.i
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !101
  %i.bl = or i32 %i.bk, %i.bi
  store i32 %i.bl, ptr %i.bj, align 4, !tbaa !101
  %i.bm = add i32 %.0.i17, -1
  %i.bn = and i32 %i.bm, %.0.i17                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bn, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2447

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES4_EjNS_12DenseMapInfoIS5_vEENS_6detail12DenseMapPairIS5_jEEEES5_jS7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES7_EjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph21, !llvm.loop !2448

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES7_EjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1962
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES7_EjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES7_EjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES7_EjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bo = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES7_EjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !2399
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bq, ptr %i.br, align 8, !tbaa !2399
  %i.bs = icmp eq i32 %i.bo, 0
  br i1 %i.bs, label %_ZN4llvm8DenseMapISt4pairIPNS_10BasicBlockES3_EjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES7_EjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bt = load ptr, ptr %1, align 8, !tbaa !1965
  %i.bu = zext i32 %i.bo to i64                   ; 2 uses
  %i.bv = mul nuw nsw i64 %i.bu, 24
  %i.bw = add nuw nsw i64 %i.bu, 31
  %i.bx = lshr i64 %i.bw, 3
  %i.by = and i64 %i.bx, 1073741820
  %i.bz = add nuw nsw i64 %i.by, %i.bv
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bt, i64 noundef %i.bz, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !1962
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapISt4pairIPNS_10BasicBlockES3_EjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEE4killEv.exit

_ZN4llvm8DenseMapISt4pairIPNS_10BasicBlockES3_EjNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_jEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapISt4pairIPNS_10BasicBlockES7_EjNS_12DenseMapInfoIS8_vEENS_6detail12DenseMapPairIS8_jEEEES8_jSA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24lookupOrInsertIntoBucketIS3_JS5_EEESt4pairIPSA_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load i32, ptr %0, align 8, !noalias !2449 ; 2 uses
  %i.c = and i32 %i.b, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.c, 0               ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8, !noalias !2449 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !noalias !2449 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !noalias !2449
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.sink2.i.i.i = select i1 %.not.i.i.i, ptr %i.e, ptr %i.d ; 2 uses
  %.sink1.i.i.i = select i1 %.not.i.i.i, ptr %i.g, ptr %i.j ; 2 uses
  %.sink.i.i.i = select i1 %.not.i.i.i, i32 %i.i, i32 4 ; 4 uses
  %i.k = icmp eq i32 %.sink.i.i.i, 0
  br i1 %i.k, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = add i32 %.sink.i.i.i, -1                 ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !1541   ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = mul i64 %i.n, -4658895280553007687       ; 2 uses
  %i.p = lshr i64 %i.o, 31
  %i.q = xor i64 %i.p, %i.o
  %i.r = trunc i64 %i.q to i32
  %i.s = and i32 %i.l, %i.r                       ; 3 uses
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !101
  %i.y = and i32 %i.s, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.i, label %.loopexit, !prof !671

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.ab = phi ptr [ %i.ah, %bb.c ], [ %i.u, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.af, %bb.c ], [ %i.s, %bb.b ]
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !1541
  %i.ad = icmp eq ptr %i.m, %i.ac
  br i1 %i.ad, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_.exit, label %bb.c, !prof !672

bb.c:                                             ; preds = %.lr.ph.i
  %i.ae = add nuw i32 %.024.i, 1
  %i.af = and i32 %i.ae, %i.l                     ; 3 uses
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %.sink2.i.i.i, i64 %i.ag ; 2 uses
  %i.ai = lshr i64 %i.ag, 5
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.sink1.i.i.i, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !101
  %i.al = and i32 %i.af, 31
  %i.am = lshr i32 %i.ak, %i.al
  %i.an = trunc i32 %i.am to i1
  br i1 %i.an, label %.lr.ph.i, label %.loopexit, !prof !673, !llvm.loop !2454

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.u, %bb.b ], [ null, %bb.a ], [ %i.ah, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !2455
  %i.ao = shl i32 %i.b, 1
  %i.ap = and i32 %i.ao, -4
  %i.aq = add i32 %i.ap, 4
  %i.ar = mul i32 %.sink.i.i.i, 3
  %.not.i = icmp ult i32 %i.aq, %i.ar
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit, label %bb.d, !prof !672

bb.d:                                             ; preds = %.loopexit
  %i.as = shl i32 %.sink.i.i.i, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.as)
  %i.at = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load i32, ptr %0, align 8
  %.pre5.i = load ptr, ptr %i.a, align 8, !tbaa !2455
  %.pre6.i = and i32 %.pre.i, 1
  %.pre = load ptr, ptr %i.f, align 8
  %.pre17 = load ptr, ptr %i.d, align 8
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E22findBucketForInsertionIS3_EEPSA_RKT_SE_.exit: ; preds = %.loopexit, %bb.d
  %i.au = phi ptr [ %.pre17, %bb.d ], [ %i.e, %.loopexit ]
  %i.av = phi ptr [ %.pre, %bb.d ], [ %i.g, %.loopexit ]
  %.pre-phi.i = phi i32 [ %.pre6.i, %bb.d ], [ %i.c, %.loopexit ]
  %i.aw = phi ptr [ %.pre5.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %.pre-phi.i, 0      ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, ptr %i.av, ptr %i.j
  %i.ay = select i1 %.not.i.i.i.i, ptr %i.au, ptr %i.d
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = ptrtoint ptr %i.ay to i64
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = ashr exact i64 %i.bb, 4                 ; 2 uses
  %i.bd = trunc i64 %i.bc to i32
  %i.be = and i32 %i.bd, 31
  %i.bf = shl nuw i32 1, %i.be
end_hunk_7
begin_hunk_8_@_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E15LookupBucketForIS3_EEbRKT_RPSA_:bb.a
  %i.ak = and i32 %i.ae, 31
  %i.al = lshr i32 %i.aj, %i.ak
  %i.am = trunc i32 %i.al to i1
  br i1 %i.am, label %.lr.ph, label %.thread, !prof !673, !llvm.loop !2454

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.t, %bb.b ], [ null, %bb.a ], [ %i.ag, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2455
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::SmallDenseMap.656", align 8 ; 16 uses
  %i.a = icmp ult i32 %1, 5                       ; 2 uses
  br i1 %i.a, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 72
  br label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEC2EjNS_12DenseMapBaseISA_S2_S4_S6_S9_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit: ; preds = %bb.a
  %i.c = add i32 %1, -1
  %i.d = zext i32 %i.c to i64                     ; 2 uses
  %i.e = lshr i64 %i.d, 1
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 2
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 4
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 8
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 16
  %i.n = or i64 %i.m, %i.l
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = add i32 %i.o, 1
  %.sroa.speculated.i = tail call i32 @llvm.umax.i32(i32 %i.p, i32 64) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.q = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.r = shl nuw nsw i64 %i.q, 4                  ; 2 uses
  %i.s = add nuw nsw i64 %i.q, 31
  %i.t = lshr i64 %i.s, 3
  %i.u = and i64 %i.t, 1073741820                 ; 2 uses
  %i.v = add nuw nsw i64 %i.u, %i.r
  %i.w = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.v, i64 noundef 8) #29 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.w, ptr %i.x, align 8, !tbaa !47
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.r ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !47
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 %.sroa.speculated.i, ptr %i.aa, align 8, !tbaa !47
  br label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEC2EjNS_12DenseMapBaseISA_S2_S4_S6_S9_E16ExactBucketCountE.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEC2EjNS_12DenseMapBaseISA_S2_S4_S6_S9_E16ExactBucketCountE.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit
  %.0.i4 = phi i32 [ 4, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread ], [ %.sroa.speculated.i, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit ] ; 3 uses
  %.sink.i = phi i32 [ 1, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread ], [ 0, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit ]
  %i.ab = phi i64 [ 4, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.u, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit ]
  %i.ac = phi ptr [ %i.b, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit.thread ], [ %i.y, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE17roundUpNumBucketsEj.exit ]
  store i32 %.sink.i, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ac, i8 0, i64 %i.ab, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(80) %0)
  %i.ad = load i32, ptr %2, align 8               ; 3 uses
  %i.ae = and i32 %i.ad, 1
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit.thread, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit.thread: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEC2EjNS_12DenseMapBaseISA_S2_S4_S6_S9_E16ExactBucketCountE.exit
  store i32 %i.ad, ptr %0, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr noundef nonnull align 8 dereferenceable(24) %i.af, i64 24, i1 false), !tbaa.struct !2461
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i32 0, ptr %i.ah, align 8, !tbaa !47
  br label %bb.b

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEEC2EjNS_12DenseMapBaseISA_S2_S4_S6_S9_E16ExactBucketCountE.exit
  br i1 %i.a, label %.thread.i, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i

.thread.i:                                        ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24initWithExactBucketCountEj.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i: ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit
  %i.aj = load i32, ptr %0, align 8
  %i.ak = and i32 %i.aj, -2
  store i32 %i.ak, ptr %0, align 8
  %i.al = zext i32 %.0.i4 to i64                  ; 2 uses
  %i.am = shl nuw nsw i64 %i.al, 4                ; 2 uses
  %i.an = add nuw nsw i64 %i.al, 31
  %i.ao = lshr i64 %i.an, 3
  %i.ap = and i64 %i.ao, 1073741820
  %i.aq = add nuw nsw i64 %i.ap, %i.am
  %i.ar = call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.aq, i64 noundef 8) #29 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !47
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.am ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.at, ptr %i.au, align 8, !tbaa !47
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.0.i4, ptr %i.av, align 8, !tbaa !47
  %.pre.i = load i32, ptr %0, align 8
  %.pre.fr.i = freeze i32 %.pre.i
  %i.aw = and i32 %.pre.fr.i, 1                   ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.aw, 0            ; 2 uses
  %i.ax = select i1 %.not.i.i.i.i, i32 %.0.i4, i32 4
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 72
  %spec.select.i = select i1 %.not.i.i.i.i, ptr %i.at, ptr %i.ay
  %i.az = zext i32 %i.ax to i64
  %i.ba = add nuw nsw i64 %i.az, 31
  %i.bb = lshr i64 %i.ba, 3
  %i.bc = and i64 %i.bb, 1073741820
  br label %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24initWithExactBucketCountEj.exit

_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24initWithExactBucketCountEj.exit: ; preds = %.thread.i, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i
  %.sink = phi i32 [ 1, %.thread.i ], [ %i.aw, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i ]
  %i.bd = phi i64 [ 4, %.thread.i ], [ %i.bc, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i ]
  %i.be = phi ptr [ %i.ai, %.thread.i ], [ %spec.select.i, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE15allocateBucketsEj.exit.i ]
  store i32 %.sink, ptr %0, align 8
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.be, i8 0, i64 %i.bd, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(80) %2)
  %.pre = load i32, ptr %2, align 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit.thread, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24initWithExactBucketCountEj.exit
  %i.bf = phi i32 [ %i.ad, %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE13maybeMoveFastEOSA_.exit.thread ], [ %.pre, %_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E24initWithExactBucketCountEj.exit ]
  %i.bg = and i32 %i.bf, 1
  %.not.i.i = icmp eq i32 %i.bg, 0
  br i1 %.not.i.i, label %bb.c, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !47 ; 2 uses
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !47
  %i.bm = zext i32 %i.bi to i64                   ; 2 uses
  %i.bn = shl nuw nsw i64 %i.bm, 4
  %i.bo = add nuw nsw i64 %i.bm, 31
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = and i64 %i.bp, 1073741820
  %i.br = add nuw nsw i64 %i.bq, %i.bn
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bl, i64 noundef %i.br, i64 noundef 8) #29
  br label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 8                ; 2 uses
  %i.b = and i32 %i.a, 1
  %.not.i.i = icmp eq i32 %i.b, 0                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = select i1 %.not.i.i, ptr %i.d, ptr %i.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = select i1 %.not.i.i, ptr %i.h, ptr %i.f
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8
  %i.l = select i1 %.not.i.i, i32 %i.k, i32 4
  %i.m = load i32, ptr %0, align 8
  %i.n = and i32 %i.m, 1                          ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.n, 0               ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = select i1 %.not.i.i.i, ptr %i.q, ptr %i.o ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = select i1 %.not.i.i.i, ptr %i.t, ptr %i.s
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i32, ptr %i.v, align 8
  %i.x = add i32 %i.w, -1
  %i.y = select i1 %.not.i.i.i, i32 %i.x, i32 3   ; 2 uses
  %i.z = zext i32 %i.l to i64
  %i.aa = add nuw nsw i64 %i.z, 31
  %i.ab = lshr i64 %i.aa, 5                       ; 2 uses
  %.not.i21 = icmp eq i64 %i.ab, 0
  br i1 %.not.i21, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, label %.lr.ph24

.lr.ph24:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !101 ; 2 uses
  %.not11.i19 = icmp eq i32 %i.ad, 0
  br i1 %.not11.i19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph24
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.ae = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit
  %.0.i20 = phi i32 [ %i.ad, %.lr.ph ], [ %i.bo, %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit ] ; 3 uses
  %i.af = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i20, i1 true)
  %i.ag = or disjoint i32 %i.af, %i.ae
  %i.ah = zext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.ah ; 2 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !1541 ; 2 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = mul i64 %i.ak, -4658895280553007687     ; 2 uses
  %i.am = lshr i64 %i.al, 31
  %i.an = xor i64 %i.am, %i.al
  %i.ao = trunc i64 %i.an to i32
  %i.ap = and i32 %i.y, %i.ao                     ; 3 uses
  %i.aq = zext i32 %i.ap to i64                   ; 2 uses
  %i.ar = lshr i64 %i.aq, 5                       ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !101 ; 2 uses
  %i.au = and i32 %i.ap, 31                       ; 2 uses
  %i.av = lshr i32 %i.at, %i.au
  %i.aw = trunc i32 %i.av to i1
  br i1 %i.aw, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ay, %.lr.ph.i ], [ %i.ap, %bb.b ]
  %i.ax = add i32 %.016.i, 1
  %i.ay = and i32 %i.ax, %i.y                     ; 3 uses
  %i.az = zext i32 %i.ay to i64                   ; 2 uses
  %i.ba = lshr i64 %i.az, 5                       ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.ba
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !101 ; 2 uses
  %i.bd = and i32 %i.ay, 31                       ; 2 uses
  %i.be = lshr i32 %i.bc, %i.bd
  %i.bf = trunc i32 %i.be to i1
  br i1 %i.bf, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, !llvm.loop !2462

_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ar, %bb.b ], [ %i.ba, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.aq, %bb.b ], [ %i.az, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.at, %bb.b ], [ %i.bc, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.au, %bb.b ], [ %i.bd, %.lr.ph.i ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.lcssa15.i
  %i.bh = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.lcssa13.i ; 2 uses
  store ptr %i.aj, ptr %i.bh, align 8, !tbaa !1541
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !1544
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !1544
  %i.bl = shl nuw i32 1, %.lcssa.i
  %i.bm = or i32 %i.bl, %.lcssa11.i
  store i32 %i.bm, ptr %i.bg, align 4, !tbaa !101
  %i.bn = add i32 %.0.i20, -1
  %i.bo = and i32 %i.bn, %.0.i20                  ; 2 uses
  %.not11.i = icmp eq i32 %i.bo, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2463

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S5_EEEES3_S5_S7_SA_E8moveFromERSB_ENKUljE_clEj.exit, %.lr.ph24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.ab
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph24, !llvm.loop !2464

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %1, align 8
  %.pre29 = load i32, ptr %0, align 8
  %.pre30 = and i32 %.pre29, 1
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %.pre-phi = phi i32 [ %.pre30, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.n, %bb.a ]
  %i.bp = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.a, %bb.a ]
  %i.bq = and i32 %i.bp, -2
  %i.br = or disjoint i32 %.pre-phi, %i.bq
  store i32 %i.br, ptr %0, align 8
  %i.bs = load i32, ptr %1, align 8               ; 3 uses
  %i.bt = and i32 %i.bs, 1
  %.not.i.i11 = icmp eq i32 %i.bt, 0
  br i1 %.not.i.i11, label %bb.c, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit
  %i.bu = load i32, ptr %i.j, align 8, !tbaa !47  ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bw = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.bx = zext i32 %i.bu to i64                   ; 2 uses
  %i.by = shl nuw nsw i64 %i.bx, 4
  %i.bz = add nuw nsw i64 %i.bx, 31
  %i.ca = lshr i64 %i.bz, 3
  %i.cb = and i64 %i.ca, 1073741820
  %i.cc = add nuw nsw i64 %i.cb, %i.by
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bw, i64 noundef %i.cc, i64 noundef 8) #29
  %.pre.i = load i32, ptr %1, align 8
  br label %_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit

_ZN4llvm13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S4_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit, %bb.c, %bb.d
  %i.cd = phi i32 [ %i.bs, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_13SmallDenseMapIPNS_10BasicBlockEPNS_5ValueELj4ENS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S8_EEEES6_S8_SA_SD_E8moveFromERSE_EUljE_EEvPKjjT_.exit ], [ %i.bs, %bb.c ], [ %.pre.i, %bb.d ]
  %i.ce = and i32 %i.cd, -2
  store i32 %i.ce, ptr %1, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm4Type18isSizedDerivedTypeEPNS_15SmallPtrSetImplIPS0_EE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4llvm11PointerType24isLoadableOrStorableTypeEPNS_4TypeE(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden { i64, i8 } @_ZNK4llvm10DataLayout17getTypeSizeInBitsEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 6 uses
  %trunc = trunc i32 %i.b to i8
  switch i8 %trunc, label %bb.p [
    i8 8, label %bb.b
    i8 15, label %bb.c
    i8 17, label %bb.e
    i8 16, label %bb.f
    i8 13, label %bb.g
    i8 12, label %bb.h
    i8 0, label %bb.q
    i8 1, label %bb.q
    i8 2, label %bb.i
    i8 3, label %bb.j
    i8 6, label %bb.k
    i8 5, label %bb.k
    i8 10, label %bb.l
    i8 4, label %bb.m
    i8 18, label %bb.n
    i8 19, label %bb.n
    i8 21, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK4llvm10DataLayout14getPointerSpecEj(ptr noundef nonnull align 8 dereferenceable(912) %0, i32 noundef 0) #29
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2465
  %i.f = zext i32 %i.e to i64
  br label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.g = and i32 %i.b, 254
  %spec.select.i.i.i = icmp eq i32 %i.g, 18
  br i1 %spec.select.i.i.i, label %bb.d, label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1486
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1489
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8
  br label %_ZNK4llvm4Type22getPointerAddressSpaceEv.exit

_ZNK4llvm4Type22getPointerAddressSpaceEv.exit:    ; preds = %bb.c, %bb.d
  %i.k = phi i32 [ %.pre.i, %bb.d ], [ %i.b, %bb.c ]
  %i.l = lshr i32 %i.k, 8
  %i.m = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZNK4llvm10DataLayout14getPointerSpecEj(ptr noundef nonnull align 8 dereferenceable(912) %0, i32 noundef %i.l) #29
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !2465
  %i.p = zext i32 %i.o to i64
  br label %bb.q

bb.e:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.r = load i64, ptr %i.q, align 8, !tbaa !1634
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1639
  %i.u = tail call { i64, i8 } @_ZNK4llvm10DataLayout16getTypeAllocSizeEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(912) %0, ptr noundef %i.t) #29 ; 2 uses
  %.fca.0.extract1.i = extractvalue { i64, i8 } %i.u, 0
  %.fca.1.extract2.i = extractvalue { i64, i8 } %i.u, 1
  %i.v = shl i64 %i.r, 3
  %i.w = mul i64 %i.v, %.fca.0.extract1.i
  br label %bb.q

bb.f:                                             ; preds = %bb.a
  %i.x = tail call noundef ptr @_ZNK4llvm10DataLayout15getStructLayoutEPNS_10StructTypeE(ptr noundef nonnull align 8 dereferenceable(912) %0, ptr noundef nonnull %1) #29 ; 2 uses
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %i.x, align 8
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.6.0.copyload.i.i.i.i = load i8, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8
  %i.y = shl i64 %.sroa.0.0.copyload1.i.i.i.i, 3
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %i.z = lshr i32 %i.b, 8
  %i.aa = zext nneg i32 %i.z to i64
  br label %bb.q

bb.h:                                             ; preds = %bb.a
  %i.ab = lshr i32 %i.b, 8
  %i.ac = zext nneg i32 %i.ab to i64
  br label %bb.q

bb.i:                                             ; preds = %bb.a
  br label %bb.q

bb.j:                                             ; preds = %bb.a
  br label %bb.q

bb.k:                                             ; preds = %bb.a, %bb.a
end_hunk_8
begin_hunk_9_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS8_bEOT_DpOT0_:bb.a
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit, label %bb.d, !prof !672

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2929
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !1508
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1348
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !101
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !101
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !1519
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !1519
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !658
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !658
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr null, ptr %i.bi, align 8, !tbaa !658
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E22findBucketForInsertionIS3_EEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E15LookupBucketForIS3_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1348, !noalias !2930 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1508, !noalias !2930 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1347, !noalias !2930 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !658    ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !101
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !671

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !658
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !672

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !101
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !673, !llvm.loop !2928

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2929
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.191", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1347
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1348
  store ptr %i.y, ptr %i.q, align 8, !tbaa !1508
  store i32 0, ptr %i.p, align 16, !tbaa !1519
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !79
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2929
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !79
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !79
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !79
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !101 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !101
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !101
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !101
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !101
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_8FunctionES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPNS_8FunctionES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_8FunctionES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1348   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1508
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1347 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1508 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1348
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1347
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !101  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !658  ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !101 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !101 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !2935

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !658
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !658
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !658
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !101
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2936

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_8FunctionES3_NS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S3_EEEES3_S3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !2937

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1347
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !1519
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !1519
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPNS_8FunctionES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !1347
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_8FunctionES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_8FunctionES2_NS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_8FunctionES6_NS_12DenseMapInfoIS6_vEENS_6detail12DenseMapPairIS6_S6_EEEES6_S6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare void @_ZN4llvm21SymbolTableListTraitsINS_14GlobalVariableEJEE13addNodeToListEPS1_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E24lookupOrInsertIntoBucketIS4_JmEEESt4pairIPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !2938, !noalias !2941 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2946, !noalias !2941 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !2947, !noalias !2941 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !1544   ; 2 uses
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = mul i64 %i.j, -4658895280553007687       ; 2 uses
  %i.l = lshr i64 %i.k, 31
  %i.m = xor i64 %i.l, %i.k
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.h, %i.n                       ; 3 uses
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.p ; 2 uses
  %i.r = lshr i64 %i.p, 5
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !101
  %i.u = and i32 %i.o, 31
  %i.v = lshr i32 %i.t, %i.u
  %i.w = trunc i32 %i.v to i1
  br i1 %i.w, label %.lr.ph.i, label %.loopexit, !prof !671

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.x = phi ptr [ %i.ad, %bb.c ], [ %i.q, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.ab, %bb.c ], [ %i.o, %bb.b ]
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1544
  %i.z = icmp eq ptr %i.i, %i.y
  br i1 %i.z, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit, label %bb.c, !prof !672

bb.c:                                             ; preds = %.lr.ph.i
  %i.aa = add nuw i32 %.024.i, 1
  %i.ab = and i32 %i.aa, %i.h                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ac ; 2 uses
  %i.ae = lshr i64 %i.ac, 5
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !101
  %i.ah = and i32 %i.ab, 31
  %i.ai = lshr i32 %i.ag, %i.ah
  %i.aj = trunc i32 %i.ai to i1
  br i1 %i.aj, label %.lr.ph.i, label %.loopexit, !prof !673, !llvm.loop !2948

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.q, %bb.b ], [ null, %bb.a ], [ %i.ad, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !2949
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !2950
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit, label %bb.d, !prof !672

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !2949
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !2946
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !2938
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 4                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !101
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !101
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !2950
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !2950
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !1544
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !1544
  %i.bi = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bj = load i64, ptr %2, align 8, !tbaa !68
  store i64 %i.bj, ptr %i.bi, align 8, !tbaa !68
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E22findBucketForInsertionIS4_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E15LookupBucketForIS4_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !2938, !noalias !2951 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2946, !noalias !2951 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2947, !noalias !2951 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !1544   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !101
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !671

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !1544
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !672

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !101
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !673, !llvm.loop !2948

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !2949
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.306", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !2947
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !2938
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2946
  store i32 0, ptr %i.p, align 16, !tbaa !2950
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !79
  %i.aa = load ptr, ptr %0, align 8, !tbaa !2949
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !79
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !79
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !79
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !101 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !101
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !101
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !101
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !101
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPKNS_5ValueEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPKNS_5ValueEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEED2Ev.exit

_ZN4llvm8DenseMapIPKNS_5ValueEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !2938   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2946
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !2947 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2946 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !2938
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !2947
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_5ValueEmNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_mEEEES7_mS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !101  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !1544 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !101 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !101 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !2956

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store ptr %i.v, ptr %i.at, align 8, !tbaa !1544
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !68
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !68
  %i.ax = shl nuw i32 1, %.lcssa.i
  %i.ay = or i32 %i.ax, %.lcssa11.i
  store i32 %i.ay, ptr %i.as, align 4, !tbaa !101
  %i.az = add i32 %.0.i15, -1
  %i.ba = and i32 %i.az, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !2957

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPKNS_5ValueEmNS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_mEEEES4_mS6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_5ValueEmNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_mEEEES7_mS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !2958

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_5ValueEmNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_mEEEES7_mS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !2947
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_5ValueEmNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_mEEEES7_mS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_5ValueEmNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_mEEEES7_mS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_5ValueEmNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_mEEEES7_mS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_5ValueEmNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_mEEEES7_mS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !2950
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !2950
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapIPKNS_5ValueEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_5ValueEmNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_mEEEES7_mS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !2947
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPKNS_5ValueEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEE4killEv.exit

_ZN4llvm8DenseMapIPKNS_5ValueEmNS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_mEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPKNS_5ValueEmNS_12DenseMapInfoIS7_vEENS_6detail12DenseMapPairIS7_mEEEES7_mS9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare void @_ZN4llvm15BitstreamCursor18ReadBlockInfoBlockEb(ptr dead_on_unwind writable sret(%"class.llvm::Expected.874") align 8, ptr noundef nonnull align 8 dereferenceable(344), i1 noundef zeroext) local_unnamed_addr #4

declare ptr @_ZN4llvm13AttributeList3getERNS_11LLVMContextEjRKNS_11AttrBuilderE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #4

declare ptr @_ZN4llvm13AttributeList3getERNS_11LLVMContextENS_8ArrayRefIS0_EE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIjN4llvm13AttributeListESt4lessIjESaISt4pairIKjS1_EEEixEOj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !522  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !101    ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %bb.b ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.f = load i32, ptr %i.e, align 4, !tbaa !101
  %i.g = icmp ult i32 %i.f, %i.d                  ; 2 uses
  %.19.i.i.i = select i1 %i.g, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 6 uses
  %.1.in.v.i.i.i = select i1 %i.g, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !2959 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapIjN4llvm13AttributeListESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit, label %bb.b, !llvm.loop !2960

_ZNSt3mapIjN4llvm13AttributeListESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit: ; preds = %bb.b
  %i.h = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.h, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapIjN4llvm13AttributeListESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit
  %i.i = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.j = load i32, ptr %i.i, align 4, !tbaa !101
  %i.k = icmp ult i32 %i.d, %i.j
  br i1 %i.k, label %.critedge, label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm13AttributeListEESt10_Select1stIS4_ESt4lessIjESaIS4_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOjEESF_IJEEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_.exit

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapIjN4llvm13AttributeListESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit, %bb.c
  %.08.lcssa.i.i.i14 = phi ptr [ %.19.i.i.i, %bb.c ], [ %.19.i.i.i, %_ZNSt3mapIjN4llvm13AttributeListESt4lessIjESaISt4pairIKjS1_EEE11lower_boundERS5_.exit ], [ %i.c, %bb.a ]
  %i.l = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #32 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 3 uses
  %i.n = load i32, ptr %1, align 4, !tbaa !101
  store i32 %i.n, ptr %i.m, align 8, !tbaa !2961
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr null, ptr %i.o, align 8, !tbaa !2168
  %i.p = tail call { ptr, ptr } @_ZNSt8_Rb_treeIjSt4pairIKjN4llvm13AttributeListEESt10_Select1stIS4_ESt4lessIjESaIS4_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorIS4_ERS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i14, ptr noundef nonnull align 4 dereferenceable(4) %i.m) ; 2 uses
  %i.q = extractvalue { ptr, ptr } %i.p, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.p, 1        ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  br i1 %.not.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %.critedge
  %.not.i.i.i4 = icmp ne ptr %i.q, null
  %i.s = icmp eq ptr %i.r, %i.c
  %or.cond.i.i.i = select i1 %.not.i.i.i4, i1 true, i1 %i.s
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.u = load i32, ptr %i.m, align 8, !tbaa !101
  %i.v = load i32, ptr %i.t, align 4, !tbaa !101
  %i.w = icmp ult i32 %i.u, %i.v
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.d
  %i.x = phi i1 [ %i.w, %bb.e ], [ true, %bb.d ]
  tail call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.x, ptr noundef nonnull %i.l, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(32) %i.c) #29
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !916
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !916
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm13AttributeListEESt10_Select1stIS4_ESt4lessIjESaIS4_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOjEESF_IJEEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_.exit

bb.f:                                             ; preds = %.critedge
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 48) #31
  br label %_ZNSt8_Rb_treeIjSt4pairIKjN4llvm13AttributeListEESt10_Select1stIS4_ESt4lessIjESaIS4_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOjEESF_IJEEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_.exit

_ZNSt8_Rb_treeIjSt4pairIKjN4llvm13AttributeListEESt10_Select1stIS4_ESt4lessIjESaIS4_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJOjEESF_IJEEEEESt17_Rb_tree_iteratorIS4_ESt23_Rb_tree_const_iteratorIS4_EDpOT_.exit: ; preds = %bb.f, %.thread.i, %bb.c
  %.sroa.09.0 = phi ptr [ %.19.i.i.i, %bb.c ], [ %i.l, %.thread.i ], [ %i.q, %bb.f ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 40
  ret ptr %i.ab
}

declare noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder13addMemoryAttrENS_17MemoryEffectsBaseINS_13IRMemLocationEEE(ptr noundef nonnull align 8 dereferenceable(88), i32) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder15addCapturesAttrENS_11CaptureInfoE(ptr noundef nonnull align 8 dereferenceable(88), i16) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder16addAlignmentAttrENS_10MaybeAlignE(ptr noundef nonnull align 8 dereferenceable(88), i16) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder11addTypeAttrENS_9Attribute8AttrKindEPNS_4TypeE(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef, ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder12addAttributeENS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm11AttrBuilder21addStackAlignmentAttrENS_10MaybeAlignE(ptr noundef nonnull align 8 dereferenceable(88), i16) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_13AttributeListELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !66
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 8) #29
end_hunk_9
begin_hunk_10_@_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12GlobalObjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E24lookupOrInsertIntoBucketIS3_JEEESt4pairIPS9_bEOT_DpOT0_:bb.a
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !3116
  %i.am = shl i32 %i.al, 2
  %i.an = add i32 %i.am, 4
  %i.ao = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.an, %i.ao
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12GlobalObjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit, label %bb.d, !prof !672

bb.d:                                             ; preds = %.loopexit
  %i.ap = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12GlobalObjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ap)
  %i.aq = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12GlobalObjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3115
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !2321
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !1358
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12GlobalObjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12GlobalObjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.ar = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.as = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.at = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 3 uses
  %i.au = ptrtoint ptr %i.at to i64
  %i.av = ptrtoint ptr %i.ar to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = ashr exact i64 %i.aw, 3                 ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = and i32 %i.ay, 31
  %i.ba = shl nuw i32 1, %i.az
  %i.bb = lshr i64 %i.ax, 5
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !101
  %i.be = or i32 %i.ba, %i.bd
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !101
  %i.bf = load i32, ptr %i.ak, align 8, !tbaa !3116
  %i.bg = add i32 %i.bf, 1
  store i32 %i.bg, ptr %i.ak, align 8, !tbaa !3116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bh = load ptr, ptr %1, align 8, !tbaa !2322
  store ptr %i.bh, ptr %i.at, align 8, !tbaa !2322
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12GlobalObjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12GlobalObjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12GlobalObjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.at, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12GlobalObjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ %i.x, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12GlobalObjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E22findBucketForInsertionIS3_EEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12GlobalObjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E15LookupBucketForIS3_EEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1358, !noalias !3117 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2321, !noalias !3117 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1357, !noalias !3117 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load ptr, ptr %1, align 8, !tbaa !2322   ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.g, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !101
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph, label %.thread, !prof !671

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !2322
  %i.y = icmp eq ptr %i.h, %i.x                   ; 3 uses
  br i1 %i.y, label %.thread, label %bb.c, !prof !672

bb.c:                                             ; preds = %.lr.ph
  %i.z = add nuw i32 %.024, 1
  %i.aa = and i32 %i.z, %i.g                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !101
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph, label %.thread, !prof !673, !llvm.loop !3114

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ], [ %i.w, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.y, %bb.c ], [ %i.y, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3115
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12GlobalObjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.151", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !1357
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !1358
  store ptr %i.y, ptr %i.q, align 8, !tbaa !2321
  store i32 0, ptr %i.p, align 16, !tbaa !3116
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12GlobalObjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !79
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3115
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !79
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !79
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !79
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !101 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !101
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !101
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !101
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !101
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIPNS_12GlobalObjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIPNS_12GlobalObjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit

_ZN4llvm8DenseMapIPNS_12GlobalObjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12GlobalObjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !1358   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !2321
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !1357 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !2321 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !1358
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !1357
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12GlobalObjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !101  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12GlobalObjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.ax, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12GlobalObjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !2322 ; 2 uses
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = mul i64 %i.w, -4658895280553007687       ; 2 uses
  %i.y = lshr i64 %i.x, 31
  %i.z = xor i64 %i.y, %i.x
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.k, %i.aa                     ; 3 uses
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = lshr i64 %i.ac, 5                       ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !101 ; 2 uses
  %i.ag = and i32 %i.ab, 31                       ; 2 uses
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12GlobalObjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.ak, %.lr.ph.i ], [ %i.ab, %bb.b ]
  %i.aj = add i32 %.016.i, 1
  %i.ak = and i32 %i.aj, %i.k                     ; 3 uses
  %i.al = zext i32 %i.ak to i64                   ; 2 uses
  %i.am = lshr i64 %i.al, 5                       ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !101 ; 2 uses
  %i.ap = and i32 %i.ak, 31                       ; 2 uses
  %i.aq = lshr i32 %i.ao, %i.ap
  %i.ar = trunc i32 %i.aq to i1
  br i1 %i.ar, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12GlobalObjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !3122

_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12GlobalObjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ad, %bb.b ], [ %i.am, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.ag, %bb.b ], [ %i.ap, %.lr.ph.i ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %.lcssa13.i
  store ptr %i.v, ptr %i.at, align 8, !tbaa !2322
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = or i32 %i.au, %.lcssa11.i
  store i32 %i.av, ptr %i.as, align 4, !tbaa !101
  %i.aw = add i32 %.0.i15, -1
  %i.ax = and i32 %i.aw, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ax, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3123

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIPNS_12GlobalObjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12GlobalObjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !3124

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12GlobalObjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !1357
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12GlobalObjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12GlobalObjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12GlobalObjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ay = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12GlobalObjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !3116
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !3116
  %i.bc = icmp eq i32 %i.ay, 0
  br i1 %i.bc, label %_ZN4llvm8DenseMapIPNS_12GlobalObjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12GlobalObjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.bd = zext i32 %i.ay to i64                   ; 2 uses
  %i.be = shl nuw nsw i64 %i.bd, 3
  %i.bf = add nuw nsw i64 %i.bd, 31
  %i.bg = lshr i64 %i.bf, 3
  %i.bh = and i64 %i.bg, 1073741820
  %i.bi = add nuw nsw i64 %i.bh, %i.be
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bi, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !1357
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIPNS_12GlobalObjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit

_ZN4llvm8DenseMapIPNS_12GlobalObjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIPNS_12GlobalObjectENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS6_vEENS7_12DenseSetPairIS6_EEEES6_S8_SA_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

declare noundef zeroext i1 @_ZNK4llvm8Function17hasParamAttributeEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140), i32 noundef, i32 noundef) local_unnamed_addr #4

declare ptr @_ZNK4llvm8Function17getParamAttributeEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140), i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN4llvm8Function15removeParamAttrEjNS_9Attribute8AttrKindE(ptr noundef nonnull align 8 dereferenceable(140), i32 noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN4llvm8Function12addParamAttrEjNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(140), i32 noundef, ptr) local_unnamed_addr #4

declare void @_ZN4llvm8Function5setGCENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(140), ptr nofree noundef align 8 dereferenceable(32)) local_unnamed_addr #4

declare void @_ZN4llvm8FunctionC1EPNS_12FunctionTypeENS_11GlobalValue12LinkageTypesEjRKNS_5TwineEPNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(140), ptr noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(34), ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal noundef ptr @"_ZNSt17_Function_handlerIFPN4llvm4TypeEjEZN12_GLOBAL__N_113BitcodeReader21callValueTypeCallbackEPNS0_5ValueEjE3$_0E9_M_invokeERKSt9_Any_dataOj"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) #3 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !3125
  %.val2 = load i32, ptr %1, align 4, !tbaa !101
  %i.a = tail call fastcc noundef ptr @_ZN12_GLOBAL__N_113BitcodeReader11getTypeByIDEj(ptr noundef nonnull align 8 dereferenceable(2040) %.val, i32 noundef %.val2)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFPN4llvm4TypeEjEZN12_GLOBAL__N_113BitcodeReader21callValueTypeCallbackEPNS0_5ValueEjE3$_0E10_M_managerERSt9_Any_dataRKSA_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #18 align 2 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_113BitcodeReader21callValueTypeCallbackEPN4llvm5ValueEjE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit" [
    i32 1, label %bb.b
    i32 0, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !79
  br label %"_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_113BitcodeReader21callValueTypeCallbackEPN4llvm5ValueEjE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !tbaa !1542
  br label %"_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_113BitcodeReader21callValueTypeCallbackEPN4llvm5ValueEjE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %1, align 8
  store i64 %.val, ptr %0, align 8, !tbaa !517
  br label %"_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_113BitcodeReader21callValueTypeCallbackEPN4llvm5ValueEjE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN12_GLOBAL__N_113BitcodeReader21callValueTypeCallbackEPN4llvm5ValueEjE3$_0E10_M_managerERSt9_Any_dataRKS8_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef i32 @"_ZNSt17_Function_handlerIFjjjEZN12_GLOBAL__N_113BitcodeReader21callValueTypeCallbackEPN4llvm5ValueEjE3$_1E9_M_invokeERKSt9_Any_dataOjSB_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2) #20 align 2 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !tbaa !3127  ; 3 uses
  %.val3 = load i32, ptr %1, align 4, !tbaa !101  ; 2 uses
  %.val4 = load i32, ptr %2, align 4, !tbaa !101  ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.val, i64 616
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1377, !noalias !3129 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 624
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1378, !noalias !3129 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.val, i64 636
  %i.f = load i32, ptr %i.e, align 4, !tbaa !1376, !noalias !3129 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit.i.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = mul i32 %.val3, 37
  %.017.i.i.i.i.i.i.i.i = and i32 %i.h, %i.i      ; 3 uses
  %i.j = zext i32 %.017.i.i.i.i.i.i.i.i to i64    ; 2 uses
  %i.k = lshr i64 %i.j, 5
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !101, !noalias !3138
  %i.n = and i32 %.017.i.i.i.i.i.i.i.i, 31
  %i.o = lshr i32 %i.m, %i.n
  %i.p = trunc i32 %i.o to i1
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, !prof !671

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.q = add nuw i32 %.018.i.i.i.i.i.i.i.i, 1
  %.0.i.i.i.i.i.i.i.i = and i32 %i.q, %i.h        ; 3 uses
  %i.r = zext i32 %.0.i.i.i.i.i.i.i.i to i64      ; 2 uses
  %i.s = lshr i64 %i.r, 5
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !101, !noalias !3138
  %i.v = and i32 %.0.i.i.i.i.i.i.i.i, 31
  %i.w = lshr i32 %i.u, %i.v
  %i.x = trunc i32 %i.w to i1
  br i1 %i.x, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i, !prof !673

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.b, %bb.c
  %i.y = phi i64 [ %i.r, %bb.c ], [ %i.j, %bb.b ]
  %.018.i.i.i.i.i.i.i.i = phi i32 [ %.0.i.i.i.i.i.i.i.i, %bb.c ], [ %.017.i.i.i.i.i.i.i.i, %bb.b ]
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !101, !noalias !3138
  %i.ab = icmp eq i32 %.val3, %i.aa
  br i1 %i.ab, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4findERKj.exit.loopexit.i.i.i.i, label %bb.c, !prof !672

.loopexit.i.i.i.i.i.i:                            ; preds = %bb.c, %bb.b, %bb.a
  %i.ac = zext i32 %i.f to i64                    ; 2 uses
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %i.ac
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4findERKj.exit.i.i.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4findERKj.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i = zext i32 %i.f to i64
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4findERKj.exit.i.i.i.i

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4findERKj.exit.i.i.i.i: ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4findERKj.exit.loopexit.i.i.i.i, %.loopexit.i.i.i.i.i.i
  %.pre-phi.i.i.i.i = phi i64 [ %.pre.i.i.i.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4findERKj.exit.loopexit.i.i.i.i ], [ %i.ac, %.loopexit.i.i.i.i.i.i ]
  %.lcssa.sink.i.i.i.i.i.i = phi ptr [ %i.z, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4findERKj.exit.loopexit.i.i.i.i ], [ %i.ad, %.loopexit.i.i.i.i.i.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.b, i64 %.pre-phi.i.i.i.i
  %i.af = icmp eq ptr %.lcssa.sink.i.i.i.i.i.i, %i.ae
  br i1 %i.af, label %"_ZSt10__invoke_rIjRZN12_GLOBAL__N_113BitcodeReader21callValueTypeCallbackEPN4llvm5ValueEjE3$_1JjjEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EES8_E4typeEOS9_DpOSA_.exit", label %bb.d

bb.d:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11SmallVectorIjLj1EEENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4findERKj.exit.i.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i.i.i.i.i, i64 16
end_hunk_10
begin_hunk_11_@_ZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E24lookupOrInsertIntoBucketIRKmJmEEESt4pairIPS6_bEOT_DpOT0_:bb.a
  %i.an = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.am, %i.an
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit, label %bb.d, !prof !672

bb.d:                                             ; preds = %.loopexit
  %i.ao = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ao)
  %i.ap = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E15LookupBucketForImEEbRKT_RPS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3320
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !3317
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !3311
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit: ; preds = %.loopexit, %bb.d
  %i.aq = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.ar = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.as = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 4                 ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = lshr i64 %i.aw, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !101
  %i.bd = or i32 %i.az, %i.bc
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !101
  %i.be = load i32, ptr %i.aj, align 8, !tbaa !3321
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.aj, align 8, !tbaa !3321
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bg = load i64, ptr %1, align 8, !tbaa !68
  store i64 %i.bg, ptr %i.as, align 8, !tbaa !68
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bi = load i64, ptr %2, align 8, !tbaa !68
  %i.bj = trunc i64 %i.bi to i32
  store i32 %i.bj, ptr %i.bh, align 8, !tbaa !101
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E15LookupBucketForImEEbRKT_RPS6_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E15LookupBucketForImEEbRKT_RPS6_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit
  %.sroa.0.0 = phi ptr [ %i.as, %_ZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit ], [ %i.w, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E15LookupBucketForImEEbRKT_RPS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !3311, !noalias !3322 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3317, !noalias !3322 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3318, !noalias !3322 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i64, ptr %1, align 8, !tbaa !68     ; 2 uses
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !101
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !671

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.ab, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.z, %bb.c ], [ %i.m, %bb.b ]
  %i.w = load i64, ptr %i.v, align 8, !tbaa !68
  %i.x = icmp eq i64 %i.h, %i.w                   ; 3 uses
  br i1 %i.x, label %.thread, label %bb.c, !prof !672

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nuw i32 %.024, 1
  %i.z = and i32 %i.y, %i.g                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !101
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %.thread, !prof !673, !llvm.loop !3319

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ], [ %i.v, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.x, %bb.c ], [ %i.x, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3320
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.323", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !3318
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !3311
  store ptr %i.y, ptr %i.q, align 8, !tbaa !3317
  store i32 0, ptr %i.p, align 16, !tbaa !3321
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E8moveFromERS7_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !79
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3320
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !79
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !79
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !79
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !101 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !101
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !101
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !101
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !101
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEED2Ev.exit

_ZN4llvm8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E8moveFromERS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !3311   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3317
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3318 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3317 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !3311
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3318
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i15 = icmp eq i64 %i.n, 0
  br i1 %.not.i15, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit, label %.lr.ph18

.lr.ph18:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !101  ; 2 uses
  %.not11.i13 = icmp eq i32 %i.p, 0
  br i1 %.not11.i13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph18
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit
  %.0.i14 = phi i32 [ %i.p, %.lr.ph ], [ %i.ba, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i14, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !68   ; 2 uses
  %i.w = mul i64 %i.v, -4658895280553007687       ; 2 uses
  %i.x = lshr i64 %i.w, 31
  %i.y = xor i64 %i.x, %i.w
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.k, %i.z                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 5                       ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !101
  %i.af = and i32 %i.aa, 31                       ; 2 uses
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.015.i = phi i32 [ %i.aj, %.lr.ph.i ], [ %i.aa, %bb.b ]
  %i.ai = add i32 %.015.i, 1
  %i.aj = and i32 %i.ai, %i.k                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 5                       ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !101
  %i.ao = and i32 %i.aj, 31                       ; 2 uses
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit, !llvm.loop !3327

_ZZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa14.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa12.i = phi i64 [ %i.ab, %bb.b ], [ %i.ak, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa14.i ; 2 uses
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store i64 %i.v, ptr %i.as, align 8, !tbaa !68
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.av = load i32, ptr %i.au, align 8, !tbaa !101
  store i32 %i.av, ptr %i.at, align 8, !tbaa !101
  %i.aw = shl nuw i32 1, %.lcssa.i
  %i.ax = load i32, ptr %i.ar, align 4, !tbaa !101
  %i.ay = or i32 %i.ax, %i.aw
  store i32 %i.ay, ptr %i.ar, align 4, !tbaa !101
  %i.az = add i32 %.0.i14, -1
  %i.ba = and i32 %i.az, %.0.i14                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ba, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3328

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS3_S6_E8moveFromERS7_ENKUljE_clEj.exit, %.lr.ph18
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph18, !llvm.loop !3329

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3318
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.bb = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !3321
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !3321
  %i.bf = icmp eq i32 %i.bb, 0
  br i1 %i.bf, label %_ZN4llvm8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit
  %i.bg = zext i32 %i.bb to i64                   ; 2 uses
  %i.bh = shl nuw nsw i64 %i.bg, 4
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bl, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !3318
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEE4killEv.exit

_ZN4llvm8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEEEmjS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5dequeISt4pairImN4llvm22GlobalValueSummaryInfoEESaIS3_EE16_M_push_back_auxIJRKSt21piecewise_construct_tSt5tupleIJRmEESA_IJOS2_EEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !909  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !909
  %i.g = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i
  %i.m = mul nsw i64 %i.l, 9
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !809
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !910
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = sdiv exact i64 %i.s, 56
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !911
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !809
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = sdiv exact i64 %i.aa, 56
  %i.ac = add nsw i64 %i.u, %i.ab
  %i.ad = icmp eq i64 %i.ac, 164703072086692425
  br i1 %i.ad, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #33
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !906
  %i.ag = load ptr, ptr %0, align 8, !tbaa !907
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = sub i64 %i.g, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = sub i64 %i.af, %i.aj
  %i.al = icmp ult i64 %i.ak, 2
  br i1 %i.al, label %bb.d, label %_ZNSt5dequeISt4pairImN4llvm22GlobalValueSummaryInfoEESaIS3_EE22_M_reserve_map_at_backEm.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZNSt5dequeISt4pairImN4llvm22GlobalValueSummaryInfoEESaIS3_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef 1, i1 noundef zeroext false)
  br label %_ZNSt5dequeISt4pairImN4llvm22GlobalValueSummaryInfoEESaIS3_EE22_M_reserve_map_at_backEm.exit

_ZNSt5dequeISt4pairImN4llvm22GlobalValueSummaryInfoEESaIS3_EE22_M_reserve_map_at_backEm.exit: ; preds = %bb.c, %bb.d
  %i.am = tail call noalias noundef nonnull dereferenceable(504) ptr @_Znwm(i64 noundef 504) #32
  %i.an = load ptr, ptr %i.c, align 8, !tbaa !3330
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !908
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !913 ; 5 uses
  %i.aq = load i64, ptr %2, align 8, !tbaa !1528
  %i.ar = inttoptr i64 %i.aq to ptr
  %i.as = load i64, ptr %3, align 8, !tbaa !3285
  %i.at = inttoptr i64 %i.as to ptr               ; 4 uses
  %i.au = load i64, ptr %i.ar, align 8, !tbaa !68
  store i64 %i.au, ptr %i.ap, align 8, !tbaa !3217
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %i.av, ptr noundef nonnull align 8 dereferenceable(41) %i.at, i64 16, i1 false), !tbaa.struct !2488
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 16 ; 2 uses
  %i.ay = load <2 x ptr>, ptr %i.ax, align 8, !tbaa !3291
  store <2 x ptr> %i.ay, ptr %i.aw, align 8, !tbaa !3291
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 40
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !818
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !818
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i8 0, i64 24, i1 false)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ap, i64 48 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.be = load i8, ptr %i.bd, align 8
  %i.bf = and i8 %i.be, 1
  %i.bg = load i8, ptr %i.bc, align 8
  %i.bh = and i8 %i.bg, -2
  %i.bi = or disjoint i8 %i.bh, %i.bf
  store i8 %i.bi, ptr %i.bc, align 8
  %i.bj = load ptr, ptr %i.c, align 8, !tbaa !3330
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  store ptr %i.bk, ptr %i.c, align 8, !tbaa !909
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !908 ; 3 uses
  store ptr %i.bl, ptr %i.o, align 8, !tbaa !910
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 504
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bm, ptr %i.bn, align 8, !tbaa !911
  store ptr %i.bl, ptr %i.a, align 8, !tbaa !913
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt5dequeISt4pairImN4llvm22GlobalValueSummaryInfoEESaIS3_EE17_M_reallocate_mapEmb(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !3330 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3331 ; 6 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 3
  %i.i = add nsw i64 %i.h, 1                      ; 3 uses
end_hunk_11
begin_hunk_12_@_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_9ValueInfoEmENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEES2_IPS9_bEOT_DpOT0_:bb.a
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !3339
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !3340
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_9ValueInfoEmENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit, label %bb.d, !prof !672

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_9ValueInfoEmENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_9ValueInfoEmENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3339
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !3337
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !893
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_9ValueInfoEmENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_9ValueInfoEmENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 4 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = sdiv exact i64 %i.aq, 24                ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !101
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !101
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !3340
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !3340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !101
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !101
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i8 0, i64 16, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_9ValueInfoEmENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_9ValueInfoEmENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_9ValueInfoEmENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_9ValueInfoEmENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_9ValueInfoEmENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E22findBucketForInsertionIjEEPS9_RKT_SD_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_9ValueInfoEmENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E15LookupBucketForIjEEbRKT_RPS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !893, !noalias !3341 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3337, !noalias !3341 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !892, !noalias !3341 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !101    ; 2 uses
  %i.i = mul i32 %i.h, 37
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !101
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !671

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %.025, 1
  %.0 = and i32 %i.r, %i.g                        ; 3 uses
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !101
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !673, !llvm.loop !3338

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !101
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !672

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !3339
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_9ValueInfoEmENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.314", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !892
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !893
  store ptr %i.y, ptr %i.q, align 8, !tbaa !3337
  store i32 0, ptr %i.p, align 16, !tbaa !3340
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_9ValueInfoEmENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !79
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3339
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !79
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !79
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !79
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !101 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !101
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !101
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !101
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !101
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIjSt4pairINS_9ValueInfoEmENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapIjSt4pairINS_9ValueInfoEmENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEED2Ev.exit

_ZN4llvm8DenseMapIjSt4pairINS_9ValueInfoEmENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_9ValueInfoEmENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E8moveFromERSA_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !893
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3337
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !892  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3337 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !893
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !892
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt4pairINS_9ValueInfoEmENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !101  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.p, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph22
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_9ValueInfoEmENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.p, %.lr.ph ], [ %i.an, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_9ValueInfoEmENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !101  ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !101
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_9ValueInfoEmENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, !llvm.loop !3346

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_9ValueInfoEmENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.x ; 2 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !101
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false)
  %i.aj = shl nuw i32 1, %i.ab
  %i.ak = load i32, ptr %i.af, align 4, !tbaa !101
  %i.al = or i32 %i.ak, %i.aj
  store i32 %i.al, ptr %i.af, align 4, !tbaa !101
  %i.am = add i32 %.0.i18, -1
  %i.an = and i32 %i.am, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.an, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3347

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_9ValueInfoEmENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E8moveFromERSA_ENKUljE_clEj.exit, %.lr.ph22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt4pairINS_9ValueInfoEmENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph22, !llvm.loop !3348

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt4pairINS_9ValueInfoEmENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !892
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt4pairINS_9ValueInfoEmENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt4pairINS_9ValueInfoEmENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt4pairINS_9ValueInfoEmENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ao = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt4pairINS_9ValueInfoEmENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !3340
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !3340
  %i.as = icmp eq i32 %i.ao, 0
  br i1 %i.as, label %_ZN4llvm8DenseMapIjSt4pairINS_9ValueInfoEmENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt4pairINS_9ValueInfoEmENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit
  %i.at = load ptr, ptr %1, align 8, !tbaa !893
  %i.au = zext i32 %i.ao to i64                   ; 2 uses
  %i.av = mul nuw nsw i64 %i.au, 24
  %i.aw = add nuw nsw i64 %i.au, 31
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 1073741820
  %i.az = add nuw nsw i64 %i.ay, %i.av
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.at, i64 noundef %i.az, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !892
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjSt4pairINS_9ValueInfoEmENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEE4killEv.exit

_ZN4llvm8DenseMapIjSt4pairINS_9ValueInfoEmENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjSt4pairINS_9ValueInfoEmENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS7_EEEEjS7_S9_SC_E8moveFromERSD_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

declare void @_ZN4llvm18ModuleSummaryIndex8setFlagsEm(ptr noundef nonnull align 8 dereferenceable(616), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc range(i32 0, 6144) i32 @_ZL24getDecodedGVSummaryFlagsmm(i64 noundef %0, i64 noundef range(i64 1, 15) %1) unnamed_addr #5 {
bb.a:
  %i.a = and i64 %0, 16
  %i.b = icmp ne i64 %i.a, 0
  %i.c = icmp samesign ult i64 %1, 3              ; 2 uses
  %i.d = select i1 %i.b, i1 true, i1 %i.c
  %i.e = and i64 %0, 32
  %i.f = icmp ne i64 %i.e, 0
  %i.g = select i1 %i.f, i1 true, i1 %i.c
  %i.h = trunc i64 %0 to i32                      ; 4 uses
  %i.i = lshr i32 %i.h, 4
  %i.j = and i32 %i.i, 48
  %i.k = select i1 %i.d, i32 64, i32 0
  %i.l = select i1 %i.g, i32 128, i32 0
  %i.m = shl i32 %i.h, 2
  %i.n = shl i32 %i.h, 1
  %i.o = and i32 %i.n, 4096
  %i.p = and i32 %i.h, 1039
  %i.q = or disjoint i32 %i.p, %i.j
  %i.r = and i32 %i.m, 768
  %i.s = or disjoint i32 %i.q, %i.r
  %.masked.masked.masked.i = or disjoint i32 %i.s, %i.o
  %.masked9.masked.i.masked = or disjoint i32 %.masked.masked.masked.i, %i.k
  %.sroa.0.0.insert.ext = or disjoint i32 %.masked9.masked.i.masked, %i.l
  ret i32 %.sroa.0.0.insert.ext
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_131ModuleSummaryIndexBitcodeReader11makeRefListEN4llvm8ArrayRefImEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(704) %1, ptr nofree readonly captures(address) %2, i64 %3) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  store i32 0, ptr %i.c, align 8, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %.not11 = icmp eq i64 %3, 0
  br i1 %.not11, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef %3, i64 noundef 8) #29
  %.idx = shl nuw nsw i64 %3, 3
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 %.idx
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 448
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseINS_9ValueInfoELb1EE9push_backES1_.exit
  %.013 = phi ptr [ %2, %.lr.ph ], [ %i.r, %_ZN4llvm23SmallVectorTemplateBaseINS_9ValueInfoELb1EE9push_backES1_.exit ] ; 2 uses
  %i.g = load i64, ptr %.013, align 8, !tbaa !68
  %i.h = trunc i64 %i.g to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.h, ptr %i.a, align 4, !tbaa !101
  %i.i = call { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapIjSt4pairINS_9ValueInfoEmENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS4_EEEEjS4_S6_S9_E24lookupOrInsertIntoBucketIRKjJEEES2_IPS9_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %.fca.0.extract.i.i, i64 8
  %.sroa.0.0.copyload.i = load i64, ptr %i.j, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = load i32, ptr %i.c, align 8, !tbaa !66   ; 2 uses
  %i.l = load i32, ptr %i.d, align 4, !tbaa !67
  %.not.i = icmp ult i32 %i.k, %i.l
  br i1 %.not.i, label %bb.d, label %bb.c, !prof !672

bb.c:                                             ; preds = %bb.b
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_9ValueInfoELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 %.sroa.0.0.copyload.i)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9ValueInfoELb1EE9push_backES1_.exit

bb.d:                                             ; preds = %bb.b
  %i.m = zext i32 %i.k to i64
  %i.n = load ptr, ptr %0, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.m
  store i64 %.sroa.0.0.copyload.i, ptr %i.o, align 1
  %i.p = load i32, ptr %i.c, align 8, !tbaa !66
  %i.q = add i32 %i.p, 1
  store i32 %i.q, ptr %i.c, align 8, !tbaa !66
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9ValueInfoELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_9ValueInfoELb1EE9push_backES1_.exit: ; preds = %bb.c, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.013, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.r, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_9ValueInfoELb1EE9push_backES1_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN12_GLOBAL__N_131ModuleSummaryIndexBitcodeReader12makeCallListEN4llvm8ArrayRefImEEbbb(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(704) %1, ptr nofree readonly captures(none) %2, i64 %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6) unnamed_addr #3 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !21
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  store i32 0, ptr %i.c, align 8, !tbaa !66
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 5 uses
  store i32 0, ptr %i.d, align 4, !tbaa !67
  %.not17 = xor i1 %4, true
  %or.cond = or i1 %5, %6
  %or.cond18 = and i1 %or.cond, %.not17
  br i1 %or.cond18, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = lshr i64 %3, 1                           ; 2 uses
  %.not39 = icmp eq i64 %i.e, 0
  br i1 %.not39, label %_ZN4llvm15SmallVectorImplISt4pairINS_9ValueInfoENS_10CalleeInfoEEE7reserveEm.exit, label %_ZN4llvm15SmallVectorImplISt4pairINS_9ValueInfoENS_10CalleeInfoEEE7reserveEm.exit.sink.split

bb.c:                                             ; preds = %bb.a
  %.not38 = icmp eq i64 %3, 0
  br i1 %.not38, label %._crit_edge, label %_ZN4llvm15SmallVectorImplISt4pairINS_9ValueInfoENS_10CalleeInfoEEE7reserveEm.exit.sink.split

_ZN4llvm15SmallVectorImplISt4pairINS_9ValueInfoENS_10CalleeInfoEEE7reserveEm.exit.sink.split: ; preds = %bb.c, %bb.b
  %.sink = phi i64 [ %i.e, %bb.b ], [ %3, %bb.c ]
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.b, i64 noundef %.sink, i64 noundef 16) #29
  br label %_ZN4llvm15SmallVectorImplISt4pairINS_9ValueInfoENS_10CalleeInfoEEE7reserveEm.exit

_ZN4llvm15SmallVectorImplISt4pairINS_9ValueInfoENS_10CalleeInfoEEE7reserveEm.exit: ; preds = %_ZN4llvm15SmallVectorImplISt4pairINS_9ValueInfoENS_10CalleeInfoEEE7reserveEm.exit.sink.split, %bb.b
  %i.f = trunc i64 %3 to i32                      ; 4 uses
  %.not40 = icmp eq i32 %i.f, 0
  br i1 %.not40, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplISt4pairINS_9ValueInfoENS_10CalleeInfoEEE7reserveEm.exit
end_hunk_12
begin_hunk_13_@_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E24lookupOrInsertIntoBucketIRKmJEEESt4pairIPS7_bEOT_DpOT0_:bb.a
  %i.al = shl i32 %i.ak, 2
  %i.am = add i32 %i.al, 4
  %i.an = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.am, %i.an
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit, label %bb.d, !prof !672

bb.d:                                             ; preds = %.loopexit
  %i.ao = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ao)
  %i.ap = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E15LookupBucketForImEEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3573
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !3571
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !891
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit: ; preds = %.loopexit, %bb.d
  %i.aq = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.ar = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.as = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = sdiv exact i64 %i.av, 24                ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = lshr i64 %i.aw, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !101
  %i.bd = or i32 %i.az, %i.bc
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !101
  %i.be = load i32, ptr %i.aj, align 8, !tbaa !3574
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.aj, align 8, !tbaa !3574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bg = load i64, ptr %1, align 8, !tbaa !68
  store i64 %i.bg, ptr %i.as, align 8, !tbaa !68
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i8 0, i64 16, i1 false)
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E15LookupBucketForImEEbRKT_RPS7_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E15LookupBucketForImEEbRKT_RPS7_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit
  %.sroa.0.0 = phi ptr [ %i.as, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit ], [ %i.w, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E22findBucketForInsertionImEEPS7_RKT_SB_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E15LookupBucketForImEEbRKT_RPS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !891, !noalias !3575 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3571, !noalias !3575 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !890, !noalias !3575 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i64, ptr %1, align 8, !tbaa !68     ; 2 uses
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !101
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !671

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.ab, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.z, %bb.c ], [ %i.m, %bb.b ]
  %i.w = load i64, ptr %i.v, align 8, !tbaa !68
  %i.x = icmp eq i64 %i.h, %i.w                   ; 3 uses
  br i1 %i.x, label %.thread, label %bb.c, !prof !672

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nuw i32 %.024, 1
  %i.z = and i32 %i.y, %i.g                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !101
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %.thread, !prof !673, !llvm.loop !3572

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ], [ %i.v, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.x, %bb.c ], [ %i.x, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3573
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.316", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !890
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 24                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !891
  store ptr %i.y, ptr %i.q, align 8, !tbaa !3571
  store i32 0, ptr %i.p, align 16, !tbaa !3574
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !79
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3573
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !79
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !79
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !79
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !101 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !101
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !101
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !101
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !101
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = mul nuw nsw i64 %i.ai, 24
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEED2Ev.exit

_ZN4llvm8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E8moveFromERS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !891
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3571
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !890  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3571 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !891
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !890
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !101  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !68   ; 2 uses
  %i.w = mul i64 %i.v, -4658895280553007687       ; 2 uses
  %i.x = lshr i64 %i.w, 31
  %i.y = xor i64 %i.x, %i.w
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.k, %i.z                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 5                       ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !101
  %i.af = and i32 %i.aa, 31                       ; 2 uses
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.aj, %.lr.ph.i ], [ %i.aa, %bb.b ]
  %i.ai = add i32 %.014.i, 1
  %i.aj = and i32 %i.ai, %i.k                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 5                       ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !101
  %i.ao = and i32 %i.aj, 31                       ; 2 uses
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit, !llvm.loop !3580

_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ab, %bb.b ], [ %i.ak, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.lcssa12.i ; 2 uses
  store i64 %i.v, ptr %i.ar, align 8, !tbaa !68
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.as, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false), !tbaa.struct !146
  %i.au = shl nuw i32 1, %.lcssa.i
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !101
  %i.ax = or i32 %i.aw, %i.au
  store i32 %i.ax, ptr %i.av, align 4, !tbaa !101
  %i.ay = add i32 %.0.i16, -1
  %i.az = and i32 %i.ay, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3581

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS2_EEEEmS2_S4_S7_E8moveFromERS8_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !3582

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !890
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ba = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !3574
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !3574
  %i.be = icmp eq i32 %i.ba, 0
  br i1 %i.be, label %_ZN4llvm8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit
  %i.bf = load ptr, ptr %1, align 8, !tbaa !891
  %i.bg = zext i32 %i.ba to i64                   ; 2 uses
  %i.bh = mul nuw nsw i64 %i.bg, 24
  %i.bi = add nuw nsw i64 %i.bg, 31
  %i.bj = lshr i64 %i.bi, 3
  %i.bk = and i64 %i.bj, 1073741820
  %i.bl = add nuw nsw i64 %i.bk, %i.bh
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.bf, i64 noundef %i.bl, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !890
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEE4killEv.exit

_ZN4llvm8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS1_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_9StringRefENS_12DenseMapInfoImvEENS_6detail12DenseMapPairImS5_EEEEmS5_S7_SA_E8moveFromERSB_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden { ptr, i8 } @_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E24lookupOrInsertIntoBucketIRKmJRmEEESt4pairIPS6_bEOT_DpOT0_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !3583, !noalias !3584 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3589, !noalias !3584 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3590, !noalias !3584 ; 4 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add i32 %i.f, -1                         ; 2 uses
  %i.i = load i64, ptr %1, align 8, !tbaa !68     ; 2 uses
  %i.j = mul i64 %i.i, -4658895280553007687       ; 2 uses
  %i.k = lshr i64 %i.j, 31
  %i.l = xor i64 %i.k, %i.j
  %i.m = trunc i64 %i.l to i32
  %i.n = and i32 %i.h, %i.m                       ; 3 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.o ; 2 uses
  %i.q = lshr i64 %i.o, 5
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !101
  %i.t = and i32 %i.n, 31
  %i.u = lshr i32 %i.s, %i.t
  %i.v = trunc i32 %i.u to i1
  br i1 %i.v, label %.lr.ph.i, label %.loopexit, !prof !671

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.w = phi ptr [ %i.ac, %bb.c ], [ %i.p, %bb.b ] ; 2 uses
  %.024.i = phi i32 [ %i.aa, %bb.c ], [ %i.n, %bb.b ]
  %i.x = load i64, ptr %i.w, align 8, !tbaa !68
  %i.y = icmp eq i64 %i.i, %i.x
  br i1 %i.y, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E15LookupBucketForImEEbRKT_RPS6_.exit, label %bb.c, !prof !672

bb.c:                                             ; preds = %.lr.ph.i
  %i.z = add nuw i32 %.024.i, 1
  %i.aa = and i32 %i.z, %i.h                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.ab ; 2 uses
  %i.ad = lshr i64 %i.ab, 5
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !101
  %i.ag = and i32 %i.aa, 31
  %i.ah = lshr i32 %i.af, %i.ag
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %.loopexit, !prof !673, !llvm.loop !3591

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !3592
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !3593
  %i.al = shl i32 %i.ak, 2
  %i.am = add i32 %i.al, 4
  %i.an = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.am, %i.an
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit, label %bb.d, !prof !672

bb.d:                                             ; preds = %.loopexit
  %i.ao = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ao)
  %i.ap = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E15LookupBucketForImEEbRKT_RPS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3592
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !3589
  %.pre16 = load ptr, ptr %0, align 8, !tbaa !3583
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit: ; preds = %.loopexit, %bb.d
  %i.aq = phi ptr [ %.pre16, %bb.d ], [ %i.b, %.loopexit ]
  %i.ar = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.as = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 4 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = ashr exact i64 %i.av, 4                 ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = lshr i64 %i.aw, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !101
  %i.bd = or i32 %i.az, %i.bc
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !101
  %i.be = load i32, ptr %i.aj, align 8, !tbaa !3593
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.aj, align 8, !tbaa !3593
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bg = load i64, ptr %1, align 8, !tbaa !68
  store i64 %i.bg, ptr %i.as, align 8, !tbaa !68
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bi = load i64, ptr %2, align 8, !tbaa !68
  store i64 %i.bi, ptr %i.bh, align 8, !tbaa !68
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E15LookupBucketForImEEbRKT_RPS6_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E15LookupBucketForImEEbRKT_RPS6_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit
  %.sroa.0.0 = phi ptr [ %i.as, %_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit ], [ %i.w, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E22findBucketForInsertionImEEPS6_RKT_SA_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E15LookupBucketForImEEbRKT_RPS6_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !3583, !noalias !3594 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3589, !noalias !3594 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3590, !noalias !3594 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i64, ptr %1, align 8, !tbaa !68     ; 2 uses
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !101
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !671

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.ab, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.z, %bb.c ], [ %i.m, %bb.b ]
  %i.w = load i64, ptr %i.v, align 8, !tbaa !68
  %i.x = icmp eq i64 %i.h, %i.w                   ; 3 uses
  br i1 %i.x, label %.thread, label %bb.c, !prof !672

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nuw i32 %.024, 1
  %i.z = and i32 %i.y, %i.g                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !101
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %.thread, !prof !673, !llvm.loop !3591

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ], [ %i.v, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.x, %bb.c ], [ %i.x, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3592
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.348", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !3590
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !3583
  store ptr %i.y, ptr %i.q, align 8, !tbaa !3589
  store i32 0, ptr %i.p, align 16, !tbaa !3593
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E8moveFromERS7_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !79
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3592
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !79
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !79
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !79
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !101 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !101
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !101
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !101
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !101
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEED2Ev.exit

_ZN4llvm8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E8moveFromERS7_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !3583   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3589
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3590 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3589 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !3583
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3590
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i16 = icmp eq i64 %i.n, 0
  br i1 %.not.i16, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit, label %.lr.ph19

.lr.ph19:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !101  ; 2 uses
  %.not11.i14 = icmp eq i32 %i.p, 0
  br i1 %.not11.i14, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph19
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E8moveFromERS7_ENKUljE_clEj.exit
  %.0.i15 = phi i32 [ %i.p, %.lr.ph ], [ %i.az, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E8moveFromERS7_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i15, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !68   ; 2 uses
  %i.w = mul i64 %i.v, -4658895280553007687       ; 2 uses
  %i.x = lshr i64 %i.w, 31
  %i.y = xor i64 %i.x, %i.w
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.k, %i.z                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 5                       ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !101 ; 2 uses
  %i.af = and i32 %i.aa, 31                       ; 2 uses
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E8moveFromERS7_ENKUljE_clEj.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.016.i = phi i32 [ %i.aj, %.lr.ph.i ], [ %i.aa, %bb.b ]
  %i.ai = add i32 %.016.i, 1
  %i.aj = and i32 %i.ai, %i.k                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 5                       ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !101 ; 2 uses
  %i.ao = and i32 %i.aj, 31                       ; 2 uses
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph.i, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E8moveFromERS7_ENKUljE_clEj.exit, !llvm.loop !3599

_ZZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E8moveFromERS7_ENKUljE_clEj.exit: ; preds = %.lr.ph.i, %bb.b
  %.lcssa15.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa13.i = phi i64 [ %i.ab, %bb.b ], [ %i.ak, %.lr.ph.i ]
  %.lcssa11.i = phi i32 [ %i.ae, %bb.b ], [ %i.an, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa15.i
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %.lcssa13.i ; 2 uses
  store i64 %i.v, ptr %i.as, align 8, !tbaa !68
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !68
  store i64 %i.av, ptr %i.at, align 8, !tbaa !68
  %i.aw = shl nuw i32 1, %.lcssa.i
  %i.ax = or i32 %i.aw, %.lcssa11.i
  store i32 %i.ax, ptr %i.ar, align 4, !tbaa !101
  %i.ay = add i32 %.0.i15, -1
  %i.az = and i32 %i.ay, %.0.i15                  ; 2 uses
  %.not11.i = icmp eq i32 %i.az, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3600

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS3_S6_E8moveFromERS7_ENKUljE_clEj.exit, %.lr.ph19
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph19, !llvm.loop !3601

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3590
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ba = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !3593
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.bc, ptr %i.bd, align 8, !tbaa !3593
  %i.be = icmp eq i32 %i.ba, 0
  br i1 %i.be, label %_ZN4llvm8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEE4killEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit
  %i.bf = zext i32 %i.ba to i64                   ; 2 uses
  %i.bg = shl nuw nsw i64 %i.bf, 4
  %i.bh = add nuw nsw i64 %i.bf, 31
  %i.bi = lshr i64 %i.bh, 3
  %i.bj = and i64 %i.bi, 1073741820
  %i.bk = add nuw nsw i64 %i.bj, %i.bg
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.bk, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !3590
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEE4killEv.exit

_ZN4llvm8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImmNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImmEEEEmmS6_S9_E8moveFromERSA_EUljE_EEvPKjjT_.exit, %bb.c
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorImSaImEE15_M_range_insertIPmEEvN9__gnu_cxx17__normal_iteratorIS3_S1_EET_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %.not = icmp eq ptr %2, %3
  br i1 %.not, label %_ZSt4copyIPmN9__gnu_cxx17__normal_iteratorIS0_St6vectorImSaImEEEEET0_T_S8_S7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %3 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %2 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !880
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !878  ; 12 uses
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = ptrtoint ptr %i.h to i64                 ; 4 uses
  %i.k = sub i64 %i.i, %i.j
  %.not46 = icmp ult i64 %i.k, %i.c
  br i1 %.not46, label %bb.w, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.m = sub i64 %i.j, %i.l                       ; 9 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ugt i64 %i.n, %i.d
  br i1 %i.o, label %bb.d, label %_ZSt9__advanceIPmlEvRT_T0_St26random_access_iterator_tag.exit

bb.d:                                             ; preds = %bb.c
  %i.p = sub nsw i64 0, %i.d
  %i.q = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.p ; 3 uses
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = icmp sgt i64 %i.c, 8                     ; 2 uses
  br i1 %i.s, label %bb.e, label %bb.f, !prof !672

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr nonnull align 8 %i.q, i64 %i.c, i1 false)
  %.pre61 = load ptr, ptr %i.g, align 8, !tbaa !878
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq i64 %i.c, 8
  br i1 %i.t, label %bb.g, label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.u = load i64, ptr %i.q, align 8, !tbaa !68
  store i64 %i.u, ptr %i.h, align 8, !tbaa !68
  br label %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit: ; preds = %bb.e, %bb.f, %bb.g
  %i.v = phi ptr [ %.pre61, %bb.e ], [ %i.h, %bb.f ], [ %i.h, %bb.g ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.c
  store ptr %i.w, ptr %i.g, align 8, !tbaa !878
  %i.x = sub i64 %i.r, %i.l                       ; 3 uses
  %i.y = ashr exact i64 %i.x, 3                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 1
  br i1 %i.z, label %bb.h, label %bb.i, !prof !672

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.aa = sub nsw i64 0, %i.y
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.aa
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr align 8 %1, i64 %i.x, i1 false)
  br label %_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPmS0_SaImEET0_T_S3_S2_RT1_.exit
  %i.ac = icmp eq i64 %i.x, 8
  br i1 %i.ac, label %bb.j, label %_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds i8, ptr %i.h, i64 -8
  %i.ae = load i64, ptr %1, align 8, !tbaa !68
  store i64 %i.ae, ptr %i.ad, align 8, !tbaa !68
  br label %_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit

_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit:       ; preds = %bb.h, %bb.i, %bb.j
  br i1 %i.s, label %bb.k, label %bb.l, !prof !672

bb.k:                                             ; preds = %_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %i.c, i1 false)
  br label %_ZSt4copyIPmN9__gnu_cxx17__normal_iteratorIS0_St6vectorImSaImEEEEET0_T_S8_S7_.exit

bb.l:                                             ; preds = %_ZSt13move_backwardIPmS0_ET0_T_S2_S1_.exit
  %i.af = icmp eq i64 %i.c, 8
  br i1 %i.af, label %bb.m, label %_ZSt4copyIPmN9__gnu_cxx17__normal_iteratorIS0_St6vectorImSaImEEEEET0_T_S8_S7_.exit

bb.m:                                             ; preds = %bb.l
  %i.ag = load i64, ptr %2, align 8, !tbaa !68
  store i64 %i.ag, ptr %1, align 8, !tbaa !68
  br label %_ZSt4copyIPmN9__gnu_cxx17__normal_iteratorIS0_St6vectorImSaImEEEEET0_T_S8_S7_.exit

_ZSt9__advanceIPmlEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.c
  %i.ah = icmp eq i64 %i.m, 8
  %i.ai = getelementptr inbounds i8, ptr %2, i64 %i.m ; 3 uses
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.a, %i.aj                     ; 3 uses
  %i.al = icmp sgt i64 %i.ak, 8
  br i1 %i.al, label %bb.n, label %bb.o, !prof !672

bb.n:                                             ; preds = %_ZSt9__advanceIPmlEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.h, ptr align 8 %i.ai, i64 %i.ak, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !878
  br label %_ZSt22__uninitialized_copy_aIPmS0_mET0_T_S2_S1_RSaIT1_E.exit

bb.o:                                             ; preds = %_ZSt9__advanceIPmlEvRT_T0_St26random_access_iterator_tag.exit
  %i.am = icmp eq i64 %i.ak, 8
  br i1 %i.am, label %bb.p, label %_ZSt22__uninitialized_copy_aIPmS0_mET0_T_S2_S1_RSaIT1_E.exit

bb.p:                                             ; preds = %bb.o
  %i.an = load i64, ptr %i.ai, align 8, !tbaa !68
  store i64 %i.an, ptr %i.h, align 8, !tbaa !68
end_hunk_13
begin_hunk_14_@_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEENS7_ImvEENS_6detail12DenseMapPairImSA_EEEEmSA_SB_SE_E24lookupOrInsertIntoBucketIRKmJEEESt4pairIPSE_bEOT_DpOT0_:bb.a
  %i.ai = trunc i32 %i.ah to i1
  br i1 %i.ai, label %.lr.ph.i, label %.loopexit, !prof !673, !llvm.loop !3623

.loopexit:                                        ; preds = %bb.c, %bb.a, %bb.b
  %.lcssa28.sink.i.ph = phi ptr [ %i.p, %bb.b ], [ null, %bb.a ], [ %i.ac, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %.lcssa28.sink.i.ph, ptr %i.a, align 8, !tbaa !3624
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !3625
  %i.al = shl i32 %i.ak, 2
  %i.am = add i32 %i.al, 4
  %i.an = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.am, %i.an
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEENS7_ImvEENS_6detail12DenseMapPairImSA_EEEEmSA_SB_SE_E22findBucketForInsertionImEEPSE_RKT_SI_.exit, label %bb.d, !prof !672

bb.d:                                             ; preds = %.loopexit
  %i.ao = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEENS7_ImvEENS_6detail12DenseMapPairImSA_EEEEmSA_SB_SE_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.ao)
  %i.ap = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEENS7_ImvEENS_6detail12DenseMapPairImSA_EEEEmSA_SB_SE_E15LookupBucketForImEEbRKT_RPSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3624
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !3621
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !3615
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEENS7_ImvEENS_6detail12DenseMapPairImSA_EEEEmSA_SB_SE_E22findBucketForInsertionImEEPSE_RKT_SI_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEENS7_ImvEENS_6detail12DenseMapPairImSA_EEEEmSA_SB_SE_E22findBucketForInsertionImEEPSE_RKT_SI_.exit: ; preds = %.loopexit, %bb.d
  %i.aq = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.ar = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.as = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa28.sink.i.ph, %.loopexit ] ; 8 uses
  %i.at = ptrtoint ptr %i.as to i64
  %i.au = ptrtoint ptr %i.aq to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = sdiv exact i64 %i.av, 48                ; 2 uses
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = and i32 %i.ax, 31
  %i.az = shl nuw i32 1, %i.ay
  %i.ba = lshr i64 %i.aw, 5
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !101
  %i.bd = or i32 %i.az, %i.bc
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !101
  %i.be = load i32, ptr %i.aj, align 8, !tbaa !3625
  %i.bf = add i32 %i.be, 1
  store i32 %i.bf, ptr %i.aj, align 8, !tbaa !3625
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bg = load i64, ptr %1, align 8, !tbaa !68
  store i64 %i.bg, ptr %i.as, align 8, !tbaa !68
  %i.bh = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.as, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i8 0, i64 24, i1 false)
  store ptr %i.bj, ptr %i.bi, align 8, !tbaa !21
  %i.bk = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  store i32 0, ptr %i.bk, align 8, !tbaa !66
  %i.bl = getelementptr inbounds nuw i8, ptr %i.as, i64 44
  store i32 0, ptr %i.bl, align 4, !tbaa !67
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEENS7_ImvEENS_6detail12DenseMapPairImSA_EEEEmSA_SB_SE_E15LookupBucketForImEEbRKT_RPSE_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEENS7_ImvEENS_6detail12DenseMapPairImSA_EEEEmSA_SB_SE_E15LookupBucketForImEEbRKT_RPSE_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEENS7_ImvEENS_6detail12DenseMapPairImSA_EEEEmSA_SB_SE_E22findBucketForInsertionImEEPSE_RKT_SI_.exit
  %.sroa.0.0 = phi ptr [ %i.as, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEENS7_ImvEENS_6detail12DenseMapPairImSA_EEEEmSA_SB_SE_E22findBucketForInsertionImEEPSE_RKT_SI_.exit ], [ %i.w, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEENS7_ImvEENS_6detail12DenseMapPairImSA_EEEEmSA_SB_SE_E22findBucketForInsertionImEEPSE_RKT_SI_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEENS7_ImvEENS_6detail12DenseMapPairImSA_EEEEmSA_SB_SE_E15LookupBucketForImEEbRKT_RPSE_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !3615, !noalias !3626 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3621, !noalias !3626 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3622, !noalias !3626 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i64, ptr %1, align 8, !tbaa !68     ; 2 uses
  %i.i = mul i64 %i.h, -4658895280553007687       ; 2 uses
  %i.j = lshr i64 %i.i, 31
  %i.k = xor i64 %i.j, %i.i
  %i.l = trunc i64 %i.k to i32
  %i.m = and i32 %i.g, %i.l                       ; 3 uses
  %i.n = zext i32 %i.m to i64                     ; 2 uses
  %i.o = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %i.n ; 2 uses
  %i.p = lshr i64 %i.n, 5
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !101
  %i.s = and i32 %i.m, 31
  %i.t = lshr i32 %i.r, %i.s
  %i.u = trunc i32 %i.t to i1
  br i1 %i.u, label %.lr.ph, label %.thread, !prof !671

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.v = phi ptr [ %i.ab, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %.024 = phi i32 [ %i.z, %bb.c ], [ %i.m, %bb.b ]
  %i.w = load i64, ptr %i.v, align 8, !tbaa !68
  %i.x = icmp eq i64 %i.h, %i.w                   ; 3 uses
  br i1 %i.x, label %.thread, label %bb.c, !prof !672

bb.c:                                             ; preds = %.lr.ph
  %i.y = add nuw i32 %.024, 1
  %i.z = and i32 %i.y, %i.g                       ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %i.aa ; 2 uses
  %i.ac = lshr i64 %i.aa, 5
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !101
  %i.af = and i32 %i.z, 31
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph, label %.thread, !prof !673, !llvm.loop !3623

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa28.sink = phi ptr [ %i.o, %bb.b ], [ null, %bb.a ], [ %i.ab, %bb.c ], [ %i.v, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.x, %bb.c ], [ %i.x, %.lr.ph ]
  store ptr %.lcssa28.sink, ptr %2, align 8, !tbaa !3624
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEENS7_ImvEENS_6detail12DenseMapPairImSA_EEEEmSA_SB_SE_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.352", align 16 ; 10 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !3622
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = mul nuw nsw i64 %i.r, 48                 ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !3615
  store ptr %i.y, ptr %i.q, align 8, !tbaa !3621
  store i32 0, ptr %i.p, align 16, !tbaa !3625
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEENS7_ImvEENS_6detail12DenseMapPairImSA_EEEEmSA_SB_SE_E8moveFromERSF_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !79
  %i.aa = load <2 x ptr>, ptr %2, align 16, !tbaa !79
  store <2 x ptr> %i.aa, ptr %0, align 8, !tbaa !79
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !79
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ac = load <2 x i32>, ptr %i.ab, align 8, !tbaa !101
  %i.ad = load <2 x i32>, ptr %i.p, align 16, !tbaa !101
  store <2 x i32> %i.ad, ptr %i.ab, align 8, !tbaa !101
  store <2 x i32> %i.ac, ptr %i.p, align 16, !tbaa !101
  call void @_ZN4llvm8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EEENS6_ImvEENS_6detail12DenseMapPairImS9_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEENS7_ImvEENS_6detail12DenseMapPairImSA_EEEEmSA_SB_SE_E8moveFromERSF_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !3615
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3621
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3622 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3621 ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !3615
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3622
  %i.k = add i32 %i.j, -1                         ; 2 uses
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEENSA_ImvEENS_6detail12DenseMapPairImSD_EEEEmSD_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit, label %.lr.ph22

.lr.ph22:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !101  ; 2 uses
  %.not11.i17 = icmp eq i32 %i.p, 0
  br i1 %.not11.i17, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph22
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEENS7_ImvEENS_6detail12DenseMapPairImSA_EEEEmSA_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit
  %.0.i18 = phi i32 [ %i.p, %.lr.ph ], [ %i.cl, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEENS7_ImvEENS_6detail12DenseMapPairImSA_EEEEmSA_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i18, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.a, i64 %i.t ; 12 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !68   ; 2 uses
  %i.w = mul i64 %i.v, -4658895280553007687       ; 2 uses
  %i.x = lshr i64 %i.w, 31
  %i.y = xor i64 %i.x, %i.w
  %i.z = trunc i64 %i.y to i32
  %i.aa = and i32 %i.k, %i.z                      ; 3 uses
  %i.ab = zext i32 %i.aa to i64                   ; 2 uses
  %i.ac = lshr i64 %i.ab, 5                       ; 2 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !101
  %i.af = and i32 %i.aa, 31                       ; 2 uses
  %i.ag = lshr i32 %i.ae, %i.af
  %i.ah = trunc i32 %i.ag to i1
  br i1 %i.ah, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.014.i = phi i32 [ %i.aj, %.lr.ph.i ], [ %i.aa, %bb.b ]
  %i.ai = add i32 %.014.i, 1
  %i.aj = and i32 %i.ai, %i.k                     ; 3 uses
  %i.ak = zext i32 %i.aj to i64                   ; 2 uses
  %i.al = lshr i64 %i.ak, 5                       ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !101
  %i.ao = and i32 %i.aj, 31                       ; 2 uses
  %i.ap = lshr i32 %i.an, %i.ao
  %i.aq = trunc i32 %i.ap to i1
  br i1 %i.aq, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !3631

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.lcssa12.i = phi i64 [ %i.ab, %bb.b ], [ %i.ak, %.lr.ph.i ]
  %.lcssa11.i = phi i64 [ %i.ac, %bb.b ], [ %i.al, %.lr.ph.i ]
  %.lcssa.i = phi i32 [ %i.af, %bb.b ], [ %i.ao, %.lr.ph.i ]
  %i.ar = getelementptr inbounds nuw [48 x i8], ptr %i.h, i64 %.lcssa12.i ; 9 uses
  store i64 %i.v, ptr %i.ar, align 8, !tbaa !68
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.as, i8 0, i64 24, i1 false)
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.av = load <2 x ptr>, ptr %i.at, align 8, !tbaa !79
  store <2 x ptr> %i.av, ptr %i.as, align 8, !tbaa !79
  store ptr null, ptr %i.at, align 8, !tbaa !3632
  store ptr null, ptr %i.au, align 8, !tbaa !1736
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !101
  store i32 %i.ay, ptr %i.aw, align 8, !tbaa !101
  store i32 0, ptr %i.ax, align 8, !tbaa !101
  %i.az = getelementptr inbounds nuw i8, ptr %i.ar, i64 28 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.u, i64 28 ; 3 uses
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !101
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !101
  store i32 %i.bc, ptr %i.az, align 4, !tbaa !101
  store i32 %i.bb, ptr %i.ba, align 4, !tbaa !101
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ar, i64 48 ; 2 uses
  store ptr %i.be, ptr %i.bd, align 8, !tbaa !21
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 40 ; 3 uses
  store i32 0, ptr %i.bf, align 8, !tbaa !66
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ar, i64 44 ; 2 uses
  store i32 0, ptr %i.bg, align 4, !tbaa !67
  %i.bh = getelementptr inbounds nuw i8, ptr %i.u, i64 40 ; 3 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !66 ; 4 uses
  %.not.i.i.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i.i.i, label %_ZN4llvm9SetVectorINS_9StringRefENS_11SmallVectorIS1_Lj0EEENS_8DenseSetIS1_NS_12DenseMapInfoIS1_vEEEELj0EEC2EOS8_.exit.i, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.u, i64 32 ; 3 uses
  %i.bk = icmp eq ptr %i.ar, %i.u
  br i1 %i.bk, label %_ZN4llvm9SetVectorINS_9StringRefENS_11SmallVectorIS1_Lj0EEENS_8DenseSetIS1_NS_12DenseMapInfoIS1_vEEEELj0EEC2EOS8_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !21 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.u, i64 48 ; 2 uses
  %i.bn = icmp eq ptr %i.bl, %i.bm
  br i1 %i.bn, label %_ZSt4moveIPN4llvm9StringRefES2_ET0_T_S4_S3_.exit34.i, label %_ZN4llvm15SmallVectorImplINS_9StringRefEE12assignRemoteEOS2_.exit.i

_ZN4llvm15SmallVectorImplINS_9StringRefEE12assignRemoteEOS2_.exit.i: ; preds = %bb.d
  store ptr %i.bl, ptr %i.bd, align 8, !tbaa !21
  store i32 %i.bi, ptr %i.bf, align 8, !tbaa !66
  %i.bo = getelementptr inbounds nuw i8, ptr %i.u, i64 44 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !67
  store i32 %i.bp, ptr %i.bg, align 4, !tbaa !67
  store ptr %i.bm, ptr %i.bj, align 8, !tbaa !21
  store i32 0, ptr %i.bo, align 4, !tbaa !67
  br label %_ZN4llvm9SetVectorINS_9StringRefENS_11SmallVectorIS1_Lj0EEENS_8DenseSetIS1_NS_12DenseMapInfoIS1_vEEEELj0EEC2EOS8_.exit.i.sink.split

_ZSt4moveIPN4llvm9StringRefES2_ET0_T_S4_S3_.exit34.i: ; preds = %bb.d
  %i.bq = zext i32 %i.bi to i64
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull %i.be, i64 noundef %i.bq, i64 noundef 16) #29
  %.pre = load i32, ptr %i.bh, align 8, !tbaa !66 ; 2 uses
  %.not.i.i.i = icmp eq i32 %.pre, 0
  br i1 %.not.i.i.i, label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZSt4moveIPN4llvm9StringRefES2_ET0_T_S4_S3_.exit34.i
  %.pre27 = zext i32 %.pre to i64
  %i.br = load ptr, ptr %i.bj, align 8, !tbaa !21
  %i.bs = load ptr, ptr %i.bd, align 8, !tbaa !21
  %gepdiff.i = shl nuw nsw i64 %.pre27, 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bs, ptr align 8 %i.br, i64 %gepdiff.i, i1 false)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i

_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i: ; preds = %bb.e, %_ZSt4moveIPN4llvm9StringRefES2_ET0_T_S4_S3_.exit34.i
  store i32 %i.bi, ptr %i.bf, align 8, !tbaa !66
  br label %_ZN4llvm9SetVectorINS_9StringRefENS_11SmallVectorIS1_Lj0EEENS_8DenseSetIS1_NS_12DenseMapInfoIS1_vEEEELj0EEC2EOS8_.exit.i.sink.split

_ZN4llvm9SetVectorINS_9StringRefENS_11SmallVectorIS1_Lj0EEENS_8DenseSetIS1_NS_12DenseMapInfoIS1_vEEEELj0EEC2EOS8_.exit.i.sink.split: ; preds = %_ZN4llvm15SmallVectorImplINS_9StringRefEE12assignRemoteEOS2_.exit.i, %_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE18uninitialized_moveIPS1_S4_EEvT_S5_T0_.exit.i
  store i32 0, ptr %i.bh, align 8, !tbaa !66
  br label %_ZN4llvm9SetVectorINS_9StringRefENS_11SmallVectorIS1_Lj0EEENS_8DenseSetIS1_NS_12DenseMapInfoIS1_vEEEELj0EEC2EOS8_.exit.i

_ZN4llvm9SetVectorINS_9StringRefENS_11SmallVectorIS1_Lj0EEENS_8DenseSetIS1_NS_12DenseMapInfoIS1_vEEEELj0EEC2EOS8_.exit.i: ; preds = %_ZN4llvm9SetVectorINS_9StringRefENS_11SmallVectorIS1_Lj0EEENS_8DenseSetIS1_NS_12DenseMapInfoIS1_vEEEELj0EEC2EOS8_.exit.i.sink.split, %bb.c, %._crit_edge.i
  %i.bt = shl nuw i32 1, %.lcssa.i
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.lcssa11.i ; 2 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !101
  %i.bw = or i32 %i.bv, %i.bt
  store i32 %i.bw, ptr %i.bu, align 4, !tbaa !101
  %i.bx = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !21 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4llvm9SetVectorINS_9StringRefENS_11SmallVectorIS1_Lj0EEENS_8DenseSetIS1_NS_12DenseMapInfoIS1_vEEEELj0EEC2EOS8_.exit.i
  tail call void @free(ptr noundef %i.by) #29
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i: ; preds = %bb.f, %_ZN4llvm9SetVectorINS_9StringRefENS_11SmallVectorIS1_Lj0EEENS_8DenseSetIS1_NS_12DenseMapInfoIS1_vEEEELj0EEC2EOS8_.exit.i
  %i.cb = load i32, ptr %i.ba, align 4, !tbaa !3633 ; 2 uses
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEENS7_ImvEENS_6detail12DenseMapPairImSA_EEEEmSA_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit, label %bb.g

bb.g:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i
  %i.cd = load ptr, ptr %i.at, align 8, !tbaa !3634
  %i.ce = zext i32 %i.cb to i64                   ; 2 uses
  %i.cf = shl nuw nsw i64 %i.ce, 4
  %i.cg = add nuw nsw i64 %i.ce, 31
  %i.ch = lshr i64 %i.cg, 3
  %i.ci = and i64 %i.ch, 1073741820
  %i.cj = add nuw nsw i64 %i.ci, %i.cf
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cd, i64 noundef %i.cj, i64 noundef 8) #29
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEENS7_ImvEENS_6detail12DenseMapPairImSA_EEEEmSA_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit

_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEENS7_ImvEENS_6detail12DenseMapPairImSA_EEEEmSA_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit: ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i, %bb.g
  %i.ck = add i32 %.0.i18, -1
  %i.cl = and i32 %i.ck, %.0.i18                  ; 2 uses
  %.not11.i = icmp eq i32 %i.cl, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3635

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEENS7_ImvEENS_6detail12DenseMapPairImSA_EEEEmSA_SB_SE_E8moveFromERSF_ENKUljE_clEj.exit, %.lr.ph22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEENSA_ImvEENS_6detail12DenseMapPairImSD_EEEEmSD_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph22, !llvm.loop !3636

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEENSA_ImvEENS_6detail12DenseMapPairImSD_EEEEmSD_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre26 = load i32, ptr %i.d, align 4, !tbaa !3622
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEENSA_ImvEENS_6detail12DenseMapPairImSD_EEEEmSD_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEENSA_ImvEENS_6detail12DenseMapPairImSD_EEEEmSD_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEENSA_ImvEENS_6detail12DenseMapPairImSD_EEEEmSD_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.cm = phi i32 [ %.pre26, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEENSA_ImvEENS_6detail12DenseMapPairImSD_EEEEmSD_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.co = load i32, ptr %i.cn, align 8, !tbaa !3625
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.co, ptr %i.cp, align 8, !tbaa !3625
  %i.cq = icmp eq i32 %i.cm, 0
  br i1 %i.cq, label %_ZN4llvm8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EEENS6_ImvEENS_6detail12DenseMapPairImS9_EEE4killEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEENSA_ImvEENS_6detail12DenseMapPairImSD_EEEEmSD_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit
  %i.cr = load ptr, ptr %1, align 8, !tbaa !3615
  %i.cs = zext i32 %i.cm to i64                   ; 2 uses
  %i.ct = mul nuw nsw i64 %i.cs, 48
  %i.cu = add nuw nsw i64 %i.cs, 31
  %i.cv = lshr i64 %i.cu, 3
  %i.cw = and i64 %i.cv, 1073741820
  %i.cx = add nuw nsw i64 %i.cw, %i.ct
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.cr, i64 noundef %i.cx, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !3622
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EEENS6_ImvEENS_6detail12DenseMapPairImS9_EEE4killEv.exit

_ZN4llvm8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EEENS6_ImvEENS_6detail12DenseMapPairImS9_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS6_Lj0EEENS_8DenseSetIS6_NS_12DenseMapInfoIS6_vEEEELj0EEENSA_ImvEENS_6detail12DenseMapPairImSD_EEEEmSD_SE_SH_E8moveFromERSI_EUljE_EEvPKjjT_.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EEENS6_ImvEENS_6detail12DenseMapPairImS9_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3622 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EEENS6_ImvEENS_6detail12DenseMapPairImS9_EEE17deallocateBucketsEv.exit, label %.lr.ph7.preheader.i

.lr.ph7.preheader.i:                              ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !3615
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3621
  %i.g = zext i32 %i.b to i64
  %i.h = add nuw nsw i64 %i.g, 31
  %i.i = lshr i64 %i.h, 5
  br label %.lr.ph7.i

.lr.ph7.i:                                        ; preds = %._crit_edge.i, %.lr.ph7.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph7.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !101  ; 2 uses
  %.not11.i2.i = icmp eq i32 %i.k, 0
  br i1 %.not11.i2.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph7.i
  %indvars.iv.tr.i = trunc nuw i64 %indvars.iv.i to i32
  %i.l = shl nuw i32 %indvars.iv.tr.i, 5
  br label %bb.b

bb.b:                                             ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEENS7_ImvEENS_6detail12DenseMapPairImSA_EEEEmSA_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph.i
  %.0.i3.i = phi i32 [ %i.k, %.lr.ph.i ], [ %i.ag, %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEENS7_ImvEENS_6detail12DenseMapPairImSA_EEEEmSA_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i ] ; 3 uses
  %i.m = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i3.i, i1 true)
  %i.n = or disjoint i32 %i.m, %i.l
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [48 x i8], ptr %i.d, i64 %i.o ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef %i.s) #29
  br label %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i.i

_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !3633 ; 2 uses
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEENS7_ImvEENS_6detail12DenseMapPairImSA_EEEEmSA_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i.i
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !3634
  %i.z = zext i32 %i.w to i64                     ; 2 uses
  %i.aa = shl nuw nsw i64 %i.z, 4
  %i.ab = add nuw nsw i64 %i.z, 31
  %i.ac = lshr i64 %i.ab, 3
  %i.ad = and i64 %i.ac, 1073741820
  %i.ae = add nuw nsw i64 %i.ad, %i.aa
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.y, i64 noundef %i.ae, i64 noundef 8) #29
  br label %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEENS7_ImvEENS_6detail12DenseMapPairImSA_EEEEmSA_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i

_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEENS7_ImvEENS_6detail12DenseMapPairImSA_EEEEmSA_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i: ; preds = %bb.d, %_ZN4llvm11SmallVectorINS_9StringRefELj0EED2Ev.exit.i.i.i
  %i.af = add i32 %.0.i3.i, -1
  %i.ag = and i32 %i.af, %.0.i3.i                 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not11.i.i, label %._crit_edge.i, label %bb.b, !llvm.loop !3637

._crit_edge.i:                                    ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEENS7_ImvEENS_6detail12DenseMapPairImSA_EEEEmSA_SB_SE_E10destroyAllEvENKUljE_clEj.exit.i, %.lr.ph7.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i.i = icmp eq i64 %indvars.iv.next.i, %i.i
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEENS7_ImvEENS_6detail12DenseMapPairImSA_EEEEmSA_SB_SE_E10destroyAllEv.exit, label %.lr.ph7.i, !llvm.loop !3638

_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEENS7_ImvEENS_6detail12DenseMapPairImSA_EEEEmSA_SB_SE_E10destroyAllEv.exit: ; preds = %._crit_edge.i
  %.pr = load i32, ptr %i.a, align 4, !tbaa !3622 ; 2 uses
  %i.ah = icmp eq i32 %.pr, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EEENS6_ImvEENS_6detail12DenseMapPairImS9_EEE17deallocateBucketsEv.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEENS7_ImvEENS_6detail12DenseMapPairImSA_EEEEmSA_SB_SE_E10destroyAllEv.exit
  %i.ai = load ptr, ptr %0, align 8, !tbaa !3615
  %i.aj = zext i32 %.pr to i64                    ; 2 uses
  %i.ak = mul nuw nsw i64 %i.aj, 48
  %i.al = add nuw nsw i64 %i.aj, 31
  %i.am = lshr i64 %i.al, 3
  %i.an = and i64 %i.am, 1073741820
  %i.ao = add nuw nsw i64 %i.an, %i.ak
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.ai, i64 noundef %i.ao, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EEENS6_ImvEENS_6detail12DenseMapPairImS9_EEE17deallocateBucketsEv.exit

_ZN4llvm8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EEENS6_ImvEENS_6detail12DenseMapPairImS9_EEE17deallocateBucketsEv.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS3_Lj0EEENS_8DenseSetIS3_NS_12DenseMapInfoIS3_vEEEELj0EEENS7_ImvEENS_6detail12DenseMapPairImSA_EEEEmSA_SB_SE_E10destroyAllEv.exit, %bb.e
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E16try_emplace_implIRKS2_JEEESt4pairINS_16DenseMapIteratorIS2_S4_S6_S8_Lb0EEEbEOT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"struct.std::pair.1297") align 8 %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  store ptr null, ptr %i.b, align 8, !tbaa !3632
  %i.c = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !3632 ; 3 uses
  br i1 %i.c, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPS8_bEOT_DpOT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8, !tbaa !3632
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !3639
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.h = load i32, ptr %i.g, align 4, !tbaa !3633 ; 2 uses
  %i.i = shl i32 %i.f, 2
  %i.j = add i32 %i.i, 4
  %i.k = mul i32 %i.h, 3
  %.not.i.i = icmp ult i32 %i.j, %i.k
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit.i, label %bb.c, !prof !672

bb.c:                                             ; preds = %bb.b
  %i.l = shl i32 %i.h, 1
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %1, i32 noundef %i.l)
  %i.m = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i.i = load ptr, ptr %i.a, align 8, !tbaa !3632
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit.i

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit.i: ; preds = %bb.c, %bb.b
  %i.n = phi ptr [ %.pre.i.i, %bb.c ], [ %i.d, %bb.b ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !3640
  %i.q = load ptr, ptr %1, align 8, !tbaa !3634
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = ashr exact i64 %i.t, 4                   ; 2 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = and i32 %i.v, 31
  %i.x = shl nuw i32 1, %i.w
  %i.y = lshr i64 %i.u, 5
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !101
  %i.ab = or i32 %i.x, %i.aa
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !101
  %i.ac = load i32, ptr %i.e, align 8, !tbaa !3639
  %i.ad = add i32 %i.ac, 1
  store i32 %i.ad, ptr %i.e, align 8, !tbaa !3639
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !146
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPS8_bEOT_DpOT0_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E24lookupOrInsertIntoBucketIRKS2_JEEESt4pairIPS8_bEOT_DpOT0_.exit: ; preds = %bb.a, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit.i
  %.sroa.0.0.i = phi ptr [ %i.n, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit.i ], [ %i.d, %bb.a ]
  %.sroa.3.0.i = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E22findBucketForInsertionIS2_EEPS8_RKT_SC_.exit.i ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  %i.ae = load ptr, ptr %1, align 8, !tbaa !3634, !noalias !3641 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !3640, !noalias !3641
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !3633, !noalias !3641
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.aj
  store ptr %.sroa.0.0.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ak, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ae, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ag, ptr %.sroa.6.0..sroa_idx, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sroa.3.0.i, ptr %i.al, align 8, !tbaa !3644
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E15LookupBucketForIS2_EEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !3634, !noalias !3647 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3640, !noalias !3647 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3633, !noalias !3647 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 3 uses
  %.sroa.05.0.copyload = load ptr, ptr %1, align 8, !tbaa !80
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.26.0.copyload = load i64, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !68
  %i.h = tail call noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr %.sroa.05.0.copyload, i64 %.sroa.26.0.copyload) #29
  %.02131 = and i32 %i.h, %i.g                    ; 4 uses
  %i.i = zext i32 %.02131 to i64                  ; 2 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.i ; 3 uses
  %i.k = lshr i64 %i.i, 5
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4, !tbaa !101
  %i.n = and i32 %.02131, 31
  %i.o = lshr i32 %i.m, %i.n
  %i.p = trunc i32 %i.o to i1
  br i1 %i.p, label %.lr.ph, label %.thread, !prof !671

.lr.ph:                                           ; preds = %bb.b
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8, !tbaa !80
  %.sroa.22.0.copyload = load i64, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !68
  %.sroa.22.0.copyload.fr = freeze i64 %.sroa.22.0.copyload ; 3 uses
  %i.q = icmp eq i64 %.sroa.22.0.copyload.fr, 0
  br i1 %i.q, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us
  %i.r = phi ptr [ %i.u, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us ], [ %i.j, %.lr.ph ] ; 2 uses
  %.02132.us = phi i32 [ %.021.us, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us ], [ %.02131, %.lr.ph ]
  %.sroa.2.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.2.0.copyload.us = load i64, ptr %.sroa.2.0..sroa_idx.us, align 8, !tbaa !68
  %.not.i.i.us = icmp eq i64 %.sroa.2.0.copyload.us, 0 ; 3 uses
  br i1 %.not.i.i.us, label %.thread, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us, !prof !3652

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us: ; preds = %.lr.ph.split.us
  %i.s = add nuw i32 %.02132.us, 1
  %.021.us = and i32 %i.s, %i.g                   ; 3 uses
  %i.t = zext i32 %.021.us to i64                 ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = lshr i64 %i.t, 5
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.v
  %i.x = load i32, ptr %i.w, align 4, !tbaa !101
  %i.y = and i32 %.021.us, 31
  %i.z = lshr i32 %i.x, %i.y
  %i.aa = trunc i32 %i.z to i1
  br i1 %i.aa, label %.lr.ph.split.us, label %.thread, !prof !673, !llvm.loop !3653

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25
  %i.ab = phi ptr [ %i.af, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25 ], [ %i.j, %.lr.ph ] ; 3 uses
  %.02132 = phi i32 [ %.021, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25 ], [ %.02131, %.lr.ph ]
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !68
  %.not.i.i = icmp eq i64 %.sroa.22.0.copyload.fr, %.sroa.2.0.copyload
  br i1 %.not.i.i, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25, !prof !3652

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit: ; preds = %.lr.ph.split
  %.sroa.0.0.copyload = load ptr, ptr %i.ab, align 8, !tbaa !80
  %bcmp.i.i = tail call i32 @bcmp(ptr %.sroa.01.0.copyload, ptr %.sroa.0.0.copyload, i64 %.sroa.22.0.copyload.fr)
  %i.ac = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.ac, label %.thread, label %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25, !prof !3413

_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25: ; preds = %.lr.ph.split, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit
  %i.ad = add nuw i32 %.02132, 1
  %.021 = and i32 %i.ad, %i.g                     ; 3 uses
  %i.ae = zext i32 %.021 to i64                   ; 2 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.ae ; 2 uses
  %i.ag = lshr i64 %i.ae, 5
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !101
  %i.aj = and i32 %.021, 31
  %i.ak = lshr i32 %i.ai, %i.aj
  %i.al = trunc i32 %i.ak to i1
  br i1 %i.al, label %.lr.ph.split, label %.thread, !prof !673, !llvm.loop !3653

.thread:                                          ; preds = %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25, %.lr.ph.split.us, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us, %bb.b, %bb.a
  %.us-phi.sink = phi ptr [ %i.u, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us ], [ null, %bb.a ], [ %i.j, %bb.b ], [ %i.r, %.lr.ph.split.us ], [ %i.af, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25 ], [ %i.ab, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit ]
  %.2 = phi i1 [ %.not.i.i.us, %.lr.ph.split.us ], [ false, %bb.a ], [ false, %bb.b ], [ %.not.i.i.us, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25.us ], [ false, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit.thread25 ], [ true, %_ZN4llvm12DenseMapInfoINS_9StringRefEvE7isEqualES1_S1_.exit ]
  store ptr %.us-phi.sink, ptr %2, align 8, !tbaa !3632
  ret i1 %.2
}

declare noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr, i64) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.335", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !3633
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 4                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 8) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !3634
  store ptr %i.y, ptr %i.q, align 8, !tbaa !3640
  store i32 0, ptr %i.p, align 16, !tbaa !3639
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !79
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3632
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !79
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !79
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !79
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !101 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !101
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !101
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !101
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !101
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 4
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEED2Ev.exit

_ZN4llvm8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !3634
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !3640
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !3633 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !3640 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !3634
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !3633
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i20 = icmp eq i64 %i.n, 0
  br i1 %.not.i20, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !101  ; 2 uses
  %.not11.i18 = icmp eq i32 %i.p, 0
  br i1 %.not11.i18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph23
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i19 = phi i32 [ %i.p, %.lr.ph ], [ %i.ak, %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i19, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.t ; 3 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.u, align 8, !tbaa !80
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !68
  %i.v = tail call noundef i32 @_ZN4llvm12DenseMapInfoINS_9StringRefEvE12getHashValueES1_(ptr %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.v, %bb.b ], [ %i.ad, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.w = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.x = lshr i64 %i.w, 5                         ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !101
  %i.aa = and i32 %.0.i7, 31                      ; 2 uses
  %i.ab = lshr i32 %i.z, %i.aa
  %i.ac = trunc i32 %i.ab to i1
  %i.ad = add i32 %.0.i7, 1
  br i1 %i.ac, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !3654

_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.x ; 2 uses
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !146
  %i.ag = shl nuw i32 1, %i.aa
  %i.ah = load i32, ptr %i.ae, align 4, !tbaa !101
  %i.ai = or i32 %i.ah, %i.ag
  store i32 %i.ai, ptr %i.ae, align 4, !tbaa !101
  %i.aj = add i32 %.0.i19, -1
  %i.ak = and i32 %i.aj, %.0.i19                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ak, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3655

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEES2_S4_S6_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph23, !llvm.loop !3656

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !3633
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.al = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !3639
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !3639
  %i.ap = icmp eq i32 %i.al, 0
  br i1 %i.ap, label %_ZN4llvm8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.aq = load ptr, ptr %1, align 8, !tbaa !3634
  %i.ar = zext i32 %i.al to i64                   ; 2 uses
  %i.as = shl nuw nsw i64 %i.ar, 4
  %i.at = add nuw nsw i64 %i.ar, 31
  %i.au = lshr i64 %i.at, 3
  %i.av = and i64 %i.au, 1073741820
  %i.aw = add nuw nsw i64 %i.av, %i.as
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aq, i64 noundef %i.aw, i64 noundef 8) #29
  store i32 0, ptr %i.d, align 4, !tbaa !3633
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit

_ZN4llvm8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS1_vEENS2_12DenseSetPairIS1_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapINS_9StringRefENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS5_vEENS6_12DenseSetPairIS5_EEEES5_S7_S9_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseINS_9StringRefELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !66
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 16) #29
  %i.f = load ptr, ptr %0, align 8, !tbaa !21
  %i.g = load i32, ptr %i.a, align 8, !tbaa !66
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.h ; 2 uses
  store ptr %1, ptr %i.i, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 1
  %i.j = load i32, ptr %i.a, align 8, !tbaa !66
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !66
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(88) ptr @_ZN4llvm18ModuleSummaryIndex24getOrInsertTypeIdSummaryENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(616) %0, ptr %1, i64 %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::pair.1315", align 8   ; 12 uses
  %4 = alloca %"struct.std::pair.1317", align 8   ; 12 uses
  %5 = alloca %"struct.llvm::TypeIdSummary", align 8 ; 13 uses
  %i.a = tail call noundef i64 @_ZN4llvm11GlobalValue30getGUIDAssumingExternalLinkageENS_9StringRefE(ptr %1, i64 %2) #29 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %.041.i.i = load ptr, ptr %i.b, align 8, !tbaa !2959 ; 2 uses
  %.not42.i.i = icmp eq ptr %.041.i.i, null
  br i1 %.not42.i.i, label %_ZNSt4pairIKmS_IN4llvm9StringRefENS1_13TypeIdSummaryEEEC2IS0_S4_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS8_S9_EEEbE4typeELb1EEERS0_RKS4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %bb.d
  %.044.i.i = phi ptr [ %.0.i.i, %bb.d ], [ %.041.i.i, %bb.a ] ; 7 uses
  %.02243.i.i = phi ptr [ %.123.i.i, %bb.d ], [ %i.c, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 32
  %i.e = load i64, ptr %i.d, align 8, !tbaa !68   ; 2 uses
  %i.f = icmp ult i64 %i.e, %i.a
  br i1 %i.f, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.g = icmp ult i64 %i.a, %i.e
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1771 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !1770 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.i, null
  br i1 %.not10.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmS0_IN4llvm9StringRefENS2_13TypeIdSummaryEEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.i, %bb.c ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %.044.i.i, %bb.c ]
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.m = load i64, ptr %i.l, align 8, !tbaa !68
  %i.n = icmp ult i64 %i.m, %i.a                  ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !2959 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeImSt4pairIKmS0_IN4llvm9StringRefENS2_13TypeIdSummaryEEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !3657

_ZNSt8_Rb_treeImSt4pairIKmS0_IN4llvm9StringRefENS2_13TypeIdSummaryEEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.c
  %.08.lcssa.i.i.i = phi ptr [ %.044.i.i, %bb.c ], [ %.19.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %.not10.i24.i.i = icmp eq ptr %i.k, null
  br i1 %.not10.i24.i.i, label %_ZNSt8multimapImSt4pairIN4llvm9StringRefENS1_13TypeIdSummaryEESt4lessImESaIS0_IKmS4_EEE11equal_rangeERS7_.exit, label %.lr.ph.i25.i.i

.lr.ph.i25.i.i:                                   ; preds = %_ZNSt8_Rb_treeImSt4pairIKmS0_IN4llvm9StringRefENS2_13TypeIdSummaryEEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %.lr.ph.i25.i.i
  %.012.i26.i.i = phi ptr [ %.1.i31.i.i, %.lr.ph.i25.i.i ], [ %i.k, %_ZNSt8_Rb_treeImSt4pairIKmS0_IN4llvm9StringRefENS2_13TypeIdSummaryEEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i ] ; 3 uses
  %.0811.i27.i.i = phi ptr [ %.19.i28.i.i, %.lr.ph.i25.i.i ], [ %.02243.i.i, %_ZNSt8_Rb_treeImSt4pairIKmS0_IN4llvm9StringRefENS2_13TypeIdSummaryEEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i ]
  %i.o = getelementptr inbounds nuw i8, ptr %.012.i26.i.i, i64 32
  %i.p = load i64, ptr %i.o, align 8, !tbaa !68
  %i.q = icmp ult i64 %i.a, %i.p                  ; 2 uses
  %.19.i28.i.i = select i1 %i.q, ptr %.012.i26.i.i, ptr %.0811.i27.i.i ; 2 uses
  %.1.in.v.i29.i.i = select i1 %i.q, i64 16, i64 24
  %.1.in.i30.i.i = getelementptr inbounds nuw i8, ptr %.012.i26.i.i, i64 %.1.in.v.i29.i.i
  %.1.i31.i.i = load ptr, ptr %.1.in.i30.i.i, align 8, !tbaa !2959 ; 2 uses
  %.not.i32.i.i = icmp eq ptr %.1.i31.i.i, null
  br i1 %.not.i32.i.i, label %_ZNSt8multimapImSt4pairIN4llvm9StringRefENS1_13TypeIdSummaryEESt4lessImESaIS0_IKmS4_EEE11equal_rangeERS7_.exit, label %.lr.ph.i25.i.i, !llvm.loop !3658

bb.d:                                             ; preds = %bb.b, %.lr.ph.i.i
  %.sink.i.i = phi i64 [ 24, %.lr.ph.i.i ], [ 16, %bb.b ]
  %.123.i.i = phi ptr [ %.02243.i.i, %.lr.ph.i.i ], [ %.044.i.i, %bb.b ]
  %i.r = getelementptr inbounds nuw i8, ptr %.044.i.i, i64 %.sink.i.i
  %.0.i.i = load ptr, ptr %i.r, align 8, !tbaa !2959 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %_ZNSt4pairIKmS_IN4llvm9StringRefENS1_13TypeIdSummaryEEEC2IS0_S4_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS8_S9_EEEbE4typeELb1EEERS0_RKS4_.exit, label %.lr.ph.i.i, !llvm.loop !3659

_ZNSt8multimapImSt4pairIN4llvm9StringRefENS1_13TypeIdSummaryEESt4lessImESaIS0_IKmS4_EEE11equal_rangeERS7_.exit: ; preds = %.lr.ph.i25.i.i, %_ZNSt8_Rb_treeImSt4pairIKmS0_IN4llvm9StringRefENS2_13TypeIdSummaryEEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %.sroa.3.0.i.i = phi ptr [ %.02243.i.i, %_ZNSt8_Rb_treeImSt4pairIKmS0_IN4llvm9StringRefENS2_13TypeIdSummaryEEESt10_Select1stIS6_ESt4lessImESaIS6_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS6_EPSt18_Rb_tree_node_baseRS1_.exit.i.i ], [ %.19.i28.i.i, %.lr.ph.i25.i.i ] ; 2 uses
  %.not52 = icmp eq ptr %.08.lcssa.i.i.i, %.sroa.3.0.i.i
  br i1 %.not52, label %_ZNSt4pairIKmS_IN4llvm9StringRefENS1_13TypeIdSummaryEEEC2IS0_S4_TnNSt9enable_ifIXaaclsr5_PCCPE18_ConstructiblePairIT_T0_EEclsr5_PCCPE26_ImplicitlyConvertiblePairIS8_S9_EEEbE4typeELb1EEERS0_RKS4_.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZNSt8multimapImSt4pairIN4llvm9StringRefENS1_13TypeIdSummaryEESt4lessImESaIS0_IKmS4_EEE11equal_rangeERS7_.exit
  %i.s = icmp eq i64 %2, 0
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4llvmeqENS_9StringRefES0_.exit.thread41
  %.sroa.032.053 = phi ptr [ %i.w, %_ZN4llvmeqENS_9StringRefES0_.exit.thread41 ], [ %.08.lcssa.i.i.i, %.lr.ph.preheader ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.032.053, i64 40
  %.sroa.06.0.copyload = load ptr, ptr %i.t, align 8, !tbaa !80
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.032.053, i64 48
  %.sroa.27.0.copyload = load i64, ptr %.sroa.27.0..sroa_idx, align 8, !tbaa !68
  %.not.i = icmp eq i64 %.sroa.27.0.copyload, %2
  br i1 %.not.i, label %bb.e, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread41

bb.e:                                             ; preds = %.lr.ph
  br i1 %i.s, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread, label %_ZN4llvmeqENS_9StringRefES0_.exit

_ZN4llvmeqENS_9StringRefES0_.exit.thread:         ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.032.053, i64 56
  br label %.thread44

_ZN4llvmeqENS_9StringRefES0_.exit:                ; preds = %bb.e
  %bcmp.i = tail call i32 @bcmp(ptr %.sroa.06.0.copyload, ptr %1, i64 %2)
  %i.v = icmp eq i32 %bcmp.i, 0
  br i1 %i.v, label %.thread44.loopexit, label %_ZN4llvmeqENS_9StringRefES0_.exit.thread41

_ZN4llvmeqENS_9StringRefES0_.exit.thread41:       ; preds = %.lr.ph, %_ZN4llvmeqENS_9StringRefES0_.exit
end_hunk_14
begin_hunk_15_@_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11GlobalValue12LinkageTypesENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E24lookupOrInsertIntoBucketIjJEEESt4pairIPS8_bEOT_DpOT0_:bb.a
  store ptr %.lcssa30.sink.i.ph, ptr %i.a, align 8, !tbaa !3728
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !3729
  %i.ag = shl i32 %i.af, 2
  %i.ah = add i32 %i.ag, 4
  %i.ai = mul i32 %i.f, 3
  %.not.i = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i, label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11GlobalValue12LinkageTypesENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit, label %bb.d, !prof !672

bb.d:                                             ; preds = %.loopexit
  %i.aj = shl i32 %i.f, 1
  tail call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11GlobalValue12LinkageTypesENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %i.aj)
  %i.ak = call noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11GlobalValue12LinkageTypesENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E15LookupBucketForIjEEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !3728
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !755
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !743
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11GlobalValue12LinkageTypesENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11GlobalValue12LinkageTypesENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit: ; preds = %.loopexit, %bb.d
  %i.al = phi ptr [ %.pre15, %bb.d ], [ %i.b, %.loopexit ]
  %i.am = phi ptr [ %.pre, %bb.d ], [ %i.d, %.loopexit ]
  %i.an = phi ptr [ %.pre.i, %bb.d ], [ %.lcssa30.sink.i.ph, %.loopexit ] ; 4 uses
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %i.al to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = ashr exact i64 %i.aq, 3                 ; 2 uses
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = lshr i64 %i.ar, 5
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.av ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !101
  %i.ay = or i32 %i.au, %i.ax
  store i32 %i.ay, ptr %i.aw, align 4, !tbaa !101
  %i.az = load i32, ptr %i.ae, align 8, !tbaa !3729
  %i.ba = add i32 %i.az, 1
  store i32 %i.ba, ptr %i.ae, align 8, !tbaa !3729
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bb = load i32, ptr %1, align 4, !tbaa !101
  store i32 %i.bb, ptr %i.an, align 4, !tbaa !101
  %i.bc = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 0, ptr %i.bc, align 4, !tbaa !886
  br label %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11GlobalValue12LinkageTypesENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E15LookupBucketForIjEEbRKT_RPS8_.exit

_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11GlobalValue12LinkageTypesENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E15LookupBucketForIjEEbRKT_RPS8_.exit: ; preds = %.lr.ph.i, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11GlobalValue12LinkageTypesENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11GlobalValue12LinkageTypesENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit ], [ %i.ab, %.lr.ph.i ]
  %.sroa.3.0 = phi i8 [ 1, %_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11GlobalValue12LinkageTypesENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E22findBucketForInsertionIjEEPS8_RKT_SC_.exit ], [ 0, %.lr.ph.i ]
  %.fca.0.insert = insertvalue { ptr, i8 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i8 } %.fca.0.insert, i8 %.sroa.3.0, 1
  ret { ptr, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11GlobalValue12LinkageTypesENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E15LookupBucketForIjEEbRKT_RPS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !743, !noalias !3730 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !755, !noalias !3730 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !756, !noalias !3730 ; 2 uses
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.e, -1                         ; 2 uses
  %i.h = load i32, ptr %1, align 4, !tbaa !101    ; 2 uses
  %i.i = mul i32 %i.h, 37
  %.024 = and i32 %i.i, %i.g                      ; 3 uses
  %i.j = zext i32 %.024 to i64                    ; 2 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.j ; 2 uses
  %i.l = lshr i64 %i.j, 5
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.l
  %i.n = load i32, ptr %i.m, align 4, !tbaa !101
  %i.o = and i32 %.024, 31
  %i.p = lshr i32 %i.n, %i.o
  %i.q = trunc i32 %i.p to i1
  br i1 %i.q, label %.lr.ph, label %.thread, !prof !671

bb.c:                                             ; preds = %.lr.ph
  %i.r = add nuw i32 %.025, 1
  %.0 = and i32 %i.r, %i.g                        ; 3 uses
  %i.s = zext i32 %.0 to i64                      ; 2 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.s ; 2 uses
  %i.u = lshr i64 %i.s, 5
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !101
  %i.x = and i32 %.0, 31
  %i.y = lshr i32 %i.w, %i.x
  %i.z = trunc i32 %i.y to i1
  br i1 %i.z, label %.lr.ph, label %.thread, !prof !673, !llvm.loop !3727

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.aa = phi ptr [ %i.t, %bb.c ], [ %i.k, %bb.b ] ; 2 uses
  %.025 = phi i32 [ %.0, %bb.c ], [ %.024, %bb.b ]
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !101
  %i.ac = icmp eq i32 %i.h, %i.ab                 ; 3 uses
  br i1 %i.ac, label %.thread, label %bb.c, !prof !672

.thread:                                          ; preds = %.lr.ph, %bb.c, %bb.b, %bb.a
  %.lcssa30.sink = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ], [ %i.t, %bb.c ], [ %i.aa, %.lr.ph ]
  %.2 = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.ac, %bb.c ], [ %i.ac, %.lr.ph ]
  store ptr %.lcssa30.sink, ptr %2, align 8, !tbaa !3728
  ret i1 %.2
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11GlobalValue12LinkageTypesENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E4growEj(ptr noundef nonnull align 1 dereferenceable(1) %0, i32 noundef %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %2 = alloca %"class.llvm::DenseMap.1025", align 16 ; 9 uses
  %i.a = add i32 %1, -1
  %i.b = zext i32 %i.a to i64                     ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = or i64 %i.c, %i.b                        ; 2 uses
  %i.e = lshr i64 %i.d, 2
  %i.f = or i64 %i.e, %i.d                        ; 2 uses
  %i.g = lshr i64 %i.f, 4
  %i.h = or i64 %i.g, %i.f                        ; 2 uses
  %i.i = lshr i64 %i.h, 8
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 16
  %i.l = or i64 %i.k, %i.j
  %i.m = trunc nuw i64 %i.l to i32
  %i.n = add i32 %i.m, 1
  %.sroa.speculated.i = tail call noundef i32 @llvm.umax.i32(i32 %i.n, i32 64) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 %.sroa.speculated.i, ptr %i.o, align 4, !tbaa !756
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.r = zext i32 %.sroa.speculated.i to i64      ; 2 uses
  %i.s = shl nuw nsw i64 %i.r, 3                  ; 2 uses
  %i.t = add nuw nsw i64 %i.r, 31
  %i.u = lshr i64 %i.t, 3
  %i.v = and i64 %i.u, 1073741820                 ; 2 uses
  %i.w = add nuw nsw i64 %i.v, %i.s
  %i.x = tail call noalias noundef nonnull ptr @_ZN4llvm15allocate_bufferEmm(i64 noundef %i.w, i64 noundef 4) #29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.s ; 2 uses
  store ptr %i.x, ptr %2, align 16, !tbaa !743
  store ptr %i.y, ptr %i.q, align 8, !tbaa !755
  store i32 0, ptr %i.p, align 16, !tbaa !3729
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.y, i8 0, i64 %i.v, i1 false)
  call void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11GlobalValue12LinkageTypesENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(24) %0)
  %i.z = load <2 x ptr>, ptr %0, align 8, !tbaa !79
  %i.aa = load ptr, ptr %0, align 8, !tbaa !3728
  %i.ab = load <2 x ptr>, ptr %2, align 16, !tbaa !79
  store <2 x ptr> %i.ab, ptr %0, align 8, !tbaa !79
  store <2 x ptr> %i.z, ptr %2, align 16, !tbaa !79
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !101 ; 2 uses
  %i.af = load <2 x i32>, ptr %i.ac, align 8, !tbaa !101
  %i.ag = load <2 x i32>, ptr %i.p, align 16, !tbaa !101
  store <2 x i32> %i.ag, ptr %i.ac, align 8, !tbaa !101
  store <2 x i32> %i.af, ptr %i.p, align 16, !tbaa !101
  %i.ah = icmp eq i32 %i.ae, 0
  br i1 %i.ah, label %_ZN4llvm8DenseMapIjNS_11GlobalValue12LinkageTypesENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = zext i32 %i.ae to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = add nuw nsw i64 %i.ai, 31
  %i.al = lshr i64 %i.ak, 3
  %i.am = and i64 %i.al, 1073741820
  %i.an = add nuw nsw i64 %i.am, %i.aj
  call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.aa, i64 noundef %i.an, i64 noundef 4) #29
  br label %_ZN4llvm8DenseMapIjNS_11GlobalValue12LinkageTypesENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit

_ZN4llvm8DenseMapIjNS_11GlobalValue12LinkageTypesENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEED2Ev.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret void
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11GlobalValue12LinkageTypesENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #16 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !743    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !755
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !756  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !755  ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !743
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4, !tbaa !756
  %i.k = add i32 %i.j, -1
  %i.l = zext i32 %i.e to i64
  %i.m = add nuw nsw i64 %i.l, 31
  %i.n = lshr i64 %i.m, 5                         ; 2 uses
  %.not.i17 = icmp eq i64 %i.n, 0
  br i1 %.not.i17, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11GlobalValue12LinkageTypesENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, label %.lr.ph20

.lr.ph20:                                         ; preds = %bb.a, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !101  ; 2 uses
  %.not11.i15 = icmp eq i32 %i.p, 0
  br i1 %.not11.i15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph20
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.q = shl nuw i32 %indvars.iv.tr, 5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11GlobalValue12LinkageTypesENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit
  %.0.i16 = phi i32 [ %i.p, %.lr.ph ], [ %i.ao, %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11GlobalValue12LinkageTypesENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit ] ; 3 uses
  %i.r = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.i16, i1 true)
  %i.s = or disjoint i32 %i.r, %i.q
  %i.t = zext i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !101  ; 2 uses
  %i.w = mul i32 %i.v, 37
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.pn.i = phi i32 [ %i.w, %bb.b ], [ %i.ae, %bb.c ]
  %.0.i7 = and i32 %.pn.i, %i.k                   ; 3 uses
  %i.x = zext i32 %.0.i7 to i64                   ; 2 uses
  %i.y = lshr i64 %i.x, 5                         ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !101
  %i.ab = and i32 %.0.i7, 31                      ; 2 uses
  %i.ac = lshr i32 %i.aa, %i.ab
  %i.ad = trunc i32 %i.ac to i1
  %i.ae = add i32 %.0.i7, 1
  br i1 %i.ad, label %bb.c, label %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11GlobalValue12LinkageTypesENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, !llvm.loop !3735

_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11GlobalValue12LinkageTypesENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit: ; preds = %bb.c
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.x ; 2 uses
  store i32 %i.v, ptr %i.ag, align 4, !tbaa !101
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !886
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !886
  %i.ak = shl nuw i32 1, %i.ab
  %i.al = load i32, ptr %i.af, align 4, !tbaa !101
  %i.am = or i32 %i.al, %i.ak
  store i32 %i.am, ptr %i.af, align 4, !tbaa !101
  %i.an = add i32 %.0.i16, -1
  %i.ao = and i32 %i.an, %.0.i16                  ; 2 uses
  %.not11.i = icmp eq i32 %i.ao, 0
  br i1 %.not11.i, label %._crit_edge, label %bb.b, !llvm.loop !3736

._crit_edge:                                      ; preds = %_ZZN4llvm12DenseMapBaseINS_8DenseMapIjNS_11GlobalValue12LinkageTypesENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS3_EEEEjS3_S5_S8_E8moveFromERS9_ENKUljE_clEj.exit, %.lr.ph20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv.next, %i.n
  br i1 %.not.i, label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11GlobalValue12LinkageTypesENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, label %.lr.ph20, !llvm.loop !3737

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11GlobalValue12LinkageTypesENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit: ; preds = %._crit_edge
  %.pre = load i32, ptr %i.d, align 4, !tbaa !756
  br label %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11GlobalValue12LinkageTypesENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit

_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11GlobalValue12LinkageTypesENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11GlobalValue12LinkageTypesENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit, %bb.a
  %i.ap = phi i32 [ %.pre, %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11GlobalValue12LinkageTypesENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit.loopexit ], [ %i.e, %bb.a ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !3729
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ar, ptr %i.as, align 8, !tbaa !3729
  %i.at = icmp eq i32 %i.ap, 0
  br i1 %i.at, label %_ZN4llvm8DenseMapIjNS_11GlobalValue12LinkageTypesENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE4killEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11GlobalValue12LinkageTypesENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit
  %i.au = zext i32 %i.ap to i64                   ; 2 uses
  %i.av = shl nuw nsw i64 %i.au, 3
  %i.aw = add nuw nsw i64 %i.au, 31
  %i.ax = lshr i64 %i.aw, 3
  %i.ay = and i64 %i.ax, 1073741820
  %i.az = add nuw nsw i64 %i.ay, %i.av
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.a, i64 noundef %i.az, i64 noundef 4) #29
  store i32 0, ptr %i.d, align 4, !tbaa !756
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  br label %_ZN4llvm8DenseMapIjNS_11GlobalValue12LinkageTypesENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE4killEv.exit

_ZN4llvm8DenseMapIjNS_11GlobalValue12LinkageTypesENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS2_EEE4killEv.exit: ; preds = %_ZN4llvm8densemap6detail11forEachUsedIZNS_12DenseMapBaseINS_8DenseMapIjNS_11GlobalValue12LinkageTypesENS_12DenseMapInfoIjvEENS_6detail12DenseMapPairIjS6_EEEEjS6_S8_SB_E8moveFromERSC_EUljE_EEvPKjjT_.exit, %bb.d
  ret void
}

declare void @_ZN4llvm11GlobalValue19getGlobalIdentifierB5cxx11ENS_9StringRefENS0_12LinkageTypesES1_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, i32 noundef, ptr, i64) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm4dbgsEv() local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef) local_unnamed_addr #4

declare { ptr, i64 } @_ZN4llvm11StringSaver4saveENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(8), ptr, i64) local_unnamed_addr #4

declare noundef i64 @_ZNK4llvm9StringRef4findES0_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i64 noundef) local_unnamed_addr #4

declare noundef i64 @_ZNK4llvm9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i64 noundef) local_unnamed_addr #4

declare noundef i64 @_ZNK4llvm9StringRef16find_last_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64, i64 noundef) local_unnamed_addr #4

declare void @_ZN4llvm2cl6OptionC2ENS0_18NumOccurrencesFlagENS0_12OptionHiddenE(ptr noundef nonnull align 8 dereferenceable(120), i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE(ptr noundef nonnull align 8 dereferenceable(10) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.b = load i8, ptr %i.a, align 1, !tbaa !3738, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.f = load i8, ptr %i.e, align 1, !tbaa !3738, !range !18, !noundef !19
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i8, ptr %i.h, align 8, !range !18
  %i.j = load i8, ptr %i.d, align 8, !range !18
  %i.k = icmp eq i8 %i.i, %i.j
  %i.l = select i1 %i.g, i1 %i.k, i1 false
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare void @_ZN4llvm2cl18GenericOptionValue6anchorEv(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare void @_ZN4llvm2cl6Option9setArgStrENS_9StringRefE(ptr noundef nonnull align 8 dereferenceable(120), ptr, i64) local_unnamed_addr #4

declare void @_ZN4llvm2cl6Option11addArgumentEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #4

declare void @_ZN4llvm11LLVMContext9emitErrorERKNS_5TwineE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(34)) local_unnamed_addr #4

declare void @_ZN4llvm6ModuleC1ENS_9StringRefERNS_11LLVMContextE(ptr noundef nonnull align 8 dereferenceable(1288), ptr, i64, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN4llvm6ModuleD1Ev(ptr noundef nonnull align 8 dead_on_return(1288) dereferenceable(1288)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm18ModuleSummaryIndexD2Ev(ptr noundef nonnull align 8 dead_on_return(616) dereferenceable(616) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 612
  %i.b = load i32, ptr %i.a, align 4, !tbaa !3318 ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %_ZN4llvm8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !3311
  %i.f = zext i32 %i.b to i64                     ; 2 uses
  %i.g = shl nuw nsw i64 %i.f, 4
  %i.h = add nuw nsw i64 %i.f, 31
  %i.i = lshr i64 %i.h, 3
  %i.j = and i64 %i.i, 1073741820
  %i.k = add nuw nsw i64 %i.j, %i.g
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef %i.e, i64 noundef %i.k, i64 noundef 8) #29
  br label %_ZN4llvm8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEED2Ev.exit

_ZN4llvm8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !879  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4llvm8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEED2Ev.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !880
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #31
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %_ZN4llvm8DenseMapImjNS_12DenseMapInfoImvEENS_6detail12DenseMapPairImjEEED2Ev.exit, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 472
  tail call void @_ZN4llvm20BumpPtrAllocatorImplINS_15MallocAllocatorELm4096ELm4096ELm128ELm8EED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.s) #29
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @_ZN4llvm8DenseMapImNS_9SetVectorINS_9StringRefENS_11SmallVectorIS2_Lj0EEENS_8DenseSetIS2_NS_12DenseMapInfoIS2_vEEEELj0EEENS6_ImvEENS_6detail12DenseMapPairImS9_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.u) #29
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 436
  %i.w = load i32, ptr %i.v, align 4, !tbaa !711
  %i.x = icmp eq i32 %i.w, 0
  %.pre13.i.i = load ptr, ptr %i.t, align 8, !tbaa !704 ; 4 uses
  br i1 %i.x, label %_ZN4llvm16CfiFunctionIndexD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.z = load i32, ptr %i.y, align 8, !tbaa !873  ; 2 uses
  %i.aa = zext i32 %i.z to i64
  %.idx.i.i = shl nuw nsw i64 %i.aa, 3
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre13.i.i, i64 %.idx.i.i
  %.not11.i.i = icmp eq i32 %i.z, 0
  br i1 %.not11.i.i, label %_ZN4llvm16CfiFunctionIndexD2Ev.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.f
  %.012.i.i = phi ptr [ %i.af, %bb.f ], [ %.pre13.i.i, %bb.d ] ; 2 uses
  %i.ac = load ptr, ptr %.012.i.i, align 8, !tbaa !707 ; 3 uses
  %.not10.i.i = icmp eq ptr %i.ac, null
  br i1 %.not10.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !709
  %i.ae = add i64 %i.ad, 9
  tail call void @_ZN4llvm17deallocate_bufferEPvmm(ptr noundef nonnull align 8 dereferenceable(8) %i.ac, i64 noundef %i.ae, i64 noundef 8) #29
  br label %bb.f

end_hunk_15
