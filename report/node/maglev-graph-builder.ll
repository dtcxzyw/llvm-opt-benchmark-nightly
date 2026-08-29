Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/maglev-graph-builder?download=true
inline.NumInlined: 39756
inline.NumDeleted: 11734
loop-unroll.NumCompletelyUnrolled: 245
loop-unroll.NumRuntimeUnrolled: 140
loop-unroll.NumUnrolled: 385
begin_hunk_0_@_ZN2v88internal6maglev18MaglevGraphBuilder35GetTryCatchBlockForNonEagerInliningEPNS1_20ExceptionHandlerInfoE:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i.i.i
  %i.m = shl nsw i64 %i.l, 6
  %i.n = load ptr, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = sub nsw i64 0, %i.ab
  %.not = icmp eq i64 %i.u, %i.ac
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = icmp ne i32 %i.ae, -2
  %.sroa.4.8.insert.ext = zext i1 %i.af to i64
  %.sroa.4.9.insert.insert = or disjoint i64 %.sroa.4.8.insert.ext, 256
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %.not15 = icmp eq ptr %i.ah, null
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 104
  %.sroa.0.0.copyload = load ptr, ptr %i.ai, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 112
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.9.insert.mask10 = and i64 %.sroa.4.0.copyload, -65281
  %.sroa.4.9.insert.insert11 = or disjoint i64 %.sroa.4.9.insert.mask10, 256
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.sroa.0.0 = phi ptr [ %1, %bb.b ], [ %.sroa.0.0.copyload, %bb.d ], [ null, %bb.c ]
  %.sroa.4.0 = phi i64 [ %.sroa.4.9.insert.insert, %bb.b ], [ %.sroa.4.9.insert.insert11, %bb.d ], [ 0, %bb.c ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, i64 } @_ZN2v88internal6maglev18MaglevGraphBuilder23GetCurrentTryCatchBlockEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(953) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 824
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = ashr exact i64 %i.i, 3
  %i.k = icmp ne ptr %i.d, null
  %.neg.i.i.i.i = sext i1 %i.k to i64
  %i.l = add nsw i64 %i.j, %.neg.i.i.i.i
  %i.m = shl nsw i64 %i.l, 6
  %i.n = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3
  %i.u = add nsw i64 %i.m, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = load ptr, ptr %i.b, align 8
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = ashr exact i64 %i.aa, 3
  %i.ac = sub nsw i64 0, %i.ab
  %.not = icmp eq i64 %i.u, %i.ac
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ad = icmp eq ptr %i.n, %i.p
  br i1 %i.ad, label %bb.c, label %_ZNSt5stackIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_9ZoneDequeIS4_EEE3topEv.exit

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 512
  br label %_ZNSt5stackIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_9ZoneDequeIS4_EEE3topEv.exit

_ZNSt5stackIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_9ZoneDequeIS4_EEE3topEv.exit: ; preds = %bb.b, %bb.c
  %i.ah = phi ptr [ %i.ag, %bb.c ], [ %i.n, %bb.b ]
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 -4
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = sext i32 %i.aj to i64                   ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.ap, i64 %i.am
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  %i.at = load i32, ptr %i.as, align 4
  %i.au = and i32 %i.at, 3
  %i.av = icmp eq i32 %i.au, 2
  %.sroa.4.8.insert.ext = zext i1 %i.av to i64
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ax = load ptr, ptr %i.aw, align 8            ; 3 uses
  %.not11 = icmp eq ptr %i.ax, null
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  %.sroa.0.0.copyload = load ptr, ptr %i.ay, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 112
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %_ZNSt5stackIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_9ZoneDequeIS4_EEE3topEv.exit
  %.sroa.0.0 = phi ptr [ %i.an, %_ZNSt5stackIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_9ZoneDequeIS4_EEE3topEv.exit ], [ %.sroa.0.0.copyload, %bb.e ], [ null, %bb.d ]
  %.sroa.4.0 = phi i64 [ %.sroa.4.8.insert.ext, %_ZNSt5stackIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_9ZoneDequeIS4_EEE3topEv.exit ], [ %.sroa.4.0.copyload, %bb.e ], [ 0, %bb.d ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.4.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

declare void @_ZN2v88internal6maglev31MergePointInterpreterFrameState10MergeThrowEPNS1_18MaglevGraphBuilderEPKNS1_21MaglevCompilationUnitERKNS1_16KnownNodeAspectsE(ptr noundef nonnull align 8 dereferenceable(312), ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(352)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal6maglev13MaglevReducerINS1_18MaglevGraphBuilderEE17FlushNodesToBlockEv(ptr noundef nonnull align 8 dereferenceable(152) %0) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, %i.g
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub i64 %i.i, %i.h
  %i.k = ashr exact i64 %i.j, 3
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.r = sub i64 %i.p, %i.q                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  %i.t = add nsw i64 %i.s, %i.k                   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.q
  %i.y = ashr exact i64 %i.x, 3
  %.not.i.i = icmp ugt i64 %i.t, %i.y
  br i1 %.not.i.i, label %bb.c, label %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE14EnsureCapacityEm.exit.i, !prof !6

bb.c:                                             ; preds = %bb.b
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.t)
  %.pre.i = load ptr, ptr %i.n, align 8
  %.pre = load ptr, ptr %i.l, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE14EnsureCapacityEm.exit.i

_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE14EnsureCapacityEm.exit.i: ; preds = %bb.c, %bb.b
  %i.z = phi ptr [ %i.m, %bb.b ], [ %.pre, %bb.c ] ; 3 uses
  %i.aa = phi ptr [ %i.o, %bb.b ], [ %.pre.i, %bb.c ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.t ; 2 uses
  %i.ac = icmp ult ptr %i.z, %i.ab
  br i1 %i.ac, label %.lr.ph.preheader.i, label %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE6resizeEm.exit

.lr.ph.preheader.i:                               ; preds = %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE14EnsureCapacityEm.exit.i
  %i.ad = ptrtoaddr ptr %i.z to i64               ; 2 uses
  %i.ae = ptrtoaddr ptr %i.aa to i64
  %i.af = shl nuw nsw i64 %i.t, 3
  %1 = add nuw i64 %i.af, %i.ae
  %i.ag = add i64 %i.ad, 8
  %umax.i = tail call i64 @llvm.umax.i64(i64 %1, i64 %i.ag)
  %i.ah = xor i64 %i.ad, -1
  %i.ai = add i64 %umax.i, %i.ah
  %i.aj = and i64 %i.ai, -8
  %i.ak = add i64 %i.aj, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.z, i8 0, i64 %i.ak, i1 false)
  %.pre46.a = load ptr, ptr %i.n, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE6resizeEm.exit

_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE6resizeEm.exit: ; preds = %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE14EnsureCapacityEm.exit.i, %.lr.ph.preheader.i
  %i.al = phi ptr [ %i.aa, %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE14EnsureCapacityEm.exit.i ], [ %.pre46.a, %.lr.ph.preheader.i ]
  store ptr %i.ab, ptr %i.l, align 8
  %i.am = load ptr, ptr %i.f, align 8             ; 3 uses
  %i.an = load ptr, ptr %i.d, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.r ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 3 uses
  %i.as = icmp sgt i64 %i.ar, 8
  br i1 %i.as, label %bb.d, label %bb.e, !prof !5

bb.d:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE6resizeEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ao, ptr align 8 %i.am, i64 %i.ar, i1 false)
  br label %_ZSt4copyIPPN2v88internal6maglev4NodeES5_ET0_T_S7_S6_.exit

bb.e:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE6resizeEm.exit
  %i.at = icmp eq i64 %i.ar, 8
  br i1 %i.at, label %bb.f, label %_ZSt4copyIPPN2v88internal6maglev4NodeES5_ET0_T_S7_S6_.exit

bb.f:                                             ; preds = %bb.e
  %i.au = load ptr, ptr %i.am, align 8
  store ptr %i.au, ptr %i.ao, align 8
  br label %_ZSt4copyIPPN2v88internal6maglev4NodeES5_ET0_T_S7_S6_.exit

_ZSt4copyIPPN2v88internal6maglev4NodeES5_ET0_T_S7_S6_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.av = load ptr, ptr %i.f, align 8
  store ptr %i.av, ptr %i.d, align 8
  br label %bb.g

bb.g:                                             ; preds = %_ZSt4copyIPPN2v88internal6maglev4NodeES5_ET0_T_S7_S6_.exit, %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.az = load ptr, ptr %i.ay, align 8            ; 2 uses
  %.not32 = icmp eq ptr %i.ax, %i.az
  br i1 %.not32, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt13__stable_sortIPSt4pairIiPN2v88internal6maglev4NodeEEN9__gnu_cxx5__ops15_Iter_comp_iterIZNS3_13MaglevReducerINS3_18MaglevGraphBuilderEE17FlushNodesToBlockEvEUlRKT_RKT0_E_EEEvSE_SE_SH_(ptr noundef %i.az, ptr noundef %i.ax)
  %i.ba = load ptr, ptr %i.aw, align 8
  %i.bb = load ptr, ptr %i.ay, align 8
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 4                 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %i.bk = ptrtoint ptr %i.bh to i64
  %i.bl = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 3 uses
  %i.bn = ashr exact i64 %i.bm, 3                 ; 2 uses
  %i.bo = add nsw i64 %i.bn, %i.bf                ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = sub i64 %i.br, %i.bl
  %i.bt = ashr exact i64 %i.bs, 3
  %.not.i.i34 = icmp ugt i64 %i.bo, %i.bt
  br i1 %.not.i.i34, label %bb.i, label %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE14EnsureCapacityEm.exit.i35, !prof !6

bb.i:                                             ; preds = %bb.h
  tail call preserve_mostcc void @_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE4GrowEm(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.bo)
  %.pre.i38 = load ptr, ptr %i.bi, align 8
  %.pre47.a = load ptr, ptr %i.bg, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE14EnsureCapacityEm.exit.i35

_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE14EnsureCapacityEm.exit.i35: ; preds = %bb.i, %bb.h
  %i.bu = phi ptr [ %i.bh, %bb.h ], [ %.pre47.a, %bb.i ] ; 3 uses
  %i.bv = phi ptr [ %i.bj, %bb.h ], [ %.pre.i38, %bb.i ] ; 4 uses
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %i.bo ; 3 uses
  %i.bx = icmp ult ptr %i.bu, %i.bw
  br i1 %i.bx, label %.lr.ph.preheader.i36, label %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE6resizeEm.exit39

.lr.ph.preheader.i36:                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE14EnsureCapacityEm.exit.i35
  %i.by = ptrtoaddr ptr %i.bu to i64              ; 2 uses
  %i.bz = ptrtoaddr ptr %i.bv to i64
  %i.ca = shl nuw nsw i64 %i.bo, 3
  %2 = add nuw i64 %i.ca, %i.bz
  %i.cb = add i64 %i.by, 8
  %umax.i37 = tail call i64 @llvm.umax.i64(i64 %2, i64 %i.cb)
  %i.cc = xor i64 %i.by, -1
  %i.cd = add i64 %umax.i37, %i.cc
  %i.ce = and i64 %i.cd, -8
  %i.cf = add i64 %i.ce, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bu, i8 0, i64 %i.cf, i1 false)
  %.pre48.a = load ptr, ptr %i.bi, align 8
  br label %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE6resizeEm.exit39

_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE6resizeEm.exit39: ; preds = %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE14EnsureCapacityEm.exit.i35, %.lr.ph.preheader.i36
  %i.cg = phi ptr [ %i.bv, %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE14EnsureCapacityEm.exit.i35 ], [ %.pre48.a, %.lr.ph.preheader.i36 ] ; 2 uses
  store ptr %i.bw, ptr %i.bg, align 8
  %i.ch = icmp sgt i64 %i.bn, 1
  br i1 %i.ch, label %bb.j, label %bb.k, !prof !5

bb.j:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE6resizeEm.exit39
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.bf
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ci, ptr align 8 %i.cg, i64 %i.bm, i1 false)
  br label %_ZSt13copy_backwardIPPN2v88internal6maglev4NodeES5_ET0_T_S7_S6_.exit

bb.k:                                             ; preds = %_ZN2v88internal10ZoneVectorIPNS0_6maglev4NodeEE6resizeEm.exit39
  %i.cj = icmp eq i64 %i.bm, 8
  br i1 %i.cj, label %bb.l, label %_ZSt13copy_backwardIPPN2v88internal6maglev4NodeES5_ET0_T_S7_S6_.exit

bb.l:                                             ; preds = %bb.k
  %i.ck = getelementptr inbounds i8, ptr %i.bw, i64 -8
  %i.cl = load ptr, ptr %i.cg, align 8
  store ptr %i.cl, ptr %i.ck, align 8
  br label %_ZSt13copy_backwardIPPN2v88internal6maglev4NodeES5_ET0_T_S7_S6_.exit

_ZSt13copy_backwardIPPN2v88internal6maglev4NodeES5_ET0_T_S7_S6_.exit: ; preds = %bb.j, %bb.k, %bb.l
  %i.cm = load ptr, ptr %i.ay, align 8            ; 3 uses
  %i.cn = load ptr, ptr %i.aw, align 8
  %.not3341 = icmp eq ptr %i.cm, %i.cn
  br i1 %.not3341, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_ZSt13copy_backwardIPPN2v88internal6maglev4NodeES5_ET0_T_S7_S6_.exit
  %i.co = load ptr, ptr %i.bi, align 8            ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.bf
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.o
  %.045 = phi ptr [ %.1, %bb.o ], [ %i.cm, %.lr.ph.preheader ] ; 4 uses
  %.02744 = phi ptr [ %.128, %bb.o ], [ %i.cp, %.lr.ph.preheader ] ; 3 uses
  %.02943 = phi ptr [ %i.cu, %bb.o ], [ %i.co, %.lr.ph.preheader ] ; 2 uses
  %.03042 = phi i32 [ %.131, %bb.o ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %.sroa.0.0.copyload = load i32, ptr %.045, align 8
  %i.cq = icmp eq i32 %.sroa.0.0.copyload, %.03042
  br i1 %i.cq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph
  %.sroa.440.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.045, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %.045, i64 16
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph
  %i.cs = getelementptr inbounds nuw i8, ptr %.02744, i64 8
  %i.ct = add nsw i32 %.03042, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sink.in = phi ptr [ %.sroa.440.0..0.sroa_idx, %bb.m ], [ %.02744, %bb.n ]
  %.131 = phi i32 [ %.03042, %bb.m ], [ %i.ct, %bb.n ]
  %.128 = phi ptr [ %.02744, %bb.m ], [ %i.cs, %bb.n ]
  %.1 = phi ptr [ %i.cr, %bb.m ], [ %.045, %bb.n ] ; 2 uses
  %.sink = load ptr, ptr %.sink.in, align 8
  store ptr %.sink, ptr %.02943, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %.02943, i64 8
  %i.cv = load ptr, ptr %i.aw, align 8
  %.not33 = icmp eq ptr %.1, %i.cv
  br i1 %.not33, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !173

._crit_edge.loopexit:                             ; preds = %bb.o
  %.pre49 = load ptr, ptr %i.ay, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZSt13copy_backwardIPPN2v88internal6maglev4NodeES5_ET0_T_S7_S6_.exit
  %i.cw = phi ptr [ %.pre49, %._crit_edge.loopexit ], [ %i.cm, %_ZSt13copy_backwardIPPN2v88internal6maglev4NodeES5_ET0_T_S7_S6_.exit ]
  store ptr %i.cw, ptr %i.aw, align 8
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN2v88internal6maglev18MaglevGraphBuilder27ClearCurrentAllocationBlockEv(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(953) initializes((696, 704)) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 696
  store ptr null, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v88internal6maglev18MaglevGraphBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(953) dereferenceable(953) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.d = load i64, ptr %i.c, align 8
  %i.e = shl i64 %i.d, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.e, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt5stackIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_9ZoneDequeIS4_EEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.m = icmp ult ptr %i.j, %i.l
  br i1 %i.m, label %.lr.ph.i.i.i.i, label %_ZNSt11_Deque_baseIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 3 uses
  %.pre.i.i.i.i = load ptr, ptr %i.n, align 8
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt11_Deque_baseIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.o = phi ptr [ %.pre.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.u, %_ZNSt11_Deque_baseIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i ] ; 3 uses
  %.06.i.i.i.i = phi ptr [ %i.j, %.lr.ph.i.i.i.i ], [ %i.v, %_ZNSt11_Deque_baseIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i ] ; 3 uses
  %i.p = load ptr, ptr %.06.i.i.i.i, align 8      ; 4 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.r = load i64, ptr %i.q, align 8
  %.not7.i.i.i.i.i.i.i = icmp ugt i64 %i.r, 64
  br i1 %.not7.i.i.i.i.i.i.i, label %_ZNSt11_Deque_baseIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 64, ptr %i.s, align 8
  %i.t = load ptr, ptr %i.n, align 8
  store ptr %i.t, ptr %i.p, align 8
  store ptr %i.p, ptr %i.n, align 8
  br label %_ZNSt11_Deque_baseIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i

_ZNSt11_Deque_baseIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.u = phi ptr [ %i.o, %bb.d ], [ %i.p, %bb.e ]
  %i.v = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.w = icmp ult ptr %.06.i.i.i.i, %i.k
  br i1 %i.w, label %bb.c, label %_ZNSt11_Deque_baseIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i.i, !llvm.loop !21

_ZNSt11_Deque_baseIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i.i: ; preds = %_ZNSt11_Deque_baseIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i.i, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.y = load i64, ptr %i.x, align 8              ; 2 uses
  %i.z = and i64 %i.y, 2305843009213693950
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZNSt5stackIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_9ZoneDequeIS4_EEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt11_Deque_baseIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i.i
  %i.ab = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 %i.y, ptr %i.ac, align 8
  store ptr null, ptr %i.ab, align 8
  br label %_ZNSt5stackIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_9ZoneDequeIS4_EEED2Ev.exit

_ZNSt5stackIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_9ZoneDequeIS4_EEED2Ev.exit: ; preds = %bb.a, %_ZNSt11_Deque_baseIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i.i, %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not.i.i = icmp eq ptr %i.ae, null
  br i1 %.not.i.i, label %_ZNSt5dequeIPN2v88internal6maglev11LoopEffectsENS1_22RecyclingZoneAllocatorIS4_EEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt5stackIN2v88internal6maglev18MaglevGraphBuilder17HandlerTableEntryENS1_9ZoneDequeIS4_EEED2Ev.exit
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %i.ai = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = icmp ult ptr %i.ah, %i.aj
  br i1 %i.ak, label %.lr.ph.i.i.i, label %_ZNSt11_Deque_baseIPN2v88internal6maglev11LoopEffectsENS1_22RecyclingZoneAllocatorIS4_EEE16_M_destroy_nodesEPPS4_S9_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  %.pre.i.i.i = load ptr, ptr %i.al, align 8
  br label %bb.h

bb.h:                                             ; preds = %_ZNSt11_Deque_baseIPN2v88internal6maglev11LoopEffectsENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i, %.lr.ph.i.i.i
  %i.am = phi ptr [ %.pre.i.i.i, %.lr.ph.i.i.i ], [ %i.as, %_ZNSt11_Deque_baseIPN2v88internal6maglev11LoopEffectsENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i ] ; 3 uses
  %.06.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i ], [ %i.at, %_ZNSt11_Deque_baseIPN2v88internal6maglev11LoopEffectsENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i ] ; 3 uses
  %i.an = load ptr, ptr %.06.i.i.i, align 8       ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ap = load i64, ptr %i.ao, align 8
  %.not7.i.i.i.i.i.i = icmp ugt i64 %i.ap, 64
  br i1 %.not7.i.i.i.i.i.i, label %_ZNSt11_Deque_baseIPN2v88internal6maglev11LoopEffectsENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store i64 64, ptr %i.aq, align 8
  %i.ar = load ptr, ptr %i.al, align 8
  store ptr %i.ar, ptr %i.an, align 8
  store ptr %i.an, ptr %i.al, align 8
  br label %_ZNSt11_Deque_baseIPN2v88internal6maglev11LoopEffectsENS1_22RecyclingZoneAllocatorIS4_EEE18_M_deallocate_nodeEPS4_.exit.i.i.i

end_hunk_0
