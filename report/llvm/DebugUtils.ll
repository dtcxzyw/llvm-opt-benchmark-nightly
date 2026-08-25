Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/DebugUtils?download=true
begin_hunk_0_@_ZN4llvm3orclsERNS_11raw_ostreamERKSt6vectorISt4pairIPNS0_8JITDylibENS0_19JITDylibLookupFlagsEESaIS8_EE:bb.a
  store ptr %i.dh, ptr %i.cw, align 8, !tbaa !8
  br label %_ZN4llvm3orclsERNS_11raw_ostreamERKNS0_19JITDylibLookupFlagsE.exit30

_ZN4llvm3orclsERNS_11raw_ostreamERKNS0_19JITDylibLookupFlagsE.exit30: ; preds = %bb.v, %bb.w, %bb.y, %bb.z
  %.0.i29 = phi ptr [ %.0.i.i27, %bb.z ], [ %i.db, %bb.v ], [ %.0.i.i27, %bb.w ], [ %i.df, %bb.y ] ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i29, i64 24
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !15
  %i.dk = getelementptr inbounds nuw i8, ptr %.0.i29, i64 32 ; 3 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !8  ; 2 uses
  %i.dm = icmp eq ptr %i.dj, %i.dl
  br i1 %i.dm, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %_ZN4llvm3orclsERNS_11raw_ostreamERKNS0_19JITDylibLookupFlagsE.exit30
  %i.dn = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i29, ptr noundef nonnull @.str.9, i64 noundef 1) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit33

bb.ab:                                            ; preds = %_ZN4llvm3orclsERNS_11raw_ostreamERKNS0_19JITDylibLookupFlagsE.exit30
  store i8 41, ptr %i.dl, align 1
  %i.do = load ptr, ptr %i.dk, align 8, !tbaa !8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 1
  store ptr %i.dp, ptr %i.dk, align 8, !tbaa !8
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit33

_ZN4llvm11raw_ostreamlsEPKc.exit33:               ; preds = %bb.aa, %bb.ab
  %.sroa.037.0 = getelementptr inbounds nuw i8, ptr %.sroa.037.045, i64 16 ; 2 uses
  %.not = icmp eq ptr %.sroa.037.0, %i.bp
  br i1 %.not, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit33, %_ZN4llvm11raw_ostreamlsEPKc.exit21, %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.dq = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.dr = load ptr, ptr %i.c, align 8, !tbaa !8   ; 2 uses
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt
  %i.dv = icmp ult i64 %i.du, 2
  br i1 %i.dv, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.loopexit
  %i.dw = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.24, i64 noundef 2) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit36

bb.ad:                                            ; preds = %.loopexit
  store i16 23840, ptr %i.dr, align 1
  %i.dx = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 2
  store ptr %i.dy, ptr %i.c, align 8, !tbaa !8
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit36

_ZN4llvm11raw_ostreamlsEPKc.exit36:               ; preds = %bb.ac, %bb.ad
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm3orclsERNS_11raw_ostreamERKNS_8DenseMapINS0_15SymbolStringPtrENS0_19SymbolAliasMapEntryENS_12DenseMapInfoIS4_vEENS_6detail12DenseMapPairIS4_S5_EEEE(ptr noundef nonnull returned align 8 dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8    ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.25, i64 noundef 1) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.c:                                             ; preds = %bb.a
  store i8 123, ptr %i.d, align 1
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store ptr %i.h, ptr %i.c, align 8, !tbaa !8
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.b, %bb.c
  %i.i = load ptr, ptr %1, align 8, !tbaa !101, !noalias !104
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !107, !noalias !104 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.m = load i32, ptr %i.l, align 4, !tbaa !108, !noalias !104 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !109, !noalias !104
  %i.p = icmp eq i32 %i.o, 0
  %i.q = zext i32 %i.m to i64                     ; 4 uses
  %.idx58 = mul nuw nsw i64 %i.q, 24              ; 2 uses
  %.not.i.not.i.i = icmp eq i32 %i.m, 0
  %or.cond = select i1 %i.p, i1 true, i1 %.not.i.not.i.i
  br i1 %or.cond, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit
  %i.r = add nuw nsw i64 %i.q, 31
  %i.s = lshr i64 %i.r, 5                         ; 2 uses
  %i.t = load i32, ptr %i.k, align 4, !tbaa !29, !noalias !110 ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.i.i.i.preheader, label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5beginEv.exit

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d
  %i.v = icmp eq i64 %i.s, 1
  br i1 %i.v, label %._crit_edge, label %.lr.ph67

.lr.ph.i.i.i:                                     ; preds = %.lr.ph67
  %i.w = add nuw nsw i64 %i.y, 1                  ; 2 uses
  %i.x = icmp eq i64 %i.w, %i.s
  br i1 %i.x, label %._crit_edge, label %.lr.ph67, !llvm.loop !113

.lr.ph67:                                         ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %i.y = phi i64 [ %i.w, %.lr.ph.i.i.i ], [ 1, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !29, !noalias !110 ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph.i.i.i, label %._crit_edge.i.loopexit.i.i, !llvm.loop !113

._crit_edge.i.loopexit.i.i:                       ; preds = %.lr.ph67
  %i.ac = mul i64 %i.y, 768
  br label %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5beginEv.exit

_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5beginEv.exit: ; preds = %bb.d, %._crit_edge.i.loopexit.i.i
  %.012.lcssa.i.i.i = phi i64 [ 0, %bb.d ], [ %i.ac, %._crit_edge.i.loopexit.i.i ]
  %.0.lcssa.i.i.i = phi i32 [ %i.t, %bb.d ], [ %i.aa, %._crit_edge.i.loopexit.i.i ]
  %i.ad = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i.i, i1 true)
  %narrow = mul nuw nsw i32 %i.ad, 24
  %.idx = zext nneg i32 %narrow to i64
  %i.ae = add i64 %.012.lcssa.i.i.i, %.idx        ; 2 uses
  %.not29 = icmp eq i64 %i.ae, %.idx58
  br i1 %.not29, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5beginEv.exit
  %i.af = add nuw nsw i64 %i.q, 31
  %i.ag = lshr i64 %i.af, 5                       ; 2 uses
  br label %bb.g

._crit_edge:                                      ; preds = %.lr.ph.i.i.i, %_ZN4llvm11raw_ostreamlsEPKc.exit21, %_ZN4llvm16DenseMapIteratorINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EELb1EEppEv.exit, %.lr.ph.i.i.preheader, %.lr.ph.i.i, %.lr.ph.i.i.i.preheader, %_ZN4llvm11raw_ostreamlsEPKc.exit, %_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS2_19SymbolAliasMapEntryENS_12DenseMapInfoIS3_vEENS_6detail12DenseMapPairIS3_S4_EEEES3_S4_S6_S9_E5beginEv.exit
  %i.ah = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !8   ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = icmp ult i64 %i.al, 2
  br i1 %i.am, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.an = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.27, i64 noundef 2) #16 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit12

bb.f:                                             ; preds = %._crit_edge
  store i16 32032, ptr %i.ai, align 1
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  store ptr %i.ap, ptr %i.c, align 8, !tbaa !8
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit12

_ZN4llvm11raw_ostreamlsEPKc.exit12:               ; preds = %bb.e, %bb.f
  ret ptr %0

bb.g:                                             ; preds = %.lr.ph, %_ZN4llvm16DenseMapIteratorINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EELb1EEppEv.exit
  %.pn = phi i64 [ %i.ae, %.lr.ph ], [ %i.da, %_ZN4llvm16DenseMapIteratorINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EELb1EEppEv.exit ] ; 2 uses
  %.sroa.022.030 = getelementptr i8, ptr %i.i, i64 %.pn ; 3 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.ar = load ptr, ptr %i.c, align 8, !tbaa !8   ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.at = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.6, i64 noundef 1) #16 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !8
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit15

bb.i:                                             ; preds = %bb.g
  store i8 32, ptr %i.ar, align 1
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1 ; 2 uses
  store ptr %i.av, ptr %i.c, align 8, !tbaa !8
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit15

_ZN4llvm11raw_ostreamlsEPKc.exit15:               ; preds = %bb.h, %bb.i
  %i.aw = phi ptr [ %.pre, %bb.h ], [ %i.av, %bb.i ] ; 3 uses
  %.0.i.i14 = phi ptr [ %i.at, %bb.h ], [ %0, %bb.i ] ; 5 uses
  %i.ax = load ptr, ptr %.sroa.022.030, align 8, !tbaa !114 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !117 ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.i14, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !15
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i14, i64 32 ; 2 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.aw to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = icmp ugt i64 %i.az, %i.bf
  br i1 %i.bg, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit15
  %i.bh = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i14, ptr noundef nonnull %i.ay, i64 noundef %i.az) #16 ; 2 uses
  %.phi.trans.insert35 = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %.pre36 = load ptr, ptr %.phi.trans.insert35, align 8, !tbaa !8
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

bb.k:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit15
  %.not.i = icmp eq i64 %i.az, 0
  br i1 %.not.i, label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.aw, ptr nonnull align 1 %i.ay, i64 %i.az, i1 false)
  %i.bi = load ptr, ptr %i.bc, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.az ; 2 uses
  store ptr %i.bj, ptr %i.bc, align 8, !tbaa !8
  br label %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit

_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit:      ; preds = %bb.j, %bb.k, %bb.l
  %i.bk = phi ptr [ %.pre36, %bb.j ], [ %i.bj, %bb.l ], [ %i.aw, %bb.k ] ; 2 uses
  %.0.i = phi ptr [ %i.bh, %bb.j ], [ %.0.i.i14, %bb.l ], [ %.0.i.i14, %bb.k ] ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.0.i, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !15
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.bk to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = icmp ult i64 %i.bp, 2
  br i1 %i.bq, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.br = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i, ptr noundef nonnull @.str.26, i64 noundef 2) #16
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit18

bb.n:                                             ; preds = %_ZN4llvm11raw_ostreamlsENS_9StringRefE.exit
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i, i64 32 ; 2 uses
  store i16 8250, ptr %i.bk, align 1
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 2
  store ptr %i.bu, ptr %i.bs, align 8, !tbaa !8
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit18

_ZN4llvm11raw_ostreamlsEPKc.exit18:               ; preds = %bb.m, %bb.n
  %.0.i.i17 = phi ptr [ %i.br, %bb.m ], [ %.0.i, %bb.n ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.022.030, i64 8
  %i.bw = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm3orclsERNS_11raw_ostreamERKNS0_19SymbolStringPtrBaseE(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i17, ptr noundef nonnull align 8 dereferenceable(8) %i.bv) #16 ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !15
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 32 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !8  ; 2 uses
  %i.cb = icmp eq ptr %i.by, %i.ca
  br i1 %i.cb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit18
  %i.cc = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %i.bw, ptr noundef nonnull @.str.6, i64 noundef 1) #16
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit21

bb.p:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit18
  store i8 32, ptr %i.ca, align 1
  %i.cd = load ptr, ptr %i.bz, align 8, !tbaa !8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 1
  store ptr %i.ce, ptr %i.bz, align 8, !tbaa !8
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit21

_ZN4llvm11raw_ostreamlsEPKc.exit21:               ; preds = %bb.o, %bb.p
  %.0.i.i20 = phi ptr [ %i.cc, %bb.o ], [ %i.bw, %bb.p ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.022.030, i64 16
  %i.cg = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm3orclsERNS_11raw_ostreamERKNS_14JITSymbolFlagsE(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i20, ptr noundef nonnull align 1 dereferenceable(2) %i.cf) ; 0 uses
  %i.ch = add i64 %.pn, 24
  %i.ci = sdiv exact i64 %i.ch, 24                ; 3 uses
  %.not.i.i = icmp ult i64 %i.ci, %i.q
  br i1 %.not.i.i, label %bb.q, label %._crit_edge

bb.q:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit21
  %i.cj = lshr i64 %i.ci, 5                       ; 3 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !29
  %i.cm = trunc nuw i64 %i.ci to i32
  %i.cn = and i32 %i.cm, 31
  %i.co = shl nsw i32 -1, %i.cn
  %i.cp = and i32 %i.cl, %i.co                    ; 2 uses
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %.lr.ph.i.i.preheader, label %_ZN4llvm16DenseMapIteratorINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EELb1EEppEv.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.q
  %i.cr = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %i.cs = icmp eq i64 %i.cr, %i.ag
  br i1 %i.cs, label %._crit_edge, label %.lr.ph68

.lr.ph.i.i:                                       ; preds = %.lr.ph68
  %i.ct = add i64 %i.cv, 1                        ; 2 uses
  %i.cu = icmp eq i64 %i.ct, %i.ag
  br i1 %i.cu, label %._crit_edge, label %.lr.ph68, !llvm.loop !113

.lr.ph68:                                         ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %i.cv = phi i64 [ %i.ct, %.lr.ph.i.i ], [ %i.cr, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !29 ; 2 uses
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %.lr.ph.i.i, label %_ZN4llvm16DenseMapIteratorINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EELb1EEppEv.exit, !llvm.loop !113

_ZN4llvm16DenseMapIteratorINS_3orc15SymbolStringPtrENS1_19SymbolAliasMapEntryENS_12DenseMapInfoIS2_vEENS_6detail12DenseMapPairIS2_S3_EELb1EEppEv.exit: ; preds = %.lr.ph68, %bb.q
  %.012.lcssa.i.i = phi i64 [ %i.cj, %bb.q ], [ %i.cv, %.lr.ph68 ]
  %.0.lcssa.i.i = phi i32 [ %i.cp, %bb.q ], [ %i.cx, %.lr.ph68 ]
  %i.cz = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %.0.lcssa.i.i, i1 true)
  %.idx.i.i = mul i64 %.012.lcssa.i.i, 768
  %narrow60 = mul nuw nsw i32 %i.cz, 24
  %.idx59 = zext nneg i32 %narrow60 to i64
  %i.da = add i64 %.idx.i.i, %.idx59              ; 2 uses
  %.not = icmp eq i64 %i.da, %.idx58
  br i1 %.not, label %._crit_edge, label %bb.g
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm3orclsERNS_11raw_ostreamERKNS0_11SymbolStateE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(1) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !119
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 13 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8    ; 7 uses
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 6 uses
  switch i8 %i.a, label %bb.t [
    i8 0, label %bb.b
    i8 1, label %bb.e
    i8 2, label %bb.h
    i8 3, label %bb.k
    i8 4, label %bb.n
    i8 63, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i64 %i.h, 7
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.28, i64 noundef 7) #16
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.e, ptr noundef nonnull align 1 dereferenceable(7) @.str.28, i64 7, i1 false)
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 7
  store ptr %i.l, ptr %i.d, align 8, !tbaa !8
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.e:                                             ; preds = %bb.a
  %i.m = icmp ult i64 %i.h, 14
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.29, i64 noundef 14) #16
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.g:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.e, ptr noundef nonnull align 1 dereferenceable(14) @.str.29, i64 14, i1 false)
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 14
  store ptr %i.p, ptr %i.d, align 8, !tbaa !8
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.h:                                             ; preds = %bb.a
  %i.q = icmp ult i64 %i.h, 13
  br i1 %i.q, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.r = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.30, i64 noundef 13) #16
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(13) %i.e, ptr noundef nonnull align 1 dereferenceable(13) @.str.30, i64 13, i1 false)
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 13
  store ptr %i.t, ptr %i.d, align 8, !tbaa !8
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.k:                                             ; preds = %bb.a
  %i.u = icmp ult i64 %i.h, 8
  br i1 %i.u, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.v = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.31, i64 noundef 8) #16
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.m:                                             ; preds = %bb.k
  store i64 7234318584538948946, ptr %i.e, align 1
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.x, ptr %i.d, align 8, !tbaa !8
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.n:                                             ; preds = %bb.a
  %i.y = icmp ult i64 %i.h, 7
  br i1 %i.y, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.z = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.32, i64 noundef 7) #16
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.p:                                             ; preds = %bb.n
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.e, ptr noundef nonnull align 1 dereferenceable(7) @.str.32, i64 7, i1 false)
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 7
  store ptr %i.ab, ptr %i.d, align 8, !tbaa !8
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.q:                                             ; preds = %bb.a
  %i.ac = icmp ult i64 %i.h, 5
  br i1 %i.ac, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ad = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull @.str.33, i64 noundef 5) #16
end_hunk_0
begin_hunk_1_@_ZN4llvm7support6detail15HelperFunctions15consumeHexStyleERNS_9StringRefE:bb.a
  store ptr %i.ad, ptr %0, align 8, !tbaa !46
  store i64 %i.ae, ptr %i.b, align 8, !tbaa !52
  br label %bb.f

.thread49:                                        ; preds = %bb.e, %_ZNK4llvm9StringRef11starts_withES0_.exit.i21, %_ZNK4llvm9StringRef11starts_withES0_.exit.i27
  %i.af = tail call noundef zeroext i1 @_ZN4llvm9StringRef13consume_frontES0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nonnull @.str.49, i64 1) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.thread49, %_ZN4llvm9StringRef13consume_frontES0_.exit30, %_ZN4llvm9StringRef13consume_frontES0_.exit18, %_ZN4llvm9StringRef13consume_frontES0_.exit24, %bb.a, %bb.d, %bb.c
  %.sroa.5.0 = phi i64 [ 4294967297, %bb.c ], [ 4294967296, %bb.d ], [ 0, %bb.a ], [ 4294967299, %_ZN4llvm9StringRef13consume_frontES0_.exit18 ], [ 4294967299, %_ZN4llvm9StringRef13consume_frontES0_.exit24 ], [ 4294967298, %_ZN4llvm9StringRef13consume_frontES0_.exit30 ], [ 4294967298, %.thread49 ]
  ret i64 %.sroa.5.0
}

declare void @_ZN4llvm9write_hexERNS_11raw_ostreamEmNS_13HexPrintStyleESt8optionalImE(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef, i32 noundef, i64, i8) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN4llvm9StringRef13consume_frontES0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr %1, i64 %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !175  ; 2 uses
  %.not.i = icmp ult i64 %i.b, %2
  br i1 %.not.i, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread3, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %2, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !176   ; 2 uses
  br i1 %i.c, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit

_ZNK4llvm9StringRef11starts_withES0_.exit:        ; preds = %bb.b
  %bcmp.i = tail call i32 @bcmp(ptr %.pre, ptr %1, i64 %2)
  %i.d = icmp eq i32 %bcmp.i, 0
  br i1 %i.d, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread, label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread3

_ZNK4llvm9StringRef11starts_withES0_.exit.thread: ; preds = %bb.b, %_ZNK4llvm9StringRef11starts_withES0_.exit
  %i.e = getelementptr inbounds nuw i8, ptr %.pre, i64 %2
  %i.f = sub i64 %i.b, %2
  store ptr %i.e, ptr %0, align 8, !tbaa !46
  store i64 %i.f, ptr %i.a, align 8, !tbaa !52
  br label %_ZNK4llvm9StringRef11starts_withES0_.exit.thread3

_ZNK4llvm9StringRef11starts_withES0_.exit.thread3: ; preds = %bb.a, %_ZNK4llvm9StringRef11starts_withES0_.exit, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread
  %i.g = phi i1 [ false, %_ZNK4llvm9StringRef11starts_withES0_.exit ], [ true, %_ZNK4llvm9StringRef11starts_withES0_.exit.thread ], [ false, %bb.a ]
  ret i1 %i.g
}

declare void @_ZN4llvm13write_integerERNS_11raw_ostreamEmmNS_12IntegerStyleEb(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef, i64 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK4llvm9StringRef23starts_with_insensitiveES0_(ptr noundef nonnull align 8 dereferenceable(16), ptr, i64) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4llvm18isPrefixedHexStyleENS_13HexPrintStyleE(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @memcmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4llvm22consumeUnsignedIntegerERNS_9StringRefEjRy(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEl(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #2

declare void @_ZN4llvm11raw_ostream16SetBufferAndModeEPcmNS0_10BufferKindE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare { i32, ptr } @_ZN4llvm3sys2fs6accessERKNS_5TwineENS1_10AccessModeE(ptr noundef nonnull align 8 dereferenceable(34), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEh(ptr noundef nonnull align 8 dereferenceable(48), i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(20) ptr @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefEiELb1EE18growAndEmplaceBackIJS2_RKSt6atomicImEEEERS3_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %"struct.std::pair.67", align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !133
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load atomic i64, ptr %2 seq_cst, align 8
  %i.c = trunc i64 %i.b to i32
  store i32 %i.c, ptr %i.a, align 8, !tbaa !134
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !123  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !124
  %.not.i = icmp ult i32 %i.e, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !138

bb.b:                                             ; preds = %bb.a
  call void @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefEiELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(20) %3)
  %.pre = load i32, ptr %i.d, align 8, !tbaa !123
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefEiELb1EE9push_backERKS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = zext i32 %i.e to i64
  %i.i = load ptr, ptr %0, align 8, !tbaa !121
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  %i.k = load i32, ptr %i.d, align 8, !tbaa !123
  %i.l = add i32 %i.k, 1                          ; 2 uses
  store i32 %i.l, ptr %i.d, align 8, !tbaa !123
  br label %_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefEiELb1EE9push_backERKS3_.exit

_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefEiELb1EE9push_backERKS3_.exit: ; preds = %bb.b, %bb.c
  %i.m = phi i32 [ %.pre, %bb.b ], [ %i.l, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  %i.n = load ptr, ptr %0, align 8, !tbaa !121
  %i.o = zext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.o
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -24
  ret ptr %i.q
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm23SmallVectorTemplateBaseISt4pairINS_9StringRefEiELb1EE15growAndPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(20) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %2 = alloca %"struct.std::pair.67", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !123
  %i.c = zext i32 %i.b to i64
  %i.d = add nuw nsw i64 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, i64 noundef 24) #16
  %i.f = load ptr, ptr %0, align 8, !tbaa !121
  %i.g = load i32, ptr %i.a, align 8, !tbaa !123
  %i.h = zext i32 %i.g to i64
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.j = load i32, ptr %i.a, align 8, !tbaa !123
  %i.k = add i32 %i.j, 1
  store i32 %i.k, ptr %i.a, align 8, !tbaa !123
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  ret void
}

declare void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt16__introsort_loopIPSt4pairIN4llvm9StringRefEiElN9__gnu_cxx5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SA_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"class.llvm::StringRef", align 8   ; 4 uses
  %4 = alloca %"struct.std::pair.67", align 8     ; 4 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 3 uses
  %i.d = icmp sgt i64 %i.c, 384
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPSt4pairIN4llvm9StringRefEiEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SA_SA_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph38

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPSt4pairIN4llvm9StringRefEiEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_10less_firstEEEET_SA_SA_T0_.exit
  %i.g = icmp eq i64 %i.an, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph38, !llvm.loop !177

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.ap, %bb.b ]
  %.025.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ]
  %i.h = udiv exact i64 %.lcssa, 24               ; 2 uses
  %i.i = add nsw i64 %i.h, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.013.i.i18 = phi i64 [ %i.j, %._crit_edge ], [ %i.l, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.013.i.i18
  tail call void @_ZSt13__adjust_heapIPSt4pairIN4llvm9StringRefEiElS3_N9__gnu_cxx5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_T0_SB_T1_T2_(ptr noundef %0, i64 noundef %.013.i.i18, i64 noundef %i.h, ptr noundef nonnull byval(%"struct.std::pair.67") align 8 %i.k)
  %.not.i.i = icmp eq i64 %.013.i.i18, 0
  %i.l = add nsw i64 %.013.i.i18, -1
  br i1 %.not.i.i, label %.lr.ph.i.i, label %bb.c, !llvm.loop !178

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i
  %.07.i.i = phi ptr [ %.025.lcssa, %.lr.ph.i.i ], [ %i.n, %bb.d ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.07.i.i, i64 -24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.n, ptr noundef nonnull align 8 dereferenceable(20) %0, i64 16, i1 false), !tbaa.struct !133
  %i.o = load i32, ptr %i.m, align 4, !tbaa !29
  %i.p = getelementptr inbounds i8, ptr %.07.i.i, i64 -8
  store i32 %i.o, ptr %i.p, align 8, !tbaa !134
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = sdiv exact i64 %i.r, 24
  tail call void @_ZSt13__adjust_heapIPSt4pairIN4llvm9StringRefEiElS3_N9__gnu_cxx5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_T0_SB_T1_T2_(ptr noundef nonnull %0, i64 noundef 0, i64 noundef %i.s, ptr noundef nonnull byval(%"struct.std::pair.67") align 8 %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.t = icmp sgt i64 %i.r, 24
  br i1 %i.t, label %bb.d, label %_ZSt14__partial_sortIPSt4pairIN4llvm9StringRefEiEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SA_SA_T0_.exit, !llvm.loop !179

.lr.ph38:                                         ; preds = %.lr.ph, %bb.b
  %.0172437 = phi i64 [ %i.an, %bb.b ], [ %2, %.lr.ph ]
  %.02536 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.u = phi i64 [ %i.ap, %bb.b ], [ %i.c, %.lr.ph ]
  %i.v = udiv i64 %i.u, 48
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.v
  %i.x = getelementptr inbounds i8, ptr %.02536, i64 -24
  tail call void @_ZSt22__move_median_to_firstIPSt4pairIN4llvm9StringRefEiEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SA_SA_SA_T0_(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef %i.w, ptr noundef nonnull %i.x)
  br label %bb.e

bb.e:                                             ; preds = %bb.g, %.lr.ph38
  %.013.i.i = phi ptr [ %.02536, %.lr.ph38 ], [ %.114.i.i, %bb.g ]
  %.0.i.i = phi ptr [ %i.e, %.lr.ph38 ], [ %i.am, %bb.g ]
  %.sroa.2.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !52 ; 4 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.thread.i.i, %bb.e
  %.1.i.i = phi ptr [ %.0.i.i, %bb.e ], [ %i.ac, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.thread.i.i ] ; 12 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i.i, align 8, !tbaa !52 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i.i.i.i.i, i64 %.sroa.22.0.copyload.i.i.i.i.i.i) ; 2 uses
  %i.y = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i.i, 0
  br i1 %i.y, label %.thread.i.i.i.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !46
  %.sroa.01.0.copyload.i.i.i.i.i.i = load ptr, ptr %.1.i.i, align 8, !tbaa !46
  %i.z = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i.i.i.i.i.i, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i.i) #18
  %.fr.i.i.i.i.i.i.i.i = freeze i32 %i.z          ; 2 uses
  %.not.not.i.i.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.i.i

.thread.i.i.i.i.i.i.i.i:                          ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i, %bb.f
  %i.aa = icmp ult i64 %.sroa.22.0.copyload.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i.i
  br i1 %i.aa, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.thread.i.i, label %.preheader.i.i.preheader

.preheader.i.i.preheader:                         ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.i.i, %.thread.i.i.i.i.i.i.i.i
  br label %.preheader.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.i.i: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i.i
  %i.ab = icmp slt i32 %.fr.i.i.i.i.i.i.i.i, 0
  br i1 %i.ab, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.thread.i.i, label %.preheader.i.i.preheader

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.i.i, %.thread.i.i.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24
  br label %bb.f, !llvm.loop !180

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit29.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit29.i.i ], [ %.013.i.i, %.preheader.i.i.preheader ] ; 3 uses
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -24 ; 6 uses
  %.sroa.2.0..sroa_idx.i.i.i.i17.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -16
  %.sroa.2.0.copyload.i.i.i.i18.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i17.i.i, align 8, !tbaa !52 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i19.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i.i.i18.i.i, i64 %.sroa.2.0.copyload.i.i.i.i.i.i) ; 2 uses
  %i.ad = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i19.i.i, 0
  br i1 %i.ad, label %.thread.i.i.i.i.i.i28.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i20.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i20.i.i: ; preds = %.preheader.i.i
  %.sroa.0.0.copyload.i.i.i.i21.i.i = load ptr, ptr %.114.i.i, align 8, !tbaa !46
  %.sroa.01.0.copyload.i.i.i.i22.i.i = load ptr, ptr %0, align 8, !tbaa !46
  %i.ae = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i.i.i.i22.i.i, ptr noundef %.sroa.0.0.copyload.i.i.i.i21.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i19.i.i) #18
  %.fr.i.i.i.i.i.i23.i.i = freeze i32 %i.ae       ; 2 uses
  %.not.not.i.i.i.i.i.i24.i.i = icmp eq i32 %.fr.i.i.i.i.i.i23.i.i, 0
  %.inv.i.i.i.i.i.i25.i.i = icmp sgt i32 %.fr.i.i.i.i.i.i23.i.i, -1
  %spec.select.i.i.i.i.i.i26.i.i = select i1 %.inv.i.i.i.i.i.i25.i.i, i32 1, i32 -1
  br i1 %.not.not.i.i.i.i.i.i24.i.i, label %.thread.i.i.i.i.i.i28.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit29.i.i

.thread.i.i.i.i.i.i28.i.i:                        ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i20.i.i, %.preheader.i.i
  %i.af = icmp ult i64 %.sroa.2.0.copyload.i.i.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i18.i.i
  br i1 %i.af, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit29.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit29.thread.i.i

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit29.i.i: ; preds = %.thread.i.i.i.i.i.i28.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i20.i.i
  %.1.i.i.i.i.i.i27.i.i = phi i32 [ %spec.select.i.i.i.i.i.i26.i.i, %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i20.i.i ], [ -1, %.thread.i.i.i.i.i.i28.i.i ]
  %i.ag = icmp slt i32 %.1.i.i.i.i.i.i27.i.i, 0
  br i1 %i.ag, label %.preheader.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit29.thread.i.i, !llvm.loop !181

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit29.thread.i.i: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit29.i.i, %.thread.i.i.i.i.i.i28.i.i
  %i.ah = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.ah, label %bb.g, label %_ZSt27__unguarded_partition_pivotIPSt4pairIN4llvm9StringRefEiEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_10less_firstEEEET_SA_SA_T0_.exit

bb.g:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit29.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(20) %.1.i.i, i64 16, i1 false), !tbaa.struct !133
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.1.i.i, ptr noundef nonnull align 8 dereferenceable(20) %.114.i.i, i64 16, i1 false), !tbaa.struct !133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.114.i.i, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !133
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.ai = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16 ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 2 uses
  %i.ak = load i32, ptr %i.ai, align 4, !tbaa !29
  %i.al = load i32, ptr %i.aj, align 4, !tbaa !29
  store i32 %i.al, ptr %i.ai, align 4, !tbaa !29
  store i32 %i.ak, ptr %i.aj, align 4, !tbaa !29
  %i.am = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24
  br label %bb.e, !llvm.loop !182

_ZSt27__unguarded_partition_pivotIPSt4pairIN4llvm9StringRefEiEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_10less_firstEEEET_SA_SA_T0_.exit: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit29.thread.i.i
  %i.an = add nsw i64 %.0172437, -1               ; 3 uses
  tail call void @_ZSt16__introsort_loopIPSt4pairIN4llvm9StringRefEiElN9__gnu_cxx5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SA_T0_T1_(ptr noundef %.1.i.i, ptr noundef %.02536, i64 noundef %i.an)
  %i.ao = ptrtoint ptr %.1.i.i to i64
  %i.ap = sub i64 %i.ao, %i.a                     ; 3 uses
  %i.aq = icmp sgt i64 %i.ap, 384
  br i1 %i.aq, label %bb.b, label %_ZSt14__partial_sortIPSt4pairIN4llvm9StringRefEiEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SA_SA_T0_.exit, !llvm.loop !177

_ZSt14__partial_sortIPSt4pairIN4llvm9StringRefEiEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SA_SA_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPSt4pairIN4llvm9StringRefEiEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_10less_firstEEEET_SA_SA_T0_.exit, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt13__adjust_heapIPSt4pairIN4llvm9StringRefEiElS3_N9__gnu_cxx5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_T0_SB_T1_T2_(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef byval(%"struct.std::pair.67") align 8 %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.thread
  %.039 = phi i64 [ %spec.select38, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.thread ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.039, 1                         ; 3 uses
  %i.e = add i64 %i.d, 2                          ; 2 uses
  %i.f = getelementptr inbounds [24 x i8], ptr %0, i64 %i.e ; 2 uses
  %i.g = getelementptr [24 x i8], ptr %0, i64 %i.d ; 2 uses
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.22.0.copyload.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !52 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr i8, ptr %i.g, i64 32
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !52 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i.i.i, i64 %.sroa.22.0.copyload.i.i.i.i) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.h, label %.thread.i.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %.lr.ph
  %i.i = getelementptr i8, ptr %i.g, i64 24
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !46
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr %i.f, align 8, !tbaa !46
  %i.j = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i.i.i.i, ptr noundef %.sroa.0.0.copyload.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #18
  %.fr.i.i.i.i.i.i = freeze i32 %i.j              ; 2 uses
  %.not.not.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit

.thread.i.i.i.i.i.i:                              ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i, %.lr.ph
  %i.k = icmp ult i64 %.sroa.22.0.copyload.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i
  %i.l = icmp slt i32 %.fr.i.i.i.i.i.i, 0
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.thread: ; preds = %.thread.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit
  %.sink = phi i1 [ %i.k, %.thread.i.i.i.i.i.i ], [ %i.l, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit ]
  %i.m = or disjoint i64 %i.d, 1
  %spec.select38 = select i1 %.sink, i64 %i.m, i64 %i.e ; 4 uses
  %i.n = getelementptr inbounds [24 x i8], ptr %0, i64 %spec.select38 ; 2 uses
  %i.o = getelementptr inbounds [24 x i8], ptr %0, i64 %.039 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.o, ptr noundef nonnull align 8 dereferenceable(20) %i.n, i64 16, i1 false), !tbaa.struct !133
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.q = load i32, ptr %i.p, align 4, !tbaa !29
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i32 %i.q, ptr %i.r, align 8, !tbaa !134
  %i.s = icmp slt i64 %spec.select38, %i.b
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !183

._crit_edge:                                      ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.thread, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select38, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.thread ] ; 5 uses
  %i.t = and i64 %2, 1
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.v = add nsw i64 %2, -2
  %i.w = ashr exact i64 %i.v, 1
  %i.x = icmp eq i64 %.0.lcssa, %i.w
  br i1 %i.x, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.y = shl nsw i64 %.0.lcssa, 1
  %i.z = or disjoint i64 %i.y, 1                  ; 2 uses
  %i.aa = getelementptr inbounds [24 x i8], ptr %0, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds [24 x i8], ptr %0, i64 %.0.lcssa ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.ab, ptr noundef nonnull align 8 dereferenceable(20) %i.aa, i64 16, i1 false), !tbaa.struct !133
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !29
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i32 %i.ad, ptr %i.ae, align 8, !tbaa !134
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %.127 = phi i64 [ %i.z, %bb.c ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %.sroa.032.0.copyload = load ptr, ptr %3, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8 ; 3 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8
  %i.af = icmp sgt i64 %.127, %1
  br i1 %i.af, label %.lr.ph.i, label %_ZSt11__push_heapIPSt4pairIN4llvm9StringRefEiElS3_N9__gnu_cxx5__ops14_Iter_comp_valINS1_10less_firstEEEEvT_T0_SB_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.d, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES8_EEbT_RT0_.exit.thread15.i
  %.01319.i = phi i64 [ %.020.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES8_EEbT_RT0_.exit.thread15.i ], [ %.127, %bb.d ] ; 4 uses
  %.020.in.i = add nsw i64 %.01319.i, -1
  %.020.i = sdiv i64 %.020.in.i, 2                ; 4 uses
  %i.ag = getelementptr inbounds [24 x i8], ptr %0, i64 %.020.i ; 4 uses
  %.sroa.22.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.sroa.22.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !52 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload, i64 %.sroa.22.0.copyload.i.i.i.i.i) ; 2 uses
  %i.ah = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.ah, label %.thread.i.i.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  %.sroa.01.0.copyload.i.i.i.i.i = load ptr, ptr %i.ag, align 8, !tbaa !46
  %i.ai = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i.i.i.i.i, ptr noundef %.sroa.032.0.copyload, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #18
  %.fr.i.i.i.i.i.i.i = freeze i32 %i.ai           ; 2 uses
  %.not.not.i.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES8_EEbT_RT0_.exit.i

.thread.i.i.i.i.i.i.i:                            ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i, %.lr.ph.i
  %i.aj = icmp ult i64 %.sroa.22.0.copyload.i.i.i.i.i, %.sroa.2.0.copyload
  br i1 %i.aj, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES8_EEbT_RT0_.exit.thread15.i, label %_ZSt11__push_heapIPSt4pairIN4llvm9StringRefEiElS3_N9__gnu_cxx5__ops14_Iter_comp_valINS1_10less_firstEEEEvT_T0_SB_T1_RT2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES8_EEbT_RT0_.exit.i: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i
  %i.ak = icmp slt i32 %.fr.i.i.i.i.i.i.i, 0
  br i1 %i.ak, label %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES8_EEbT_RT0_.exit.thread15.i, label %_ZSt11__push_heapIPSt4pairIN4llvm9StringRefEiElS3_N9__gnu_cxx5__ops14_Iter_comp_valINS1_10less_firstEEEEvT_T0_SB_T1_RT2_.exit

_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES8_EEbT_RT0_.exit.thread15.i: ; preds = %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES8_EEbT_RT0_.exit.i, %.thread.i.i.i.i.i.i.i
  %i.al = getelementptr inbounds [24 x i8], ptr %0, i64 %.01319.i ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.al, ptr noundef nonnull align 8 dereferenceable(20) %i.ag, i64 16, i1 false), !tbaa.struct !133
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.an = load i32, ptr %i.am, align 8, !tbaa !29
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i32 %i.an, ptr %i.ao, align 8, !tbaa !134
  %i.ap = icmp sgt i64 %.020.i, %1
  br i1 %i.ap, label %.lr.ph.i, label %_ZSt11__push_heapIPSt4pairIN4llvm9StringRefEiElS3_N9__gnu_cxx5__ops14_Iter_comp_valINS1_10less_firstEEEEvT_T0_SB_T1_RT2_.exit, !llvm.loop !184

_ZSt11__push_heapIPSt4pairIN4llvm9StringRefEiElS3_N9__gnu_cxx5__ops14_Iter_comp_valINS1_10less_firstEEEEvT_T0_SB_T1_RT2_.exit: ; preds = %.thread.i.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES8_EEbT_RT0_.exit.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES8_EEbT_RT0_.exit.thread15.i, %bb.d
  %.013.lcssa.i = phi i64 [ %.127, %bb.d ], [ %.01319.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES8_EEbT_RT0_.exit.i ], [ %.020.i, %_ZN9__gnu_cxx5__ops14_Iter_comp_valIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES8_EEbT_RT0_.exit.thread15.i ], [ %.01319.i, %.thread.i.i.i.i.i.i.i ]
  %i.aq = getelementptr inbounds [24 x i8], ptr %0, i64 %.013.lcssa.i ; 3 uses
  store ptr %.sroa.032.0.copyload, ptr %i.aq, align 8, !tbaa !46
  %.sroa.5.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store i64 %.sroa.2.0.copyload, ptr %.sroa.5.0..sroa_idx30, align 8, !tbaa !52
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i32 %.sroa.3.0.copyload, ptr %i.ar, align 8, !tbaa !134
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt22__move_median_to_firstIPSt4pairIN4llvm9StringRefEiEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SA_SA_SA_T0_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat {
bb.a:
  %4 = alloca %"class.llvm::StringRef", align 8   ; 4 uses
  %5 = alloca %"class.llvm::StringRef", align 8   ; 4 uses
  %6 = alloca %"class.llvm::StringRef", align 8   ; 4 uses
  %7 = alloca %"class.llvm::StringRef", align 8   ; 4 uses
  %8 = alloca %"class.llvm::StringRef", align 8   ; 4 uses
  %9 = alloca %"class.llvm::StringRef", align 8   ; 4 uses
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !52 ; 6 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !52 ; 6 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i.i.i, i64 %.sroa.22.0.copyload.i.i.i.i) ; 2 uses
  %i.a = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.a, label %.thread.i.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.a
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %2, align 8, !tbaa !46
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !46
  %i.b = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i.i.i.i, ptr noundef %.sroa.0.0.copyload.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #18
  %.fr.i.i.i.i.i.i = freeze i32 %i.b              ; 2 uses
  %.not.not.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit

.thread.i.i.i.i.i.i:                              ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i, %bb.a
  %i.c = icmp ult i64 %.sroa.22.0.copyload.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i
  br i1 %i.c, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.thread83, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i
  %i.d = icmp slt i32 %.fr.i.i.i.i.i.i, 0
  br i1 %i.d, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.thread83, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.thread83: ; preds = %.thread.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit
  %.sroa.2.0..sroa_idx.i.i.i.i24 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i.i.i.i25 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i24, align 8, !tbaa !52 ; 4 uses
  %.sroa.speculated.i.i.i.i.i.i26 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i.i.i25, i64 %.sroa.2.0.copyload.i.i.i.i) ; 2 uses
  %i.e = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i26, 0
  br i1 %i.e, label %.thread.i.i.i.i.i.i35, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i27

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i27: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.thread83
  %.sroa.0.0.copyload.i.i.i.i28 = load ptr, ptr %3, align 8, !tbaa !46
  %.sroa.01.0.copyload.i.i.i.i29 = load ptr, ptr %2, align 8, !tbaa !46
  %i.f = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i.i.i.i29, ptr noundef %.sroa.0.0.copyload.i.i.i.i28, i64 noundef %.sroa.speculated.i.i.i.i.i.i26) #18
  %.fr.i.i.i.i.i.i30 = freeze i32 %i.f            ; 2 uses
  %.not.not.i.i.i.i.i.i31 = icmp eq i32 %.fr.i.i.i.i.i.i30, 0
  br i1 %.not.not.i.i.i.i.i.i31, label %.thread.i.i.i.i.i.i35, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit36

.thread.i.i.i.i.i.i35:                            ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i27, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.thread83
  %i.g = icmp ult i64 %.sroa.2.0.copyload.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i25
  br i1 %i.g, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit36.thread87, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit36.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit36: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i27
  %i.h = icmp slt i32 %.fr.i.i.i.i.i.i30, 0
  br i1 %i.h, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit36.thread87, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit36.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit36.thread87: ; preds = %.thread.i.i.i.i.i.i35, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit36
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(20) %0, i64 16, i1 false), !tbaa.struct !133
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 16, i1 false), !tbaa.struct !133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 8 dereferenceable(16) %9, i64 16, i1 false), !tbaa.struct !133
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  br label %bb.b

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit36.thread: ; preds = %.thread.i.i.i.i.i.i35, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit36
  %.sroa.speculated.i.i.i.i.i.i41 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i.i.i25, i64 %.sroa.22.0.copyload.i.i.i.i) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i41, 0
  br i1 %i.i, label %.thread.i.i.i.i.i.i50, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i42

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i42: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit36.thread
  %.sroa.0.0.copyload.i.i.i.i43 = load ptr, ptr %3, align 8, !tbaa !46
  %.sroa.01.0.copyload.i.i.i.i44 = load ptr, ptr %1, align 8, !tbaa !46
  %i.j = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i.i.i.i44, ptr noundef %.sroa.0.0.copyload.i.i.i.i43, i64 noundef %.sroa.speculated.i.i.i.i.i.i41) #18
  %.fr.i.i.i.i.i.i45 = freeze i32 %i.j            ; 2 uses
  %.not.not.i.i.i.i.i.i46 = icmp eq i32 %.fr.i.i.i.i.i.i45, 0
  br i1 %.not.not.i.i.i.i.i.i46, label %.thread.i.i.i.i.i.i50, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit51

.thread.i.i.i.i.i.i50:                            ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i42, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit36.thread
  %i.k = icmp ult i64 %.sroa.22.0.copyload.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i25
  br i1 %i.k, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit51.thread91, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit51.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit51: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i42
  %i.l = icmp slt i32 %.fr.i.i.i.i.i.i45, 0
  br i1 %i.l, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit51.thread91, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit51.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit51.thread91: ; preds = %.thread.i.i.i.i.i.i50, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit51
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(20) %0, i64 16, i1 false), !tbaa.struct !133
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %3, i64 16, i1 false), !tbaa.struct !133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 8 dereferenceable(16) %8, i64 16, i1 false), !tbaa.struct !133
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  br label %bb.b

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit51.thread: ; preds = %.thread.i.i.i.i.i.i50, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit51
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(20) %0, i64 16, i1 false), !tbaa.struct !133
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, i64 16, i1 false), !tbaa.struct !133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(16) %7, i64 16, i1 false), !tbaa.struct !133
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.b

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.thread: ; preds = %.thread.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit
  %.sroa.2.0..sroa_idx.i.i.i.i54 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.2.0.copyload.i.i.i.i55 = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i54, align 8, !tbaa !52 ; 4 uses
  %.sroa.speculated.i.i.i.i.i.i56 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i.i.i55, i64 %.sroa.22.0.copyload.i.i.i.i) ; 2 uses
  %i.m = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i56, 0
  br i1 %i.m, label %.thread.i.i.i.i.i.i65, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i57

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i57: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.thread
  %.sroa.0.0.copyload.i.i.i.i58 = load ptr, ptr %3, align 8, !tbaa !46
  %.sroa.01.0.copyload.i.i.i.i59 = load ptr, ptr %1, align 8, !tbaa !46
  %i.n = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i.i.i.i59, ptr noundef %.sroa.0.0.copyload.i.i.i.i58, i64 noundef %.sroa.speculated.i.i.i.i.i.i56) #18
  %.fr.i.i.i.i.i.i60 = freeze i32 %i.n            ; 2 uses
  %.not.not.i.i.i.i.i.i61 = icmp eq i32 %.fr.i.i.i.i.i.i60, 0
  br i1 %.not.not.i.i.i.i.i.i61, label %.thread.i.i.i.i.i.i65, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit66

.thread.i.i.i.i.i.i65:                            ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i57, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.thread
  %i.o = icmp ult i64 %.sroa.22.0.copyload.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i55
  br i1 %i.o, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit66.thread95, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit66.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit66: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i57
  %i.p = icmp slt i32 %.fr.i.i.i.i.i.i60, 0
  br i1 %i.p, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit66.thread95, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit66.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit66.thread95: ; preds = %.thread.i.i.i.i.i.i65, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit66
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(20) %0, i64 16, i1 false), !tbaa.struct !133
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %1, i64 16, i1 false), !tbaa.struct !133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %1, ptr noundef nonnull align 8 dereferenceable(16) %6, i64 16, i1 false), !tbaa.struct !133
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %bb.b

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit66.thread: ; preds = %.thread.i.i.i.i.i.i65, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit66
  %.sroa.speculated.i.i.i.i.i.i71 = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i.i.i55, i64 %.sroa.2.0.copyload.i.i.i.i) ; 2 uses
  %i.q = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i71, 0
  br i1 %i.q, label %.thread.i.i.i.i.i.i80, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i72

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i72: ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit66.thread
  %.sroa.0.0.copyload.i.i.i.i73 = load ptr, ptr %3, align 8, !tbaa !46
  %.sroa.01.0.copyload.i.i.i.i74 = load ptr, ptr %2, align 8, !tbaa !46
  %i.r = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i.i.i.i74, ptr noundef %.sroa.0.0.copyload.i.i.i.i73, i64 noundef %.sroa.speculated.i.i.i.i.i.i71) #18
  %.fr.i.i.i.i.i.i75 = freeze i32 %i.r            ; 2 uses
  %.not.not.i.i.i.i.i.i76 = icmp eq i32 %.fr.i.i.i.i.i.i75, 0
  br i1 %.not.not.i.i.i.i.i.i76, label %.thread.i.i.i.i.i.i80, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit81

.thread.i.i.i.i.i.i80:                            ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i72, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit66.thread
  %i.s = icmp ult i64 %.sroa.2.0.copyload.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i55
  br i1 %i.s, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit81.thread99, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit81.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit81: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i72
  %i.t = icmp slt i32 %.fr.i.i.i.i.i.i75, 0
  br i1 %i.t, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit81.thread99, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit81.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit81.thread99: ; preds = %.thread.i.i.i.i.i.i80, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit81
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(20) %0, i64 16, i1 false), !tbaa.struct !133
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %3, i64 16, i1 false), !tbaa.struct !133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %3, ptr noundef nonnull align 8 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !133
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.b

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit81.thread: ; preds = %.thread.i.i.i.i.i.i80, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit81
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(20) %0, i64 16, i1 false), !tbaa.struct !133
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull align 8 dereferenceable(20) %2, i64 16, i1 false), !tbaa.struct !133
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %2, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !133
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.b

bb.b:                                             ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit66.thread95, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit81.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit81.thread99, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit36.thread87, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit51.thread, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit51.thread91
  %.sink = phi ptr [ %1, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit66.thread95 ], [ %2, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit81.thread ], [ %3, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit81.thread99 ], [ %2, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit36.thread87 ], [ %1, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit51.thread ], [ %3, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit51.thread91 ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sink, i64 16 ; 2 uses
  %i.w = load i32, ptr %i.u, align 4, !tbaa !29
  %i.x = load i32, ptr %i.v, align 4, !tbaa !29
  store i32 %i.x, ptr %i.u, align 4, !tbaa !29
  store i32 %i.w, ptr %i.v, align 4, !tbaa !29
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZSt16__insertion_sortIPSt4pairIN4llvm9StringRefEiEN9__gnu_cxx5__ops15_Iter_comp_iterINS1_10less_firstEEEEvT_SA_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0 = alloca %"class.llvm::StringRef", align 8 ; 4 uses
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.019 = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.not20 = icmp eq ptr %.019, %1
  br i1 %.not20, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = ptrtoint ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %.022 = phi ptr [ %.019, %.lr.ph ], [ %.0, %bb.d ] ; 8 uses
  %.pn21 = phi ptr [ %0, %.lr.ph ], [ %.022, %bb.d ] ; 4 uses
  %.sroa.22.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn21, i64 32
  %.sroa.22.0.copyload.i.i.i.i = load i64, ptr %.sroa.22.0..sroa_idx.i.i.i.i, align 8, !tbaa !52 ; 5 uses
  %.sroa.2.0.copyload.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !52 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i.i.i, i64 %.sroa.22.0.copyload.i.i.i.i) ; 2 uses
  %i.d = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.d, label %.thread.i.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %.sroa.0.0.copyload.i.i.i.i = load ptr, ptr %0, align 8, !tbaa !46
  %.sroa.01.0.copyload.i.i.i.i = load ptr, ptr %.022, align 8, !tbaa !46 ; 2 uses
  %i.e = tail call i32 @memcmp(ptr noundef %.sroa.01.0.copyload.i.i.i.i, ptr noundef %.sroa.0.0.copyload.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #18
  %.fr.i.i.i.i.i.i = freeze i32 %i.e              ; 2 uses
  %.not.not.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit

.thread.i.i.i.i.i.i:                              ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.f = icmp ult i64 %.sroa.22.0.copyload.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i
  br i1 %i.f, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.thread17, label %.thread.i.i.i.i.i.i._ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.thread_crit_edge

.thread.i.i.i.i.i.i._ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.thread_crit_edge: ; preds = %.thread.i.i.i.i.i.i
  %.sroa.0.0.copyload.i.pre = load ptr, ptr %.022, align 8
  br label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i
  %i.g = icmp slt i32 %.fr.i.i.i.i.i.i, 0
  br i1 %i.g, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.thread17, label %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.thread

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.thread17: ; preds = %.thread.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %.022, i64 16, i1 false)
  %.sroa.4.0..0.sroa_idx = getelementptr inbounds nuw i8, ptr %.pn21, i64 40
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..0.sroa_idx, align 8
  %i.h = ptrtoint ptr %.022 to i64
  %i.i = sub i64 %i.h, %i.b                       ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt13move_backwardIPSt4pairIN4llvm9StringRefEiES4_ET0_T_S6_S5_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.thread17
  %i.k = getelementptr inbounds nuw i8, ptr %.pn21, i64 48
  %i.l = udiv exact i64 %i.i, 24
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.010.i.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i ], [ %i.l, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.069.i.i.i.i.i = phi ptr [ %i.n, %.lr.ph.i.i.i.i.i ], [ %i.k, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.078.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i ], [ %.022, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -24 ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -24 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.n, ptr noundef nonnull align 8 dereferenceable(20) %i.m, i64 16, i1 false), !tbaa.struct !133
  %i.o = getelementptr inbounds i8, ptr %.078.i.i.i.i.i, i64 -8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !29
  %i.q = getelementptr inbounds i8, ptr %.069.i.i.i.i.i, i64 -8
  store i32 %i.p, ptr %i.q, align 8, !tbaa !134
  %i.r = add nsw i64 %.010.i.i.i.i.i, -1
  %i.s = icmp samesign ugt i64 %.010.i.i.i.i.i, 1
  br i1 %i.s, label %.lr.ph.i.i.i.i.i, label %_ZSt13move_backwardIPSt4pairIN4llvm9StringRefEiES4_ET0_T_S6_S5_.exit, !llvm.loop !185

_ZSt13move_backwardIPSt4pairIN4llvm9StringRefEiES4_ET0_T_S6_S5_.exit: ; preds = %.lr.ph.i.i.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.thread17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false), !tbaa.struct !133
  store i32 %.sroa.4.0.copyload, ptr %i.c, align 8, !tbaa !134
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  br label %bb.d

_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.thread: ; preds = %.thread.i.i.i.i.i.i._ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.thread_crit_edge, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit
  %.sroa.0.0.copyload.i = phi ptr [ %.sroa.0.0.copyload.i.pre, %.thread.i.i.i.i.i.i._ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.thread_crit_edge ], [ %.sroa.01.0.copyload.i.i.i.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit ] ; 2 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.pn21, i64 40
  %.sroa.6.0.copyload.i = load i32, ptr %.sroa.6.0..sroa_idx.i, align 8
  br label %bb.c

bb.c:                                             ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10less_firstEEclISt4pairINS2_9StringRefEiEPS8_EEbRT_T0_.exit.thread13.i, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.thread
  %.09.i = phi ptr [ %.022, %_ZN9__gnu_cxx5__ops15_Iter_comp_iterIN4llvm10less_firstEEclIPSt4pairINS2_9StringRefEiES9_EEbT_T0_.exit.thread ], [ %.0.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10less_firstEEclISt4pairINS2_9StringRefEiEPS8_EEbRT_T0_.exit.thread13.i ] ; 8 uses
  %.0.i = getelementptr inbounds i8, ptr %.09.i, i64 -24 ; 3 uses
  %.sroa.2.0..sroa_idx.i.i.i.i.i = getelementptr inbounds i8, ptr %.09.i, i64 -16
  %.sroa.2.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i, align 8, !tbaa !52 ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %.sroa.2.0.copyload.i.i.i.i.i, i64 %.sroa.22.0.copyload.i.i.i.i) ; 2 uses
  %i.t = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i.i, 0
  br i1 %i.t, label %.thread.i.i.i.i.i.i.i, label %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i

_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i: ; preds = %bb.c
  %.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.0.i, align 8, !tbaa !46
  %i.u = tail call i32 @memcmp(ptr noundef %.sroa.0.0.copyload.i, ptr noundef %.sroa.0.0.copyload.i.i.i.i.i, i64 noundef %.sroa.speculated.i.i.i.i.i.i.i) #18
  %.fr.i.i.i.i.i.i.i = freeze i32 %i.u            ; 2 uses
  %.not.not.i.i.i.i.i.i.i = icmp eq i32 %.fr.i.i.i.i.i.i.i, 0
  br i1 %.not.not.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.i, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10less_firstEEclISt4pairINS2_9StringRefEiEPS8_EEbRT_T0_.exit.i

.thread.i.i.i.i.i.i.i:                            ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i, %bb.c
  %i.v = icmp ult i64 %.sroa.22.0.copyload.i.i.i.i, %.sroa.2.0.copyload.i.i.i.i.i
  br i1 %i.v, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10less_firstEEclISt4pairINS2_9StringRefEiEPS8_EEbRT_T0_.exit.thread13.i, label %_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm9StringRefEiEN9__gnu_cxx5__ops14_Val_comp_iterINS1_10less_firstEEEEvT_T0_.exit

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10less_firstEEclISt4pairINS2_9StringRefEiEPS8_EEbRT_T0_.exit.i: ; preds = %_ZN4llvm9StringRef13compareMemoryEPKcS2_m.exit.i.i.i.i.i.i.i
  %i.w = icmp slt i32 %.fr.i.i.i.i.i.i.i, 0
  br i1 %i.w, label %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10less_firstEEclISt4pairINS2_9StringRefEiEPS8_EEbRT_T0_.exit.thread13.i, label %_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm9StringRefEiEN9__gnu_cxx5__ops14_Val_comp_iterINS1_10less_firstEEEEvT_T0_.exit

_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10less_firstEEclISt4pairINS2_9StringRefEiEPS8_EEbRT_T0_.exit.thread13.i: ; preds = %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10less_firstEEclISt4pairINS2_9StringRefEiEPS8_EEbRT_T0_.exit.i, %.thread.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %.09.i, ptr noundef nonnull align 8 dereferenceable(20) %.0.i, i64 16, i1 false), !tbaa.struct !133
  %i.x = getelementptr inbounds i8, ptr %.09.i, i64 -8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !29
  %i.z = getelementptr inbounds nuw i8, ptr %.09.i, i64 16
  store i32 %i.y, ptr %i.z, align 8, !tbaa !134
  br label %bb.c, !llvm.loop !136

_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm9StringRefEiEN9__gnu_cxx5__ops14_Val_comp_iterINS1_10less_firstEEEEvT_T0_.exit: ; preds = %.thread.i.i.i.i.i.i.i, %_ZN9__gnu_cxx5__ops14_Val_comp_iterIN4llvm10less_firstEEclISt4pairINS2_9StringRefEiEPS8_EEbRT_T0_.exit.i
  store ptr %.sroa.0.0.copyload.i, ptr %.09.i, align 8, !tbaa !46
  %.sroa.5.0..09.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  store i64 %.sroa.22.0.copyload.i.i.i.i, ptr %.sroa.5.0..09.sroa_idx.i, align 8, !tbaa !52
  %i.aa = getelementptr inbounds nuw i8, ptr %.09.i, i64 16
  store i32 %.sroa.6.0.copyload.i, ptr %i.aa, align 8, !tbaa !134
  br label %bb.d

bb.d:                                             ; preds = %_ZSt13move_backwardIPSt4pairIN4llvm9StringRefEiES4_ET0_T_S6_S5_.exit, %_ZSt25__unguarded_linear_insertIPSt4pairIN4llvm9StringRefEiEN9__gnu_cxx5__ops14_Val_comp_iterINS1_10less_firstEEEEvT_T0_.exit
  %.0 = getelementptr inbounds nuw i8, ptr %.022, i64 24 ; 2 uses
  %.not = icmp eq ptr %.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !186

.loopexit:                                        ; preds = %bb.d, %.preheader, %bb.a
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEm(ptr noundef nonnull align 8 dereferenceable(48), i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind willreturn memory(read) }
attributes #19 = { nounwind willreturn memory(none) }
attributes #20 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !11, i64 32}
!9 = !{!"_ZTSN4llvm11raw_ostreamE", !10, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !13, i64 40, !14, i64 44}
!10 = !{!"_ZTSN4llvm11raw_ostream11OStreamKindE", !6, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"bool", !6, i64 0}
!14 = !{!"_ZTSN4llvm11raw_ostream10BufferKindE", !6, i64 0}
!15 = !{!9, !11, i64 24}
!16 = !{!6, !6, i64 0}
!17 = !{!18, !19, i64 0}
!18 = !{!"_ZTSN4llvm8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EEEE", !19, i64 0, !20, i64 8, !5, i64 16, !5, i64 20}
!19 = !{!"p1 _ZTSN4llvm6detail12DenseSetPairINS_3orc15SymbolStringPtrEEE", !12, i64 0}
!20 = !{!"p1 int", !12, i64 0}
!21 = !{!22, !24}
!22 = distinct !{!22, !23, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E5beginEv: argument 0"}
!23 = distinct !{!23, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS4_12DenseSetPairIS3_EEEES3_S5_S7_S9_E5beginEv"}
!24 = distinct !{!24, !25, !"_ZNK4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5beginEv: argument 0"}
!25 = distinct !{!25, !"_ZNK4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEE5beginEv"}
!26 = !{!18, !20, i64 8}
!27 = !{!18, !5, i64 20}
!28 = !{!18, !5, i64 16}
!29 = !{!5, !5, i64 0}
!30 = !{!31, !22, !24}
!31 = distinct !{!31, !32, !"_ZN4llvm16DenseMapIteratorINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EELb1EE9makeBeginEPKS8_PKjjbRKNS_14DebugEpochBaseE: argument 0"}
!32 = distinct !{!32, !"_ZN4llvm16DenseMapIteratorINS_3orc15SymbolStringPtrENS_6detail13DenseSetEmptyENS_12DenseMapInfoIS2_vEENS3_12DenseSetPairIS2_EELb1EE9makeBeginEPKS8_PKjjbRKNS_14DebugEpochBaseE"}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 _ZTSN4llvm3orc15SymbolStringPtrE", !12, i64 0}
!37 = distinct !{!37, !38}
!38 = !{!"llvm.loop.peeled.count", i32 1}
!39 = distinct !{!39, !38}
!40 = !{!41, !42, i64 1}
!41 = !{!"_ZTSN4llvm14JITSymbolFlagsE", !6, i64 0, !42, i64 1}
!42 = !{!"_ZTSN4llvm14JITSymbolFlags9FlagNamesE", !6, i64 0}
!43 = !{!44, !45, i64 0}
!44 = !{!"_ZTSN4llvm3orc12ExecutorAddrE", !45, i64 0}
!45 = !{!"long", !6, i64 0}
!46 = !{!11, !11, i64 0}
!47 = !{!48, !50}
!48 = distinct !{!48, !49, !"_ZN4llvm7formatvIJmEEEDabPKcDpOT_: argument 0"}
!49 = distinct !{!49, !"_ZN4llvm7formatvIJmEEEDabPKcDpOT_"}
!50 = distinct !{!50, !51, !"_ZN4llvm7formatvIJmEEEDaPKcDpOT_: argument 0"}
!51 = distinct !{!51, !"_ZN4llvm7formatvIJmEEEDaPKcDpOT_"}
!52 = !{!45, !45, i64 0}
!53 = !{!54, !54, i64 0}
!54 = !{!"p1 _ZTSN4llvm12function_refIFvRNS_11raw_ostreamENS_9StringRefEEEE", !12, i64 0}
!55 = !{!56, !13, i64 32}
!56 = !{!"_ZTSN4llvm19formatv_object_baseE", !57, i64 0, !58, i64 16, !13, i64 32}
!57 = !{!"_ZTSN4llvm9StringRefE", !11, i64 0, !45, i64 8}
!58 = !{!"_ZTSN4llvm8ArrayRefINS_12function_refIFvRNS_11raw_ostreamENS_9StringRefEEEEEE", !54, i64 0, !45, i64 8}
!59 = !{!60, !62}
!60 = distinct !{!60, !61, !"_ZN4llvm7formatvIJmEEEDabPKcDpOT_: argument 0"}
!61 = distinct !{!61, !"_ZN4llvm7formatvIJmEEEDabPKcDpOT_"}
!62 = distinct !{!62, !63, !"_ZN4llvm7formatvIJmEEEDaPKcDpOT_: argument 0"}
!63 = distinct !{!63, !"_ZN4llvm7formatvIJmEEEDaPKcDpOT_"}
!64 = !{!65, !66, i64 0}
!65 = !{!"_ZTSSt4pairIPN4llvm3orc8JITDylibENS0_8DenseSetINS1_15SymbolStringPtrENS0_12DenseMapInfoIS5_vEEEEE", !66, i64 0, !67, i64 8}
!66 = !{!"p1 _ZTSN4llvm3orc8JITDylibE", !12, i64 0}
!67 = !{!"_ZTSN4llvm8DenseSetINS_3orc15SymbolStringPtrENS_12DenseMapInfoIS2_vEEEE", !68, i64 0}
!68 = !{!"_ZTSN4llvm6detail12DenseSetImplINS_3orc15SymbolStringPtrENS_8DenseMapIS3_NS0_13DenseSetEmptyENS_12DenseMapInfoIS3_vEENS0_12DenseSetPairIS3_EEEEEE", !18, i64 0}
!69 = !{!70, !11, i64 0}
!70 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !71, i64 0, !45, i64 8, !6, i64 16}
!71 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!72 = !{!70, !45, i64 8}
!73 = !{!74, !75, i64 0}
!74 = !{!"_ZTSN4llvm8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS1_15SymbolStringPtrENS_12DenseMapInfoIS5_vEEEENS6_IS3_vEENS_6detail12DenseMapPairIS3_S8_EEEE", !75, i64 0, !20, i64 8, !5, i64 16, !5, i64 20}
!75 = !{!"p1 _ZTSN4llvm6detail12DenseMapPairIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEEEE", !12, i64 0}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E5beginEv: argument 0"}
!78 = distinct !{!78, !"_ZNK4llvm12DenseMapBaseINS_8DenseMapIPNS_3orc8JITDylibENS_8DenseSetINS2_15SymbolStringPtrENS_12DenseMapInfoIS6_vEEEENS7_IS4_vEENS_6detail12DenseMapPairIS4_S9_EEEES4_S9_SA_SD_E5beginEv"}
!79 = !{!74, !20, i64 8}
!80 = !{!74, !5, i64 20}
end_hunk_1
