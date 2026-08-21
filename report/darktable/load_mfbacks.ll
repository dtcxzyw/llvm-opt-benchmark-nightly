Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/load_mfbacks?download=true
inline.NumInlined: 98
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN6LibRaw18phase_one_load_rawEv:bb.a
  %i.t = load i16, ptr %i.s, align 8, !tbaa !12
  %i.u = zext i16 %i.t to i64
  %i.v = shl nuw nsw i64 %i.u, 1
  %i.w = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.v, i64 noundef 2)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 193832 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !165
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 2 uses
  %i.z = load i16, ptr %i.y, align 2, !tbaa !75
  %i.aa = zext i16 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 1
  %i.ac = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.ab, i64 noundef 2)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 193840 ; 2 uses
  store ptr %i.ac, ptr %i.ad, align 8, !tbaa !166
  %i.ae = load i32, ptr %i.o, align 8, !tbaa !163 ; 2 uses
  %.not19 = icmp eq i32 %i.ae, 0
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !110 ; 2 uses
  %i.ag = sext i32 %i.ae to i64
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !112
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = tail call noundef i32 %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.af, i64 noundef %i.ag, i32 noundef 0), !call_target !114 ; 0 uses
  %i.al = load ptr, ptr %i.x, align 8, !tbaa !165
  %i.am = load i16, ptr %i.s, align 8, !tbaa !12
  %i.an = zext i16 %i.am to i32
  %i.ao = shl nuw nsw i32 %i.an, 1
  tail call void @_ZN6LibRaw11read_shortsEPtj(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.al, i32 noundef %i.ao)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 153504
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !164 ; 2 uses
  %.not20 = icmp eq i32 %i.aq, 0
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !110 ; 2 uses
  %i.as = sext i32 %i.aq to i64
  %i.at = load ptr, ptr %i.ar, align 8, !tbaa !112
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = tail call noundef i32 %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.ar, i64 noundef %i.as, i32 noundef 0), !call_target !114 ; 0 uses
  %i.ax = load ptr, ptr %i.ad, align 8, !tbaa !166
  %i.ay = load i16, ptr %i.y, align 2, !tbaa !75
  %i.az = zext i16 %i.ay to i32
  %i.ba = shl nuw nsw i32 %i.az, 1
  tail call void @_ZN6LibRaw11read_shortsEPtj(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.ax, i32 noundef %i.ba)
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.b
  %i.bb = load ptr, ptr %i.a, align 8, !tbaa !110 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 381760
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !167
  %i.be = load ptr, ptr %i.bb, align 8, !tbaa !112
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call noundef i32 %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.bb, i64 noundef %i.bd, i32 noundef 0), !call_target !114 ; 0 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 193784 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !76
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 3 uses
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !75
  %i.bn = zext i16 %i.bm to i32
  %i.bo = load i16, ptr %i.bk, align 8, !tbaa !12
  %i.bp = zext i16 %i.bo to i32
  %i.bq = mul nuw nsw i32 %i.bp, %i.bn
  tail call void @_ZN6LibRaw11read_shortsEPtj(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.bj, i32 noundef %i.bq)
  %i.br = load i32, ptr %i.c, align 4, !tbaa !162
  %.not21 = icmp eq i32 %i.br, 0
  br i1 %.not21, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.g
  %i.bs = load i16, ptr %i.bl, align 2, !tbaa !75
  %i.bt = zext i16 %i.bs to i32
  %i.bu = load i16, ptr %i.bk, align 8, !tbaa !12
  %i.bv = zext i16 %i.bu to i32
  %i.bw = mul nuw nsw i32 %i.bv, %i.bt
  %.not23 = icmp eq i32 %i.bw, 0
  br i1 %.not23, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bx = load ptr, ptr %i.bi, align 8, !tbaa !76
  %i.by = select i1 %i.n, i32 21845, i32 4948     ; 2 uses
  %i.bz = xor i32 %i.by, -1
  %i.ca = insertelement <2 x i32> poison, i32 %i.by, i64 0
  %i.cb = shufflevector <2 x i32> %i.ca, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.cc = insertelement <2 x i16> poison, i16 %i.k, i64 0
  %i.cd = insertelement <2 x i16> %i.cc, i16 %i.l, i64 1
  %i.ce = insertelement <2 x i32> poison, i32 %i.bz, i64 0
  %i.cf = shufflevector <2 x i32> %i.ce, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr %i.bx, i64 %indvars.iv ; 2 uses
  %i.ch = load <2 x i16>, ptr %i.cg, align 2, !tbaa !77
  %i.ci = xor <2 x i16> %i.ch, %i.cd
  %i.cj = zext <2 x i16> %i.ci to <2 x i32>       ; 2 uses
  %i.ck = and <2 x i32> %i.cb, %i.cj
  %i.cl = shufflevector <2 x i32> %i.cj, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.cm = and <2 x i32> %i.cl, %i.cf
  %i.cn = or <2 x i32> %i.ck, %i.cm
  %i.co = trunc nuw <2 x i32> %i.cn to <2 x i16>
  store <2 x i16> %i.co, ptr %i.cg, align 2, !tbaa !77
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.cp = load i16, ptr %i.bl, align 2, !tbaa !75
  %i.cq = zext i16 %i.cp to i64
  %i.cr = load i16, ptr %i.bk, align 8, !tbaa !12
  %i.cs = zext i16 %i.cr to i64
  %i.ct = mul nuw nsw i64 %i.cs, %i.cq
  %i.cu = icmp samesign ult i64 %indvars.iv.next, %i.ct
  br i1 %i.cu, label %bb.h, label %.loopexit, !llvm.loop !168

.loopexit:                                        ; preds = %bb.h, %.preheader, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN6LibRaw11ph1_bithuffEiPt(ptr noundef nonnull align 8 dereferenceable(768512) %0, i32 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #6 align 2 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 -1, label %bb.b
    i32 0, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 381584
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !169  ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 0, ptr %i.c, align 8, !tbaa !170
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.d, align 8, !tbaa !177
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 381584 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !169  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !170  ; 2 uses
  %i.i = icmp slt i32 %i.h, %1
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !177  ; 2 uses
  br i1 %i.i, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.l = shl i64 %i.k, 32
  %i.m = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.n = zext i32 %i.m to i64
  %i.o = or disjoint i64 %i.l, %i.n               ; 2 uses
  %i.p = load ptr, ptr %i.e, align 8, !tbaa !169  ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.o, ptr %i.q, align 8, !tbaa !177
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !170
  %i.t = add nsw i32 %i.s, 32                     ; 2 uses
  store i32 %i.t, ptr %i.r, align 8, !tbaa !170
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.d
  %i.u = phi i32 [ %i.t, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  %i.v = phi i64 [ %i.o, %bb.d ], [ %i.k, %bb.c ]
  %i.w = phi ptr [ %i.p, %bb.d ], [ %i.f, %bb.c ]
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24 ; 2 uses
  %i.y = sub nsw i32 64, %i.u
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = shl i64 %i.v, %i.z
  %i.ab = sub nsw i32 64, %1
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = lshr i64 %i.aa, %i.ac                   ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.ae = and i64 %i.ad, 4294967295
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !77 ; 2 uses
  %i.ah = lshr i16 %i.ag, 8
  %i.ai = zext nneg i16 %i.ah to i32
  %i.aj = sub nsw i32 %i.u, %i.ai
  store i32 %i.aj, ptr %i.x, align 8, !tbaa !170
  %i.ak = and i16 %i.ag, 255
  %i.al = zext nneg i16 %i.ak to i32
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge
  %i.am = trunc i64 %i.ad to i32
  %i.an = sub nsw i32 %i.u, %1
  store i32 %i.an, ptr %i.x, align 8, !tbaa !170
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %i.am, %bb.f ], [ %i.al, %bb.e ], [ %1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw20phase_one_load_raw_cEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca [2 x i32], align 4                  ; 7 uses
  %2 = alloca [2 x i32], align 4                  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5600 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 153476 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !162
  %i.d = icmp eq i32 %i.c, 6
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 4) #21 ; 2 uses
  store i32 5, ptr %i.e, align 16, !tbaa !154
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTI17LibRaw_exceptions, ptr null) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 8 uses
  %i.h = load i16, ptr %i.g, align 2, !tbaa !75
  %i.i = zext i16 %i.h to i64
  %i.j = mul nuw nsw i64 %i.i, 3
  %i.k = load i16, ptr %i.f, align 8, !tbaa !12
  %i.l = zext i16 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 2
  %i.n = add nuw nsw i64 %i.m, %i.j
  %i.o = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.n, i64 noundef 2) ; 8 uses
  %i.p = load i16, ptr %i.g, align 2, !tbaa !75
  %i.q = zext i16 %i.p to i64
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.q ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 381592 ; 4 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !110  ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 381752
  %i.v = load i64, ptr %i.u, align 8, !tbaa !178
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !112
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef i32 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.t, i64 noundef %i.v, i32 noundef 0), !call_target !114 ; 0 uses
  %i.aa = load i16, ptr %i.f, align 8, !tbaa !12
  %.not115 = icmp eq i16 %i.aa, 0
  br i1 %.not115, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.c ] ; 2 uses
  %i.ab = tail call noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ad = load i16, ptr %i.f, align 8, !tbaa !12  ; 2 uses
  %i.ae = zext i16 %i.ad to i64
  %i.af = icmp samesign ult i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !179

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.ag = zext i16 %i.ad to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %.lcssa100 = phi i64 [ 0, %bb.c ], [ %i.ag, %._crit_edge.loopexit ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.lcssa100 ; 3 uses
  %i.ai = load ptr, ptr %i.s, align 8, !tbaa !110 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 153496 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !163
  %i.al = sext i32 %i.ak to i64
  %i.am = load ptr, ptr %i.ai, align 8, !tbaa !112
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef i32 %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, i64 noundef %i.al, i32 noundef 0), !call_target !114 ; 0 uses
  %i.aq = load i32, ptr %i.aj, align 8, !tbaa !163
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.ar = load i16, ptr %i.f, align 8, !tbaa !12
  %i.as = zext i16 %i.ar to i32
  %i.at = shl nuw nsw i32 %i.as, 1
  tail call void @_ZN6LibRaw11read_shortsEPtj(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.ah, i32 noundef %i.at)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.au = load i16, ptr %i.f, align 8, !tbaa !12
  %i.av = zext i16 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.av ; 2 uses
  %i.ax = load ptr, ptr %i.s, align 8, !tbaa !110 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 153504 ; 3 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !164
  %i.ba = sext i32 %i.az to i64
  %i.bb = load ptr, ptr %i.ax, align 8, !tbaa !112
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call noundef i32 %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, i64 noundef %i.ba, i32 noundef 0), !call_target !114 ; 0 uses
  %i.bf = load i32, ptr %i.ay, align 8, !tbaa !164
  %.not70 = icmp eq i32 %i.bf, 0
  br i1 %.not70, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bg = load i16, ptr %i.g, align 2, !tbaa !75
  %i.bh = zext i16 %i.bg to i32
  %i.bi = shl nuw nsw i32 %i.bh, 1
  tail call void @_ZN6LibRaw11read_shortsEPtj(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.aw, i32 noundef %i.bi)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.bj = load i32, ptr %i.aj, align 8, !tbaa !163
  %.not71 = icmp eq i32 %i.bj, 0
  br i1 %.not71, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bk = load i32, ptr %i.ay, align 8, !tbaa !164
  %.not72 = icmp eq i32 %i.bk, 0
  br i1 %.not72, label %vector.body.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bl = load i16, ptr %i.f, align 8, !tbaa !12
  %i.bm = zext i16 %i.bl to i64
  %i.bn = shl nuw nsw i64 %i.bm, 1
  %i.bo = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.bn, i64 noundef 2) ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 193832
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !165
  %i.bq = load i16, ptr %i.f, align 8, !tbaa !12
  %i.br = zext i16 %i.bq to i64
  %i.bs = shl nuw nsw i64 %i.br, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.bo, ptr align 2 %i.ah, i64 %i.bs, i1 false)
  %i.bt = load i16, ptr %i.g, align 2, !tbaa !75
  %i.bu = zext i16 %i.bt to i64
  %i.bv = shl nuw nsw i64 %i.bu, 1
  %i.bw = tail call noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.bv, i64 noundef 2) ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 193840
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !166
  %i.by = load i16, ptr %i.g, align 2, !tbaa !75
  %i.bz = zext i16 %i.by to i64
  %i.ca = shl nuw nsw i64 %i.bz, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.bw, ptr align 2 %i.aw, i64 %i.ca, i1 false)
  br label %vector.body.preheader

vector.body.preheader:                            ; preds = %bb.h, %bb.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.body.preheader
  %index = phi i64 [ 0, %vector.body.preheader ], [ %index.next.1, %vector.body ] ; 3 uses
  %vec.ind = phi <16 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>, %vector.body.preheader ], [ %vec.ind.next.1, %vector.body ] ; 4 uses
  %i.cb = mul nuw nsw <16 x i64> %vec.ind, %vec.ind
  %i.cc = trunc nuw <16 x i64> %i.cb to <16 x i32>
  %i.cd = uitofp nneg <16 x i32> %i.cc to <16 x float>
  %i.ce = fmul reassoc nnan nsz arcp contract afn <16 x float> %i.cd, splat (float f0x3E80FFEF)
  %i.cf = fadd reassoc nsz arcp contract afn <16 x float> %i.ce, splat (float 5.000000e-01)
  %i.cg = fptoui <16 x float> %i.cf to <16 x i16>
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  store <16 x i16> %i.cg, ptr %i.ch, align 8, !tbaa !77
  %vec.ind.next = add nuw nsw <16 x i64> %vec.ind, splat (i64 16) ; 2 uses
  %i.ci = mul nuw nsw <16 x i64> %vec.ind.next, %vec.ind.next
  %i.cj = trunc nuw <16 x i64> %i.ci to <16 x i32>
  %i.ck = uitofp nneg <16 x i32> %i.cj to <16 x float>
  %i.cl = fmul reassoc nnan nsz arcp contract afn <16 x float> %i.ck, splat (float f0x3E80FFEF)
  %i.cm = fadd reassoc nsz arcp contract afn <16 x float> %i.cl, splat (float 5.000000e-01)
  %i.cn = fptoui <16 x float> %i.cm to <16 x i16>
  %i.co = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %index
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  store <16 x i16> %i.cn, ptr %i.cp, align 8, !tbaa !77
  %index.next.1 = add nuw nsw i64 %index, 32      ; 2 uses
  %vec.ind.next.1 = add nuw nsw <16 x i64> %vec.ind, splat (i64 32)
  %i.cq = icmp eq i64 %index.next.1, 256
  br i1 %i.cq, label %.preheader93, label %vector.body, !llvm.loop !180

.preheader93:                                     ; preds = %vector.body
  %i.cr = load i16, ptr %i.f, align 8, !tbaa !12
  %.not116 = icmp eq i16 %i.cr, 0
  br i1 %.not116, label %._crit_edge114, label %.lr.ph113

.lr.ph113:                                        ; preds = %.preheader93
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 381760
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 381584 ; 19 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 193784 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph113, %.loopexit90
  %indvars.iv140 = phi i64 [ 0, %.lr.ph113 ], [ %indvars.iv.next141, %.loopexit90 ] ; 4 uses
  invoke void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.k unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.j
  %i.cx = load ptr, ptr %i.s, align 8, !tbaa !110 ; 2 uses
  %i.cy = load i64, ptr %i.cs, align 8, !tbaa !167
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv140
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !11
  %i.db = sext i32 %i.da to i64
  %i.dc = add nsw i64 %i.cy, %i.db
  %i.dd = load ptr, ptr %i.cx, align 8, !tbaa !112
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  %i.df = load ptr, ptr %i.de, align 8
  %i.dg = invoke noundef i32 %i.df(ptr noundef nonnull align 8 dereferenceable(8) %i.cx, i64 noundef %i.dc, i32 noundef 0)
          to label %bb.l unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !call_target !114 ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.dh = load ptr, ptr %i.ct, align 8, !tbaa !169 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  store i32 0, ptr %i.di, align 8, !tbaa !170
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store i64 0, ptr %i.dj, align 8, !tbaa !177
  store i32 0, ptr %i.cu, align 4, !tbaa !11
  store i32 0, ptr %2, align 4, !tbaa !11
  %i.dk = load i16, ptr %i.g, align 2, !tbaa !75  ; 2 uses
  %.not117 = icmp eq i16 %i.dk, 0
  br i1 %.not117, label %._crit_edge108.thread, label %.lr.ph107.preheader

.lr.ph107.preheader:                              ; preds = %bb.l
  %i.dl = zext i16 %i.dk to i32
  br label %.lr.ph107

.lr.ph107:                                        ; preds = %.lr.ph107.preheader, %bb.bf
  %indvars.iv134 = phi i64 [ %indvars.iv.next135, %bb.bf ], [ 0, %.lr.ph107.preheader ] ; 7 uses
  %i.dm = phi i32 [ %i.py, %bb.bf ], [ %i.dl, %.lr.ph107.preheader ]
  %i.dn = and i32 %i.dm, 65528
  %i.do = zext nneg i32 %i.dn to i64
  %.not73 = icmp samesign ult i64 %indvars.iv134, %i.do
  br i1 %.not73, label %bb.o, label %bb.m

bb.m:                                             ; preds = %.lr.ph107
  store i32 14, ptr %i.cv, align 4, !tbaa !11
  store i32 14, ptr %1, align 4, !tbaa !11
  br label %.loopexit85

.loopexit:                                        ; preds = %bb.ar, %bb.ao, %bb.al, %bb.ai, %bb.af, %bb.ab, %bb.y, %bb.v, %bb.s, %bb.p
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.at, %bb.ad
  %lpad.loopexit86 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.bb, %bb.aw, %bb.az
  %lpad.loopexit91 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.j, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit86, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit91, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.dp = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.dq = tail call ptr @__cxa_begin_catch(ptr %i.dp) #21 ; 0 uses
  invoke void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.o)
          to label %bb.n unwind label %bb.bi

bb.n:                                             ; preds = %.loopexit.split-lp
  invoke void @__cxa_rethrow() #22
          to label %bb.bl unwind label %bb.bi

bb.o:                                             ; preds = %.lr.ph107
  %i.dr = and i64 %indvars.iv134, 7
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %.preheader.preheader, label %.loopexit85

.preheader.preheader:                             ; preds = %bb.o
  %i.dt = load ptr, ptr %i.ct, align 8, !tbaa !169 ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !170 ; 2 uses
  %i.dw = icmp slt i32 %i.dv, 1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !177 ; 2 uses
  br i1 %i.dw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.preheader.preheader
  %i.dz = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.p
  %i.ea = shl i64 %i.dy, 32
  %i.eb = zext i32 %i.dz to i64
  %i.ec = or disjoint i64 %i.ea, %i.eb            ; 2 uses
  %i.ed = load ptr, ptr %i.ct, align 8, !tbaa !169 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  store i64 %i.ec, ptr %i.ee, align 8, !tbaa !177
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 24 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !170
  %i.eh = add nsw i32 %i.eg, 32                   ; 2 uses
  store i32 %i.eh, ptr %i.ef, align 8, !tbaa !170
  br label %bb.q

bb.q:                                             ; preds = %.noexc, %.preheader.preheader
  %i.ei = phi i32 [ %i.eh, %.noexc ], [ %i.dv, %.preheader.preheader ] ; 3 uses
  %i.ej = phi i64 [ %i.ec, %.noexc ], [ %i.dy, %.preheader.preheader ] ; 3 uses
  %i.ek = phi ptr [ %i.ed, %.noexc ], [ %i.dt, %.preheader.preheader ] ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 24
  %i.em = sub nsw i32 64, %i.ei
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = shl i64 %i.ej, %i.en
  %i.ep = add nsw i32 %i.ei, -1                   ; 3 uses
  store i32 %i.ep, ptr %i.el, align 8, !tbaa !170
  %.not74 = icmp slt i64 %i.eo, 0
  br i1 %.not74, label %.preheader.1, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.eq = icmp slt i32 %i.ei, 2
  br i1 %i.eq, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.er = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.noexc.1 unwind label %.loopexit

.noexc.1:                                         ; preds = %bb.s
  %i.es = shl i64 %i.ej, 32
  %i.et = zext i32 %i.er to i64
  %i.eu = or disjoint i64 %i.es, %i.et            ; 2 uses
  %i.ev = load ptr, ptr %i.ct, align 8, !tbaa !169 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store i64 %i.eu, ptr %i.ew, align 8, !tbaa !177
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 24 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 8, !tbaa !170
  %i.ez = add nsw i32 %i.ey, 32                   ; 2 uses
  store i32 %i.ez, ptr %i.ex, align 8, !tbaa !170
  br label %bb.t

bb.t:                                             ; preds = %.noexc.1, %bb.r
  %i.fa = phi i32 [ %i.ez, %.noexc.1 ], [ %i.ep, %bb.r ] ; 3 uses
  %i.fb = phi i64 [ %i.eu, %.noexc.1 ], [ %i.ej, %bb.r ] ; 3 uses
  %i.fc = phi ptr [ %i.ev, %.noexc.1 ], [ %i.ek, %bb.r ] ; 3 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fe = sub nsw i32 64, %i.fa
  %i.ff = zext nneg i32 %i.fe to i64
  %i.fg = shl i64 %i.fb, %i.ff
  %i.fh = add nsw i32 %i.fa, -1                   ; 3 uses
  store i32 %i.fh, ptr %i.fd, align 8, !tbaa !170
  %.not74.1 = icmp sgt i64 %i.fg, -1
  br i1 %.not74.1, label %bb.u, label %.critedge.thread

bb.u:                                             ; preds = %bb.t
  %i.fi = icmp slt i32 %i.fa, 2
  br i1 %i.fi, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.fj = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.noexc.2 unwind label %.loopexit

.noexc.2:                                         ; preds = %bb.v
  %i.fk = shl i64 %i.fb, 32
  %i.fl = zext i32 %i.fj to i64
  %i.fm = or disjoint i64 %i.fk, %i.fl            ; 2 uses
  %i.fn = load ptr, ptr %i.ct, align 8, !tbaa !169 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store i64 %i.fm, ptr %i.fo, align 8, !tbaa !177
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 24 ; 2 uses
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !170
  %i.fr = add nsw i32 %i.fq, 32                   ; 2 uses
  store i32 %i.fr, ptr %i.fp, align 8, !tbaa !170
  br label %bb.w

bb.w:                                             ; preds = %.noexc.2, %bb.u
  %i.fs = phi i32 [ %i.fr, %.noexc.2 ], [ %i.fh, %bb.u ] ; 3 uses
  %i.ft = phi i64 [ %i.fm, %.noexc.2 ], [ %i.fb, %bb.u ] ; 3 uses
  %i.fu = phi ptr [ %i.fn, %.noexc.2 ], [ %i.fc, %bb.u ] ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.fw = sub nsw i32 64, %i.fs
  %i.fx = zext nneg i32 %i.fw to i64
  %i.fy = shl i64 %i.ft, %i.fx
  %i.fz = add nsw i32 %i.fs, -1                   ; 3 uses
  store i32 %i.fz, ptr %i.fv, align 8, !tbaa !170
  %.not74.2 = icmp sgt i64 %i.fy, -1
  br i1 %.not74.2, label %bb.x, label %.critedge.thread

bb.x:                                             ; preds = %bb.w
  %i.ga = icmp slt i32 %i.fs, 2
  br i1 %i.ga, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gb = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.noexc.3 unwind label %.loopexit

.noexc.3:                                         ; preds = %bb.y
  %i.gc = shl i64 %i.ft, 32
  %i.gd = zext i32 %i.gb to i64
  %i.ge = or disjoint i64 %i.gc, %i.gd            ; 2 uses
  %i.gf = load ptr, ptr %i.ct, align 8, !tbaa !169 ; 3 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store i64 %i.ge, ptr %i.gg, align 8, !tbaa !177
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 24 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !170
  %i.gj = add nsw i32 %i.gi, 32                   ; 2 uses
  store i32 %i.gj, ptr %i.gh, align 8, !tbaa !170
  br label %bb.z

bb.z:                                             ; preds = %.noexc.3, %bb.x
  %i.gk = phi i32 [ %i.gj, %.noexc.3 ], [ %i.fz, %bb.x ] ; 3 uses
  %i.gl = phi i64 [ %i.ge, %.noexc.3 ], [ %i.ft, %bb.x ] ; 3 uses
  %i.gm = phi ptr [ %i.gf, %.noexc.3 ], [ %i.fu, %bb.x ] ; 3 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.go = sub nsw i32 64, %i.gk
  %i.gp = zext nneg i32 %i.go to i64
  %i.gq = shl i64 %i.gl, %i.gp
  %i.gr = add nsw i32 %i.gk, -1                   ; 3 uses
  store i32 %i.gr, ptr %i.gn, align 8, !tbaa !170
  %.not74.3 = icmp sgt i64 %i.gq, -1
  br i1 %.not74.3, label %bb.aa, label %.critedge.thread

bb.aa:                                            ; preds = %bb.z
  %i.gs = icmp slt i32 %i.gk, 2
  br i1 %i.gs, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gt = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.noexc.4 unwind label %.loopexit

.noexc.4:                                         ; preds = %bb.ab
  %i.gu = shl i64 %i.gl, 32
  %i.gv = zext i32 %i.gt to i64
  %i.gw = or disjoint i64 %i.gu, %i.gv            ; 2 uses
  %i.gx = load ptr, ptr %i.ct, align 8, !tbaa !169 ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  store i64 %i.gw, ptr %i.gy, align 8, !tbaa !177
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gx, i64 24 ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !170
  %i.hb = add nsw i32 %i.ha, 32                   ; 2 uses
  store i32 %i.hb, ptr %i.gz, align 8, !tbaa !170
  br label %bb.ac

bb.ac:                                            ; preds = %.noexc.4, %bb.aa
  %i.hc = phi i32 [ %i.hb, %.noexc.4 ], [ %i.gr, %bb.aa ] ; 2 uses
  %i.hd = phi i64 [ %i.gw, %.noexc.4 ], [ %i.gl, %bb.aa ]
  %i.he = phi ptr [ %i.gx, %.noexc.4 ], [ %i.gm, %bb.aa ] ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %i.hg = sub nsw i32 64, %i.hc
  %i.hh = zext nneg i32 %i.hg to i64
  %i.hi = shl i64 %i.hd, %i.hh
  %i.hj = add nsw i32 %i.hc, -1                   ; 2 uses
  store i32 %i.hj, ptr %i.hf, align 8, !tbaa !170
  %.not74.4 = icmp sgt i64 %i.hi, -1
  %spec.select = select i1 %.not74.4, i64 8, i64 6
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.ac, %bb.t, %bb.w, %bb.z
  %i.hk = phi i32 [ %i.hj, %bb.ac ], [ %i.gr, %bb.z ], [ %i.fz, %bb.w ], [ %i.fh, %bb.t ] ; 2 uses
  %i.hl = phi ptr [ %i.he, %bb.ac ], [ %i.gm, %bb.z ], [ %i.fu, %bb.w ], [ %i.fc, %bb.t ] ; 2 uses
  %.096 = phi i64 [ %spec.select, %bb.ac ], [ 4, %bb.z ], [ 2, %bb.w ], [ 0, %bb.t ]
  %i.hm = icmp slt i32 %i.hk, 1
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !177 ; 2 uses
  br i1 %i.hm, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.critedge.thread
  %i.hp = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.noexc77 unwind label %.loopexit.split-lp.loopexit

.noexc77:                                         ; preds = %bb.ad
  %i.hq = shl i64 %i.ho, 32
  %i.hr = zext i32 %i.hp to i64
  %i.hs = or disjoint i64 %i.hq, %i.hr            ; 2 uses
  %i.ht = load ptr, ptr %i.ct, align 8, !tbaa !169 ; 3 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 16
  store i64 %i.hs, ptr %i.hu, align 8, !tbaa !177
  %i.hv = getelementptr inbounds nuw i8, ptr %i.ht, i64 24 ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !170
  %i.hx = add nsw i32 %i.hw, 32                   ; 2 uses
  store i32 %i.hx, ptr %i.hv, align 8, !tbaa !170
  br label %bb.ae

bb.ae:                                            ; preds = %.noexc77, %.critedge.thread
  %i.hy = phi i32 [ %i.hx, %.noexc77 ], [ %i.hk, %.critedge.thread ] ; 2 uses
  %i.hz = phi i64 [ %i.hs, %.noexc77 ], [ %i.ho, %.critedge.thread ]
  %i.ia = phi ptr [ %i.ht, %.noexc77 ], [ %i.hl, %.critedge.thread ] ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.ic = sub nsw i32 64, %i.hy
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = shl i64 %i.hz, %i.id
  %i.if = lshr i64 %i.ie, 63
  %i.ig = add nsw i32 %i.hy, -1                   ; 2 uses
  store i32 %i.ig, ptr %i.ib, align 8, !tbaa !170
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6LibRaw20phase_one_load_raw_cEvE6length, i64 %i.if
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ih, i64 %.096
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !11
  store i32 %i.ij, ptr %1, align 4, !tbaa !11
  br label %.preheader.1

.preheader.1:                                     ; preds = %bb.q, %bb.ae
  %i.ik = phi i32 [ %i.ig, %bb.ae ], [ %i.ep, %bb.q ] ; 2 uses
  %i.il = phi ptr [ %i.ia, %bb.ae ], [ %i.ek, %bb.q ] ; 2 uses
  %i.im = icmp slt i32 %i.ik, 1
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 16
  %i.io = load i64, ptr %i.in, align 8, !tbaa !177 ; 2 uses
  br i1 %i.im, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.preheader.1
  %i.ip = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.noexc.1132 unwind label %.loopexit

.noexc.1132:                                      ; preds = %bb.af
  %i.iq = shl i64 %i.io, 32
  %i.ir = zext i32 %i.ip to i64
  %i.is = or disjoint i64 %i.iq, %i.ir            ; 2 uses
  %i.it = load ptr, ptr %i.ct, align 8, !tbaa !169 ; 3 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  store i64 %i.is, ptr %i.iu, align 8, !tbaa !177
  %i.iv = getelementptr inbounds nuw i8, ptr %i.it, i64 24 ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 8, !tbaa !170
  %i.ix = add nsw i32 %i.iw, 32                   ; 2 uses
  store i32 %i.ix, ptr %i.iv, align 8, !tbaa !170
  br label %bb.ag

bb.ag:                                            ; preds = %.noexc.1132, %.preheader.1
  %i.iy = phi i32 [ %i.ix, %.noexc.1132 ], [ %i.ik, %.preheader.1 ] ; 3 uses
  %i.iz = phi i64 [ %i.is, %.noexc.1132 ], [ %i.io, %.preheader.1 ] ; 3 uses
  %i.ja = phi ptr [ %i.it, %.noexc.1132 ], [ %i.il, %.preheader.1 ] ; 2 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  %i.jc = sub nsw i32 64, %i.iy
  %i.jd = zext nneg i32 %i.jc to i64
  %i.je = shl i64 %i.iz, %i.jd
  %i.jf = add nsw i32 %i.iy, -1                   ; 2 uses
  store i32 %i.jf, ptr %i.jb, align 8, !tbaa !170
  %.not74.1133 = icmp slt i64 %i.je, 0
  br i1 %.not74.1133, label %.loopexit85, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.jg = icmp slt i32 %i.iy, 2
  br i1 %i.jg, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.jh = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.noexc.1.1 unwind label %.loopexit

.noexc.1.1:                                       ; preds = %bb.ai
  %i.ji = shl i64 %i.iz, 32
  %i.jj = zext i32 %i.jh to i64
  %i.jk = or disjoint i64 %i.ji, %i.jj            ; 2 uses
  %i.jl = load ptr, ptr %i.ct, align 8, !tbaa !169 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  store i64 %i.jk, ptr %i.jm, align 8, !tbaa !177
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 24 ; 2 uses
  %i.jo = load i32, ptr %i.jn, align 8, !tbaa !170
  %i.jp = add nsw i32 %i.jo, 32                   ; 2 uses
  store i32 %i.jp, ptr %i.jn, align 8, !tbaa !170
  br label %bb.aj

bb.aj:                                            ; preds = %.noexc.1.1, %bb.ah
  %i.jq = phi i32 [ %i.jp, %.noexc.1.1 ], [ %i.jf, %bb.ah ] ; 3 uses
  %i.jr = phi i64 [ %i.jk, %.noexc.1.1 ], [ %i.iz, %bb.ah ] ; 3 uses
  %i.js = phi ptr [ %i.jl, %.noexc.1.1 ], [ %i.ja, %bb.ah ] ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 24
  %i.ju = sub nsw i32 64, %i.jq
  %i.jv = zext nneg i32 %i.ju to i64
  %i.jw = shl i64 %i.jr, %i.jv
  %i.jx = add nsw i32 %i.jq, -1                   ; 3 uses
  store i32 %i.jx, ptr %i.jt, align 8, !tbaa !170
  %.not74.1.1 = icmp sgt i64 %i.jw, -1
  br i1 %.not74.1.1, label %bb.ak, label %.critedge.thread.1

bb.ak:                                            ; preds = %bb.aj
  %i.jy = icmp slt i32 %i.jq, 2
  br i1 %i.jy, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.jz = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.noexc.2.1 unwind label %.loopexit

.noexc.2.1:                                       ; preds = %bb.al
  %i.ka = shl i64 %i.jr, 32
  %i.kb = zext i32 %i.jz to i64
  %i.kc = or disjoint i64 %i.ka, %i.kb            ; 2 uses
  %i.kd = load ptr, ptr %i.ct, align 8, !tbaa !169 ; 3 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.kd, i64 16
  store i64 %i.kc, ptr %i.ke, align 8, !tbaa !177
  %i.kf = getelementptr inbounds nuw i8, ptr %i.kd, i64 24 ; 2 uses
  %i.kg = load i32, ptr %i.kf, align 8, !tbaa !170
  %i.kh = add nsw i32 %i.kg, 32                   ; 2 uses
  store i32 %i.kh, ptr %i.kf, align 8, !tbaa !170
  br label %bb.am

bb.am:                                            ; preds = %.noexc.2.1, %bb.ak
  %i.ki = phi i32 [ %i.kh, %.noexc.2.1 ], [ %i.jx, %bb.ak ] ; 3 uses
  %i.kj = phi i64 [ %i.kc, %.noexc.2.1 ], [ %i.jr, %bb.ak ] ; 3 uses
  %i.kk = phi ptr [ %i.kd, %.noexc.2.1 ], [ %i.js, %bb.ak ] ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 24
  %i.km = sub nsw i32 64, %i.ki
  %i.kn = zext nneg i32 %i.km to i64
  %i.ko = shl i64 %i.kj, %i.kn
  %i.kp = add nsw i32 %i.ki, -1                   ; 3 uses
  store i32 %i.kp, ptr %i.kl, align 8, !tbaa !170
  %.not74.2.1 = icmp sgt i64 %i.ko, -1
  br i1 %.not74.2.1, label %bb.an, label %.critedge.thread.1

bb.an:                                            ; preds = %bb.am
  %i.kq = icmp slt i32 %i.ki, 2
  br i1 %i.kq, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.kr = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.noexc.3.1 unwind label %.loopexit

.noexc.3.1:                                       ; preds = %bb.ao
  %i.ks = shl i64 %i.kj, 32
  %i.kt = zext i32 %i.kr to i64
  %i.ku = or disjoint i64 %i.ks, %i.kt            ; 2 uses
  %i.kv = load ptr, ptr %i.ct, align 8, !tbaa !169 ; 3 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  store i64 %i.ku, ptr %i.kw, align 8, !tbaa !177
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kv, i64 24 ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 8, !tbaa !170
  %i.kz = add nsw i32 %i.ky, 32                   ; 2 uses
  store i32 %i.kz, ptr %i.kx, align 8, !tbaa !170
  br label %bb.ap

bb.ap:                                            ; preds = %.noexc.3.1, %bb.an
  %i.la = phi i32 [ %i.kz, %.noexc.3.1 ], [ %i.kp, %bb.an ] ; 3 uses
  %i.lb = phi i64 [ %i.ku, %.noexc.3.1 ], [ %i.kj, %bb.an ] ; 3 uses
  %i.lc = phi ptr [ %i.kv, %.noexc.3.1 ], [ %i.kk, %bb.an ] ; 3 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  %i.le = sub nsw i32 64, %i.la
  %i.lf = zext nneg i32 %i.le to i64
  %i.lg = shl i64 %i.lb, %i.lf
  %i.lh = add nsw i32 %i.la, -1                   ; 3 uses
  store i32 %i.lh, ptr %i.ld, align 8, !tbaa !170
  %.not74.3.1 = icmp sgt i64 %i.lg, -1
  br i1 %.not74.3.1, label %bb.aq, label %.critedge.thread.1

bb.aq:                                            ; preds = %bb.ap
  %i.li = icmp slt i32 %i.la, 2
  br i1 %i.li, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.lj = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.noexc.4.1 unwind label %.loopexit

.noexc.4.1:                                       ; preds = %bb.ar
  %i.lk = shl i64 %i.lb, 32
  %i.ll = zext i32 %i.lj to i64
  %i.lm = or disjoint i64 %i.lk, %i.ll            ; 2 uses
  %i.ln = load ptr, ptr %i.ct, align 8, !tbaa !169 ; 3 uses
  %i.lo = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  store i64 %i.lm, ptr %i.lo, align 8, !tbaa !177
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 24 ; 2 uses
  %i.lq = load i32, ptr %i.lp, align 8, !tbaa !170
  %i.lr = add nsw i32 %i.lq, 32                   ; 2 uses
  store i32 %i.lr, ptr %i.lp, align 8, !tbaa !170
  br label %bb.as

bb.as:                                            ; preds = %.noexc.4.1, %bb.aq
  %i.ls = phi i32 [ %i.lr, %.noexc.4.1 ], [ %i.lh, %bb.aq ] ; 2 uses
  %i.lt = phi i64 [ %i.lm, %.noexc.4.1 ], [ %i.lb, %bb.aq ]
  %i.lu = phi ptr [ %i.ln, %.noexc.4.1 ], [ %i.lc, %bb.aq ] ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  %i.lw = sub nsw i32 64, %i.ls
  %i.lx = zext nneg i32 %i.lw to i64
  %i.ly = shl i64 %i.lt, %i.lx
  %i.lz = add nsw i32 %i.ls, -1                   ; 2 uses
  store i32 %i.lz, ptr %i.lv, align 8, !tbaa !170
  %.not74.4.1 = icmp sgt i64 %i.ly, -1
  %spec.select181 = select i1 %.not74.4.1, i64 8, i64 6
  br label %.critedge.thread.1

.critedge.thread.1:                               ; preds = %bb.as, %bb.aj, %bb.am, %bb.ap
  %i.ma = phi i32 [ %i.jx, %bb.aj ], [ %i.lz, %bb.as ], [ %i.lh, %bb.ap ], [ %i.kp, %bb.am ] ; 2 uses
  %i.mb = phi ptr [ %i.js, %bb.aj ], [ %i.lu, %bb.as ], [ %i.lc, %bb.ap ], [ %i.kk, %bb.am ] ; 2 uses
  %.096.1 = phi i64 [ 0, %bb.aj ], [ %spec.select181, %bb.as ], [ 4, %bb.ap ], [ 2, %bb.am ]
  %i.mc = icmp slt i32 %i.ma, 1
  %i.md = getelementptr inbounds nuw i8, ptr %i.mb, i64 16
  %i.me = load i64, ptr %i.md, align 8, !tbaa !177 ; 2 uses
  br i1 %i.mc, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.critedge.thread.1
  %i.mf = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.noexc77.1 unwind label %.loopexit.split-lp.loopexit

.noexc77.1:                                       ; preds = %bb.at
  %i.mg = shl i64 %i.me, 32
  %i.mh = zext i32 %i.mf to i64
  %i.mi = or disjoint i64 %i.mg, %i.mh            ; 2 uses
  %i.mj = load ptr, ptr %i.ct, align 8, !tbaa !169 ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  store i64 %i.mi, ptr %i.mk, align 8, !tbaa !177
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mj, i64 24 ; 2 uses
  %i.mm = load i32, ptr %i.ml, align 8, !tbaa !170
  %i.mn = add nsw i32 %i.mm, 32                   ; 2 uses
  store i32 %i.mn, ptr %i.ml, align 8, !tbaa !170
  br label %bb.au

bb.au:                                            ; preds = %.noexc77.1, %.critedge.thread.1
  %i.mo = phi i32 [ %i.mn, %.noexc77.1 ], [ %i.ma, %.critedge.thread.1 ] ; 2 uses
  %i.mp = phi i64 [ %i.mi, %.noexc77.1 ], [ %i.me, %.critedge.thread.1 ]
  %i.mq = phi ptr [ %i.mj, %.noexc77.1 ], [ %i.mb, %.critedge.thread.1 ]
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mq, i64 24
  %i.ms = sub nsw i32 64, %i.mo
  %i.mt = zext nneg i32 %i.ms to i64
  %i.mu = shl i64 %i.mp, %i.mt
  %i.mv = lshr i64 %i.mu, 63
  %i.mw = add nsw i32 %i.mo, -1
  store i32 %i.mw, ptr %i.mr, align 8, !tbaa !170
  %i.mx = getelementptr inbounds nuw [4 x i8], ptr @_ZZN6LibRaw20phase_one_load_raw_cEvE6length, i64 %i.mv
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.mx, i64 %.096.1
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !11
  store i32 %i.mz, ptr %i.cv, align 4, !tbaa !11
  br label %.loopexit85

.loopexit85:                                      ; preds = %bb.au, %bb.ag, %bb.o, %bb.m
  %i.na = and i64 %indvars.iv134, 1               ; 3 uses
  %3 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.na
  %i.nb = load i32, ptr %3, align 4, !tbaa !11    ; 5 uses
  switch i32 %i.nb, label %bb.ay [
    i32 14, label %bb.av
    i32 -1, label %bb.ax
    i32 0, label %bb.ba
  ]

bb.av:                                            ; preds = %.loopexit85
  %i.nc = load ptr, ptr %i.ct, align 8, !tbaa !169 ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 24
  %i.ne = load i32, ptr %i.nd, align 8, !tbaa !170 ; 2 uses
  %i.nf = icmp slt i32 %i.ne, 16
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nc, i64 16
  %i.nh = load i64, ptr %i.ng, align 8, !tbaa !177 ; 2 uses
  br i1 %i.nf, label %bb.aw, label %.thread

bb.aw:                                            ; preds = %bb.av
  %i.ni = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.noexc79 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc79:                                         ; preds = %bb.aw
  %i.nj = shl i64 %i.nh, 32
  %i.nk = zext i32 %i.ni to i64
  %i.nl = or disjoint i64 %i.nj, %i.nk            ; 2 uses
  %i.nm = load ptr, ptr %i.ct, align 8, !tbaa !169 ; 3 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nm, i64 16
  store i64 %i.nl, ptr %i.nn, align 8, !tbaa !177
  %i.no = getelementptr inbounds nuw i8, ptr %i.nm, i64 24 ; 2 uses
  %i.np = load i32, ptr %i.no, align 8, !tbaa !170
  %i.nq = add nsw i32 %i.np, 32                   ; 2 uses
  store i32 %i.nq, ptr %i.no, align 8, !tbaa !170
  br label %.thread

.thread:                                          ; preds = %bb.av, %.noexc79
  %i.nr = phi i32 [ %i.nq, %.noexc79 ], [ %i.ne, %bb.av ] ; 2 uses
  %i.ns = phi i64 [ %i.nl, %.noexc79 ], [ %i.nh, %bb.av ]
  %i.nt = phi ptr [ %i.nm, %.noexc79 ], [ %i.nc, %bb.av ]
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 24
  %i.nv = sub nsw i32 64, %i.nr
  %i.nw = zext nneg i32 %i.nv to i64
  %i.nx = shl i64 %i.ns, %i.nw
  %i.ny = lshr i64 %i.nx, 48                      ; 2 uses
  %i.nz = trunc nuw nsw i64 %i.ny to i32
  %i.oa = add nsw i32 %i.nr, -16
  store i32 %i.oa, ptr %i.nu, align 8, !tbaa !170
  %4 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.na
  store i32 %i.nz, ptr %4, align 4, !tbaa !11
  %i.ob = trunc nuw i64 %i.ny to i16
  %i.oc = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv134
  store i16 %i.ob, ptr %i.oc, align 2, !tbaa !77
  br label %bb.bc

bb.ax:                                            ; preds = %.loopexit85
  %i.od = load ptr, ptr %i.ct, align 8, !tbaa !169 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 24
  store i32 0, ptr %i.oe, align 8, !tbaa !170
  %i.of = getelementptr inbounds nuw i8, ptr %i.od, i64 16
  store i64 0, ptr %i.of, align 8, !tbaa !177
  br label %bb.ba

bb.ay:                                            ; preds = %.loopexit85
  %i.og = load ptr, ptr %i.ct, align 8, !tbaa !169 ; 3 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %i.og, i64 24
  %i.oi = load i32, ptr %i.oh, align 8, !tbaa !170 ; 2 uses
  %i.oj = icmp slt i32 %i.oi, %i.nb
  %i.ok = getelementptr inbounds nuw i8, ptr %i.og, i64 16
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !177 ; 2 uses
  br i1 %i.oj, label %bb.az, label %._crit_edge.i

bb.az:                                            ; preds = %bb.ay
  %i.om = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.noexc81 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc81:                                         ; preds = %bb.az
  %i.on = shl i64 %i.ol, 32
  %i.oo = zext i32 %i.om to i64
  %i.op = or disjoint i64 %i.on, %i.oo            ; 2 uses
  %i.oq = load ptr, ptr %i.ct, align 8, !tbaa !169 ; 3 uses
  %i.or = getelementptr inbounds nuw i8, ptr %i.oq, i64 16
  store i64 %i.op, ptr %i.or, align 8, !tbaa !177
  %i.os = getelementptr inbounds nuw i8, ptr %i.oq, i64 24 ; 2 uses
  %i.ot = load i32, ptr %i.os, align 8, !tbaa !170
  %i.ou = add nsw i32 %i.ot, 32                   ; 2 uses
  store i32 %i.ou, ptr %i.os, align 8, !tbaa !170
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.noexc81, %bb.ay
  %i.ov = phi i32 [ %i.ou, %.noexc81 ], [ %i.oi, %bb.ay ] ; 2 uses
  %i.ow = phi i64 [ %i.op, %.noexc81 ], [ %i.ol, %bb.ay ]
  %i.ox = phi ptr [ %i.oq, %.noexc81 ], [ %i.og, %bb.ay ]
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 24
  %i.oz = sub nsw i32 64, %i.ov
  %i.pa = zext nneg i32 %i.oz to i64
  %i.pb = shl i64 %i.ow, %i.pa
  %i.pc = sub nsw i32 64, %i.nb
  %i.pd = zext nneg i32 %i.pc to i64
  %i.pe = lshr i64 %i.pb, %i.pd
  %i.pf = trunc i64 %i.pe to i32
  %i.pg = sub nsw i32 %i.ov, %i.nb
  store i32 %i.pg, ptr %i.oy, align 8, !tbaa !170
  %i.ph = add i32 %i.pf, 1
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ax, %._crit_edge.i, %.loopexit85
  %.0.i = phi i32 [ 1, %bb.ax ], [ %i.ph, %._crit_edge.i ], [ 1, %.loopexit85 ]
  %i.pi = add nsw i32 %i.nb, -1
  %.neg = shl nsw i32 -1, %i.pi
  %i.pj = add i32 %.0.i, %.neg
  %5 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.na ; 2 uses
  %i.pk = load i32, ptr %5, align 4, !tbaa !11
  %i.pl = add i32 %i.pj, %i.pk                    ; 3 uses
  store i32 %i.pl, ptr %5, align 4, !tbaa !11
  %i.pm = trunc i32 %i.pl to i16
  %i.pn = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv134
  store i16 %i.pm, ptr %i.pn, align 2, !tbaa !77
  %i.po = icmp ult i32 %i.pl, 65536
  br i1 %i.po, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  invoke void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.bc:                                            ; preds = %.thread, %bb.bb, %bb.ba
  %i.pp = load i32, ptr %i.b, align 4, !tbaa !162 ; 2 uses
  %i.pq = icmp eq i32 %i.pp, 5
  br i1 %i.pq, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %bb.bc
  %i.pr = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv134 ; 2 uses
  %i.ps = load i16, ptr %i.pr, align 2, !tbaa !77 ; 2 uses
  %i.pt = icmp ult i16 %i.ps, 256
  br i1 %i.pt, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.pu = zext nneg i16 %i.ps to i64
  %i.pv = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %i.pu
  %i.pw = load i16, ptr %i.pv, align 2, !tbaa !77
  store i16 %i.pw, ptr %i.pr, align 2, !tbaa !77
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bc, %bb.bd, %bb.be
  %indvars.iv.next135 = add nuw nsw i64 %indvars.iv134, 1 ; 2 uses
  %i.px = load i16, ptr %i.g, align 2, !tbaa !75  ; 4 uses
  %i.py = zext i16 %i.px to i32                   ; 2 uses
  %i.pz = zext i16 %i.px to i64
  %i.qa = icmp samesign ult i64 %indvars.iv.next135, %i.pz
  br i1 %i.qa, label %.lr.ph107, label %._crit_edge108, !llvm.loop !181

._crit_edge108:                                   ; preds = %bb.bf
  %i.qb = icmp eq i32 %i.pp, 8
  br i1 %i.qb, label %bb.bg, label %.preheader89

._crit_edge108.thread:                            ; preds = %bb.l
  %.pre147 = load i32, ptr %i.b, align 4, !tbaa !162
  %i.qc = icmp eq i32 %.pre147, 8
  br i1 %i.qc, label %bb.bg, label %.loopexit90

.preheader89:                                     ; preds = %._crit_edge108
  %.not118 = icmp eq i16 %i.px, 0
  br i1 %.not118, label %.loopexit90, label %.lr.ph111

.lr.ph111:                                        ; preds = %.preheader89
  %i.qd = load ptr, ptr %i.cw, align 8, !tbaa !76
  br label %bb.bh

bb.bg:                                            ; preds = %._crit_edge108.thread, %._crit_edge108
  %.lcssa176 = phi i32 [ 0, %._crit_edge108.thread ], [ %i.py, %._crit_edge108 ] ; 2 uses
  %i.qe = load ptr, ptr %i.cw, align 8, !tbaa !76
  %i.qf = zext nneg i32 %.lcssa176 to i64
  %i.qg = mul nuw nsw i64 %indvars.iv140, %i.qf
  %i.qh = getelementptr inbounds nuw [2 x i8], ptr %i.qe, i64 %i.qg
  %i.qi = shl nuw nsw i32 %.lcssa176, 1
  %i.qj = zext nneg i32 %i.qi to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.qh, ptr nonnull align 2 %i.o, i64 %i.qj, i1 false)
  br label %.loopexit90

bb.bh:                                            ; preds = %.lr.ph111, %bb.bh
  %indvars.iv137 = phi i64 [ 0, %.lr.ph111 ], [ %indvars.iv.next138, %bb.bh ] ; 3 uses
  %.in = phi i16 [ %i.px, %.lr.ph111 ], [ %i.qr, %bb.bh ]
  %i.qk = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv137
  %i.ql = load i16, ptr %i.qk, align 2, !tbaa !77
  %i.qm = shl i16 %i.ql, 2
  %i.qn = zext i16 %.in to i64
  %i.qo = mul nuw nsw i64 %indvars.iv140, %i.qn
  %i.qp = getelementptr inbounds nuw [2 x i8], ptr %i.qd, i64 %i.qo
  %i.qq = getelementptr inbounds nuw [2 x i8], ptr %i.qp, i64 %indvars.iv137
  store i16 %i.qm, ptr %i.qq, align 2, !tbaa !77
  %indvars.iv.next138 = add nuw nsw i64 %indvars.iv137, 1 ; 2 uses
  %i.qr = load i16, ptr %i.g, align 2, !tbaa !75  ; 2 uses
  %i.qs = zext i16 %i.qr to i64
  %i.qt = icmp samesign ult i64 %indvars.iv.next138, %i.qs
  br i1 %i.qt, label %bb.bh, label %.loopexit90, !llvm.loop !182

.loopexit90:                                      ; preds = %bb.bh, %._crit_edge108.thread, %.preheader89, %bb.bg
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %i.qu = load i16, ptr %i.f, align 8, !tbaa !12
  %i.qv = zext i16 %i.qu to i64
  %i.qw = icmp samesign ult i64 %indvars.iv.next141, %i.qv
  br i1 %i.qw, label %bb.j, label %._crit_edge114, !llvm.loop !183

bb.bi:                                            ; preds = %bb.n, %.loopexit.split-lp
  %i.qx = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  resume { ptr, i32 } %i.qx

._crit_edge114:                                   ; preds = %.loopexit90, %.preheader93
  tail call void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef %i.o)
  %i.qy = getelementptr inbounds nuw i8, ptr %0, i64 153488
  %i.qz = load i32, ptr %i.qy, align 8, !tbaa !184
  %i.ra = sub nsw i32 65532, %i.qz
  %i.rb = getelementptr inbounds nuw i8, ptr %0, i64 153096
  store i32 %i.ra, ptr %i.rb, align 8, !tbaa !185
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #21
  ret void

bb.bk:                                            ; preds = %bb.bi
  %i.rc = landingpad { ptr, i32 }
          catch ptr null
  %i.rd = extractvalue { ptr, i32 } %i.rc, 0
  tail call void @__clang_call_terminate(ptr %i.rd) #25
  unreachable

bb.bl:                                            ; preds = %bb.n
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

declare void @_ZN6LibRaw6derrorEv(ptr noundef nonnull align 8 dereferenceable(768512)) local_unnamed_addr #7

declare void @__cxa_rethrow() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define void @_ZN6LibRaw19hasselblad_load_rawEv(ptr noundef nonnull align 8 dereferenceable(768512) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.jhead, align 8              ; 8 uses
  %i.a = alloca [12 x i32], align 16              ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = call noundef i32 @_ZN6LibRaw11ljpeg_startEP5jheadi(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %1, i32 noundef 0)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.bb, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 381728
  store i16 18761, ptr %i.c, align 8, !tbaa !124
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 381584 ; 9 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !169  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i32 0, ptr %i.f, align 8, !tbaa !170
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.g, align 8, !tbaa !177
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 18 ; 14 uses
  %i.k = load i16, ptr %i.j, align 2, !tbaa !75
  %i.l = zext i16 %i.k to i64
  %i.m = invoke noundef ptr @_ZN6LibRaw6callocEmm(ptr noundef nonnull align 8 dereferenceable(768512) %0, i64 noundef %i.l, i64 noundef 12)
          to label %bb.c unwind label %.loopexit.split-lp.thread ; 7 uses

bb.c:                                             ; preds = %bb.b
  %i.n = load i16, ptr %i.j, align 2, !tbaa !75
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 381832 ; 4 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !186  ; 2 uses
  %i.q = icmp ugt i32 %i.p, 1
  %i.r = zext i1 %i.q to i32                      ; 11 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 136696 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !11
  %i.u = lshr i32 %i.t, %i.r
  store i32 %i.u, ptr %i.s, align 8, !tbaa !11
  %i.v = load i16, ptr %i.i, align 8, !tbaa !12
  %.not147 = icmp eq i16 %i.v, 0
  br i1 %.not147, label %._crit_edge146, label %.lr.ph145

.loopexit:                                        ; preds = %bb.n, %bb.k
  %lpad.loopexit = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.i, %bb.g
  %lpad.loopexit120 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.e
  %lpad.loopexit128 = landingpad { ptr, i32 }
          catch ptr null
  br label %.loopexit.split-lp

.loopexit.split-lp.thread:                        ; preds = %bb.b
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.w = extractvalue { ptr, i32 } %lpad.loopexit.split-lp, 0
  %i.x = call ptr @__cxa_begin_catch(ptr %i.w) #21 ; 0 uses
  br label %bb.av

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit120, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit128, %.loopexit.split-lp.loopexit.split-lp.loopexit ]
  %i.y = extractvalue { ptr, i32 } %lpad.phi, 0
  %i.z = call ptr @__cxa_begin_catch(ptr %i.y) #21 ; 0 uses
  %.not104 = icmp eq ptr %i.m, null
  br i1 %.not104, label %bb.av, label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp
  invoke void @_ZN6LibRaw4freeEPv(ptr noundef nonnull align 8 dereferenceable(768512) %0, ptr noundef nonnull %i.m)
          to label %bb.av unwind label %bb.au

.lr.ph145:                                        ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 5556
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !187
  %. = call i32 @llvm.umin.i32(i32 %i.ab, i32 %i.p) ; 2 uses
  %i.ac = call i32 @llvm.usub.sat.i32(i32 %., i32 1) ; 4 uses
  %i.ad = zext i16 %i.n to i64                    ; 2 uses
  %.idx = shl nuw nsw i64 %i.ad, 3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 %.idx
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 312 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 381860
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 193784
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 22 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.ao = zext i32 %i.ac to i64                   ; 6 uses
  %i.ap = icmp ult i32 %., 2
  %i.aq = icmp eq i32 %i.ac, 1
  %i.ar = icmp eq i32 %i.ac, 2
  %i.as = icmp eq i32 %i.ac, 3
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph145, %._crit_edge142
  %.sroa.0210.0 = phi ptr [ %i.m, %.lr.ph145 ], [ %.sroa.8.0, %._crit_edge142 ] ; 3 uses
  %.sroa.8.0 = phi ptr [ %i.af, %.lr.ph145 ], [ %.sroa.11.0, %._crit_edge142 ] ; 3 uses
  %.sroa.11.0 = phi ptr [ %i.ae, %.lr.ph145 ], [ %.sroa.0210.0, %._crit_edge142 ]
  %.087143 = phi i32 [ 0, %.lr.ph145 ], [ %i.qk, %._crit_edge142 ] ; 18 uses
  invoke void @_ZN6LibRaw11checkCancelEv(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.preheader127.preheader unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.preheader127.preheader:                          ; preds = %bb.e
  %i.at = load i16, ptr %i.j, align 2, !tbaa !75
  %.not148 = icmp eq i16 %i.at, 0
  br i1 %.not148, label %._crit_edge142, label %.preheader125.lr.ph

.preheader125.lr.ph:                              ; preds = %.preheader127.preheader
  %i.au = trunc i32 %.087143 to i1
  %i.av = select i1 %i.au, i64 3, i64 0
  %i.aw = icmp samesign ugt i32 %.087143, 1
  br label %.preheader125

.loopexit124:                                     ; preds = %._crit_edge
  %indvars.iv.next197 = add nuw nsw i64 %indvars.iv196, 2 ; 2 uses
  %indvars208 = trunc i64 %indvars.iv.next197 to i32
  %i.ax = load i16, ptr %i.j, align 2, !tbaa !75
  %i.ay = zext i16 %i.ax to i32
  %i.az = icmp samesign ult i32 %indvars208, %i.ay
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 2
  br i1 %i.az, label %.preheader125, label %._crit_edge142, !llvm.loop !188

.preheader125:                                    ; preds = %.preheader125.lr.ph, %.loopexit124
  %indvars.iv205 = phi i64 [ 2, %.preheader125.lr.ph ], [ %indvars.iv.next206, %.loopexit124 ] ; 2 uses
  %indvars.iv196 = phi i64 [ 0, %.preheader125.lr.ph ], [ %indvars.iv.next197, %.loopexit124 ] ; 3 uses
  %indvars209 = trunc i64 %indvars.iv196 to i32   ; 6 uses
  %i.ba = load i32, ptr %i.o, align 8, !tbaa !186
  %.mask = and i32 %i.ba, 2147483647
  %.not149 = icmp eq i32 %.mask, 0
  br i1 %.not149, label %.preheader123, label %.preheader119

.preheader123:                                    ; preds = %bb.o, %.preheader125
  %.not118 = icmp eq i32 %indvars209, 0
  br label %bb.p

.preheader119:                                    ; preds = %.preheader125, %bb.o
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ 0, %.preheader125 ] ; 5 uses
  %i.bb = load ptr, ptr %i.ag, align 8, !tbaa !189 ; 3 uses
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !77 ; 2 uses
  %i.bd = icmp eq i16 %i.bc, 0
  br i1 %i.bd, label %.thread238, label %bb.f

.preheader:                                       ; preds = %_ZN6LibRaw11ph1_bithuffEiPt.exit, %._crit_edge.i.1
  %.0.i.1 = phi i32 [ %i.dv, %._crit_edge.i.1 ], [ 0, %_ZN6LibRaw11ph1_bithuffEiPt.exit ] ; 2 uses
  %cond255 = icmp eq i16 %i.cm, 0
  br i1 %cond255, label %.thread238, label %bb.j

bb.f:                                             ; preds = %.preheader119
  %i.be = zext i16 %i.bc to i32                   ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %i.bg = load ptr, ptr %i.d, align 8, !tbaa !169 ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !170 ; 2 uses
  %i.bj = icmp slt i32 %i.bi, %i.be
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !177 ; 2 uses
  br i1 %i.bj, label %bb.g, label %_ZN6LibRaw11ph1_bithuffEiPt.exit

bb.g:                                             ; preds = %bb.f
  %i.bm = invoke noundef i32 @_ZN6LibRaw4get4Ev(ptr noundef nonnull align 8 dereferenceable(768512) %0)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit

.noexc:                                           ; preds = %bb.g
  %i.bn = shl i64 %i.bl, 32
  %i.bo = zext i32 %i.bm to i64
  %i.bp = or disjoint i64 %i.bn, %i.bo            ; 2 uses
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !169 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store i64 %i.bp, ptr %i.br, align 8, !tbaa !177
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !170
  %i.bu = add nsw i32 %i.bt, 32                   ; 2 uses
  store i32 %i.bu, ptr %i.bs, align 8, !tbaa !170
  %.pre.pre = load ptr, ptr %i.ag, align 8, !tbaa !189 ; 2 uses
  %.pre217.pre = load i16, ptr %.pre.pre, align 2, !tbaa !77 ; 2 uses
end_hunk_0
