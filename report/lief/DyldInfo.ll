Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/DyldInfo?download=true
inline.NumInlined: 6011
inline.NumDeleted: 1810
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 43
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE:bb.a
bb.f:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !187  ; 2 uses
  %i.aa = add i64 %i.z, 1                         ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !179
  %i.ad = icmp ugt i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.g, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit35

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !177
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.aa) #26, !inline_history !15
  %.pre.i.i33 = load i64, ptr %i.y, align 8, !tbaa !187 ; 2 uses
  %.pre2.i.i34 = add i64 %.pre.i.i33, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit35

_ZN3fmt3v1214basic_appenderIcEaSEc.exit35:        ; preds = %bb.f, %bb.g
  %.pre-phi.i.i32 = phi i64 [ %i.aa, %bb.f ], [ %.pre2.i.i34, %bb.g ]
  %i.ag = phi i64 [ %i.z, %bb.f ], [ %.pre.i.i33, %bb.g ]
  %i.ah = load ptr, ptr %0, align 8, !tbaa !178
  store i64 %.pre-phi.i.i32, ptr %i.y, align 8, !tbaa !187
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ag
  store i8 92, ptr %i.ai, align 1, !tbaa !106
  br label %bb.q

bb.h:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.aj = trunc nuw nsw i32 %i.b to i8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !187 ; 2 uses
  %i.am = add i64 %i.al, 1                        ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !179
  %i.ap = icmp ugt i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.i, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit40

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !177
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.am) #26, !inline_history !15
  %.pre.i.i38 = load i64, ptr %i.ak, align 8, !tbaa !187 ; 2 uses
  %.pre2.i.i39 = add i64 %.pre.i.i38, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit40

_ZN3fmt3v1214basic_appenderIcEaSEc.exit40:        ; preds = %bb.h, %bb.i
  %.pre-phi.i.i37 = phi i64 [ %i.am, %bb.h ], [ %.pre2.i.i39, %bb.i ]
  %i.as = phi i64 [ %i.al, %bb.h ], [ %.pre.i.i38, %bb.i ]
  %i.at = load ptr, ptr %0, align 8, !tbaa !178
  store i64 %.pre-phi.i.i37, ptr %i.ak, align 8, !tbaa !187
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.as
  store i8 92, ptr %i.au, align 1, !tbaa !106
  br label %bb.q

bb.j:                                             ; preds = %bb.a
  %i.av = icmp ult i32 %i.b, 256
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aw = tail call ptr @_ZN3fmt3v126detail15write_codepointILm2EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %0, i8 noundef signext 120, i32 noundef %i.b)
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.ax = icmp ult i32 %i.b, 65536
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ay = tail call ptr @_ZN3fmt3v126detail15write_codepointILm4EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %0, i8 noundef signext 117, i32 noundef %i.b)
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.az = icmp ult i32 %i.b, 1114112
  br i1 %i.az, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ba = tail call ptr @_ZN3fmt3v126detail15write_codepointILm8EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %0, i8 noundef signext 85, i32 noundef %i.b)
  br label %.loopexit

bb.p:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %1, align 8, !tbaa !416   ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !417 ; 2 uses
  %.not53 = icmp eq ptr %i.bb, %i.bd
  br i1 %.not53, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.p, %.lr.ph
  %.02455 = phi ptr [ %i.bh, %.lr.ph ], [ %i.bb, %bb.p ] ; 2 uses
  %.sroa.052.054 = phi ptr [ %i.bg, %.lr.ph ], [ %0, %bb.p ]
  %i.be = load i8, ptr %.02455, align 1, !tbaa !106
  %i.bf = zext i8 %i.be to i32
  %i.bg = tail call ptr @_ZN3fmt3v126detail15write_codepointILm2EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %.sroa.052.054, i8 noundef signext 120, i32 noundef %i.bf) ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.02455, i64 1 ; 2 uses
  %.not = icmp eq ptr %i.bh, %i.bd
  br i1 %.not, label %.loopexit, label %.lr.ph

bb.q:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit40, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit35, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit30, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %.0 = phi i8 [ 110, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ], [ 114, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit30 ], [ 116, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit35 ], [ %i.aj, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit40 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !187 ; 2 uses
  %i.bk = add i64 %i.bj, 1                        ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !179
  %i.bn = icmp ugt i64 %i.bk, %i.bm
  br i1 %i.bn, label %bb.r, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit45

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !177
  tail call void %i.bp(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.bk) #26, !inline_history !15
  %.pre.i.i43 = load i64, ptr %i.bi, align 8, !tbaa !187 ; 2 uses
  %.pre2.i.i44 = add i64 %.pre.i.i43, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit45

_ZN3fmt3v1214basic_appenderIcEaSEc.exit45:        ; preds = %bb.q, %bb.r
  %.pre-phi.i.i42 = phi i64 [ %i.bk, %bb.q ], [ %.pre2.i.i44, %bb.r ]
  %i.bq = phi i64 [ %i.bj, %bb.q ], [ %.pre.i.i43, %bb.r ]
  %i.br = load ptr, ptr %0, align 8, !tbaa !178
  store i64 %.pre-phi.i.i42, ptr %i.bi, align 8, !tbaa !187
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 %i.bq
  store i8 %.0, ptr %i.bs, align 1, !tbaa !106
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.p, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit45, %bb.o, %bb.m, %bb.k
  %.sroa.022.0 = phi ptr [ %i.aw, %bb.k ], [ %i.ay, %bb.m ], [ %i.ba, %bb.o ], [ %0, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit45 ], [ %0, %bb.p ], [ %i.bg, %.lr.ph ]
  ret ptr %.sroa.022.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN3fmt3v126detail12is_printableEj(i32 noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = icmp ult i32 %0, 65536
  br i1 %i.a, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = lshr i32 %0, 8                           ; 2 uses
  %i.c = trunc i32 %0 to i8
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.i, %bb.b
  %.04871.i = phi i64 [ 0, %bb.b ], [ %i.o, %.loopexit.i ] ; 2 uses
  %.04970.i = phi i32 [ 0, %bb.b ], [ %i.f, %.loopexit.i ] ; 2 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr @_ZZN3fmt3v126detail12is_printableEjE11singletons0, i64 %.04871.i ; 2 uses
  %.sroa.0.0.copyload.i = load i8, ptr %i.d, align 2, !tbaa !106
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 1, !tbaa !106
  %i.e = zext i8 %.sroa.5.0.copyload.i to i32
  %i.f = add nuw nsw i32 %.04970.i, %i.e          ; 2 uses
  %i.g = zext i8 %.sroa.0.0.copyload.i to i32     ; 2 uses
  %i.h = icmp samesign ult i32 %i.b, %i.g
  br i1 %i.h, label %.lr.ph78.i.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp eq i32 %i.b, %i.g
  br i1 %i.i, label %.lr.ph.preheader.i, label %.loopexit.i

.lr.ph.preheader.i:                               ; preds = %bb.d
  %i.j = zext nneg i32 %.04970.i to i64
  %i.k = zext nneg i32 %i.f to i64
  br label %.lr.ph.i

bb.e:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %.not.i = icmp samesign ult i64 %indvars.iv.next.i, %i.k
  br i1 %.not.i, label %.lr.ph.i, label %.loopexit.i, !llvm.loop !1261

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.j, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail12is_printableEjE17singletons0_lower, i64 %indvars.iv.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !106
  %i.n = icmp eq i8 %i.m, %i.c
  br i1 %i.n, label %_ZN3fmt3v126detail12is_printableEtPKNS1_9singletonEmPKhS6_m.exit, label %bb.e

.loopexit.i:                                      ; preds = %bb.e, %bb.d
  %i.o = add nuw nsw i64 %.04871.i, 1             ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.o, 41
  br i1 %exitcond.not.i, label %.lr.ph78.i.preheader, label %bb.c, !llvm.loop !1262

.lr.ph78.i.preheader:                             ; preds = %.loopexit.i, %bb.c
  br label %.lr.ph78.i

.lr.ph78.i:                                       ; preds = %.lr.ph78.i.preheader, %bb.h
  %.076.i = phi i64 [ %i.ad, %bb.h ], [ 0, %.lr.ph78.i.preheader ] ; 3 uses
  %.04175.i = phi i1 [ %i.ac, %bb.h ], [ true, %.lr.ph78.i.preheader ] ; 2 uses
  %.04374.i = phi i32 [ %i.aa, %bb.h ], [ %0, %.lr.ph78.i.preheader ]
  %i.p = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail12is_printableEjE7normal0, i64 %.076.i
  %i.q = load i8, ptr %i.p, align 1, !tbaa !106   ; 2 uses
  %i.r = zext i8 %i.q to i32                      ; 2 uses
  %.not57.i = icmp sgt i8 %i.q, -1
  br i1 %.not57.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph78.i
  %i.s = shl nuw nsw i32 %i.r, 8
  %i.t = and i32 %i.s, 32512
  %i.u = add nuw nsw i64 %.076.i, 1               ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail12is_printableEjE7normal0, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !106
  %i.x = zext i8 %i.w to i32
  %i.y = or disjoint i32 %i.t, %i.x
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph78.i
  %.1.i = phi i64 [ %i.u, %bb.f ], [ %.076.i, %.lr.ph78.i ]
  %i.z = phi i32 [ %i.y, %bb.f ], [ %i.r, %.lr.ph78.i ]
  %i.aa = sub nsw i32 %.04374.i, %i.z             ; 2 uses
  %i.ab = icmp sgt i32 %i.aa, -1
  br i1 %i.ab, label %bb.h, label %_ZN3fmt3v126detail12is_printableEtPKNS1_9singletonEmPKhS6_m.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = xor i1 %.04175.i, true                  ; 2 uses
  %i.ad = add i64 %.1.i, 1                        ; 2 uses
  %i.ae = icmp ult i64 %i.ad, 309
  br i1 %i.ae, label %.lr.ph78.i, label %_ZN3fmt3v126detail12is_printableEtPKNS1_9singletonEmPKhS6_m.exit, !llvm.loop !1263

bb.i:                                             ; preds = %bb.a
  %i.af = icmp ult i32 %0, 131072
  br i1 %i.af, label %bb.j, label %bb.q

bb.j:                                             ; preds = %bb.i
  %i.ag = and i32 %0, 65535                       ; 2 uses
  %i.ah = lshr i32 %i.ag, 8                       ; 2 uses
  %i.ai = trunc i32 %0 to i8
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.i52, %bb.j
  %.04871.i45 = phi i64 [ 0, %bb.j ], [ %i.au, %.loopexit.i52 ] ; 2 uses
  %.04970.i46 = phi i32 [ 0, %bb.j ], [ %i.al, %.loopexit.i52 ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr @_ZZN3fmt3v126detail12is_printableEjE11singletons1, i64 %.04871.i45 ; 2 uses
  %.sroa.0.0.copyload.i47 = load i8, ptr %i.aj, align 2, !tbaa !106
  %.sroa.5.0..sroa_idx.i48 = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  %.sroa.5.0.copyload.i49 = load i8, ptr %.sroa.5.0..sroa_idx.i48, align 1, !tbaa !106
  %i.ak = zext i8 %.sroa.5.0.copyload.i49 to i32
  %i.al = add nuw nsw i32 %.04970.i46, %i.ak      ; 2 uses
  %i.am = zext i8 %.sroa.0.0.copyload.i47 to i32  ; 2 uses
  %i.an = icmp samesign ult i32 %i.ah, %i.am
  br i1 %i.an, label %.lr.ph78.i55.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp eq i32 %i.ah, %i.am
  br i1 %i.ao, label %.lr.ph.preheader.i62, label %.loopexit.i52

.lr.ph.preheader.i62:                             ; preds = %bb.l
  %i.ap = zext nneg i32 %.04970.i46 to i64
  %i.aq = zext nneg i32 %i.al to i64
  br label %.lr.ph.i63

bb.m:                                             ; preds = %.lr.ph.i63
  %indvars.iv.next.i65 = add nuw nsw i64 %indvars.iv.i64, 1 ; 2 uses
  %.not.i66 = icmp samesign ult i64 %indvars.iv.next.i65, %i.aq
  br i1 %.not.i66, label %.lr.ph.i63, label %.loopexit.i52, !llvm.loop !1261

.lr.ph.i63:                                       ; preds = %bb.m, %.lr.ph.preheader.i62
  %indvars.iv.i64 = phi i64 [ %i.ap, %.lr.ph.preheader.i62 ], [ %indvars.iv.next.i65, %bb.m ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail12is_printableEjE17singletons1_lower, i64 %indvars.iv.i64
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !106
  %i.at = icmp eq i8 %i.as, %i.ai
  br i1 %i.at, label %_ZN3fmt3v126detail12is_printableEtPKNS1_9singletonEmPKhS6_m.exit, label %bb.m

.loopexit.i52:                                    ; preds = %bb.m, %bb.l
  %i.au = add nuw nsw i64 %.04871.i45, 1          ; 2 uses
  %exitcond.not.i53 = icmp eq i64 %i.au, 38
  br i1 %exitcond.not.i53, label %.lr.ph78.i55.preheader, label %bb.k, !llvm.loop !1262

.lr.ph78.i55.preheader:                           ; preds = %.loopexit.i52, %bb.k
  br label %.lr.ph78.i55

.lr.ph78.i55:                                     ; preds = %.lr.ph78.i55.preheader, %bb.p
  %.076.i56 = phi i64 [ %i.bj, %bb.p ], [ 0, %.lr.ph78.i55.preheader ] ; 3 uses
  %.04175.i57 = phi i1 [ %i.bi, %bb.p ], [ true, %.lr.ph78.i55.preheader ] ; 2 uses
  %.04374.i58 = phi i32 [ %i.bg, %bb.p ], [ %i.ag, %.lr.ph78.i55.preheader ]
  %i.av = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail12is_printableEjE7normal1, i64 %.076.i56
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !106 ; 2 uses
  %i.ax = zext i8 %i.aw to i32                    ; 2 uses
  %.not57.i59 = icmp sgt i8 %i.aw, -1
  br i1 %.not57.i59, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph78.i55
  %i.ay = shl nuw nsw i32 %i.ax, 8
  %i.az = and i32 %i.ay, 32512
  %i.ba = add nuw nsw i64 %.076.i56, 1            ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail12is_printableEjE7normal1, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !106
  %i.bd = zext i8 %i.bc to i32
  %i.be = or disjoint i32 %i.az, %i.bd
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph78.i55
  %.1.i60 = phi i64 [ %i.ba, %bb.n ], [ %.076.i56, %.lr.ph78.i55 ]
  %i.bf = phi i32 [ %i.be, %bb.n ], [ %i.ax, %.lr.ph78.i55 ]
  %i.bg = sub nsw i32 %.04374.i58, %i.bf          ; 2 uses
  %i.bh = icmp sgt i32 %i.bg, -1
  br i1 %i.bh, label %bb.p, label %_ZN3fmt3v126detail12is_printableEtPKNS1_9singletonEmPKhS6_m.exit

bb.p:                                             ; preds = %bb.o
  %i.bi = xor i1 %.04175.i57, true                ; 2 uses
  %i.bj = add i64 %.1.i60, 1                      ; 2 uses
  %i.bk = icmp ult i64 %i.bj, 419
  br i1 %i.bk, label %.lr.ph78.i55, label %_ZN3fmt3v126detail12is_printableEtPKNS1_9singletonEmPKhS6_m.exit, !llvm.loop !1263

bb.q:                                             ; preds = %bb.i
  %i.bl = insertelement <8 x i32> <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 poison>, i32 %0, i64 7 ; 2 uses
  %i.bm = and <8 x i32> %i.bl, <i32 34, i32 11, i32 14, i32 3103, i32 1506, i32 716213, i32 196112, i32 -2> ; 2 uses
  %i.bn = shufflevector <8 x i32> %i.bl, <8 x i32> <i32 poison, i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>, <8 x i32> <i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 7, i32 9>
  %i.bo = add <8 x i32> %i.bn, <i32 -173790, i32 -177973, i32 -183970, i32 -191457, i32 -195102, i32 -201547, i32 -918000, i32 178206> ; 2 uses
  %i.bp = icmp ult <8 x i32> %i.bo, %i.bm
  %i.bq = icmp eq <8 x i32> %i.bo, %i.bm
  %i.br = shufflevector <8 x i1> %i.bp, <8 x i1> %i.bq, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 15>
  %i.bs = bitcast <8 x i1> %i.br to i8
  %.not = icmp eq i8 %i.bs, 0
  %i.bt = icmp ult i32 %0, 1114112
  %spec.select = and i1 %i.bt, %.not
  br label %_ZN3fmt3v126detail12is_printableEtPKNS1_9singletonEmPKhS6_m.exit

_ZN3fmt3v126detail12is_printableEtPKNS1_9singletonEmPKhS6_m.exit: ; preds = %.lr.ph.i63, %bb.p, %bb.o, %.lr.ph.i, %bb.h, %bb.g, %bb.q
  %.0 = phi i1 [ %spec.select, %bb.q ], [ false, %.lr.ph.i ], [ %.04175.i57, %bb.o ], [ %i.ac, %bb.h ], [ %.04175.i, %bb.g ], [ %i.bi, %bb.p ], [ false, %.lr.ph.i63 ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail15write_codepointILm2EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !187  ; 2 uses
  %i.d = add i64 %i.c, 1                          ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !179
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !177
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d) #26, !inline_history !15
  %.pre.i.i = load i64, ptr %i.b, align 8, !tbaa !187 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.a, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.d, %bb.a ], [ %.pre2.i.i, %bb.b ]
  %i.j = phi i64 [ %i.c, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.k = load ptr, ptr %0, align 8, !tbaa !178
  store i64 %.pre-phi.i.i, ptr %i.b, align 8, !tbaa !187
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  store i8 92, ptr %i.l, align 1, !tbaa !106
  %i.m = load i64, ptr %i.b, align 8, !tbaa !187  ; 2 uses
  %i.n = add i64 %i.m, 1                          ; 3 uses
  %i.o = load i64, ptr %i.e, align 8, !tbaa !179
  %i.p = icmp ugt i64 %i.n, %i.o
  br i1 %i.p, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7

bb.c:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !177
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.n) #26, !inline_history !15
  %.pre.i.i5 = load i64, ptr %i.b, align 8, !tbaa !187 ; 2 uses
  %.pre2.i.i6 = add i64 %.pre.i.i5, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7

_ZN3fmt3v1214basic_appenderIcEaSEc.exit7:         ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %bb.c
  %.pre-phi.i.i4 = phi i64 [ %i.n, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ], [ %.pre2.i.i6, %bb.c ]
  %i.s = phi i64 [ %i.m, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ], [ %.pre.i.i5, %bb.c ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !178
  store i64 %.pre-phi.i.i4, ptr %i.b, align 8, !tbaa !187
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  store i8 %1, ptr %i.u, align 1, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i16 12336, ptr %i.a, align 2
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  br label %.split.i.i

.split.i.i:                                       ; preds = %.split.i.i, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7
  %.012.i.i = phi i32 [ %i.ab, %.split.i.i ], [ %2, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7 ] ; 2 uses
  %.0.i.i = phi ptr [ %i.aa, %.split.i.i ], [ %i.v, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7 ]
  %i.w = and i32 %.012.i.i, 15
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @.str.130, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !106
  %i.aa = getelementptr inbounds i8, ptr %.0.i.i, i64 -1 ; 2 uses
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !106
  %i.ab = lshr i32 %.012.i.i, 4                   ; 2 uses
  %.not.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit, label %.split.i.i, !llvm.loop !20

_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit: ; preds = %.split.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre.i.i8 = load i64, ptr %i.b, align 8, !tbaa !187
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i, %_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit
  %i.ad = phi i64 [ %.pre.i.i8, %_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit ], [ %i.aq, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i.idx = phi i64 [ 0, %_ZN3fmt3v126detail13format_base2eIcjEEPT_iS4_T0_ib.exit ], [ %.02732.i.i.add, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i.ptr = getelementptr i8, ptr %i.a, i64 %.02732.i.i.idx
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !179
  %i.af = sub i64 %i.ae, %i.ad
  %gepdiff = sub nsw i64 2, %.02732.i.i.idx       ; 4 uses
  %i.ag = icmp ult i64 %i.af, %gepdiff
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !177
  %i.ai = add i64 %gepdiff, %i.ad
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.ai) #26, !inline_history !16
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !187 ; 2 uses
  %i.ak = load i64, ptr %i.e, align 8, !tbaa !179
  %i.al = sub i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %gepdiff, i64 %i.al)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.026.i.i = phi i64 [ %i.aj, %bb.e ], [ %i.ad, %bb.d ] ; 2 uses
  %.025.i.i = phi i64 [ %i.am, %bb.e ], [ %gepdiff, %bb.d ] ; 4 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.f
  %i.an = load ptr, ptr %0, align 8, !tbaa !178
  %i.ao = getelementptr i8, ptr %i.an, i64 %.026.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ao, ptr align 1 %.02732.i.i.ptr, i64 %.025.i.i, i1 false), !tbaa !106
  %.pre37.i.i = load i64, ptr %i.b, align 8, !tbaa !187
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i.preheader, %bb.f
  %i.ap = phi i64 [ %.pre37.i.i, %.lr.ph.i.i.preheader ], [ %.026.i.i, %bb.f ]
  %i.aq = add i64 %i.ap, %.025.i.i                ; 2 uses
  store i64 %i.aq, ptr %i.b, align 8, !tbaa !187
  %.02732.i.i.add = add nuw nsw i64 %.025.i.i, %.02732.i.i.idx ; 2 uses
  %.not.i.i9 = icmp eq i64 %.02732.i.i.add, 2
  br i1 %.not.i.i9, label %_ZN3fmt3v126detail4copyIcPcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS7_T0_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit, label %bb.d, !llvm.loop !17

_ZN3fmt3v126detail4copyIcPcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS7_T0_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit: ; preds = %._crit_edge.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail15write_codepointILm4EcNS0_14basic_appenderIcEEEET1_S5_cj(ptr %0, i8 noundef signext %1, i32 noundef %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 10 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !187  ; 2 uses
  %i.d = add i64 %i.c, 1                          ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !179
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !177
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d) #26, !inline_history !15
  %.pre.i.i = load i64, ptr %i.b, align 8, !tbaa !187 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.a, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.d, %bb.a ], [ %.pre2.i.i, %bb.b ]
  %i.j = phi i64 [ %i.c, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.k = load ptr, ptr %0, align 8, !tbaa !178
  store i64 %.pre-phi.i.i, ptr %i.b, align 8, !tbaa !187
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  store i8 92, ptr %i.l, align 1, !tbaa !106
  %i.m = load i64, ptr %i.b, align 8, !tbaa !187  ; 2 uses
  %i.n = add i64 %i.m, 1                          ; 3 uses
  %i.o = load i64, ptr %i.e, align 8, !tbaa !179
  %i.p = icmp ugt i64 %i.n, %i.o
  br i1 %i.p, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7

bb.c:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !177
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.n) #26, !inline_history !15
  %.pre.i.i5 = load i64, ptr %i.b, align 8, !tbaa !187 ; 2 uses
  %.pre2.i.i6 = add i64 %.pre.i.i5, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7

_ZN3fmt3v1214basic_appenderIcEaSEc.exit7:         ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %bb.c
  %.pre-phi.i.i4 = phi i64 [ %i.n, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ], [ %.pre2.i.i6, %bb.c ]
  %i.s = phi i64 [ %i.m, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ], [ %.pre.i.i5, %bb.c ]
  %i.t = load ptr, ptr %0, align 8, !tbaa !178
  store i64 %.pre-phi.i.i4, ptr %i.b, align 8, !tbaa !187
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.s
  store i8 %1, ptr %i.u, align 1, !tbaa !106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 808464432, ptr %i.a, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %.split.i.i

.split.i.i:                                       ; preds = %.split.i.i, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7
  %.012.i.i = phi i32 [ %i.ab, %.split.i.i ], [ %2, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7 ] ; 2 uses
  %.0.i.i = phi ptr [ %i.aa, %.split.i.i ], [ %i.v, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit7 ]
  %i.w = and i32 %.012.i.i, 15
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @.str.130, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !106
  %i.aa = getelementptr inbounds i8, ptr %.0.i.i, i64 -1 ; 2 uses
  store i8 %i.z, ptr %i.aa, align 1, !tbaa !106
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail6bigint12assign_pow10Ei:bb.a
._crit_edge.loopexit:                             ; preds = %_ZN3fmt3v126detail6bigintmLIiEERS2_T_.exit
  %.pre = load i32, ptr %i.w, align 8, !tbaa !458
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16
  %i.bh = phi i32 [ %.pre, %._crit_edge.loopexit ], [ 0, %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit16 ]
  %i.bi = sdiv i32 %1, 32
  %i.bj = add nsw i32 %i.bh, %i.bi
  store i32 %i.bj, ptr %i.w, align 8, !tbaa !458
  %i.bk = srem i32 %1, 32                         ; 4 uses
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_ZN3fmt3v126detail6bigintlSEi.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.bm = load i64, ptr %i.v, align 8, !tbaa !459 ; 7 uses
  %.not19.i = icmp eq i64 %i.bm, 0
  br i1 %.not19.i, label %_ZN3fmt3v126detail6bigintlSEi.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.bn = load ptr, ptr %0, align 8, !tbaa !453   ; 3 uses
  %i.bo = sub nsw i32 32, %i.bk                   ; 2 uses
  %min.iters.check = icmp ult i64 %i.bm, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.bm, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bo, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert34 = insertelement <4 x i32> poison, i32 %i.bk, i64 0
  %broadcast.splat35 = shufflevector <4 x i32> %broadcast.splatinsert34, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.bs, %vector.body ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %index ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.bp, align 4, !tbaa !97 ; 2 uses
  %wide.load36 = load <4 x i32>, ptr %i.bq, align 4, !tbaa !97 ; 2 uses
  %i.br = lshr <4 x i32> %wide.load, %broadcast.splat ; 2 uses
  %i.bs = lshr <4 x i32> %wide.load36, %broadcast.splat ; 3 uses
  %i.bt = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.br, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bu = shufflevector <4 x i32> %i.br, <4 x i32> %i.bs, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.bv = shl <4 x i32> %wide.load, %broadcast.splat35
  %i.bw = shl <4 x i32> %wide.load36, %broadcast.splat35
  %i.bx = add <4 x i32> %i.bv, %i.bt
  %i.by = add <4 x i32> %i.bw, %i.bu
  store <4 x i32> %i.bx, ptr %i.bp, align 4, !tbaa !97
  store <4 x i32> %i.by, ptr %i.bq, align 4, !tbaa !97
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !1387

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.bs, i64 3 ; 2 uses
  %cmp.n = icmp eq i64 %i.bm, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %.01418.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  %.017.i.ph = phi i32 [ 0, %.lr.ph.i ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph, %middle.block
  %.lcssa = phi i32 [ %vector.recur.extract, %middle.block ], [ %i.cc, %scalar.ph ] ; 2 uses
  %.not.i = icmp eq i32 %.lcssa, 0
  br i1 %.not.i, label %_ZN3fmt3v126detail6bigintlSEi.exit, label %bb.l

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01418.i = phi i64 [ %i.cf, %scalar.ph ], [ %.01418.i.ph, %scalar.ph.preheader ] ; 2 uses
  %.017.i = phi i32 [ %i.cc, %scalar.ph ], [ %.017.i.ph, %scalar.ph.preheader ]
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %.01418.i ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !97 ; 2 uses
  %i.cc = lshr i32 %i.cb, %i.bo                   ; 2 uses
  %i.cd = shl i32 %i.cb, %i.bk
  %i.ce = add i32 %i.cd, %.017.i
  store i32 %i.ce, ptr %i.ca, align 4, !tbaa !97
  %i.cf = add nuw i64 %.01418.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cf, %i.bm
  br i1 %exitcond.not.i, label %._crit_edge.i, label %scalar.ph, !llvm.loop !1388

bb.l:                                             ; preds = %._crit_edge.i
  %i.cg = add i64 %i.bm, 1                        ; 3 uses
  %i.ch = load i64, ptr %i.o, align 8, !tbaa !454
  %i.ci = icmp ugt i64 %i.cg, %i.ch
  br i1 %i.ci, label %bb.m, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i

bb.m:                                             ; preds = %bb.l
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !452
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.cg) #26, !inline_history !33
  %.pre.i.i = load i64, ptr %i.v, align 8, !tbaa !459 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  %.pre23 = load ptr, ptr %0, align 8, !tbaa !453
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i: ; preds = %bb.m, %bb.l
  %i.cl = phi ptr [ %i.bn, %bb.l ], [ %.pre23, %bb.m ]
  %.pre-phi.i.i = phi i64 [ %i.cg, %bb.l ], [ %.pre2.i.i, %bb.m ]
  %i.cm = phi i64 [ %i.bm, %bb.l ], [ %.pre.i.i, %bb.m ]
  store i64 %.pre-phi.i.i, ptr %i.v, align 8, !tbaa !459
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cm
  store i32 %.lcssa, ptr %i.cn, align 4, !tbaa !97
  br label %_ZN3fmt3v126detail6bigintlSEi.exit

_ZN3fmt3v126detail6bigintlSEi.exit:               ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i, %._crit_edge.i, %bb.k, %._crit_edge, %_ZN3fmt3v126detail6bigintaSIiEEvT_.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN3fmt3v126detail6bigint13divmod_assignERKS2_(ptr noundef nonnull align 8 dereferenceable(172) %0, ptr noundef nonnull align 8 dereferenceable(172) %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !459  ; 5 uses
  %i.c = trunc i64 %i.b to i32                    ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !458  ; 4 uses
  %i.f = add nsw i32 %i.e, %i.c                   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !459  ; 3 uses
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 168 ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !458  ; 3 uses
  %i.l = add nsw i32 %i.k, %i.i                   ; 2 uses
  %.not.i = icmp eq i32 %i.f, %i.l
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp sgt i32 %i.f, %i.l
  br i1 %i.m, label %select.unfold, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

bb.c:                                             ; preds = %bb.a
  %i.n = sub nsw i32 %i.c, %i.i
  %spec.store.select.i = tail call i32 @llvm.smax.i32(i32 %i.n, i32 0)
  %i.o = load ptr, ptr %0, align 8
  %i.p = load ptr, ptr %1, align 8
  %sext.i = shl i64 %i.b, 32
  %i.q = ashr exact i64 %sext.i, 32               ; 3 uses
  %i.r = zext nneg i32 %spec.store.select.i to i64 ; 3 uses
  %sext55.i = shl i64 %i.h, 32
  %i.s = ashr exact i64 %sext55.i, 32             ; 2 uses
  %smin = tail call i64 @llvm.smin.i64(i64 %i.q, i64 %i.r)
  %.not35.not.i91 = icmp sgt i64 %i.q, %i.r
  br i1 %.not35.not.i91, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph
  %.not35.not.i = icmp sgt i64 %indvars.iv.next.i, %i.r
  br i1 %.not35.not.i, label %.lr.ph, label %._crit_edge, !llvm.loop !37

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %indvars.iv.i93 = phi i64 [ %indvars.iv.next.i, %bb.d ], [ %i.q, %bb.c ]
  %indvars.iv45.i92 = phi i64 [ %indvars.iv.next46.i, %bb.d ], [ %i.s, %bb.c ]
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i93, -1 ; 3 uses
  %indvars.iv.next46.i = add nsw i64 %indvars.iv45.i92, -1 ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.next.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !97   ; 2 uses
  %i.v = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.next46.i
  %i.w = load i32, ptr %i.v, align 4, !tbaa !97   ; 2 uses
  %.not37.i = icmp eq i32 %i.u, %i.w
  br i1 %.not37.i, label %bb.d, label %.loopexit.i, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %indvars.iv45.i.lcssa = phi i64 [ %i.s, %bb.c ], [ %indvars.iv.next46.i, %bb.d ]
  %or.cond.not = icmp slt i64 %smin, %indvars.iv45.i.lcssa
  br i1 %or.cond.not, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit, label %select.unfold

.loopexit.i:                                      ; preds = %.lr.ph
  %i.x = icmp ugt i32 %i.u, %i.w
  br i1 %i.x, label %select.unfold, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

select.unfold:                                    ; preds = %.loopexit.i, %bb.b, %._crit_edge
  %i.y = sub nsw i32 %i.e, %i.k                   ; 4 uses
  %i.z = icmp slt i32 %i.y, 1
  br i1 %i.z, label %_ZN3fmt3v126detail6bigint5alignERKS2_.exit, label %bb.e

bb.e:                                             ; preds = %select.unfold
  %i.aa = add nsw i32 %i.y, %i.c
  %i.ab = zext i32 %i.aa to i64                   ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !454 ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ab
  br i1 %i.ae, label %bb.f, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i

bb.f:                                             ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !452
  tail call void %i.ag(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.ab) #26, !inline_history !1389
  %.pre.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !454
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i: ; preds = %bb.f, %bb.e
  %i.ah = phi i64 [ %i.ad, %bb.e ], [ %.pre.i.i.i, %bb.f ]
  %i.ai = tail call noundef i64 @llvm.umin.i64(i64 %i.ab, i64 %i.ah) ; 2 uses
  store i64 %i.ai, ptr %i.a, align 8, !tbaa !459
  %i.aj = icmp sgt i32 %i.c, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !453 ; 13 uses
  br i1 %i.aj, label %.lr.ph.i, label %.lr.ph.preheader.i.i

.lr.ph.i:                                         ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.ak = add nsw i32 %i.c, -1                    ; 2 uses
  %i.al = add i32 %i.y, %i.ak
  %i.am = sext i32 %i.al to i64                   ; 5 uses
  %i.an = zext i32 %i.ak to i64                   ; 5 uses
  %i.ao = and i64 %i.b, 2147483647                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ao, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i
  %i.ap = sub nsw i64 %i.an, %i.am
  %i.aq = shl nsw i64 %i.ap, 2
  %i.ar = add nsw i64 %i.aq, -1
  %diff.check = icmp ult i64 %i.ar, 31
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.b, 2147483640               ; 4 uses
  %i.as = sub nsw i64 %i.an, %n.vec
  %i.at = sub nsw i64 %i.am, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = sub i64 %i.an, %index
  %i.av = sub i64 %i.am, %index
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %i.au ; 2 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 -12
  %i.ay = getelementptr inbounds i8, ptr %i.aw, i64 -28
  %wide.load = load <4 x i32>, ptr %i.ax, align 4, !tbaa !97
  %wide.load106 = load <4 x i32>, ptr %i.ay, align 4, !tbaa !97
  %i.az = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %i.av ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -12
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -28
  store <4 x i32> %wide.load, ptr %i.ba, align 4, !tbaa !97
  store <4 x i32> %wide.load106, ptr %i.bb, align 4, !tbaa !97
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !1390

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ao, %n.vec
  br i1 %cmp.n, label %.lr.ph.preheader.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i, %middle.block
  %indvars.iv18.i.ph = phi i64 [ %i.an, %vector.memcheck ], [ %i.an, %.lr.ph.i ], [ %i.as, %middle.block ] ; 4 uses
  %indvars.iv.i11.ph = phi i64 [ %i.am, %vector.memcheck ], [ %i.am, %.lr.ph.i ], [ %i.at, %middle.block ] ; 2 uses
  %i.bd = add nsw i64 %indvars.iv18.i.ph, 1
  %xtraiter = and i64 %i.bd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv18.i.prol = phi i64 [ %indvars.iv.next19.i.prol, %scalar.ph.prol ], [ %indvars.iv18.i.ph, %scalar.ph.preheader ] ; 2 uses
  %indvars.iv.i11.prol = phi i64 [ %indvars.iv.next.i12.prol, %scalar.ph.prol ], [ %indvars.iv.i11.ph, %scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i.prol
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !97
  %i.bg = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11.prol
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !97
  %indvars.iv.next19.i.prol = add nsw i64 %indvars.iv18.i.prol, -1 ; 2 uses
  %indvars.iv.next.i12.prol = add nsw i64 %indvars.iv.i11.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1391

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv18.i.unr = phi i64 [ %indvars.iv18.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next19.i.prol, %scalar.ph.prol ]
  %indvars.iv.i11.unr = phi i64 [ %indvars.iv.i11.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i12.prol, %scalar.ph.prol ]
  %i.bh = icmp ult i64 %indvars.iv18.i.ph, 3
  br i1 %i.bh, label %.lr.ph.preheader.i.i, label %scalar.ph

.lr.ph.preheader.i.i:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.bi = xor i32 %i.k, -1
  %i.bj = add i32 %i.e, %i.bi
  %i.bk = zext i32 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 2
  %i.bm = add nuw nsw i64 %i.bl, 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.pre.i, i8 0, i64 %i.bm, i1 false), !tbaa !97
  %i.bn = load i32, ptr %i.d, align 8, !tbaa !458
  %i.bo = sub nsw i32 %i.bn, %i.y                 ; 2 uses
  store i32 %i.bo, ptr %i.d, align 8, !tbaa !458
  %.pre.pre = load i64, ptr %i.g, align 8, !tbaa !459
  br label %_ZN3fmt3v126detail6bigint5alignERKS2_.exit

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv18.i = phi i64 [ %indvars.iv.next19.i.3, %scalar.ph ], [ %indvars.iv18.i.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %indvars.iv.i11 = phi i64 [ %indvars.iv.next.i12.3, %scalar.ph ], [ %indvars.iv.i11.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !97
  %i.br = getelementptr inbounds [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !97
  %i.bs = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.bt = getelementptr i8, ptr %i.bs, i64 -4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !97
  %i.bv = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.bw = getelementptr i8, ptr %i.bv, i64 -4
  store i32 %i.bu, ptr %i.bw, align 4, !tbaa !97
  %i.bx = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv18.i
  %i.by = getelementptr i8, ptr %i.bx, i64 -8
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !97
  %i.ca = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.cb = getelementptr i8, ptr %i.ca, i64 -8
  store i32 %i.bz, ptr %i.cb, align 4, !tbaa !97
  %indvars.iv.next19.i.2 = add nsw i64 %indvars.iv18.i, -3 ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %.pre.i, i64 %indvars.iv.next19.i.2
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !97
  %i.ce = getelementptr [4 x i8], ptr %.pre.i, i64 %indvars.iv.i11
  %i.cf = getelementptr i8, ptr %i.ce, i64 -12
  store i32 %i.cd, ptr %i.cf, align 4, !tbaa !97
  %indvars.iv.next19.i.3 = add nsw i64 %indvars.iv18.i, -4
  %indvars.iv.next.i12.3 = add nsw i64 %indvars.iv.i11, -4
  %.not.i13.3 = icmp eq i64 %indvars.iv.next19.i.2, 0
  br i1 %.not.i13.3, label %.lr.ph.preheader.i.i, label %scalar.ph, !llvm.loop !1392

_ZN3fmt3v126detail6bigint5alignERKS2_.exit:       ; preds = %select.unfold, %.lr.ph.preheader.i.i
  %.pre = phi i64 [ %i.h, %select.unfold ], [ %.pre.pre, %.lr.ph.preheader.i.i ]
  %i.cg = phi i32 [ %i.e, %select.unfold ], [ %i.bo, %.lr.ph.preheader.i.i ]
  %i.ch = phi i64 [ %i.b, %select.unfold ], [ %i.ai, %.lr.ph.preheader.i.i ]
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31

_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31: ; preds = %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit
  %i.ck = phi i32 [ %i.cg, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.ex, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge ]
  %i.cl = phi i64 [ %.pre, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.ez, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge ] ; 5 uses
  %i.cm = phi i64 [ %i.ch, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.eu, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge ] ; 3 uses
  %.0 = phi i32 [ 0, %_ZN3fmt3v126detail6bigint5alignERKS2_.exit ], [ %i.ev, %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge ]
  %i.cn = trunc i64 %i.cm to i32
  %.not21.i = icmp eq i64 %i.cl, 0
  br i1 %.not21.i, label %._crit_edge.thread.i, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31
  %i.co = load i32, ptr %i.j, align 8, !tbaa !458
  %i.cp = sub i32 %i.co, %i.ck
  %i.cq = load ptr, ptr %1, align 8, !tbaa !453   ; 3 uses
  %i.cr = load ptr, ptr %0, align 8, !tbaa !453   ; 4 uses
  %i.cs = sext i32 %i.cp to i64                   ; 2 uses
  %xtraiter121 = and i64 %i.cl, 1
  %i.ct = icmp eq i64 %i.cl, 1
  br i1 %i.ct, label %.epil.preheader, label %.lr.ph.i14.new

.lr.ph.i14.new:                                   ; preds = %.lr.ph.i14
  %unroll_iter = and i64 %i.cl, -2
  br label %bb.g

._crit_edge.i.unr-lcssa:                          ; preds = %bb.g
  %lcmp.mod122.not = icmp eq i64 %xtraiter121, 0
  br i1 %lcmp.mod122.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.lr.ph.i14
  %indvars.iv.i15.epil.init = phi i64 [ %i.cs, %.lr.ph.i14 ], [ %indvars.iv.next.i16.1, %._crit_edge.i.unr-lcssa ] ; 2 uses
  %.024.i.epil.init = phi i64 [ 0, %.lr.ph.i14 ], [ %i.ea, %._crit_edge.i.unr-lcssa ]
  %.01822.i.epil.init = phi i64 [ 0, %.lr.ph.i14 ], [ %i.dz, %._crit_edge.i.unr-lcssa ]
  %lcmp.mod125 = trunc i64 %i.cl to i1
  tail call void @llvm.assume(i1 %lcmp.mod125)
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.024.i.epil.init
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !97
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %indvars.iv.i15.epil.init ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !97
  %i.cy = zext i32 %i.cx to i64
  %i.cz = zext i32 %i.cv to i64
  %i.da = add nuw nsw i64 %.01822.i.epil.init, %i.cz
  %i.db = sub nsw i64 %i.cy, %i.da                ; 2 uses
  %i.dc = trunc i64 %i.db to i32
  store i32 %i.dc, ptr %i.cw, align 4, !tbaa !97
  %indvars.iv.next.i16.epil = add nsw i64 %indvars.iv.i15.epil.init, 1
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.dx, %._crit_edge.i.unr-lcssa ], [ %i.db, %.epil.preheader ]
  %indvars.iv.next.i16.lcssa = phi i64 [ %indvars.iv.next.i16.1, %._crit_edge.i.unr-lcssa ], [ %indvars.iv.next.i16.epil, %.epil.preheader ]
  %i.dd = icmp sgt i64 %.lcssa, -1
  br i1 %i.dd, label %._crit_edge.thread.i, label %bb.h

bb.g:                                             ; preds = %bb.g, %.lr.ph.i14.new
  %indvars.iv.i15 = phi i64 [ %i.cs, %.lr.ph.i14.new ], [ %indvars.iv.next.i16.1, %bb.g ] ; 3 uses
  %.024.i = phi i64 [ 0, %.lr.ph.i14.new ], [ %i.ea, %bb.g ] ; 3 uses
  %.01822.i = phi i64 [ 0, %.lr.ph.i14.new ], [ %i.dz, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph.i14.new ], [ %niter.next.1, %bb.g ]
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.024.i
  %i.df = load i32, ptr %i.de, align 4, !tbaa !97
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.cr, i64 %indvars.iv.i15 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !97
  %i.di = zext i32 %i.dh to i64
  %i.dj = zext i32 %i.df to i64
  %i.dk = add nuw nsw i64 %.01822.i, %i.dj
  %i.dl = sub nsw i64 %i.di, %i.dk                ; 2 uses
  %i.dm = trunc i64 %i.dl to i32
  store i32 %i.dm, ptr %i.dg, align 4, !tbaa !97
  %i.dn = lshr i64 %i.dl, 63
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %.024.i
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !97
  %i.dr = getelementptr [4 x i8], ptr %i.cr, i64 %indvars.iv.i15
  %i.ds = getelementptr i8, ptr %i.dr, i64 4      ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !97
  %i.du = zext i32 %i.dt to i64
  %i.dv = zext i32 %i.dq to i64
  %i.dw = add nuw nsw i64 %i.dn, %i.dv
  %i.dx = sub nsw i64 %i.du, %i.dw                ; 3 uses
  %i.dy = trunc i64 %i.dx to i32
  store i32 %i.dy, ptr %i.ds, align 4, !tbaa !97
  %i.dz = lshr i64 %i.dx, 63                      ; 2 uses
  %indvars.iv.next.i16.1 = add nsw i64 %indvars.iv.i15, 2 ; 3 uses
end_hunk_1
begin_hunk_2_@_ZN3fmt3v126detail6bigint13divmod_assignERKS2_:bb.a
  %indvars.iv.next.i27 = add nsw i64 %indvars.iv.i24101, -1 ; 3 uses
  %indvars.iv.next46.i28 = add nsw i64 %indvars.iv45.i23100, -1 ; 3 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.ff, i64 %indvars.iv.next.i27
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !97 ; 2 uses
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %indvars.iv.next46.i28
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !97 ; 2 uses
  %.not37.i29 = icmp eq i32 %i.fl, %i.fn
  br i1 %.not37.i29, label %bb.n, label %.loopexit.i30, !llvm.loop !37

._crit_edge104:                                   ; preds = %bb.n, %bb.m
  %indvars.iv45.i23.lcssa = phi i64 [ %i.fj, %bb.m ], [ %indvars.iv.next46.i28, %bb.n ]
  %or.cond.not49 = icmp slt i64 %smin59, %indvars.iv45.i23.lcssa
  br i1 %or.cond.not49, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge

.loopexit.i30:                                    ; preds = %.lr.ph103
  %i.fo = icmp ugt i32 %i.fl, %i.fn
  br i1 %i.fo, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge, label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit

_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31.backedge: ; preds = %.loopexit.i30, %bb.l, %._crit_edge104
  br label %_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit31, !llvm.loop !1395

_ZN3fmt3v126detail7compareERKNS1_6bigintES4_.exit: ; preds = %._crit_edge104, %.loopexit.i30, %bb.l, %._crit_edge, %bb.b, %.loopexit.i
  %.010 = phi i32 [ 0, %bb.b ], [ 0, %.loopexit.i ], [ 0, %._crit_edge ], [ %i.ev, %bb.l ], [ %i.ev, %.loopexit.i30 ], [ %i.ev, %._crit_edge104 ]
  ret i32 %.010
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #2 comdat align 2 {
bb.a:
  %2 = alloca %"class.std::bad_alloc", align 8    ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !454  ; 2 uses
  %i.c = lshr i64 %i.b, 1
  %i.d = add i64 %i.c, %i.b                       ; 3 uses
  %i.e = icmp ugt i64 %1, %i.d
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp ugt i64 %i.d, 4611686018427387903
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef i64 @llvm.umax.i64(i64 %1, i64 4611686018427387903)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi i64 [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %1, %bb.a ] ; 3 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !453    ; 3 uses
  %i.i = shl i64 %.0, 2
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #31 ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.e, label %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %2, align 8, !tbaa !69
  %i.k = call noundef ptr @_ZNKSt9bad_alloc4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %2) #26
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.120, i32 noundef 752, ptr noundef %i.k) #32
  unreachable

_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit:  ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !459  ; 2 uses
  %i.n = icmp ule i64 %i.m, %.0
  tail call void @llvm.assume(i1 %i.n)
  %i.o = shl i64 %i.m, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.j, ptr align 4 %i.h, i64 %i.o, i1 false)
  store ptr %i.j, ptr %0, align 8, !tbaa !453
  store i64 %.0, ptr %i.a, align 8, !tbaa !454
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.not = icmp eq ptr %i.h, %i.p
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit
  tail call void @free(ptr noundef %i.h) #26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail6bigint6squareEv(ptr noundef nonnull align 8 dereferenceable(172) %0) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %1 = alloca %"class.std::bad_alloc", align 8    ; 3 uses
  %2 = alloca %"class.fmt::v12::basic_memory_buffer.770", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !459  ; 10 uses
  %i.c = trunc i64 %i.b to i32                    ; 6 uses
  %i.d = shl i32 %i.c, 1                          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(161) %2, i8 0, i64 24, i1 false)
  store ptr @_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE4growERNS2_6bufferIjEEm, ptr %i.f, align 8, !tbaa !452
  %i.g = load ptr, ptr %0, align 8, !tbaa !453    ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !454  ; 8 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.k = icmp eq ptr %i.g, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  store ptr %i.l, ptr %2, align 8, !tbaa !453
  store i64 %i.i, ptr %i.e, align 8, !tbaa !454
  %.not6.i.i.i = icmp eq i64 %i.b, 0
  br i1 %.not6.i.i.i, label %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.b
  %.idx.i.i = shl i64 %i.b, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.j, i64 %.idx.i.i, i1 false), !tbaa !97
  br label %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i

bb.c:                                             ; preds = %bb.a
  store ptr %i.g, ptr %2, align 8, !tbaa !453
  store i64 %i.i, ptr %i.e, align 8, !tbaa !454
  store ptr %i.j, ptr %0, align 8, !tbaa !453
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  br label %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i

_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i: ; preds = %.lr.ph.i.i.i.preheader, %bb.c, %bb.b
  %i.m = phi ptr [ %i.l, %.lr.ph.i.i.i.preheader ], [ %i.g, %bb.c ], [ %i.l, %bb.b ] ; 2 uses
  %i.n = phi i64 [ %i.i, %.lr.ph.i.i.i.preheader ], [ 0, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %i.o = icmp ugt i64 %i.b, %i.i
  br i1 %i.o, label %bb.d, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEC2EOS5_.exit

bb.d:                                             ; preds = %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i
  %i.p = lshr i64 %i.i, 1
  %i.q = add i64 %i.p, %i.i                       ; 3 uses
  %i.r = icmp ugt i64 %i.b, %i.q
  br i1 %i.r, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = icmp ugt i64 %i.q, 4611686018427387903
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = call noundef i64 @llvm.umax.i64(i64 %i.b, i64 4611686018427387903)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.0.i = phi i64 [ %i.q, %bb.e ], [ %i.t, %bb.f ], [ %i.b, %bb.d ] ; 3 uses
  %i.u = shl i64 %.0.i, 2
  %i.v = call noalias ptr @malloc(i64 noundef %i.u) #31 ; 2 uses
  %.not.i.i103 = icmp eq ptr %i.v, null
  br i1 %.not.i.i103, label %bb.h, label %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %1, align 8, !tbaa !69
  %i.w = call noundef ptr @_ZNKSt9bad_alloc4whatEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #26
  call void @_ZN3fmt3v1211assert_failEPKciS2_(ptr noundef nonnull @.str.120, i32 noundef 752, ptr noundef %i.w) #32
  unreachable

_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i: ; preds = %bb.g
  store ptr %i.v, ptr %2, align 8, !tbaa !453
  store i64 %.0.i, ptr %i.e, align 8, !tbaa !454
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.not.i = icmp eq ptr %i.m, %i.x
  br i1 %.not.i, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEC2EOS5_.exit, label %bb.i

bb.i:                                             ; preds = %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i
  call void @free(ptr noundef %i.m) #26
  %.pre.i.i.i.i.pre = load i64, ptr %i.e, align 8, !tbaa !454
  %.pre.pre = load i64, ptr %i.h, align 8, !tbaa !454
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEC2EOS5_.exit

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEC2EOS5_.exit: ; preds = %bb.i, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i, %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i
  %i.y = phi i64 [ %i.n, %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i ], [ %i.n, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ], [ %.pre.pre, %bb.i ] ; 2 uses
  %i.z = phi i64 [ %i.i, %_ZN3fmt3v126detail4copyIjPjS3_TnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS5_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS5_S6_EE5valueEiE4typeELi0EEES5_S6_S6_S5_.exit.i.i ], [ %.0.i, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i ], [ %.pre.i.i.i.i.pre, %bb.i ]
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ab = call noundef i64 @llvm.umin.i64(i64 %i.b, i64 %i.z)
  store i64 %i.ab, ptr %i.aa, align 8, !tbaa !459
  %i.ac = zext i32 %i.d to i64                    ; 3 uses
  %i.ad = icmp ult i64 %i.y, %i.ac
  br i1 %i.ad, label %bb.j, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit

bb.j:                                             ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEC2EOS5_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !452
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(161) %0, i64 noundef %i.ac) #26, !inline_history !1396
  %.pre.i.i37 = load i64, ptr %i.h, align 8, !tbaa !454
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit: ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEC2EOS5_.exit, %bb.j
  %i.ag = phi i64 [ %i.y, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEEC2EOS5_.exit ], [ %.pre.i.i37, %bb.j ] ; 3 uses
  %i.ah = call noundef i64 @llvm.umin.i64(i64 %i.ac, i64 %i.ag) ; 4 uses
  store i64 %i.ah, ptr %i.a, align 8, !tbaa !459
  %i.ai = icmp sgt i32 %i.c, 0
  %.pre85.pre86 = load ptr, ptr %0, align 8       ; 2 uses
  br i1 %i.ai, label %.preheader38.lr.ph, label %.preheader

.preheader38.lr.ph:                               ; preds = %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit
  %i.aj = load ptr, ptr %2, align 8, !tbaa !453   ; 6 uses
  %wide.trip.count68 = and i64 %i.b, 2147483647
  br label %.preheader38

.preheader38:                                     ; preds = %.preheader38.lr.ph, %bb.k
  %indvars.iv63 = phi i64 [ 1, %.preheader38.lr.ph ], [ %indvars.iv.next64, %bb.k ] ; 4 uses
  %indvars.iv = phi i64 [ 0, %.preheader38.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 5 uses
  %.03542 = phi i128 [ 0, %.preheader38.lr.ph ], [ %i.bc, %bb.k ] ; 2 uses
  %xtraiter = and i64 %indvars.iv63, 1
  %i.ak = icmp eq i64 %indvars.iv, 0
  br i1 %i.ak, label %.epil.preheader, label %.preheader38.new

.preheader38.new:                                 ; preds = %.preheader38
  %unroll_iter = and i64 %indvars.iv63, 9223372036854775806
  br label %bb.l

.preheader.loopexit:                              ; preds = %bb.k
  %.pre85.pre = load ptr, ptr %0, align 8
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit
  %.pre85 = phi ptr [ %.pre85.pre86, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit ], [ %.pre85.pre, %.preheader.loopexit ] ; 2 uses
  %.035.lcssa = phi i128 [ 0, %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit ], [ %i.bc, %.preheader.loopexit ]
  %i.al = icmp sgt i32 %i.d, %i.c
  br i1 %i.al, label %.lr.ph50, label %._crit_edge51

.lr.ph50:                                         ; preds = %.preheader
  %i.am = load ptr, ptr %2, align 8               ; 6 uses
  %sext = shl i64 %i.b, 32                        ; 2 uses
  %i.an = ashr exact i64 %sext, 32                ; 4 uses
  %sext100 = add i64 %sext, -4294967296
  %i.ao = ashr exact i64 %sext100, 32
  %wide.trip.count = sext i32 %i.d to i64
  %invariant.op = add nsw i64 %i.ao, %i.an
  %i.ap = add i32 %i.c, -2
  %indvars.iv74.prol = add nsw i64 %i.an, -1      ; 2 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.am, i64 %indvars.iv74.prol
  br label %bb.p

.unr-lcssa:                                       ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.k, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %.preheader38
  %indvars.iv56.epil.init = phi i64 [ 0, %.preheader38 ], [ %indvars.iv.next57.1, %.unr-lcssa ]
  %indvars.iv54.epil.init = phi i64 [ %indvars.iv, %.preheader38 ], [ %indvars.iv.next55.1, %.unr-lcssa ]
  %.139.epil.init = phi i128 [ %.03542, %.preheader38 ], [ %i.bw, %.unr-lcssa ]
  %lcmp.mod140 = trunc i64 %indvars.iv63 to i1
  call void @llvm.assume(i1 %lcmp.mod140)
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv56.epil.init
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !97
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv54.epil.init
  %i.av = load i32, ptr %i.au, align 4, !tbaa !97
  %i.aw = zext i32 %i.av to i64
  %i.ax = mul nuw i64 %i.aw, %i.at
  %i.ay = zext i64 %i.ax to i128
  %i.az = add i128 %.139.epil.init, %i.ay
  br label %bb.k

bb.k:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.lcssa137 = phi i128 [ %i.bw, %.unr-lcssa ], [ %i.az, %.epil.preheader ] ; 2 uses
  %i.ba = trunc i128 %.lcssa137 to i32
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %.pre85.pre86, i64 %indvars.iv
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !97
  %i.bc = lshr i128 %.lcssa137, 32                ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %indvars.iv.next64 = add nuw nsw i64 %indvars.iv63, 1
  %exitcond69.not = icmp eq i64 %indvars.iv.next, %wide.trip.count68
  br i1 %exitcond69.not, label %.preheader.loopexit, label %.preheader38, !llvm.loop !1397

bb.l:                                             ; preds = %bb.l, %.preheader38.new
  %indvars.iv56 = phi i64 [ 0, %.preheader38.new ], [ %indvars.iv.next57.1, %bb.l ] ; 3 uses
  %indvars.iv54 = phi i64 [ %indvars.iv, %.preheader38.new ], [ %indvars.iv.next55.1, %bb.l ] ; 3 uses
  %.139 = phi i128 [ %.03542, %.preheader38.new ], [ %i.bw, %bb.l ]
  %niter = phi i64 [ 0, %.preheader38.new ], [ %niter.next.1, %bb.l ]
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv56
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !97
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv54
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !97
  %i.bi = zext i32 %i.bh to i64
  %i.bj = mul nuw i64 %i.bi, %i.bf
  %i.bk = zext i64 %i.bj to i128
  %i.bl = add i128 %.139, %i.bk
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv56
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !97
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr [4 x i8], ptr %i.aj, i64 %indvars.iv54
  %i.br = getelementptr i8, ptr %i.bq, i64 -4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !97
  %i.bt = zext i32 %i.bs to i64
  %i.bu = mul nuw i64 %i.bt, %i.bp
  %i.bv = zext i64 %i.bu to i128
  %i.bw = add i128 %i.bl, %i.bv                   ; 3 uses
  %indvars.iv.next57.1 = add nuw nsw i64 %indvars.iv56, 2 ; 2 uses
  %indvars.iv.next55.1 = add nsw i64 %indvars.iv54, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.l, !llvm.loop !1398

._crit_edge51.loopexit:                           ; preds = %._crit_edge
  %.pre84 = load ptr, ptr %0, align 8
  br label %._crit_edge51

._crit_edge51:                                    ; preds = %._crit_edge51.loopexit, %.preheader
  %i.bx = phi ptr [ %.pre84, %._crit_edge51.loopexit ], [ %.pre85, %.preheader ]
  %i.by = trunc nuw i64 %i.ah to i32
  %smin.i = call i32 @llvm.smin.i32(i32 %i.by, i32 1) ; 2 uses
  %i.bz = trunc nuw i64 %i.ah to i32              ; 2 uses
  %i.ca = icmp sgt i32 %i.bz, 1
  br i1 %i.ca, label %.lr.ph132, label %.critedge.i

bb.m:                                             ; preds = %.lr.ph132
  %i.cb = trunc nuw i64 %i.ce to i32              ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, 1
  br i1 %i.cc, label %.lr.ph132, label %.critedge.i, !llvm.loop !38

.lr.ph132:                                        ; preds = %._crit_edge51, %bb.m
  %i.cd = phi i32 [ %i.cb, %bb.m ], [ %i.bz, %._crit_edge51 ]
  %indvars.iv.i131 = phi i64 [ %i.ce, %bb.m ], [ %i.ah, %._crit_edge51 ]
  %i.ce = add nsw i64 %indvars.iv.i131, -1        ; 3 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !97
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.m, label %..critedge.i_crit_edge, !llvm.loop !38

..critedge.i_crit_edge:                           ; preds = %.lr.ph132
  br label %.critedge.i, !llvm.loop !38

.critedge.i:                                      ; preds = %bb.m, %..critedge.i_crit_edge, %._crit_edge51
  %.0.in.lcssa.i = phi i32 [ %smin.i, %._crit_edge51 ], [ %i.cd, %..critedge.i_crit_edge ], [ %smin.i, %bb.m ]
  %i.ci = zext i32 %.0.in.lcssa.i to i64          ; 3 uses
  %i.cj = icmp ult i64 %i.ag, %i.ci
  br i1 %i.cj, label %bb.n, label %_ZN3fmt3v126detail6bigint20remove_leading_zerosEv.exit

bb.n:                                             ; preds = %.critedge.i
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !452
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(172) %0, i64 noundef %i.ci) #26, !inline_history !1399
  %.pre.i.i.i = load i64, ptr %i.h, align 8, !tbaa !454
  br label %_ZN3fmt3v126detail6bigint20remove_leading_zerosEv.exit

_ZN3fmt3v126detail6bigint20remove_leading_zerosEv.exit: ; preds = %.critedge.i, %bb.n
  %i.cm = phi i64 [ %i.ag, %.critedge.i ], [ %.pre.i.i.i, %bb.n ]
  %i.cn = call noundef i64 @llvm.umin.i64(i64 %i.ci, i64 %i.cm)
  store i64 %i.cn, ptr %i.a, align 8, !tbaa !459
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !458
  %i.cq = shl nsw i32 %i.cp, 1
  store i32 %i.cq, ptr %i.co, align 8, !tbaa !458
  %i.cr = load ptr, ptr %2, align 8, !tbaa !453   ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.not.i.i = icmp eq ptr %i.cr, %i.cs
  br i1 %.not.i.i, label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZN3fmt3v126detail6bigint20remove_leading_zerosEv.exit
  call void @free(ptr noundef %i.cr) #26
  br label %_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit

_ZN3fmt3v1219basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEED2Ev.exit: ; preds = %_ZN3fmt3v126detail6bigint20remove_leading_zerosEv.exit, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  ret void

bb.p:                                             ; preds = %.lr.ph50, %._crit_edge
  %indvar = phi i32 [ 0, %.lr.ph50 ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %indvars.iv80 = phi i64 [ %i.an, %.lr.ph50 ], [ %indvars.iv.next81, %._crit_edge ] ; 3 uses
  %indvars.iv70 = phi i32 [ 1, %.lr.ph50 ], [ %indvars.iv.next71, %._crit_edge ] ; 2 uses
  %.248 = phi i128 [ %.035.lcssa, %.lr.ph50 ], [ %i.di, %._crit_edge ] ; 3 uses
  %i.ct = icmp slt i64 %indvars.iv80, %invariant.op
  br i1 %i.ct, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.p
  %i.cu = sext i32 %indvars.iv70 to i64           ; 3 uses
  %i.cv = sub i32 %indvar, %i.c
  %i.cw = and i32 %i.cv, 1
  %lcmp.mod142.not.not = icmp eq i32 %i.cw, 0
  br i1 %lcmp.mod142.not.not, label %.lr.ph.prol, label %.lr.ph.prol.loopexit

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %indvars.iv.next73.prol = add nsw i64 %i.cu, 1
  %i.cx = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.cu
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !97
  %i.cz = zext i32 %i.cy to i64
  %i.da = load i32, ptr %i.aq, align 4, !tbaa !97
  %i.db = zext i32 %i.da to i64
  %i.dc = mul nuw i64 %i.db, %i.cz
  %i.dd = zext i64 %i.dc to i128
  %i.de = add nsw i128 %.248, %i.dd               ; 2 uses
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa136.unr = phi i128 [ poison, %.lr.ph.preheader ], [ %i.de, %.lr.ph.prol ]
  %indvars.iv74.in.unr = phi i64 [ %i.an, %.lr.ph.preheader ], [ %indvars.iv74.prol, %.lr.ph.prol ]
  %indvars.iv72.unr = phi i64 [ %i.cu, %.lr.ph.preheader ], [ %indvars.iv.next73.prol, %.lr.ph.prol ]
  %.344.unr = phi i128 [ %.248, %.lr.ph.preheader ], [ %i.de, %.lr.ph.prol ]
  %i.df = icmp eq i32 %i.ap, %indvar
  br i1 %i.df, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bb.p
  %.3.lcssa = phi i128 [ %.248, %bb.p ], [ %.lcssa136.unr, %.lr.ph.prol.loopexit ], [ %i.ec, %.lr.ph ] ; 2 uses
  %i.dg = trunc i128 %.3.lcssa to i32
  %i.dh = getelementptr inbounds [4 x i8], ptr %.pre85, i64 %indvars.iv80
  store i32 %i.dg, ptr %i.dh, align 4, !tbaa !97
  %i.di = lshr i128 %.3.lcssa, 32
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %indvars.iv.next71 = add i32 %indvars.iv70, 1
  %exitcond83.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count
  %indvar.next = add i32 %indvar, 1
  br i1 %exitcond83.not, label %._crit_edge51.loopexit, label %bb.p, !llvm.loop !1400

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv74.in = phi i64 [ %indvars.iv74.1, %.lr.ph ], [ %indvars.iv74.in.unr, %.lr.ph.prol.loopexit ] ; 2 uses
  %indvars.iv72 = phi i64 [ %indvars.iv.next73.1, %.lr.ph ], [ %indvars.iv72.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.344 = phi i128 [ %i.ec, %.lr.ph ], [ %.344.unr, %.lr.ph.prol.loopexit ]
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.am, i64 %indvars.iv72
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !97
  %i.dl = zext i32 %i.dk to i64
  %i.dm = getelementptr [4 x i8], ptr %i.am, i64 %indvars.iv74.in
  %i.dn = getelementptr i8, ptr %i.dm, i64 -4
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !97
  %i.dp = zext i32 %i.do to i64
  %i.dq = mul nuw i64 %i.dp, %i.dl
  %i.dr = zext i64 %i.dq to i128
  %i.ds = add i128 %.344, %i.dr
  %indvars.iv74.1 = add nsw i64 %indvars.iv74.in, -2 ; 2 uses
  %indvars.iv.next73.1 = add nsw i64 %indvars.iv72, 2 ; 2 uses
  %i.dt = getelementptr [4 x i8], ptr %i.am, i64 %indvars.iv72
  %i.du = getelementptr i8, ptr %i.dt, i64 4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !97
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.am, i64 %indvars.iv74.1
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !97
  %i.dz = zext i32 %i.dy to i64
  %i.ea = mul nuw i64 %i.dz, %i.dw
  %i.eb = zext i64 %i.ea to i128
  %i.ec = add i128 %i.ds, %i.eb                   ; 2 uses
  %lftr.wideiv108.1 = trunc i64 %indvars.iv.next73.1 to i32
  %exitcond.1 = icmp eq i32 %lftr.wideiv108.1, %i.c
  br i1 %exitcond.1, label %._crit_edge, label %.lr.ph, !llvm.loop !1401
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, ptr %5) local_unnamed_addr #2 comdat {
bb.a:
  %6 = alloca %"class.std::locale", align 8       ; 6 uses
  %7 = alloca %class.anon.774, align 8            ; 11 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !375    ; 2 uses
  %i.b = and i32 %i.a, 16384
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  %.not.i.i.i = icmp eq ptr %5, null
  br i1 %.not.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  br label %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i

bb.d:                                             ; preds = %bb.b
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #26
  br label %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i

_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i: ; preds = %bb.d, %bb.c
  %i.c = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt7__cxx118numpunctIcE2idE) #26
  %i.d = load ptr, ptr %6, align 8, !tbaa !388
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !392
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.c
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !394  ; 3 uses
  %.not.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.not.i.i.i, label %bb.e, label %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit

bb.e:                                             ; preds = %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i
  call void @_ZSt16__throw_bad_castv() #28
  unreachable

_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit: ; preds = %_ZNK3fmt3v1210locale_ref3getISt6localeEET_v.exit.i.i
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call noundef signext i8 %i.k(ptr noundef nonnull align 8 dereferenceable(24) %i.h) #26, !inline_history !39
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  %.pre = load i32, ptr %2, align 4, !tbaa !375
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit
  %i.m = phi i32 [ %.pre, %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit ], [ %i.a, %bb.a ] ; 5 uses
  %i.n = phi i8 [ %i.l, %_ZN3fmt3v126detail13decimal_pointIcEET_NS0_10locale_refE.exit ], [ 46, %bb.a ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !447  ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !448
  %i.s = add nsw i32 %i.r, %i.p                   ; 3 uses
  %i.t = add nsw i32 %i.s, -1                     ; 2 uses
  %i.u = trunc i32 %i.m to i8
  %i.v = and i8 %i.u, 7
  switch i8 %i.v, label %bb.g [
    i8 2, label %bb.h
    i8 1, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !377  ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  %. = select i1 %i.y, i32 %i.x, i32 %4
  %i.z = icmp sgt i32 %i.s, -4
  %i.aa = icmp sle i32 %i.s, %.
  %i.ab = and i1 %i.z, %i.aa
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.ac = ptrtoint ptr %5 to i64
  %i.ad = call ptr @_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_14big_decimal_fpEEET1_S8_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %i.p, i8 noundef signext %i.n, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i64 %i.ac)
  br label %bb.t

bb.i:                                             ; preds = %bb.f, %bb.g
  %.not51 = icmp ne i32 %3, 0
  %i.ae = zext i1 %.not51 to i32
  %i.af = add nsw i32 %i.p, %i.ae
  %i.ag = sext i32 %i.af to i64                   ; 2 uses
  %i.ah = and i32 %i.m, 8192
  %.not53 = icmp eq i32 %i.ah, 0
  br i1 %.not53, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !377
  %i.ak = sub nsw i32 %i.aj, %i.p
  %i.al = call noundef i32 @llvm.smax.i32(i32 %i.ak, i32 0) ; 2 uses
  %i.am = zext nneg i32 %i.al to i64
  %i.an = add nsw i64 %i.am, %i.ag
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ao = icmp eq i32 %i.p, 1
  %spec.select = select i1 %i.ao, i8 0, i8 %i.n
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.049 = phi i32 [ %i.al, %bb.j ], [ 0, %bb.k ]
  %.048 = phi i64 [ %i.an, %bb.j ], [ %i.ag, %bb.k ]
  %.0 = phi i8 [ %i.n, %bb.j ], [ %spec.select, %bb.k ] ; 2 uses
  %.not52 = icmp ne i8 %.0, 0
  %i.ap = zext i1 %.not52 to i64
  %i.aq = call i32 @llvm.abs.i32(i32 %i.t, i1 true) ; 2 uses
  %i.ar = icmp samesign ult i32 %i.aq, 100
  %i.as = icmp samesign ugt i32 %i.aq, 999
  %i.at = select i1 %i.as, i64 6, i64 5
  %.0.i = select i1 %i.ar, i64 4, i64 %i.at
  %i.au = add nsw i64 %.048, %.0.i
  %i.av = add nsw i64 %i.au, %i.ap                ; 3 uses
  %i.aw = and i32 %i.m, 4096
  %.not54 = icmp eq i32 %i.aw, 0
  %i.ax = select i1 %.not54, i8 101, i8 69
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  store i32 %3, ptr %7, align 8, !tbaa !461
  %i.ay = getelementptr inbounds nuw i8, ptr %7, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !1403
  %i.az = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 %i.p, ptr %i.az, align 8, !tbaa !462
  %i.ba = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i8 %.0, ptr %i.ba, align 4, !tbaa !463
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 %.049, ptr %i.bb, align 8, !tbaa !464
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 36
  store i8 %i.ax, ptr %i.bc, align 4, !tbaa !465
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i32 %i.t, ptr %i.bd, align 8, !tbaa !466
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !399 ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %bb.m, label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.bh = zext nneg i32 %i.bf to i64
  %i.bi = call i64 @llvm.usub.sat.i64(i64 %i.bh, i64 %i.av) ; 4 uses
  %i.bj = lshr i32 %i.m, 3
  %i.bk = and i32 %i.bj, 7
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @.str.132, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !106
  %i.bo = sext i8 %i.bn to i64
  %i.bp = and i64 %i.bo, 4294967295
  %i.bq = lshr i64 %i.bi, %i.bp                   ; 4 uses
end_hunk_2
begin_hunk_3_@_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE:bb.a
  %i.em = lshr i64 %i.el, 20
  %i.en = add nuw nsw i64 %i.em, 1                ; 2 uses
  %i.eo = lshr i64 %i.en, 32                      ; 2 uses
  %i.ep = shl nuw nsw i64 %i.eo, 1
  %i.eq = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ep
  %i.er = load i16, ptr %i.eq, align 2
  store i16 %i.er, ptr %i.ed, align 1
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.0208 = phi i64 [ %i.en, %bb.x ], [ %i.eh, %bb.w ] ; 2 uses
  %.0204.in = phi i64 [ %i.eo, %bb.x ], [ %i.ei, %bb.w ]
  %.0.i = phi i32 [ 2, %bb.x ], [ 1, %bb.w ]      ; 2 uses
  %i.es = icmp samesign ugt i32 %.0187, %.0.i
  br i1 %i.es, label %.lr.ph.i, label %.thread269

.lr.ph.i:                                         ; preds = %bb.y
  %i.et = zext nneg i32 %.0.i to i64              ; 4 uses
  %i.eu = zext nneg i32 %i.ec to i64              ; 3 uses
  %i.ev = and i64 %.0208, 4294967295
  %i.ew = mul nuw nsw i64 %i.ev, 100              ; 3 uses
  %i.ex = lshr i64 %i.ew, 32                      ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.et
  %i.ez = shl nuw nsw i64 %i.ex, 1
  %i.fa = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.ez
  %i.fb = load i16, ptr %i.fa, align 2
  store i16 %i.fb, ptr %i.ey, align 1
  %indvars.iv.next.i = add nuw nsw i64 %i.et, 2   ; 2 uses
  %i.fc = icmp samesign ult i64 %indvars.iv.next.i, %i.eu
  br i1 %i.fc, label %bb.z, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.z:                                             ; preds = %.lr.ph.i
  %i.fd = and i64 %i.ew, 4294967292
  %i.fe = mul nuw nsw i64 %i.fd, 100              ; 3 uses
  %i.ff = lshr i64 %i.fe, 32                      ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ed, i64 %indvars.iv.next.i
  %i.fh = shl nuw nsw i64 %i.ff, 1
  %i.fi = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.fh
  %i.fj = load i16, ptr %i.fi, align 2
  store i16 %i.fj, ptr %i.fg, align 1
  %indvars.iv.next.i.1 = or disjoint i64 %i.et, 4 ; 2 uses
  %i.fk = icmp samesign ult i64 %indvars.iv.next.i.1, %i.eu
  br i1 %i.fk, label %bb.aa, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.aa:                                            ; preds = %bb.z
  %i.fl = and i64 %i.fe, 4294967280
  %i.fm = mul nuw nsw i64 %i.fl, 100              ; 3 uses
  %i.fn = lshr i64 %i.fm, 32                      ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ed, i64 %indvars.iv.next.i.1
  %i.fp = shl nuw nsw i64 %i.fn, 1
  %i.fq = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.fp
  %i.fr = load i16, ptr %i.fq, align 2
  store i16 %i.fr, ptr %i.fo, align 1
  %indvars.iv.next.i.2 = add nuw nsw i64 %i.et, 6 ; 2 uses
  %i.fs = icmp samesign ult i64 %indvars.iv.next.i.2, %i.eu
  br i1 %i.fs, label %bb.ab, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ft = and i64 %i.fm, 4294967232
  %i.fu = mul nuw nsw i64 %i.ft, 100              ; 2 uses
  %i.fv = lshr i64 %i.fu, 32                      ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ed, i64 %indvars.iv.next.i.2
  %i.fx = shl nuw nsw i64 %i.fv, 1
  %i.fy = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.fx
  %i.fz = load i16, ptr %i.fy, align 2
  store i16 %i.fz, ptr %i.fw, align 1
  br label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit: ; preds = %bb.ab, %bb.aa, %bb.z, %.lr.ph.i
  %.lcssa290 = phi i64 [ %i.ew, %.lr.ph.i ], [ %i.fe, %bb.z ], [ %i.fm, %bb.aa ], [ %i.fu, %bb.ab ]
  %.lcssa289 = phi i64 [ %i.ex, %.lr.ph.i ], [ %i.ff, %bb.z ], [ %i.fn, %bb.aa ], [ %i.fv, %bb.ab ] ; 2 uses
  %i.ga = icmp samesign ult i32 %.0187, 10
  br i1 %i.ga, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit
  %.not129 = icmp eq i32 %.0187, 9
  br i1 %.not129, label %bb.ad, label %.thread269

.thread269:                                       ; preds = %bb.y, %bb.ac
  %.2210266275 = phi i64 [ %.lcssa290, %bb.ac ], [ %.0208, %bb.y ]
  %.1205268274.in = phi i64 [ %.lcssa289, %bb.ac ], [ %.0204.in, %bb.y ]
  %i.gb = trunc i64 %.2210266275 to i32           ; 2 uses
  %i.gc = sub nuw nsw i32 8, %i.ec
  %i.gd = zext nneg i32 %i.gc to i64
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr @.str.164, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !1510
  %.not130 = icmp ugt i32 %i.gf, %i.gb
  br i1 %.not130, label %bb.am, label %.critedge134

bb.ad:                                            ; preds = %bb.ac
  %i.gg = icmp ugt i64 %i.eb, 5000000000
  br i1 %i.gg, label %.critedge134.thread, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.gh = icmp eq i64 %i.eb, 5000000000
  %i.gi = trunc i64 %.lcssa289 to i1
  %i.gj = or i1 %i.cy, %i.gi
  %or.cond223 = select i1 %i.gh, i1 %i.gj, i1 false
  br i1 %or.cond223, label %.critedge134.thread, label %.critedge136

bb.af:                                            ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit
  %i.gk = tail call noundef i64 @llvm.umulh.i64(i64 %i.eb, i64 1844674407370955162) ; 2 uses
  %i.gl = trunc i64 %i.gk to i32
  %i.gm = trunc i64 %i.eb to i32
  %.neg127 = mul i32 %i.gl, -10
  %i.gn = add i32 %.neg127, %i.gm                 ; 3 uses
  %i.go = add nsw i32 %.0187, -9                  ; 3 uses
  %i.gp = load ptr, ptr %4, align 8, !tbaa !178
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 9 ; 3 uses
  %i.gr = and i32 %i.go, 1
  %.not.i142 = icmp eq i32 %i.gr, 0
  %i.gs = and i64 %i.gk, 4294967295               ; 2 uses
  br i1 %.not.i142, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.gt = mul nuw nsw i64 %i.gs, 720575941
  %i.gu = lshr i64 %i.gt, 24
  %i.gv = add nuw nsw i64 %i.gu, 1                ; 2 uses
  %i.gw = lshr i64 %i.gv, 32                      ; 2 uses
  %i.gx = trunc nuw nsw i64 %i.gw to i8
  %i.gy = add nuw nsw i8 %i.gx, 48
  store i8 %i.gy, ptr %i.gq, align 1, !tbaa !106
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.gz = mul nuw nsw i64 %i.gs, 450359963
  %i.ha = lshr i64 %i.gz, 20
  %i.hb = add nuw nsw i64 %i.ha, 1                ; 2 uses
  %i.hc = lshr i64 %i.hb, 32                      ; 2 uses
  %i.hd = shl nuw nsw i64 %i.hc, 1
  %i.he = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.hd
  %i.hf = load i16, ptr %i.he, align 2
  store i16 %i.hf, ptr %i.gq, align 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.3211 = phi i64 [ %i.hb, %bb.ah ], [ %i.gv, %bb.ag ] ; 2 uses
  %.2206.in = phi i64 [ %i.hc, %bb.ah ], [ %i.gw, %bb.ag ]
  %.0.i143 = phi i32 [ 2, %bb.ah ], [ 1, %bb.ag ] ; 2 uses
  %i.hg = icmp samesign ult i32 %.0.i143, %i.go
  br i1 %i.hg, label %.lr.ph.i144, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread

.lr.ph.i144:                                      ; preds = %bb.ai
  %i.hh = zext nneg i32 %.0.i143 to i64
  %i.hi = zext nneg i32 %i.go to i64
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %.lr.ph.i144
  %.4 = phi i64 [ %.3211, %.lr.ph.i144 ], [ %i.hk, %bb.aj ]
  %indvars.iv.i145 = phi i64 [ %i.hh, %.lr.ph.i144 ], [ %indvars.iv.next.i146, %bb.aj ] ; 2 uses
  %i.hj = and i64 %.4, 4294967295
  %i.hk = mul nuw nsw i64 %i.hj, 100              ; 3 uses
  %i.hl = lshr i64 %i.hk, 32                      ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gq, i64 %indvars.iv.i145
  %i.hn = shl nuw nsw i64 %i.hl, 1
  %i.ho = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.hn
  %i.hp = load i16, ptr %i.ho, align 2
  store i16 %i.hp, ptr %i.hm, align 1
  %indvars.iv.next.i146 = add nuw nsw i64 %indvars.iv.i145, 2 ; 2 uses
  %i.hq = icmp samesign ult i64 %indvars.iv.next.i146, %i.hi
  br i1 %i.hq, label %bb.aj, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147, !llvm.loop !1506

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147: ; preds = %bb.aj
  %i.hr = icmp samesign ult i32 %.0187, 18
  br i1 %i.hr, label %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread, label %bb.ak

_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread: ; preds = %bb.ai, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147
  %.3207215.in = phi i64 [ %i.hl, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147 ], [ %.2206.in, %bb.ai ]
  %.5214 = phi i64 [ %i.hk, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147 ], [ %.3211, %bb.ai ]
  %i.hs = trunc i64 %.5214 to i32                 ; 2 uses
  %i.ht = sub nuw nsw i32 17, %.0187
  %i.hu = zext nneg i32 %i.ht to i64
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr @.str.164, i64 %i.hu
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !1510
  %.not128 = icmp ugt i32 %i.hw, %i.hs
  br i1 %.not128, label %.split217, label %.critedge134.thread

.split217:                                        ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread
  %.3207215 = trunc nuw nsw i64 %.3207215.in to i32
  %i.hx = lshr i32 %i.hs, 31
  %i.hy = icmp ne i32 %i.gn, 0
  %i.hz = or i1 %i.hy, %i.cy
  %i.ia = zext i1 %i.hz to i32
  %i.ib = or i32 %i.ia, %.3207215
  %i.ic = and i32 %i.hx, %i.ib
  %i.id = trunc nuw i32 %i.ic to i1
  br i1 %i.id, label %.critedge134.thread, label %.critedge136

bb.ak:                                            ; preds = %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147
  %i.ie = icmp ugt i32 %i.gn, 5
  br i1 %i.ie, label %.critedge134.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.if = icmp eq i32 %i.gn, 5
  %i.ig = trunc i64 %i.hl to i1
  %i.ih = or i1 %i.cy, %i.ig
  %or.cond225 = select i1 %i.if, i1 %i.ih, i1 false
  br i1 %or.cond225, label %.critedge134.thread, label %.critedge136

bb.am:                                            ; preds = %.thread269
  %.1205268274 = trunc nsw i64 %.1205268274.in to i32
  %i.ii = lshr i32 %i.gb, 31
  %i.ij = or i64 %i.eb, %i.cv
  %i.ik = icmp ne i64 %i.ij, 0
  %i.il = zext i1 %i.ik to i32
  %i.im = or i32 %.1205268274, %i.il
  %i.in = and i32 %i.im, %i.ii
  %i.io = trunc nuw i32 %i.in to i1
  br i1 %i.io, label %.critedge134, label %.critedge136

.critedge134.thread:                              ; preds = %bb.al, %bb.ae, %.split217, %bb.ad, %_ZZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEEENKUljPcE_clEjSA_.exit147.thread, %bb.ak
  %i.ip = load ptr, ptr %4, align 8, !tbaa !178
  %i.iq = zext nneg i32 %.0187 to i64             ; 2 uses
  %i.ir = getelementptr i8, ptr %i.ip, i64 %i.iq
  %i.is = getelementptr i8, ptr %i.ir, i64 -1     ; 2 uses
  %i.it = load i8, ptr %i.is, align 1, !tbaa !106
  %i.iu = add i8 %i.it, 1
  store i8 %i.iu, ptr %i.is, align 1, !tbaa !106
  br label %.lr.ph.preheader

.critedge134:                                     ; preds = %.thread269, %bb.am
  %i.iv = load ptr, ptr %4, align 8, !tbaa !178
  %i.iw = zext nneg i32 %.0187 to i64             ; 2 uses
  %i.ix = getelementptr i8, ptr %i.iv, i64 %i.iw
  %i.iy = getelementptr i8, ptr %i.ix, i64 -1     ; 2 uses
  %i.iz = load i8, ptr %i.iy, align 1, !tbaa !106
  %i.ja = add i8 %i.iz, 1
  store i8 %i.ja, ptr %i.iy, align 1, !tbaa !106
  %.not242 = icmp eq i32 %.0187, 1
  br i1 %.not242, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.critedge134.thread, %.critedge134
  %i.jb = phi i64 [ %i.iq, %.critedge134.thread ], [ %i.iw, %.critedge134 ] ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.an
  %indvars.iv = phi i64 [ %i.jb, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.an ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.jc = load ptr, ptr %4, align 8, !tbaa !178
  %i.jd = and i64 %indvars.iv.next, 4294967295
  %i.je = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.jd ; 2 uses
  %i.jf = load i8, ptr %i.je, align 1, !tbaa !106
  %i.jg = icmp sgt i8 %i.jf, 57
  br i1 %i.jg, label %bb.an, label %.critedge

.critedge:                                        ; preds = %.lr.ph, %bb.an, %.critedge134
  %i.jh = phi i64 [ 1, %.critedge134 ], [ %i.jb, %bb.an ], [ %i.jb, %.lr.ph ]
  %i.ji = load ptr, ptr %4, align 8, !tbaa !178   ; 2 uses
  %i.jj = load i8, ptr %i.ji, align 1, !tbaa !106
  %i.jk = icmp sgt i8 %i.jj, 57
  br i1 %i.jk, label %bb.ao, label %.critedge136

bb.an:                                            ; preds = %.lr.ph
  store i8 48, ptr %i.je, align 1, !tbaa !106
  %i.jl = load ptr, ptr %4, align 8, !tbaa !178
  %i.jm = getelementptr i8, ptr %i.jl, i64 %indvars.iv
  %i.jn = getelementptr i8, ptr %i.jm, i64 -2     ; 2 uses
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !106
  %i.jp = add i8 %i.jo, 1
  store i8 %i.jp, ptr %i.jn, align 1, !tbaa !106
  %i.jq = trunc nuw i64 %indvars.iv to i32
  %i.jr = icmp sgt i32 %i.jq, 2
  br i1 %i.jr, label %.lr.ph, label %.critedge, !llvm.loop !1507

bb.ao:                                            ; preds = %.critedge
  store i8 49, ptr %i.ji, align 1, !tbaa !106
  br i1 %i.d, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.js = add nuw nsw i32 %.0187, 1
  %i.jt = load ptr, ptr %4, align 8, !tbaa !178
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.jh
  store i8 48, ptr %i.ju, align 1, !tbaa !106
  br label %.critedge136

bb.aq:                                            ; preds = %bb.ao
  %i.jv = add nsw i32 %i.dy, 1
  store i32 %i.jv, ptr %i.a, align 4, !tbaa !97
  br label %.critedge136

.critedge136:                                     ; preds = %.split217, %bb.al, %bb.ae, %.critedge, %bb.aq, %bb.ap, %bb.am
  %.1188 = phi i32 [ %i.js, %bb.ap ], [ %.0187, %bb.aq ], [ %.0187, %.critedge ], [ %.0187, %bb.am ], [ 9, %bb.ae ], [ 18, %bb.al ], [ %.0187, %.split217 ]
  %i.jw = zext nneg i32 %.1188 to i64             ; 3 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !179 ; 2 uses
  %i.jz = icmp ult i64 %i.jy, %i.jw
  br i1 %i.jz, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.critedge136
  %i.ka = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !177
  tail call void %i.kb(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.jw) #26, !inline_history !32
  %.pre.i148 = load i64, ptr %i.jx, align 8, !tbaa !179
  br label %bb.as

.thread219:                                       ; preds = %bb.n
  %i.kc = add nsw i32 %i.aq, -3
  %i.kd = add nsw i32 %i.kc, %.0106
  store i32 %i.kd, ptr %i.a, align 4, !tbaa !97
  br i1 %3, label %bb.at, label %bb.au

bb.as:                                            ; preds = %bb.ar, %.critedge136
  %i.ke = phi i64 [ %i.jy, %.critedge136 ], [ %.pre.i148, %bb.ar ]
  %i.kf = tail call noundef i64 @llvm.umin.i64(i64 %i.jw, i64 %i.ke)
  %i.kg = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.kf, ptr %i.kg, align 8, !tbaa !187
  br label %.thread

bb.at:                                            ; preds = %.thread219
  %i.kh = fptrunc double %0 to float
  %i.ki = bitcast float %i.kh to i32              ; 2 uses
  %i.kj = and i32 %i.ki, 8388607                  ; 2 uses
  %i.kk = zext nneg i32 %i.kj to i128             ; 2 uses
  %i.kl = and i32 %i.ki, 2139095040               ; 3 uses
  %i.km = icmp eq i32 %i.kl, 0                    ; 2 uses
  %i.kn = lshr exact i32 %i.kl, 23
  %i.ko = or disjoint i128 %i.kk, 8388608
  %i.kp = add nsw i32 %i.kn, -150
  %storemerge.i = select i1 %i.km, i128 %i.kk, i128 %i.ko
  %.0.i150 = select i1 %i.km, i32 -149, i32 %i.kp
  %i.kq = icmp eq i32 %i.kj, 0
  %i.kr = icmp samesign ugt i32 %i.kl, 16777215
  %i.ks = and i1 %i.kq, %i.kr
  br label %bb.av

bb.au:                                            ; preds = %.thread219
  %i.kt = zext nneg i64 %i.ad to i128             ; 2 uses
  %i.ku = or disjoint i128 %i.kt, 4503599627370496
  %i.kv = add nsw i32 %i.ag, -1075
  %storemerge.i151 = select i1 %.not, i128 %i.kt, i128 %i.ku
  %.0.i152 = select i1 %.not, i32 -1074, i32 %i.kv
  %i.kw = icmp eq i64 %i.ad, 0
  %i.kx = icmp samesign ugt i64 %i.ae, 9007199254740991
  %i.ky = and i1 %i.kw, %i.kx
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.sroa.0.0 = phi i128 [ %storemerge.i, %bb.at ], [ %storemerge.i151, %bb.au ]
  %.sroa.6.0 = phi i32 [ %.0.i150, %bb.at ], [ %.0.i152, %bb.au ]
  %i.kz = phi i1 [ %i.ks, %bb.at ], [ %i.ky, %bb.au ]
  %spec.select = zext i1 %i.kz to i32             ; 2 uses
  %i.la = or disjoint i32 %spec.select, 4
  %.1111 = select i1 %i.d, i32 %i.la, i32 %spec.select
  %i.lb = tail call i32 @llvm.umin.i32(i32 %.0187, i32 767)
  store i128 %.sroa.0.0, ptr %6, align 16, !tbaa !450
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !97
  call void @_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi(ptr noundef nonnull byval(%"struct.fmt::v12::detail::basic_fp") align 16 %6, i32 noundef %.1111, i32 noundef %i.lb, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %.thread

.thread:                                          ; preds = %bb.as, %bb.q, %bb.u, %bb.t, %bb.av
  br i1 %i.d, label %bb.bb, label %bb.aw

bb.aw:                                            ; preds = %.thread
  %i.lc = load i32, ptr %2, align 4, !tbaa !375
  %i.ld = and i32 %i.lc, 8192
  %.not227 = icmp eq i32 %i.ld, 0
  br i1 %.not227, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %i.le = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !187 ; 2 uses
  %.not132237 = icmp eq i64 %i.lf, 0
  br i1 %.not132237, label %.critedge3.thread, label %.lr.ph239

.lr.ph239:                                        ; preds = %bb.ax
  %.promoted = load i32, ptr %i.a, align 4
  %i.lg = load ptr, ptr %4, align 8, !tbaa !178
  br label %bb.ay

bb.ay:                                            ; preds = %.lr.ph239, %bb.az
  %.0238 = phi i64 [ %i.lf, %.lr.ph239 ], [ %i.li, %bb.az ] ; 5 uses
  %i.lh = phi i32 [ %.promoted, %.lr.ph239 ], [ %i.lm, %bb.az ]
  %i.li = add i64 %.0238, -1                      ; 3 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 %i.li
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !106
  %i.ll = icmp eq i8 %i.lk, 48
  br i1 %i.ll, label %bb.az, label %.critedge3

bb.az:                                            ; preds = %bb.ay
  %i.lm = add nsw i32 %i.lh, 1                    ; 2 uses
  store i32 %i.lm, ptr %i.a, align 4, !tbaa !97
  %.not132 = icmp eq i64 %i.li, 0
  br i1 %.not132, label %.critedge3.thread, label %bb.ay, !llvm.loop !1508

.critedge3.thread:                                ; preds = %bb.az, %bb.ax
  %i.ln = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !179
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154

.critedge3:                                       ; preds = %bb.ay
  %i.lp = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.lq = load i64, ptr %i.lp, align 8, !tbaa !179 ; 2 uses
  %i.lr = icmp ugt i64 %.0238, %i.lq
  br i1 %i.lr, label %bb.ba, label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154

bb.ba:                                            ; preds = %.critedge3
  %i.ls = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !177
  call void %i.lt(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %.0238) #26, !inline_history !32
  %.pre.i153 = load i64, ptr %i.lp, align 8, !tbaa !179
end_hunk_3
begin_hunk_4_@_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEEZNS1_5writeIcS5_TnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_SB_NS0_17basic_string_viewIS8_EERKNS0_12format_specsEEUlS5_E_EET1_SI_SG_mmOT2_:bb.a
  %i.bc = sub i64 %i.bb, %i.ba
  %i.bd = tail call i64 @llvm.umin.i64(i64 %i.aw, i64 %i.bc)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.026.i.i.i = phi i64 [ %i.ba, %bb.h ], [ %i.as, %bb.g ] ; 3 uses
  %.025.i.i.i = phi i64 [ %i.bd, %bb.h ], [ %i.aw, %bb.g ] ; 13 uses
  %i.be = load ptr, ptr %.sroa.09.0, align 8, !tbaa !178 ; 2 uses
  %i.bf = ptrtoaddr ptr %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 %.026.i.i.i ; 7 uses
  %.not36.i.i.i = icmp eq i64 %.025.i.i.i, 0
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.i
  %min.iters.check = icmp ult i64 %.025.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bh = add i64 %.026.i.i.i, %i.bf
  %i.bi = sub i64 %i.av, %i.bh
  %diff.check = icmp ugt i64 %i.bi, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check35 = icmp ult i64 %.025.i.i.i, 32
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bj = and i64 %.025.i.i.i, 28
  %n.vec = and i64 %.025.i.i.i, -32               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %wide.load = load <16 x i8>, ptr %i.bk, align 1, !tbaa !106
  %wide.load36 = load <16 x i8>, ptr %i.bl, align 1, !tbaa !106
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 %index ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <16 x i8> %wide.load, ptr %i.bm, align 1, !tbaa !106
  store <16 x i8> %wide.load36, ptr %i.bn, align 1, !tbaa !106
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !1579

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bj, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !386

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec37 = and i64 %.025.i.i.i, -4              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %index38
  %wide.load39 = load <4 x i8>, ptr %i.bp, align 1, !tbaa !106
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 %index38
  store <4 x i8> %wide.load39, ptr %i.bq, align 1, !tbaa !106
  %index.next40 = add nuw i64 %index38, 4         ; 2 uses
  %i.br = icmp eq i64 %index.next40, %n.vec37
  br i1 %i.br, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1580

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n41 = icmp eq i64 %.025.i.i.i, %n.vec37
  br i1 %cmp.n41, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec37, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.030.i.i.i.prol = phi i64 [ %i.bv, %.lr.ph.i.i.i.prol ], [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bs = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i.prol
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !106
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.030.i.i.i.prol
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !106
  %i.bv = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !1581

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bv, %.lr.ph.i.i.i.prol ]
  %i.bw = sub i64 %.030.i.i.i.ph, %.025.i.i.i
  %i.bx = icmp ugt i64 %i.bw, -4
  br i1 %i.bx, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !187
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.i
  %i.by = phi i64 [ %.pre37.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.026.i.i.i, %bb.i ]
  %i.bz = add i64 %i.by, %.025.i.i.i              ; 2 uses
  store i64 %i.bz, ptr %i.ao, align 8, !tbaa !187
  %i.ca = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.025.i.i.i ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ca, %i.an
  br i1 %.not.i.i.i, label %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit, label %bb.g, !llvm.loop !17

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.cq, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %.030.i.i.i
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !106
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.030.i.i.i
  store i8 %i.cc, ptr %i.cd, align 1, !tbaa !106
  %i.ce = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !106
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ce
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !106
  %i.ci = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !106
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ci
  store i8 %i.ck, ptr %i.cl, align 1, !tbaa !106
  %i.cm = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.02732.i.i.i, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !106
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.cm
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !106
  %i.cq = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.cq, %.025.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !1582

_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit: ; preds = %._crit_edge.i.i.i, %bb.e, %bb.f
  %.sroa.06.0.i = phi ptr [ %i.ai, %bb.e ], [ %.sroa.09.0, %bb.f ], [ %.sroa.09.0, %._crit_edge.i.i.i ] ; 2 uses
  %.not31 = icmp eq i64 %i.d, %i.m
  br i1 %.not31, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %i.cr = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr %.sroa.06.0.i, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit
  %.sroa.09.1 = phi ptr [ %i.cr, %bb.j ], [ %.sroa.06.0.i, %_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUlS4_E_clES4_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_(ptr %0, i64 %1, ptr %2) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64
  %i.b = alloca [7 x i8], align 1                 ; 11 uses
  %i.c = ptrtoaddr ptr %i.b to i64
  %i.d = icmp ugt i64 %1, 3
  br i1 %i.d, label %bb.b, label %.loopexit

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 %1
  %i.f = getelementptr i8, ptr %i.e, i64 -3
  %.not3054 = icmp sgt i64 %1, 3
  br i1 %.not3054, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.b, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit
  %.02455 = phi ptr [ %i.bs, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit ], [ %0, %bb.b ] ; 7 uses
  %i.g = load i8, ptr %.02455, align 1, !tbaa !106
  %i.h = zext i8 %i.g to i32                      ; 2 uses
  %i.i = lshr i32 %i.h, 3                         ; 2 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr @.str.165, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !106
  %i.m = sext i8 %i.l to i64                      ; 6 uses
  %i.n = getelementptr inbounds i8, ptr %.02455, i64 %i.m
  %.not.i.i = lshr i32 -2130771968, %i.i
  %i.o = and i32 %.not.i.i, 1
  %i.p = zext nneg i32 %i.o to i64                ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.p
  %i.r = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 %i.m
  %i.s = load i32, ptr %i.r, align 4, !tbaa !97
  %i.t = and i32 %i.s, %i.h
  %i.u = shl nuw nsw i32 %i.t, 18
  %i.v = getelementptr inbounds nuw i8, ptr %.02455, i64 1 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !106   ; 2 uses
  %i.x = and i8 %i.w, 63
  %i.y = zext nneg i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 12
  %i.aa = or disjoint i32 %i.z, %i.u
  %i.ab = getelementptr inbounds nuw i8, ptr %.02455, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !106 ; 2 uses
  %i.ad = and i8 %i.ac, 63
  %i.ae = zext nneg i8 %i.ad to i32
  %i.af = shl nuw nsw i32 %i.ae, 6
  %i.ag = or disjoint i32 %i.af, %i.aa
  %i.ah = getelementptr inbounds nuw i8, ptr %.02455, i64 3
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !106 ; 2 uses
  %i.aj = and i8 %i.ai, 63
  %i.ak = zext nneg i8 %i.aj to i32
  %i.al = or disjoint i32 %i.ag, %i.ak
  %i.am = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.m
  %i.an = load i32, ptr %i.am, align 4, !tbaa !97
  %i.ao = lshr i32 %i.al, %i.an                   ; 4 uses
  %i.ap = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 %i.m
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !97
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
  %i.bj = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte, i64 %i.m
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !97
  %i.bl = lshr i32 %i.bi, %i.bk
  %.not.i = icmp eq i32 %i.bl, 0                  ; 3 uses
  %i.bm = select i1 %.not.i, i32 %i.ao, i32 -1    ; 4 uses
  %i.bn = icmp ult i32 %i.bm, 32
  br i1 %i.bn, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread, label %switch.early.test.i.i.i

switch.early.test.i.i.i:                          ; preds = %.lr.ph
  switch i32 %i.bm, label %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i [
    i32 127, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
    i32 92, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
    i32 34, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread
  ]

_ZN3fmt3v126detail12needs_escapeEj.exit.i.i:      ; preds = %switch.early.test.i.i.i
  %i.bo = tail call noundef zeroext i1 @_ZN3fmt3v126detail12is_printableEj(i32 noundef %i.bm)
  br i1 %i.bo, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread

_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread: ; preds = %.lr.ph, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %switch.early.test.i.i.i, %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i
  %i.bp = add nsw i64 %i.p, %i.m
  %i.bq = select i1 %.not.i, i64 %i.bp, i64 1
  %i.br = getelementptr inbounds nuw i8, ptr %.02455, i64 %i.bq
  store ptr %.02455, ptr %2, align 8, !tbaa !98
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.br, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !98
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.bm, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !97
  br label %.thread

_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit: ; preds = %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i
  %i.bs = select i1 %.not.i, ptr %i.q, ptr %i.v   ; 3 uses
  %.not30 = icmp ult ptr %i.bs, %i.f
  br i1 %.not30, label %.lr.ph, label %.loopexit, !llvm.loop !1583

.loopexit:                                        ; preds = %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit, %bb.b, %bb.a
  %.2 = phi ptr [ %0, %bb.a ], [ %0, %bb.b ], [ %i.bs, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit ] ; 8 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 %1 ; 3 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %.2 to i64                 ; 2 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 8 uses
  %i.bx = icmp eq ptr %i.bt, %.2
  br i1 %i.bx, label %.thread, label %iter.check

iter.check:                                       ; preds = %.loopexit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.b, i8 0, i64 7, i1 false)
  %min.iters.check = icmp ult i64 %i.bw, 8
  %i.by = sub i64 %i.bv, %i.c
  %diff.check = icmp ugt i64 %i.by, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check107 = icmp ult i64 %i.bw, 32
  br i1 %min.iters.check107, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bz = and i64 %i.bw, 24
  %n.vec = and i64 %i.bw, -32                     ; 5 uses
  %i.ca = getelementptr i8, ptr %i.b, i64 %n.vec
  %i.cb = getelementptr i8, ptr %.2, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.b, i64 %index ; 2 uses
  %next.gep108 = getelementptr i8, ptr %.2, i64 %index ; 2 uses
  %i.cc = getelementptr i8, ptr %next.gep108, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep108, align 1, !tbaa !106
  %wide.load109 = load <16 x i8>, ptr %i.cc, align 1, !tbaa !106
  %i.cd = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !106
  store <16 x i8> %wide.load109, ptr %i.cd, align 1, !tbaa !106
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !1584

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bz, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !501

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec110 = and i64 %i.bw, -8                   ; 4 uses
  %i.cf = getelementptr i8, ptr %i.b, i64 %n.vec110
  %i.cg = getelementptr i8, ptr %.2, i64 %n.vec110
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index111 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next115, %vec.epilog.vector.body ] ; 3 uses
  %next.gep112 = getelementptr i8, ptr %i.b, i64 %index111
  %next.gep113 = getelementptr i8, ptr %.2, i64 %index111
  %wide.load114 = load <8 x i8>, ptr %next.gep113, align 1, !tbaa !106
  store <8 x i8> %wide.load114, ptr %next.gep112, align 1, !tbaa !106
  %index.next115 = add nuw i64 %index111, 8       ; 2 uses
  %i.ch = icmp eq i64 %index.next115, %n.vec110
  br i1 %i.ch, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1585

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n116 = icmp eq i64 %i.bw, %n.vec110
  br i1 %cmp.n116, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.08.i.ph = phi ptr [ %i.b, %iter.check ], [ %i.ca, %vec.epilog.iter.check ], [ %i.cf, %vec.epilog.middle.block ] ; 2 uses
  %.057.i.ph = phi ptr [ %.2, %iter.check ], [ %i.cb, %vec.epilog.iter.check ], [ %i.cg, %vec.epilog.middle.block ] ; 3 uses
  %i.ci = add i64 %1, %i.a                        ; 2 uses
  %.057.i.ph134 = ptrtoaddr ptr %.057.i.ph to i64 ; 2 uses
  %i.cj = sub i64 %i.ci, %.057.i.ph134
  %xtraiter = and i64 %i.cj, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.08.i.prol = phi ptr [ %i.cm, %.lr.ph.i.prol ], [ %.08.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.057.i.prol = phi ptr [ %i.ck, %.lr.ph.i.prol ], [ %.057.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.057.i.prol, i64 1 ; 2 uses
  %i.cl = load i8, ptr %.057.i.prol, align 1, !tbaa !106
  %i.cm = getelementptr inbounds nuw i8, ptr %.08.i.prol, i64 1 ; 2 uses
  store i8 %i.cl, ptr %.08.i.prol, align 1, !tbaa !106
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1586

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.08.i.unr = phi ptr [ %.08.i.ph, %.lr.ph.i.preheader ], [ %i.cm, %.lr.ph.i.prol ]
  %.057.i.unr = phi ptr [ %.057.i.ph, %.lr.ph.i.preheader ], [ %i.ck, %.lr.ph.i.prol ]
  %i.cn = sub i64 %.057.i.ph134, %i.ci
  %i.co = icmp ugt i64 %i.cn, -8
  br i1 %i.co, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.08.i = phi ptr [ %i.dm, %.lr.ph.i ], [ %.08.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.057.i = phi ptr [ %i.dk, %.lr.ph.i ], [ %.057.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.057.i, i64 1
  %i.cq = load i8, ptr %.057.i, align 1, !tbaa !106
  %i.cr = getelementptr inbounds nuw i8, ptr %.08.i, i64 1
  store i8 %i.cq, ptr %.08.i, align 1, !tbaa !106
  %i.cs = getelementptr inbounds nuw i8, ptr %.057.i, i64 2
  %i.ct = load i8, ptr %i.cp, align 1, !tbaa !106
  %i.cu = getelementptr inbounds nuw i8, ptr %.08.i, i64 2
  store i8 %i.ct, ptr %i.cr, align 1, !tbaa !106
  %i.cv = getelementptr inbounds nuw i8, ptr %.057.i, i64 3
  %i.cw = load i8, ptr %i.cs, align 1, !tbaa !106
  %i.cx = getelementptr inbounds nuw i8, ptr %.08.i, i64 3
  store i8 %i.cw, ptr %i.cu, align 1, !tbaa !106
  %i.cy = getelementptr inbounds nuw i8, ptr %.057.i, i64 4
  %i.cz = load i8, ptr %i.cv, align 1, !tbaa !106
  %i.da = getelementptr inbounds nuw i8, ptr %.08.i, i64 4
  store i8 %i.cz, ptr %i.cx, align 1, !tbaa !106
  %i.db = getelementptr inbounds nuw i8, ptr %.057.i, i64 5
  %i.dc = load i8, ptr %i.cy, align 1, !tbaa !106
  %i.dd = getelementptr inbounds nuw i8, ptr %.08.i, i64 5
  store i8 %i.dc, ptr %i.da, align 1, !tbaa !106
  %i.de = getelementptr inbounds nuw i8, ptr %.057.i, i64 6
  %i.df = load i8, ptr %i.db, align 1, !tbaa !106
  %i.dg = getelementptr inbounds nuw i8, ptr %.08.i, i64 6
  store i8 %i.df, ptr %i.dd, align 1, !tbaa !106
  %i.dh = getelementptr inbounds nuw i8, ptr %.057.i, i64 7
  %i.di = load i8, ptr %i.de, align 1, !tbaa !106
  %i.dj = getelementptr inbounds nuw i8, ptr %.08.i, i64 7
  store i8 %i.di, ptr %i.dg, align 1, !tbaa !106
  %i.dk = getelementptr inbounds nuw i8, ptr %.057.i, i64 8 ; 2 uses
  %i.dl = load i8, ptr %i.dh, align 1, !tbaa !106
  %i.dm = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  store i8 %i.dl, ptr %i.dj, align 1, !tbaa !106
  %.not.i33.7 = icmp eq ptr %i.dk, %i.bt
  br i1 %.not.i33.7, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, label %.lr.ph.i, !llvm.loop !1587

_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.sroa.4.0..sroa_idx.i.i39 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.5.0..sroa_idx.i.i40 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.bw
  br label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit

_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit: ; preds = %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42
  %.3 = phi ptr [ %.4, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42 ], [ %.2, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader ] ; 3 uses
  %.0 = phi ptr [ %i.ga, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42 ], [ %i.b, %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit.preheader ] ; 6 uses
  %i.do = load i8, ptr %.0, align 1, !tbaa !106
  %i.dp = zext i8 %i.do to i32                    ; 2 uses
  %i.dq = lshr i32 %i.dp, 3                       ; 2 uses
  %i.dr = zext nneg i32 %i.dq to i64
  %i.ds = getelementptr inbounds nuw i8, ptr @.str.165, i64 %i.dr
  %i.dt = load i8, ptr %i.ds, align 1, !tbaa !106
  %i.du = sext i8 %i.dt to i64                    ; 6 uses
  %i.dv = getelementptr inbounds i8, ptr %.0, i64 %i.du
  %.not.i.i34 = lshr i32 -2130771968, %i.dq
  %i.dw = and i32 %.not.i.i34, 1
  %i.dx = zext nneg i32 %i.dw to i64              ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.dx
  %i.dz = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.masks, i64 %i.du
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !97
  %i.eb = and i32 %i.ea, %i.dp
  %i.ec = shl nuw nsw i32 %i.eb, 18
  %i.ed = getelementptr inbounds nuw i8, ptr %.0, i64 1 ; 2 uses
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !106 ; 2 uses
  %i.ef = and i8 %i.ee, 63
  %i.eg = zext nneg i8 %i.ef to i32
  %i.eh = shl nuw nsw i32 %i.eg, 12
  %i.ei = or disjoint i32 %i.eh, %i.ec
  %i.ej = getelementptr inbounds nuw i8, ptr %.0, i64 2
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !106 ; 2 uses
  %i.el = and i8 %i.ek, 63
  %i.em = zext nneg i8 %i.el to i32
  %i.en = shl nuw nsw i32 %i.em, 6
  %i.eo = or disjoint i32 %i.en, %i.ei
  %i.ep = getelementptr inbounds nuw i8, ptr %.0, i64 3
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !106 ; 2 uses
  %i.er = and i8 %i.eq, 63
  %i.es = zext nneg i8 %i.er to i32
  %i.et = or disjoint i32 %i.eo, %i.es
  %i.eu = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shiftc, i64 %i.du
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !97
  %i.ew = lshr i32 %i.et, %i.ev                   ; 4 uses
  %i.ex = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.mins, i64 %i.du
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !97
  %i.ez = icmp ult i32 %i.ew, %i.ey
  %i.fa = select i1 %i.ez, i32 64, i32 0
  %.mask.i.i35 = and i32 %i.ew, 2147481600
  %i.fb = icmp eq i32 %.mask.i.i35, 55296
  %i.fc = select i1 %i.fb, i32 128, i32 0
  %i.fd = icmp samesign ugt i32 %i.ew, 1114111
  %i.fe = select i1 %i.fd, i32 256, i32 0
  %i.ff = lshr i8 %i.ee, 2
  %i.fg = and i8 %i.ff, 48
  %i.fh = lshr i8 %i.ek, 4
  %i.fi = and i8 %i.fh, 12
  %i.fj = lshr i8 %i.eq, 6
  %i.fk = or disjoint i8 %i.fi, %i.fg
  %i.fl = or disjoint i8 %i.fk, %i.fj
  %i.fm = zext nneg i8 %i.fl to i32
  %i.fn = or disjoint i32 %i.fa, %i.fm
  %i.fo = or disjoint i32 %i.fn, %i.fe
  %i.fp = or disjoint i32 %i.fo, %i.fc
  %i.fq = xor i32 %i.fp, 42
  %i.fr = getelementptr inbounds [4 x i8], ptr @__const._ZN3fmt3v126detail11utf8_decodeEPKcPjPi.shifte, i64 %i.du
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !97
  %i.ft = lshr i32 %i.fq, %i.fs
  %.not.i36 = icmp eq i32 %i.ft, 0                ; 3 uses
  %i.fu = select i1 %.not.i36, i32 %i.ew, i32 -1  ; 4 uses
  %i.fv = icmp ult i32 %i.fu, 32
  br i1 %i.fv, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread, label %switch.early.test.i.i.i37

switch.early.test.i.i.i37:                        ; preds = %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit
  switch i32 %i.fu, label %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i41 [
    i32 127, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread
    i32 92, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread
    i32 34, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread
  ]

_ZN3fmt3v126detail12needs_escapeEj.exit.i.i41:    ; preds = %switch.early.test.i.i.i37
  %i.fw = call noundef zeroext i1 @_ZN3fmt3v126detail12is_printableEj(i32 noundef %i.fu)
  br i1 %i.fw, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42, label %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread

_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread: ; preds = %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit, %switch.early.test.i.i.i37, %switch.early.test.i.i.i37, %switch.early.test.i.i.i37, %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i41
  %i.fx = add nsw i64 %i.dx, %i.du
  %i.fy = select i1 %.not.i36, i64 %i.fx, i64 1
  %i.fz = getelementptr inbounds nuw i8, ptr %.3, i64 %i.fy
  store ptr %.3, ptr %2, align 8, !tbaa !98
  store ptr %i.fz, ptr %.sroa.4.0..sroa_idx.i.i39, align 8, !tbaa !98
  store i32 %i.fu, ptr %.sroa.5.0..sroa_idx.i.i40, align 8, !tbaa !97
  br label %.loopexit75

_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42: ; preds = %_ZN3fmt3v126detail12needs_escapeEj.exit.i.i41
  %i.ga = select i1 %.not.i36, ptr %i.dy, ptr %i.ed ; 3 uses
  %i.gb = ptrtoint ptr %i.ga to i64
  %i.gc = ptrtoint ptr %.0 to i64
  %i.gd = sub i64 %i.gb, %i.gc
  %.4 = getelementptr inbounds i8, ptr %.3, i64 %i.gd
  %i.ge = icmp ult ptr %i.ga, %i.dn
  br i1 %i.ge, label %_ZN3fmt3v126detail4copyIcPKcPcTnNSt9enable_ifIXntaasr23is_back_insert_iteratorIT1_EE5valueoosr41has_back_insert_iterator_container_appendIS7_T0_EE5valuesr48has_back_insert_iterator_container_insert_at_endIS7_S8_EE5valueEiE4typeELi0EEES7_S8_S8_S7_.exit, label %.loopexit75, !llvm.loop !1588

.loopexit75:                                      ; preds = %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42, %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit42.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  br label %.thread

.thread:                                          ; preds = %_ZZN3fmt3v126detail18for_each_codepointIZNS1_11find_escapeEPKcS4_EUljNS0_17basic_string_viewIcEEE_EEvS6_T_ENKUlS4_S4_E_clES4_S4_.exit.thread, %.loopexit75, %.loopexit
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZZN3fmt3v126detail5writeIcNS0_14basic_appenderIcEETnNSt9enable_ifIXsr3std7is_sameIT_cEE5valueEiE4typeELi0EEET0_S9_NS0_17basic_string_viewIS6_EERKNS0_12format_specsEENKUljNSA_IcEEE_clEjSF_(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, ptr %2, i64 %3) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v12::detail::counting_buffer", align 8 ; 9 uses
  %5 = alloca %"struct.fmt::v12::detail::find_escape_result", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1590, !nonnull !158
  %i.b = load i8, ptr %i.a, align 1, !tbaa !436, !range !157, !noundef !158
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ult i32 %1, 32
  br i1 %i.d, label %_ZN3fmt3v126detail12needs_escapeEj.exit.thread, label %switch.early.test.i

switch.early.test.i:                              ; preds = %bb.b
  switch i32 %1, label %_ZN3fmt3v126detail12needs_escapeEj.exit [
    i32 127, label %_ZN3fmt3v126detail12needs_escapeEj.exit.thread
    i32 92, label %_ZN3fmt3v126detail12needs_escapeEj.exit.thread
    i32 34, label %_ZN3fmt3v126detail12needs_escapeEj.exit.thread
  ]

_ZN3fmt3v126detail12needs_escapeEj.exit:          ; preds = %switch.early.test.i
  %i.e = tail call noundef zeroext i1 @_ZN3fmt3v126detail12is_printableEj(i32 noundef %1)
  br i1 %i.e, label %bb.h, label %_ZN3fmt3v126detail12needs_escapeEj.exit.thread

_ZN3fmt3v126detail12needs_escapeEj.exit.thread:   ; preds = %bb.b, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %_ZN3fmt3v126detail12needs_escapeEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #26
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %i.f, ptr %4, align 8, !tbaa !178
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 0, ptr %i.g, align 8, !tbaa !187
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 256, ptr %i.h, align 8, !tbaa !179
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @_ZN3fmt3v126detail15counting_bufferIcE4growERNS1_6bufferIcEEm, ptr %i.i, align 8, !tbaa !177
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 288 ; 2 uses
  store i64 0, ptr %i.j, align 8, !tbaa !503
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #26
  store ptr %2, ptr %5, align 8, !tbaa !416
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 2 uses
  store ptr %i.l, ptr %i.k, align 8, !tbaa !417
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %1, ptr %i.m, align 8, !tbaa !418
  %i.n = call ptr @_ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE(ptr nonnull %4, ptr noundef nonnull align 8 dereferenceable(24) %5) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  %i.o = load i64, ptr %i.j, align 8, !tbaa !503
  %i.p = load i64, ptr %i.g, align 8, !tbaa !187
  %i.q = add i64 %i.p, %i.o                       ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !1591, !nonnull !158, !align !200 ; 5 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !99   ; 2 uses
  %i.u = add i64 %i.t, %i.q                       ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !1592, !nonnull !158, !align !200 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !99   ; 2 uses
  %.not12 = icmp ule i64 %i.u, %i.x               ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br i1 %.not12, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZN3fmt3v126detail12needs_escapeEj.exit.thread
  store i64 %i.u, ptr %i.s, align 8, !tbaa !99
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !1593, !nonnull !158, !align !200 ; 4 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !99
  %i.ab = add i64 %i.aa, %i.q
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !99
  %i.ac = load i64, ptr %i.s, align 8, !tbaa !99  ; 2 uses
  %i.ad = load i64, ptr %i.w, align 8, !tbaa !99
  %i.ae = icmp ult i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1594, !nonnull !158, !align !200 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !423
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !424
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.aj
  %i.al = icmp eq ptr %i.l, %i.ak
  br i1 %i.al, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.am = add nuw i64 %i.ac, 1
  store i64 %i.am, ptr %i.s, align 8, !tbaa !99
  %i.an = load i64, ptr %i.z, align 8, !tbaa !99
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %i.z, align 8, !tbaa !99
  br label %bb.g

bb.f:                                             ; preds = %_ZN3fmt3v126detail12needs_escapeEj.exit.thread
  %i.ap = sub i64 %i.x, %i.t
  %i.aq = load ptr, ptr %i.y, align 8, !tbaa !1593, !nonnull !158, !align !200 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !99
  %i.as = add i64 %i.ap, %i.ar
  store i64 %i.as, ptr %i.aq, align 8, !tbaa !99
  %i.at = load i64, ptr %i.w, align 8, !tbaa !99
  store i64 %i.at, ptr %i.s, align 8, !tbaa !99
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.p

bb.h:                                             ; preds = %_ZN3fmt3v126detail12needs_escapeEj.exit, %bb.a
  %i.au = icmp ugt i32 %1, 4351
  br i1 %i.au, label %bb.i, label %_ZN3fmt3v126detail16display_width_ofEj.exit

bb.i:                                             ; preds = %bb.h
  %i.av = icmp ult i32 %1, 4448
  %i.aw = add i32 %1, -9001
  %i.ax = icmp ult i32 %i.aw, 2
  %or.cond3.i = or i1 %i.av, %i.ax
  br i1 %or.cond3.i, label %_ZN3fmt3v126detail16display_width_ofEj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ay = add i32 %1, -11904
  %or.cond5.i = icmp ult i32 %i.ay, 30288
  %i.az = icmp ne i32 %1, 12351
  %or.cond7.i = and i1 %i.az, %or.cond5.i
  %i.ba = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.bb = shufflevector <2 x i32> %i.ba, <2 x i32> poison, <8 x i32> zeroinitializer
  %i.bc = and <8 x i32> %i.bb, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -65538, i32 -1>
  %i.bd = add <8 x i32> %i.bc, <i32 -44032, i32 -63744, i32 -65040, i32 -65072, i32 -65280, i32 -65504, i32 -131072, i32 -127744>
  %i.be = icmp ult <8 x i32> %i.bd, <i32 11172, i32 512, i32 10, i32 64, i32 97, i32 7, i32 65534, i32 848>
  %i.bf = bitcast <8 x i1> %i.be to i8
  %i.bg = icmp ne i8 %i.bf, 0
  %op.rdx = or i1 %i.bg, %or.cond7.i
  br i1 %op.rdx, label %_ZN3fmt3v126detail16display_width_ofEj.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = and i32 %1, -256
  %i.bi = icmp eq i32 %i.bh, 129280
  %i.bj = select i1 %i.bi, i64 2, i64 1
  br label %_ZN3fmt3v126detail16display_width_ofEj.exit

_ZN3fmt3v126detail16display_width_ofEj.exit:      ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  %i.bk = phi i64 [ 1, %bb.h ], [ 2, %bb.j ], [ 2, %bb.i ], [ %i.bj, %bb.k ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !1591, !nonnull !158, !align !200 ; 4 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !99
  %i.bo = add i64 %i.bn, %i.bk                    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1592, !nonnull !158, !align !200 ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !99
  %.not.not = icmp ugt i64 %i.bo, %i.br
  br i1 %.not.not, label %bb.p, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v126detail16display_width_ofEj.exit
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !99
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !1593, !nonnull !158, !align !200 ; 4 uses
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !99
  %i.bv = add i64 %i.bu, %3
  store i64 %i.bv, ptr %i.bt, align 8, !tbaa !99
  %i.bw = load ptr, ptr %0, align 8, !tbaa !1590, !nonnull !158
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !436, !range !157, !noundef !158
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bz = load i64, ptr %i.bm, align 8, !tbaa !99 ; 2 uses
  %i.ca = load i64, ptr %i.bq, align 8, !tbaa !99
  %i.cb = icmp ult i64 %i.bz, %i.ca
  br i1 %i.cb, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1594, !nonnull !158, !align !200 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !423
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !424
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ch
  %i.cj = icmp eq ptr %i.cc, %i.ci
  br i1 %i.cj, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ck = add nuw i64 %i.bz, 1
  store i64 %i.ck, ptr %i.bm, align 8, !tbaa !99
  %i.cl = load i64, ptr %i.bt, align 8, !tbaa !99
  %i.cm = add i64 %i.cl, 1
end_hunk_4
