Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stockfish/original/tbprobe?download=true
inline.NumInlined: 1887
inline.NumDeleted: 837
loop-unroll.NumCompletelyUnrolled: 34
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZNSt6vectorIhSaIhEE17_M_default_appendEm:bb.a

bb.e:                                             ; preds = %bb.b
  %i.r = icmp ult i64 %i.l, %1
  br i1 %i.r, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.29) #31
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit:    ; preds = %bb.e
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %1)
  %i.s = add nuw i64 %.sroa.speculated.i, %i.f
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.s, i64 9223372036854775807) ; 2 uses
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #29 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 3 uses
  store i8 0, ptr %i.v, align 1, !tbaa !125
  %i.w = add nsw i64 %1, -1                       ; 2 uses
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.y, i8 0, i64 %i.w, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26: ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit, %bb.g
  %.not28 = icmp eq ptr %i.b, %i.c
  br i1 %.not28, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.u, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit26, %bb.h
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !186
  %i.aa = ptrtoint ptr %i.z to i64
  %i.ab = sub i64 %i.aa, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #30
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit: ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit, %bb.i
  store ptr %i.u, ptr %0, align 8, !tbaa !185
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !230
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.t
  store ptr %i.ad, ptr %i.g, align 8, !tbaa !186
  br label %bb.j

bb.j:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit, %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef zeroext i1 @_ZN9Stockfish12_GLOBAL__N_110pawns_compENS_6SquareES1_(i8 noundef zeroext %0, i8 noundef zeroext %1) #18 {
bb.a:
  %i.a = zext i8 %0 to i64
  %i.b = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.a
  %i.c = load i32, ptr %i.b, align 4, !tbaa !81
  %i.d = zext i8 %1 to i64
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @_ZN9Stockfish12_GLOBAL__N_18MapPawnsE, i64 %i.d
  %i.f = load i32, ptr %i.e, align 4, !tbaa !81
  %i.g = icmp slt i32 %i.c, %i.f
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 4096) i32 @_ZN9Stockfish12_GLOBAL__N_116decompress_pairsEPNS0_9PairsDataEm(ptr nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #19 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !198
  %.not = icmp sgt i8 %i.a, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i8, ptr %i.b, align 2, !tbaa !226
  %i.d = zext i8 %i.c to i32
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !225  ; 3 uses
  %i.g = udiv i64 %1, %i.f
  %i.h = urem i64 %1, %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !200
  %i.k = and i64 %i.g, 4294967295
  %i.l = getelementptr inbounds nuw [6 x i8], ptr %i.j, i64 %i.k ; 2 uses
  %.val = load i32, ptr %i.l, align 1             ; 5 uses
  %.sroa.6.0.extract.shift.i = lshr i32 %.val, 8  ; 2 uses
  %.sroa.8.0.extract.shift.i = lshr i32 %.val, 16 ; 2 uses
  %.sroa.10.0.extract.shift.i = lshr i32 %.val, 24 ; 2 uses
  %i.m = load i8, ptr @_ZN9StockfishL14IsLittleEndianE, align 1, !tbaa !227, !range !145, !noundef !146 ; 2 uses
  %.not3.not.i = icmp eq i8 %i.m, 0               ; 5 uses
  br i1 %.not3.not.i, label %bb.d, label %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit

bb.d:                                             ; preds = %bb.c
  %i.n = and i32 %.val, 255
  br label %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit

_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit: ; preds = %bb.c, %bb.d
  %.sroa.10.0.i = phi i32 [ %i.n, %bb.d ], [ %.sroa.10.0.extract.shift.i, %bb.c ]
  %.sroa.8.0.i = phi i32 [ %.sroa.6.0.extract.shift.i, %bb.d ], [ %.sroa.8.0.extract.shift.i, %bb.c ]
  %.sroa.6.0.in.i = phi i32 [ %.sroa.8.0.extract.shift.i, %bb.d ], [ %.sroa.6.0.extract.shift.i, %bb.c ]
  %.sroa.0.0.in.i = phi i32 [ %.sroa.10.0.extract.shift.i, %bb.d ], [ %.val, %bb.c ]
  %.sroa.10.0.insert.shift.i = shl nuw i32 %.sroa.10.0.i, 24
  %.sroa.8.0.insert.ext.i = shl i32 %.sroa.8.0.i, 16
  %.sroa.8.0.insert.shift.i = and i32 %.sroa.8.0.insert.ext.i, 16711680
  %.sroa.8.0.insert.insert.i = or disjoint i32 %.sroa.8.0.insert.shift.i, %.sroa.10.0.insert.shift.i
  %.sroa.6.0.insert.ext.i = shl nuw i32 %.sroa.6.0.in.i, 8
  %.sroa.6.0.insert.shift.i = and i32 %.sroa.6.0.insert.ext.i, 65280
  %.sroa.6.0.insert.insert.i = or disjoint i32 %.sroa.8.0.insert.insert.i, %.sroa.6.0.insert.shift.i
  %.sroa.0.0.insert.ext.i = and i32 %.sroa.0.0.in.i, 255
  %.sroa.0.0.insert.insert.i = or disjoint i32 %.sroa.6.0.insert.insert.i, %.sroa.0.0.insert.ext.i ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %.val98 = load i16, ptr %i.o, align 1           ; 2 uses
  %.sroa.6.0.extract.shift.i106 = lshr i16 %.val98, 8 ; 2 uses
  %i.p = and i16 %.val98, 255                     ; 2 uses
  %.sroa.6.0.insert.ext.i108 = select i1 %.not3.not.i, i16 %i.p, i16 %.sroa.6.0.extract.shift.i106
  %.sroa.6.0.insert.shift.i109 = shl nuw i16 %.sroa.6.0.insert.ext.i108, 8
  %.sroa.0.0.insert.ext.i110 = select i1 %.not3.not.i, i16 %.sroa.6.0.extract.shift.i106, i16 %i.p
  %.sroa.0.0.insert.insert.i111 = or disjoint i16 %.sroa.6.0.insert.shift.i109, %.sroa.0.0.insert.ext.i110
  %i.q = zext i16 %.sroa.0.0.insert.insert.i111 to i32
  %i.r = lshr i64 %i.f, 1
  %i.s = sub i64 %i.h, %i.r
  %i.t = trunc i64 %i.s to i32
  %i.u = add nsw i32 %i.q, %i.t                   ; 3 uses
  %i.v = icmp slt i32 %i.u, 0
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !202  ; 3 uses
  br i1 %i.v, label %.lr.ph, label %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit..preheader146_crit_edge

_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit..preheader146_crit_edge: ; preds = %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit
  %.pre174 = zext i32 %.sroa.0.0.insert.insert.i to i64 ; 2 uses
  %.phi.trans.insert175 = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %.pre174
  %.pre176 = load i16, ptr %.phi.trans.insert175, align 2, !tbaa !164
  %.pre183 = zext i16 %.pre176 to i32
  br label %.preheader146

.preheader146:                                    ; preds = %.lr.ph, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit..preheader146_crit_edge
  %.pre-phi184 = phi i32 [ %.pre183, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit..preheader146_crit_edge ], [ %i.ad, %.lr.ph ] ; 2 uses
  %.pre-phi = phi i64 [ %.pre174, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit..preheader146_crit_edge ], [ %i.aa, %.lr.ph ]
  %.086.lcssa = phi i32 [ %.sroa.0.0.insert.insert.i, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit..preheader146_crit_edge ], [ %i.z, %.lr.ph ]
  %.083.lcssa = phi i32 [ %i.u, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit..preheader146_crit_edge ], [ %i.af, %.lr.ph ] ; 3 uses
  %i.y = icmp samesign ugt i32 %.083.lcssa, %.pre-phi184
  br i1 %i.y, label %.lr.ph157, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit, %.lr.ph
  %.083153 = phi i32 [ %i.af, %.lr.ph ], [ %i.u, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit ]
  %.086152 = phi i32 [ %i.z, %.lr.ph ], [ %.sroa.0.0.insert.insert.i, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi1EEET_Pv.exit ]
  %i.z = add i32 %.086152, -1                     ; 3 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.aa
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !164
  %i.ad = zext i16 %i.ac to i32                   ; 2 uses
  %i.ae = add nsw i32 %.083153, 1
  %i.af = add nsw i32 %i.ae, %i.ad                ; 3 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph, label %.preheader146, !llvm.loop !521

.lr.ph157:                                        ; preds = %.preheader146, %.lr.ph157
  %i.ah = phi i32 [ %i.an, %.lr.ph157 ], [ %.pre-phi184, %.preheader146 ]
  %.184156 = phi i32 [ %i.aj, %.lr.ph157 ], [ %.083.lcssa, %.preheader146 ]
  %.187155 = phi i32 [ %i.ai, %.lr.ph157 ], [ %.086.lcssa, %.preheader146 ]
  %i.ai = add i32 %.187155, 1                     ; 2 uses
  %.neg96 = xor i32 %i.ah, -1
  %i.aj = add nsw i32 %.184156, %.neg96           ; 3 uses
  %i.ak = zext i32 %i.ai to i64                   ; 2 uses
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.x, i64 %i.ak
  %i.am = load i16, ptr %i.al, align 2, !tbaa !164
  %i.an = zext i16 %i.am to i32                   ; 2 uses
  %i.ao = icmp sgt i32 %i.aj, %i.an
  br i1 %i.ao, label %.lr.ph157, label %._crit_edge, !llvm.loop !522

._crit_edge:                                      ; preds = %.lr.ph157, %.preheader146
  %.184.lcssa = phi i32 [ %.083.lcssa, %.preheader146 ], [ %i.aj, %.lr.ph157 ]
  %.lcssa151 = phi i64 [ %.pre-phi, %.preheader146 ], [ %i.ak, %.lr.ph157 ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !205
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !204
  %i.at = mul i64 %i.as, %.lcssa151
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.at ; 2 uses
  %.val105 = load i64, ptr %i.au, align 1         ; 2 uses
  %i.av = insertelement <4 x i64> poison, i64 %.val105, i64 0 ; 2 uses
  %i.aw = shufflevector <4 x i64> %i.av, <4 x i64> poison, <4 x i32> zeroinitializer
  %i.ax = lshr <4 x i64> %i.aw, <i64 8, i64 16, i64 24, i64 32> ; 2 uses
  %i.ay = shufflevector <4 x i64> %i.av, <4 x i64> poison, <2 x i32> zeroinitializer
  %i.az = lshr <2 x i64> %i.ay, <i64 40, i64 48>  ; 2 uses
  %i.ba = insertelement <2 x i64> poison, i64 %.val105, i64 0
  %i.bb = trunc nuw i8 %i.m to i1                 ; 2 uses
  %i.bc = shufflevector <2 x i64> %i.az, <2 x i64> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bd = shufflevector <4 x i64> %i.bc, <4 x i64> %i.ax, <8 x i32> <i32 1, i32 0, i32 7, i32 6, i32 5, i32 4, i32 poison, i32 poison>
  %i.be = shufflevector <2 x i64> %i.ba, <2 x i64> poison, <8 x i32> <i32 0, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bf = lshr <8 x i64> %i.be, <i64 0, i64 56, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef, i64 undef> ; 2 uses
  %i.bg = shufflevector <8 x i64> %i.bd, <8 x i64> %i.bf, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 8, i32 9>
  br i1 %i.bb, label %bb.e, label %_ZN9Stockfish12_GLOBAL__N_16numberImLi0EEET_Pv.exit

bb.e:                                             ; preds = %._crit_edge
  %i.bh = shufflevector <8 x i64> %i.bf, <8 x i64> poison, <8 x i32> <i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 1, i32 0>
  %i.bi = shufflevector <4 x i64> %i.ax, <4 x i64> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bj = shufflevector <8 x i64> %i.bi, <8 x i64> %i.bh, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 14, i32 15>
  %i.bk = shufflevector <2 x i64> %i.az, <2 x i64> poison, <8 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.bl = shufflevector <8 x i64> %i.bj, <8 x i64> %i.bk, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 6, i32 7>
  %i.bm = and <8 x i64> %i.bl, <i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 255>
  br label %_ZN9Stockfish12_GLOBAL__N_16numberImLi0EEET_Pv.exit

_ZN9Stockfish12_GLOBAL__N_16numberImLi0EEET_Pv.exit: ; preds = %._crit_edge, %bb.e
  %i.bn = phi <8 x i64> [ %i.bm, %bb.e ], [ %i.bg, %._crit_edge ]
  %i.bo = bitcast <8 x i64> %i.bn to <64 x i8>
  %i.bp = shufflevector <64 x i8> %i.bo, <64 x i8> poison, <8 x i32> <i32 48, i32 40, i32 32, i32 24, i32 16, i32 8, i32 0, i32 56>
  %i.bq = bitcast <8 x i8> %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !182
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.bv = load i8, ptr %i.bu, align 2, !tbaa !226
  %i.bw = zext i8 %i.bv to i32
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !228
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !185 ; 3 uses
  br label %.outer

.outer:                                           ; preds = %_ZN9Stockfish12_GLOBAL__N_16numberIjLi0EEET_Pv.exit, %_ZN9Stockfish12_GLOBAL__N_16numberImLi0EEET_Pv.exit
  %.285.ph = phi i32 [ %i.cs, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi0EEET_Pv.exit ], [ %.184.lcssa, %_ZN9Stockfish12_GLOBAL__N_16numberImLi0EEET_Pv.exit ]
  %.080.ph = phi ptr [ %i.cy, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi0EEET_Pv.exit ], [ %i.br, %_ZN9Stockfish12_GLOBAL__N_16numberImLi0EEET_Pv.exit ] ; 2 uses
  %.077.ph = phi i64 [ %i.de, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi0EEET_Pv.exit ], [ %i.bq, %_ZN9Stockfish12_GLOBAL__N_16numberImLi0EEET_Pv.exit ]
  %.075.ph = phi i32 [ %i.cx, %_ZN9Stockfish12_GLOBAL__N_16numberIjLi0EEET_Pv.exit ], [ 64, %_ZN9Stockfish12_GLOBAL__N_16numberImLi0EEET_Pv.exit ]
  br label %bb.f

bb.f:                                             ; preds = %.outer, %bb.i
  %.285 = phi i32 [ %i.cs, %bb.i ], [ %.285.ph, %.outer ] ; 3 uses
  %.077 = phi i64 [ %i.cu, %bb.i ], [ %.077.ph, %.outer ] ; 3 uses
  %.075 = phi i32 [ %i.cv, %bb.i ], [ %.075.ph, %.outer ]
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 0, %bb.f ] ; 4 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %indvars.iv
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !45 ; 2 uses
  %i.cd = icmp ult i64 %.077, %i.cc
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %i.cd, label %bb.g, label %bb.h, !llvm.loop !523

bb.h:                                             ; preds = %bb.g
  %i.ce = trunc nuw nsw i64 %indvars.iv to i32
  %i.cf = sub nuw i64 %.077, %i.cc
  %i.cg = add nuw i32 %i.ce, %i.bw                ; 3 uses
  %i.ch = sub i32 64, %i.cg
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = lshr i64 %i.cf, %i.ci
  %i.ck = trunc i64 %i.cj to i16
  %i.cl = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv
  %.val97 = load i16, ptr %i.cl, align 1          ; 2 uses
  %.sroa.6.0.extract.shift.i124 = lshr i16 %.val97, 8 ; 2 uses
  %i.cm = and i16 %.val97, 255                    ; 2 uses
  %.sroa.6.0.insert.ext.i126 = select i1 %.not3.not.i, i16 %i.cm, i16 %.sroa.6.0.extract.shift.i124
  %.sroa.6.0.insert.shift.i127 = shl nuw i16 %.sroa.6.0.insert.ext.i126, 8
  %.sroa.0.0.insert.ext.i128 = select i1 %.not3.not.i, i16 %.sroa.6.0.extract.shift.i124, i16 %i.cm
  %.sroa.0.0.insert.insert.i129 = or disjoint i16 %.sroa.6.0.insert.shift.i127, %.sroa.0.0.insert.ext.i128
  %i.cn = add i16 %.sroa.0.0.insert.insert.i129, %i.ck
  %i.co = zext i16 %i.cn to i64                   ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !125 ; 2 uses
  %i.cr = zext i8 %i.cq to i32                    ; 2 uses
  %.not92 = icmp sgt i32 %.285, %i.cr
  br i1 %.not92, label %bb.i, label %.preheader

bb.i:                                             ; preds = %bb.h
  %.neg = xor i32 %i.cr, -1
  %i.cs = add nsw i32 %.285, %.neg                ; 2 uses
  %i.ct = zext nneg i32 %i.cg to i64
  %i.cu = shl i64 %.077, %i.ct                    ; 2 uses
  %i.cv = sub nsw i32 %.075, %i.cg                ; 4 uses
  %i.cw = icmp slt i32 %i.cv, 33
  br i1 %i.cw, label %bb.j, label %bb.f

bb.j:                                             ; preds = %bb.i
  %i.cx = add nsw i32 %i.cv, 32
  %i.cy = getelementptr inbounds nuw i8, ptr %.080.ph, i64 4
  %.080.val = load i32, ptr %.080.ph, align 1     ; 5 uses
  %.sroa.6.0.extract.shift.i130 = lshr i32 %.080.val, 8 ; 2 uses
  %.sroa.8.0.extract.shift.i131 = lshr i32 %.080.val, 16 ; 2 uses
  %.sroa.10.0.extract.shift.i132 = lshr i32 %.080.val, 24 ; 2 uses
  br i1 %i.bb, label %bb.k, label %_ZN9Stockfish12_GLOBAL__N_16numberIjLi0EEET_Pv.exit

bb.k:                                             ; preds = %bb.j
  %i.cz = and i32 %.080.val, 255
  br label %_ZN9Stockfish12_GLOBAL__N_16numberIjLi0EEET_Pv.exit

_ZN9Stockfish12_GLOBAL__N_16numberIjLi0EEET_Pv.exit: ; preds = %bb.j, %bb.k
  %.sroa.10.0.i133 = phi i32 [ %i.cz, %bb.k ], [ %.sroa.10.0.extract.shift.i132, %bb.j ]
  %.sroa.8.0.i134 = phi i32 [ %.sroa.6.0.extract.shift.i130, %bb.k ], [ %.sroa.8.0.extract.shift.i131, %bb.j ]
  %.sroa.6.0.in.i135 = phi i32 [ %.sroa.8.0.extract.shift.i131, %bb.k ], [ %.sroa.6.0.extract.shift.i130, %bb.j ]
  %.sroa.0.0.in.i136 = phi i32 [ %.sroa.10.0.extract.shift.i132, %bb.k ], [ %.080.val, %bb.j ]
  %.sroa.10.0.insert.shift.i137 = shl nuw i32 %.sroa.10.0.i133, 24
  %.sroa.8.0.insert.ext.i138 = shl i32 %.sroa.8.0.i134, 16
  %.sroa.8.0.insert.shift.i139 = and i32 %.sroa.8.0.insert.ext.i138, 16711680
  %.sroa.8.0.insert.insert.i140 = or disjoint i32 %.sroa.8.0.insert.shift.i139, %.sroa.10.0.insert.shift.i137
  %.sroa.6.0.insert.ext.i141 = shl nuw i32 %.sroa.6.0.in.i135, 8
  %.sroa.6.0.insert.shift.i142 = and i32 %.sroa.6.0.insert.ext.i141, 65280
  %.sroa.6.0.insert.insert.i143 = or disjoint i32 %.sroa.8.0.insert.insert.i140, %.sroa.6.0.insert.shift.i142
  %.sroa.0.0.insert.ext.i144 = and i32 %.sroa.0.0.in.i136, 255
  %.sroa.0.0.insert.insert.i145 = or disjoint i32 %.sroa.6.0.insert.insert.i143, %.sroa.0.0.insert.ext.i144
  %i.da = zext i32 %.sroa.0.0.insert.insert.i145 to i64
  %i.db = sub nsw i32 32, %i.cv
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = shl i64 %i.da, %i.dc
  %i.de = or i64 %i.dd, %i.cu
  br label %.outer

.preheader:                                       ; preds = %bb.h
  %.not93160 = icmp eq i8 %i.cq, 0
  %.phi.trans.insert181 = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.pre182 = load ptr, ptr %.phi.trans.insert181, align 8, !tbaa !231 ; 2 uses
  br i1 %.not93160, label %._crit_edge163, label %.lr.ph162

.lr.ph162:                                        ; preds = %.preheader, %bb.m
  %i.df = phi i64 [ %.pre-phi178, %bb.m ], [ %i.co, %.preheader ]
  %.4161 = phi i32 [ %.5, %bb.m ], [ %.285, %.preheader ] ; 3 uses
  %i.dg = getelementptr inbounds nuw [3 x i8], ptr %.pre182, i64 %i.df ; 3 uses
  %.val103 = load i8, ptr %i.dg, align 1, !tbaa !125
  %i.dh = getelementptr i8, ptr %i.dg, i64 1
  %.val104 = load i8, ptr %i.dh, align 1, !tbaa !125 ; 2 uses
  %i.di = and i8 %.val104, 15
  %i.dj = zext nneg i8 %i.di to i64
  %i.dk = shl nuw nsw i64 %i.dj, 8
  %i.dl = zext i8 %.val103 to i64
  %i.dm = or disjoint i64 %i.dk, %i.dl            ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ca, i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !125 ; 2 uses
  %i.dp = zext i8 %i.do to i32                    ; 2 uses
  %.not94 = icmp sgt i32 %.4161, %i.dp
  br i1 %.not94, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph162
  %.neg95 = xor i32 %i.dp, -1
  %i.dq = add nsw i32 %.4161, %.neg95
  %i.dr = getelementptr i8, ptr %i.dg, i64 2
  %.val100 = load i8, ptr %i.dr, align 1, !tbaa !125
  %i.ds = zext i8 %.val100 to i64
  %i.dt = shl nuw nsw i64 %i.ds, 4
  %i.du = lshr i8 %.val104, 4
  %i.dv = zext nneg i8 %i.du to i64
  %.pre177 = or disjoint i64 %i.dt, %i.dv         ; 2 uses
  %.phi.trans.insert179 = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.pre177
  %.pre180 = load i8, ptr %.phi.trans.insert179, align 1, !tbaa !125
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph162, %bb.l
  %i.dw = phi i8 [ %i.do, %.lr.ph162 ], [ %.pre180, %bb.l ]
  %.pre-phi178 = phi i64 [ %i.dm, %.lr.ph162 ], [ %.pre177, %bb.l ] ; 2 uses
  %.5 = phi i32 [ %.4161, %.lr.ph162 ], [ %i.dq, %bb.l ]
  %.not93 = icmp eq i8 %i.dw, 0
  br i1 %.not93, label %._crit_edge163, label %.lr.ph162, !llvm.loop !524

._crit_edge163:                                   ; preds = %bb.m, %.preheader
  %.lcssa = phi i64 [ %i.co, %.preheader ], [ %.pre-phi178, %bb.m ]
  %i.dx = getelementptr inbounds nuw [3 x i8], ptr %.pre182, i64 %.lcssa ; 2 uses
  %.val101 = load i8, ptr %i.dx, align 1, !tbaa !125
  %i.dy = getelementptr i8, ptr %i.dx, i64 1
  %.val102 = load i8, ptr %i.dy, align 1, !tbaa !125
  %i.dz = and i8 %.val102, 15
  %i.ea = zext nneg i8 %i.dz to i32
  %i.eb = shl nuw nsw i32 %i.ea, 8
  %i.ec = zext i8 %.val101 to i32
  %i.ed = or disjoint i32 %i.eb, %i.ec
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge163, %bb.b
  %.088 = phi i32 [ %i.d, %bb.b ], [ %i.ed, %._crit_edge163 ]
  ret i32 %.088
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #20

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZSt22__stable_sort_adaptiveIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_S9_T0_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %4) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 4 uses
  %i.d = getelementptr inbounds i8, ptr %3, i64 %i.c
  tail call void @_ZSt22__chunk_insertion_sortIPN9Stockfish6SquareElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef 7, ptr %4)
  %i.e = icmp sgt i64 %i.c, 7
  br i1 %i.e, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIPN9Stockfish6SquareES2_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_T1_.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.021.i = phi i64 [ %i.g, %.lr.ph.i ], [ 7, %bb.a ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIPN9Stockfish6SquareES2_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_T1_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %3, i64 noundef %.021.i, ptr %4)
  %i.f = shl nuw nsw i64 %.021.i, 1
  tail call void @_ZSt17__merge_sort_loopIPN9Stockfish6SquareES2_lN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS1_S1_EEEEvT_S9_T0_T1_T2_(ptr noundef %3, ptr noundef nonnull %i.d, ptr noundef %0, i64 noundef %i.f, ptr %4)
  %i.g = shl nsw i64 %.021.i, 2                   ; 2 uses
end_hunk_0
