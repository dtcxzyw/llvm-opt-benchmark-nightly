Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/harfbuzz/original/hb-subset-table-color?download=true
inline.NumInlined: 12641
inline.NumDeleted: 5098
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZNK2OT10PaintSolid6subsetEP19hb_subset_context_tRKNS_21ItemVarStoreInstancerEj:bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 3
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !561 ; 2 uses
  %.not.i18 = icmp eq ptr %i.ac, null
  br i1 %.not.i18, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = tail call noundef i32 @_ZNK2OT16DeltaSetIndexMap3mapEj(ptr noundef nonnull align 1 dereferenceable(7) %i.ac, i32 noundef %3)
  %.pre = load ptr, ptr %2, align 8, !tbaa !560
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ae = phi ptr [ %.pre, %bb.f ], [ %i.n, %bb.e ] ; 5 uses
  %.07.i = phi i32 [ %i.ad, %bb.f ], [ %3, %bb.e ] ; 2 uses
  %.sroa.0.0.copyload.i = load ptr, ptr %i.aa, align 8
  %.sroa.2.0.copyload.i = load i64, ptr %i.o, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !562
  %.sroa.2.8.extract.trunc.i.i = trunc i64 %.sroa.2.0.copyload.i to i32
  %i.ah = lshr i32 %.07.i, 16                     ; 2 uses
  %i.ai = and i32 %.07.i, 65535
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 6
  %i.ak = load i16, ptr %i.aj, align 1, !tbaa !228
  %i.al = tail call noundef i16 @llvm.bswap.i16(i16 %i.ak)
  %i.am = zext i16 %i.al to i32
  %.not.i.i.i.i = icmp samesign ult i32 %i.ah, %i.am
  br i1 %.not.i.i.i.i, label %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i.i.i, label %_ZNK2OT21ItemVarStoreInstancerclEjt.exit, !prof !191

_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i.i.i: ; preds = %bb.g
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !226
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ao = zext nneg i32 %i.ah to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 1, !tbaa !231 ; 2 uses
  %i.ar = icmp eq i32 %i.aq, 0
  %i.as = tail call i32 @llvm.bswap.i32(i32 %i.aq)
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.at
  %.0.i.i.i.i.i.i = select i1 %i.ar, ptr @_hb_NullPool, ptr %i.au, !prof !92 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i, i64 4
  %i.aw = load i16, ptr %i.av, align 1, !tbaa !228
  %.not.i.i.i.i.i = icmp eq i16 %i.aw, 0
  br i1 %.not.i.i.i.i.i, label %_ZNK2OT21ItemVarStoreInstancerclEjt.exit, label %bb.h

bb.h:                                             ; preds = %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.ay = load i32, ptr %i.ax, align 1, !tbaa !231 ; 2 uses
  %i.az = icmp eq i32 %i.ay, 0
  %i.ba = tail call i32 @llvm.bswap.i32(i32 %i.ay)
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.bb
  %.0.i.i10.i.i.i.i = select i1 %i.az, ptr @_hb_NullPool, ptr %i.bc, !prof !92
  %i.bd = tail call noundef float @_ZNK2OT7VarData10_get_deltaEjPKijRKNS_13VarRegionListEPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 1 dereferenceable(8) %.0.i.i.i.i.i.i, i32 noundef %i.ai, ptr noundef %.sroa.0.0.copyload.i, i32 noundef %.sroa.2.8.extract.trunc.i.i, ptr noundef nonnull align 1 dereferenceable(10) %.0.i.i10.i.i.i.i, ptr noundef %i.ag)
  br label %_ZNK2OT21ItemVarStoreInstancerclEjt.exit

_ZNK2OT21ItemVarStoreInstancerclEjt.exit:         ; preds = %bb.g, %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i.i.i, %bb.h
  %.0.i = phi float [ 0.000000e+00, %_ZNK2OT7ArrayOfINS_8OffsetToINS_7VarDataENS_7NumTypeILb1EjLj4EEEvLb1EEENS3_ILb1EtLj2EEEEixEi.exit.i.i.i.i ], [ 0.000000e+00, %bb.g ], [ %i.bd, %bb.h ]
  %i.be = load i16, ptr %i.z, align 1, !tbaa !228
  %i.bf = tail call noundef i16 @llvm.bswap.i16(i16 %i.be)
  %i.bg = sitofp i16 %i.bf to float
  %i.bh = fadd float %.0.i, %i.bg
  %i.bi = fmul float %i.bh, f0x38800000
  %i.bj = fmul float %i.bi, 1.638400e+04
  %i.bk = fadd float %i.bj, 5.000000e-01
  %i.bl = tail call noundef float @llvm.floor.f32(float %i.bk)
  %i.bm = fptosi float %i.bl to i16
  %i.bn = tail call i16 @llvm.bswap.i16(i16 %i.bm)
  store i16 %i.bn, ptr %i.y, align 1, !tbaa !256
  br label %bb.i

bb.i:                                             ; preds = %_ZNK2OT21ItemVarStoreInstancerclEjt.exit, %bb.d, %bb.c
  %i.bo = load i8, ptr %0, align 1, !tbaa !550
  %i.bp = icmp eq i8 %i.bo, 3
  br i1 %i.bp, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !188
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 92
  %i.bt = load i8, ptr %i.bs, align 4, !tbaa !573, !range !192, !noundef !208
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i8 2, ptr %i.h, align 1, !tbaa !256
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.bv = load ptr, ptr %i.a, align 8, !tbaa !189
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 1
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !188 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.ca = load i16, ptr %i.bz, align 1, !tbaa !228
  %i.cb = tail call noundef i16 @llvm.bswap.i16(i16 %i.ca)
  %i.cc = zext i16 %i.cb to i32                   ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.by, i64 2072
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !269 ; 4 uses
  %.not.i19 = icmp eq ptr %i.ce, null
  br i1 %.not.i19, label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cf = mul i32 %i.cc, 506952113
  %i.cg = and i32 %i.cf, 1073741823
  %i.ch = getelementptr inbounds nuw i8, ptr %i.by, i64 2064
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !270
  %i.cj = urem i32 %i.cg, %i.ci                   ; 2 uses
  %i.ck = zext nneg i32 %i.cj to i64              ; 2 uses
  %i.cl = getelementptr inbounds nuw [12 x i8], ptr %i.ce, i64 %i.ck ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  %i.cn = load i32, ptr %i.cm, align 4            ; 2 uses
  %i.co = and i32 %i.cn, 2
  %.not15.i.i.i = icmp eq i32 %i.co, 0
  br i1 %.not15.i.i.i, label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.m
  %i.cp = getelementptr inbounds nuw i8, ptr %i.by, i64 2060
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = load i32, ptr %i.cl, align 4, !tbaa !197
  %i.cs = icmp eq i32 %i.cr, %i.cc
  br i1 %i.cs, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.ct = load i32, ptr %i.dd, align 4, !tbaa !197
  %i.cu = icmp eq i32 %i.ct, %i.cc
  br i1 %i.cu, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !5

._crit_edge.i.i:                                  ; preds = %bb.n, %.lr.ph.i.i.i
  %.lcssa10.i.i = phi i32 [ %i.cn, %.lr.ph.i.i.i ], [ %i.df, %bb.n ]
  %i.cv = phi i64 [ %i.ck, %.lr.ph.i.i.i ], [ %i.dc, %bb.n ]
  %i.cw = getelementptr inbounds nuw [12 x i8], ptr %i.ce, i64 %i.cv
  %i.cx = trunc i32 %.lcssa10.i.i to i1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 8
  %spec.select.i.i = select i1 %i.cx, ptr %i.cy, ptr @minus_1
  br label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i, %bb.n
  %.01016.i13.i.i = phi i32 [ %i.db, %bb.n ], [ %i.cj, %.lr.ph.i.i.i ]
  %.017.i12.i.i = phi i32 [ %i.cz, %bb.n ], [ 0, %.lr.ph.i.i.i ]
  %i.cz = add i32 %.017.i12.i.i, 1                ; 2 uses
  %i.da = add i32 %i.cz, %.01016.i13.i.i
  %i.db = and i32 %i.da, %i.cq                    ; 2 uses
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %i.dd = getelementptr inbounds nuw [12 x i8], ptr %i.ce, i64 %i.dc ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.df = load i32, ptr %i.de, align 4            ; 2 uses
  %i.dg = and i32 %i.df, 2
  %.not.i.i.i20 = icmp eq i32 %i.dg, 0
  br i1 %.not.i.i.i20, label %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit, label %bb.n, !llvm.loop !5

_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit:          ; preds = %.lr.ph.i.i, %bb.l, %bb.m, %._crit_edge.i.i
  %.0.i21 = phi ptr [ @minus_1, %bb.l ], [ %spec.select.i.i, %._crit_edge.i.i ], [ @minus_1, %bb.m ], [ @minus_1, %.lr.ph.i.i ] ; 2 uses
  %i.dh = load i32, ptr %.0.i21, align 4, !tbaa !197 ; 2 uses
  %i.di = trunc i32 %i.dh to i16
  %i.dj = tail call i16 @llvm.bswap.i16(i16 %i.di)
  store i16 %i.dj, ptr %i.bw, align 1, !tbaa !256
  %i.dk = and i32 %i.dh, 65535
  %i.dl = load i32, ptr %.0.i21, align 4, !tbaa !197
  %.not.i.i22 = icmp eq i32 %i.dl, %i.dk
  br i1 %.not.i.i22, label %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERKjEEbRT_OT0_20hb_serialize_error_t.exit, label %bb.o

bb.o:                                             ; preds = %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bv, i64 44 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !171
  %i.do = or i32 %i.dn, 8
  store i32 %i.do, ptr %i.dm, align 4, !tbaa !171
  br label %_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERKjEEbRT_OT0_20hb_serialize_error_t.exit

_ZN22hb_serialize_context_t12check_assignIN2OT7NumTypeILb1EtLj2EEERKjEEbRT_OT0_20hb_serialize_error_t.exit: ; preds = %bb.o, %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit, %bb.a, %.critedge.i.i.i, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT10PaintSolidEEEPT_mb.exit.i.i
  %.0 = phi i1 [ false, %bb.a ], [ false, %_ZN22hb_serialize_context_t13allocate_sizeIN2OT10PaintSolidEEEPT_mb.exit.i.i ], [ false, %.critedge.i.i.i ], [ true, %_ZNK12hb_hashmap_tIjjLb1EE3getERKj.exit ], [ false, %bb.o ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2OT16DeltaSetIndexMap3mapEj(ptr noundef nonnull align 1 dereferenceable(7) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !550
  switch i8 %i.a, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE3mapEj.exit [
    i8 0, label %bb.b
    i8 1, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !226
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.c = load i16, ptr %i.b, align 1, !tbaa !228  ; 2 uses
  %.not.i = icmp eq i16 %i.c, 0
  br i1 %.not.i, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE3mapEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !550   ; 2 uses
  %i.f = lshr i8 %i.e, 4
  %i.g = and i8 %i.f, 3                           ; 2 uses
  %narrow.i.i = add nuw nsw i8 %i.g, 1            ; 3 uses
  %i.h = zext nneg i8 %narrow.i.i to i32
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = tail call noundef i16 @llvm.bswap.i16(i16 %i.c)
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  %.not.i6 = icmp ult i32 %1, %i.k
  %i.l = add nsw i32 %i.k, -1
  %spec.select.i = select i1 %.not.i6, i32 %1, i32 %i.l
  %i.m = mul nsw i32 %spec.select.i, %i.h
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.n ; 4 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !550
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  %.not18.i = icmp eq i8 %i.g, 0
  br i1 %.not18.i, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE4_mapEj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  %i.s = shl nuw nsw i32 %i.q, 8
  %i.t = load i8, ptr %i.r, align 1, !tbaa !550
  %i.u = zext i8 %i.t to i32
  %i.v = or disjoint i32 %i.s, %i.u               ; 2 uses
  %.not18.i.1 = icmp eq i8 %narrow.i.i, 2
  br i1 %.not18.i.1, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE4_mapEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 2
  %i.x = shl nuw nsw i32 %i.v, 8
  %i.y = load i8, ptr %i.w, align 1, !tbaa !550
  %i.z = zext i8 %i.y to i32
  %i.aa = or disjoint i32 %i.x, %i.z              ; 2 uses
  %.not18.i.2 = icmp eq i8 %narrow.i.i, 3
  br i1 %.not18.i.2, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE4_mapEj.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 3
  %i.ac = shl nuw i32 %i.aa, 8
  %i.ad = load i8, ptr %i.ab, align 1, !tbaa !550
  %i.ae = zext i8 %i.ad to i32
  %i.af = or disjoint i32 %i.ac, %i.ae
  br label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE4_mapEj.exit

_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE4_mapEj.exit: ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  %.lcssa = phi i32 [ %i.q, %bb.c ], [ %i.v, %bb.d ], [ %i.aa, %bb.e ], [ %i.af, %bb.f ] ; 2 uses
  %i.ag = and i8 %i.e, 15
  %narrow.i19.i = add nuw nsw i8 %i.ag, 1
  %i.ah = zext nneg i8 %narrow.i19.i to i32       ; 2 uses
  %i.ai = lshr i32 %.lcssa, %i.ah
  %notmask.i = shl nsw i32 -1, %i.ah
  %i.aj = xor i32 %notmask.i, -1
  %i.ak = and i32 %.lcssa, %i.aj
  %i.al = shl i32 %i.ai, 16
  %i.am = or i32 %i.al, %i.ak
  br label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE3mapEj.exit

bb.g:                                             ; preds = %bb.a
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #20, !srcloc !226
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.ao = load i32, ptr %i.an, align 1, !tbaa !231 ; 2 uses
  %.not.i4 = icmp eq i32 %i.ao, 0
  br i1 %.not.i4, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE3mapEj.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !550 ; 2 uses
  %i.ar = lshr i8 %i.aq, 4
  %i.as = and i8 %i.ar, 3                         ; 2 uses
  %narrow.i.i9 = add nuw nsw i8 %i.as, 1          ; 3 uses
  %i.at = zext nneg i8 %narrow.i.i9 to i32
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.av = tail call noundef i32 @llvm.bswap.i32(i32 %i.ao) ; 2 uses
  %.not.i7 = icmp ult i32 %1, %i.av
  %i.aw = add i32 %i.av, -1
  %spec.select.i8 = select i1 %.not.i7, i32 %1, i32 %i.aw
  %i.ax = mul i32 %spec.select.i8, %i.at
  %i.ay = zext i32 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.ay ; 4 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !550
  %i.bb = zext i8 %i.ba to i32                    ; 2 uses
  %.not18.i13 = icmp eq i8 %i.as, 0
  br i1 %.not18.i13, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EjLj4EEEE4_mapEj.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 1
  %i.bd = shl nuw nsw i32 %i.bb, 8
  %i.be = load i8, ptr %i.bc, align 1, !tbaa !550
  %i.bf = zext i8 %i.be to i32
  %i.bg = or disjoint i32 %i.bd, %i.bf            ; 2 uses
  %.not18.i13.1 = icmp eq i8 %narrow.i.i9, 2
  br i1 %.not18.i13.1, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EjLj4EEEE4_mapEj.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  %i.bi = shl nuw nsw i32 %i.bg, 8
  %i.bj = load i8, ptr %i.bh, align 1, !tbaa !550
  %i.bk = zext i8 %i.bj to i32
  %i.bl = or disjoint i32 %i.bi, %i.bk            ; 2 uses
  %.not18.i13.2 = icmp eq i8 %narrow.i.i9, 3
  br i1 %.not18.i13.2, label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EjLj4EEEE4_mapEj.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bm = getelementptr inbounds nuw i8, ptr %i.az, i64 3
  %i.bn = shl nuw i32 %i.bl, 8
  %i.bo = load i8, ptr %i.bm, align 1, !tbaa !550
  %i.bp = zext i8 %i.bo to i32
  %i.bq = or disjoint i32 %i.bn, %i.bp
  br label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EjLj4EEEE4_mapEj.exit

_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EjLj4EEEE4_mapEj.exit: ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.lcssa22 = phi i32 [ %i.bb, %bb.h ], [ %i.bg, %bb.i ], [ %i.bl, %bb.j ], [ %i.bq, %bb.k ] ; 2 uses
  %i.br = and i8 %i.aq, 15
  %narrow.i19.i14 = add nuw nsw i8 %i.br, 1
  %i.bs = zext nneg i8 %narrow.i19.i14 to i32     ; 2 uses
  %i.bt = lshr i32 %.lcssa22, %i.bs
  %notmask.i15 = shl nsw i32 -1, %i.bs
  %i.bu = xor i32 %notmask.i15, -1
  %i.bv = and i32 %.lcssa22, %i.bu
  %i.bw = shl i32 %i.bt, 16
  %i.bx = or i32 %i.bw, %i.bv
  br label %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE3mapEj.exit

_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE3mapEj.exit: ; preds = %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EjLj4EEEE4_mapEj.exit, %bb.g, %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE4_mapEj.exit, %bb.b, %bb.a
  %.0 = phi i32 [ %1, %bb.b ], [ %1, %bb.a ], [ %i.am, %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EtLj2EEEE4_mapEj.exit ], [ %i.bx, %_ZNK2OT24DeltaSetIndexMapFormat01INS_7NumTypeILb1EjLj4EEEE4_mapEj.exit ], [ %1, %bb.g ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef float @_ZNK2OT7VarData10_get_deltaEjPKijRKNS_13VarRegionListEPNS_17hb_scalar_cache_tE(ptr noundef nonnull align 1 dereferenceable(8) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 1 dereferenceable(10) %4, ptr noundef %5) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 1, !tbaa !228
  %i.b = tail call noundef i16 @llvm.bswap.i16(i16 %i.a)
  %i.c = zext i16 %i.b to i32
  %.not = icmp ult i32 %1, %i.c
  br i1 %.not, label %bb.b, label %.loopexit, !prof !191

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.e = load i16, ptr %i.d, align 1, !tbaa !228  ; 3 uses
  %.mask.i = and i16 %i.e, 128
  %i.f = icmp ne i16 %.mask.i, 0                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.h = load i16, ptr %i.g, align 1, !tbaa !228
  %i.i = tail call noundef i16 @llvm.bswap.i16(i16 %i.h) ; 4 uses
  %i.j = zext i16 %i.i to i32                     ; 3 uses
  %i.k = and i16 %i.e, -129                       ; 2 uses
  %i.l = tail call i16 @llvm.bswap.i16(i16 %i.k)  ; 3 uses
  %i.m = zext nneg i16 %i.l to i32                ; 2 uses
  %i.n = select i1 %i.f, i32 %i.j, i32 %i.m       ; 5 uses
  %i.o = zext i16 %i.i to i64
  %i.p = shl nuw nsw i64 %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 2
  %i.s = zext nneg i32 %1 to i64
  %i.t = add nuw nsw i32 %i.m, %i.j
  %.mask.i.i = lshr i16 %i.e, 7
  %.mask.i.lobit.i = and i16 %.mask.i.i, 1
  %i.u = zext nneg i16 %.mask.i.lobit.i to i32
  %i.v = shl nuw nsw i32 %i.t, %i.u
  %i.w = zext nneg i32 %i.v to i64
  %i.x = mul nuw nsw i64 %i.w, %i.s
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.x ; 3 uses
  %i.z = icmp ne i16 %i.k, 0
  %i.aa = and i1 %i.f, %i.z
  br i1 %i.aa, label %.lr.ph, label %.preheader231

.lr.ph:                                           ; preds = %bb.b
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 6 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 2 ; 2 uses
  %.not14.i71 = icmp eq ptr %5, null
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.af = zext i32 %3 to i64                      ; 2 uses
  br i1 %.not14.i71, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.ag = zext nneg i16 %i.l to i64
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ah = load i16, ptr %i.ac, align 1, !tbaa !228
  %i.ai = tail call noundef i16 @llvm.bswap.i16(i16 %i.ah)
  %i.aj = zext nneg i16 %i.l to i64
  br label %bb.c

bb.c:                                             ; preds = %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.thread.us, %.lr.ph.split.us
  %indvars.iv269 = phi i64 [ %indvars.iv.next270, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.thread.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  %.053234.us = phi ptr [ %i.cf, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.thread.us ], [ %i.y, %.lr.ph.split.us ] ; 2 uses
  %.055232.us = phi float [ %.156.us, %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.thread.us ], [ 0.000000e+00, %.lr.ph.split.us ] ; 6 uses
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv269
  %i.al = load i16, ptr %i.ak, align 1, !tbaa !228
  %i.am = tail call noundef i16 @llvm.bswap.i16(i16 %i.al) ; 2 uses
  %.not.i69.us = icmp ult i16 %i.am, %i.ai
  br i1 %.not.i69.us, label %.critedge.i73.us, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.thread.us, !prof !191

.critedge.i73.us:                                 ; preds = %bb.c
  %i.an = zext i16 %i.am to i64
  %i.ao = load i16, ptr %4, align 1, !tbaa !228   ; 2 uses
  %i.ap = tail call noundef i16 @llvm.bswap.i16(i16 %i.ao)
  %i.aq = zext i16 %i.ap to i64                   ; 2 uses
  %i.ar = mul nuw nsw i64 %i.aq, %i.an
  %i.as = getelementptr inbounds nuw [6 x i8], ptr %i.ae, i64 %i.ar
  %.not.i89.us = icmp eq i16 %i.ao, 0
  br i1 %.not.i89.us, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.thread201.us, label %.lr.ph.i92.us

.lr.ph.i92.us:                                    ; preds = %.critedge.i73.us, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i104.us
  %indvars.iv.i93.us = phi i64 [ %indvars.iv.next.i106.us, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i104.us ], [ 0, %.critedge.i73.us ] ; 4 uses
  %.01726.i94.us = phi float [ %.121.i105.us, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i104.us ], [ 1.000000e+00, %.critedge.i73.us ] ; 4 uses
  %i.at = icmp samesign ult i64 %indvars.iv.i93.us, %i.af
  br i1 %i.at, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i92.us
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i93.us
  %i.av = load i32, ptr %i.au, align 4, !tbaa !197
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i92.us
  %i.aw = phi i32 [ %i.av, %bb.d ], [ 0, %.lr.ph.i92.us ] ; 7 uses
  %i.ax = getelementptr inbounds nuw [6 x i8], ptr %i.as, i64 %indvars.iv.i93.us ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 2
  %i.az = load i16, ptr %i.ay, align 1, !tbaa !228 ; 2 uses
  %i.ba = tail call noundef i16 @llvm.bswap.i16(i16 %i.az) ; 3 uses
  %i.bb = sext i16 %i.ba to i32                   ; 4 uses
  %i.bc = icmp eq i16 %i.az, 0
  %i.bd = icmp eq i32 %i.aw, %i.bb
  %or.cond.i.i95.us = or i1 %i.bc, %i.bd
  br i1 %or.cond.i.i95.us, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i104.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = icmp eq i32 %i.aw, 0
  br i1 %i.be, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.thread.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bf = load i16, ptr %i.ax, align 1, !tbaa !228
  %i.bg = tail call noundef i16 @llvm.bswap.i16(i16 %i.bf) ; 3 uses
  %i.bh = sext i16 %i.bg to i32                   ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.bj = load i16, ptr %i.bi, align 1, !tbaa !228
  %i.bk = tail call noundef i16 @llvm.bswap.i16(i16 %i.bj) ; 3 uses
  %i.bl = sext i16 %i.bk to i32                   ; 3 uses
  %i.bm = icmp sgt i16 %i.bg, %i.ba
  %i.bn = icmp sgt i16 %i.ba, %i.bk
  %i.bo = or i1 %i.bm, %i.bn
  br i1 %i.bo, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i104.us, label %bb.h, !prof !92

bb.h:                                             ; preds = %bb.g
  %i.bp = icmp slt i16 %i.bg, 0
  %i.bq = icmp sgt i16 %i.bk, 0
  %i.br = and i1 %i.bp, %i.bq
  br i1 %i.br, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i104.us, label %bb.i, !prof !92

bb.i:                                             ; preds = %bb.h
  %.not.i.i96.us = icmp sgt i32 %i.aw, %i.bh
  %.not29.i.i97.us = icmp slt i32 %i.aw, %i.bl
  %or.cond30.i.i98.us = and i1 %.not.i.i96.us, %.not29.i.i97.us
  br i1 %or.cond30.i.i98.us, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.i100.us, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.thread.us

_ZNK2OT13VarRegionAxis8evaluateEi.exit.i100.us:   ; preds = %bb.i
  %i.bs = icmp slt i32 %i.aw, %i.bb               ; 2 uses
  %i.bt = sub nsw i32 %i.aw, %i.bh
  %i.bu = sub nsw i32 %i.bb, %i.bh
  %i.bv = sub nsw i32 %i.bl, %i.aw
  %i.bw = sub nsw i32 %i.bl, %i.bb
  %.sink40.i101.us = select i1 %i.bs, i32 %i.bu, i32 %i.bw
  %.sink.in.i102.us = select i1 %i.bs, i32 %i.bt, i32 %i.bv
  %.sink.i103.us = sitofp i32 %.sink.in.i102.us to float
  %i.bx = sitofp i32 %.sink40.i101.us to float
  %i.by = fdiv float %.sink.i103.us, %i.bx        ; 2 uses
  %i.bz = fcmp une float %i.by, 0.000000e+00
  %i.ca = fmul float %.01726.i94.us, %i.by
  br i1 %i.bz, label %_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i104.us, label %_ZNK2OT13VarRegionList8evaluateEjPKijPNS_17hb_scalar_cache_tE.exit74.thread.us

_ZNK2OT13VarRegionAxis8evaluateEi.exit.thread.i104.us: ; preds = %_ZNK2OT13VarRegionAxis8evaluateEi.exit.i100.us, %bb.h, %bb.g, %bb.e
  %.121.i105.us = phi float [ %i.ca, %_ZNK2OT13VarRegionAxis8evaluateEi.exit.i100.us ], [ %.01726.i94.us, %bb.e ], [ %.01726.i94.us, %bb.g ], [ %.01726.i94.us, %bb.h ] ; 3 uses
  %indvars.iv.next.i106.us = add nuw nsw i64 %indvars.iv.i93.us, 1 ; 2 uses
end_hunk_0
