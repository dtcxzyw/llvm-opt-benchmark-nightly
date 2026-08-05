inline.NumInlined: 13633
inline.NumDeleted: 4657
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 84
begin_hunk_0_@_ZN11OpenImageIO4v3_114ImageCacheFile14init_from_specEv:bb.a
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 38
  %i.l = load i8, ptr %i.k, align 2, !tbaa !366, !range !368, !noundef !290
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = select i1 %i.m, ptr %i.o, ptr %i.n
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !114
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 157
  call void @_ZN11OpenImageIO4v3_13Tex15parse_wrapmodesEPKcRNS1_4WrapES5_(ptr noundef %i.q, ptr noundef nonnull align 1 dereferenceable(1) %i.r, ptr noundef nonnull align 1 dereferenceable(1) %i.s)
  %i.t = load i8, ptr %i.r, align 4, !tbaa !171
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 158
  store i8 %i.t, ptr %i.u, align 2, !tbaa !173
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !289, !nonnull !290, !align !291
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 147
  %i.y = load i8, ptr %i.x, align 1, !tbaa !569, !range !368, !noundef !290
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  store i8 %i.y, ptr %i.z, align 4, !tbaa !570
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 165 ; 2 uses
  store i8 0, ptr %i.aa, align 1, !tbaa !571
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !170 ; 2 uses
  switch i32 %i.ac, label %bb.g [
    i32 6, label %bb.d
    i32 7, label %bb.d
    i32 4, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c, %bb.c
  store ptr @.str.64, ptr %4, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 16, ptr %i.ad, align 8, !tbaa !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %3, ptr noundef nonnull align 8 dereferenceable(160) %i.e, ptr noundef nonnull dead_on_return %4, ptr noundef nonnull dead_on_return %5)
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !12
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, label %bb.e

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.d
  %i.ah = load ptr, ptr %3, align 8, !tbaa !7
  %lhsc = load i8, ptr %i.ah, align 1
  %.not.i.i = icmp eq i8 %lhsc, 121
  br i1 %.not.i.i, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit34.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  store ptr @.str.64, ptr %7, align 8, !tbaa !7
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 16, ptr %i.ai, align 8, !tbaa !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  call void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %6, ptr noundef nonnull align 8 dereferenceable(160) %i.e, ptr noundef nonnull dead_on_return %7, ptr noundef nonnull dead_on_return %8)
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !12
  %i.al = icmp eq i64 %i.ak, 1
  br i1 %i.al, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i30, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit34.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i30: ; preds = %bb.e
  %i.am = load ptr, ptr %6, align 8, !tbaa !7
  %lhsc69 = load i8, ptr %i.am, align 1
  %.not.i.i32 = icmp eq i8 %lhsc69, 122
  br i1 %.not.i.i32, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit34.thread.sink.split, label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit34.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit34.thread.sink.split: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i30, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %.sink = phi i8 [ 1, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ], [ 0, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i30 ]
  store i8 %.sink, ptr %i.z, align 4, !tbaa !570
  br label %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit34.thread

_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit34.thread: ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit34.thread.sink.split, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i30, %bb.e
  store ptr @.str.67, ptr %9, align 8, !tbaa !7
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 17, ptr %i.an, align 8, !tbaa !12
  %i.ao = call noundef i32 @_ZNK11OpenImageIO4v3_19ImageSpec17get_int_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEEi(ptr noundef nonnull align 8 dereferenceable(160) %i.e, ptr noundef nonnull dead_on_return %9, i32 noundef 0)
  %.not28 = icmp eq i32 %i.ao, 0
  br i1 %.not28, label %thread-pre-split, label %bb.f

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit34.thread
  store i8 1, ptr %i.aa, align 1, !tbaa !571
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.f, %_ZN11OpenImageIO4v3_1eqENS0_17basic_string_viewIcSt11char_traitsIcEEES4_.exit34.thread
  %.pr = load i32, ptr %i.ab, align 8, !tbaa !170
  br label %bb.g

bb.g:                                             ; preds = %thread-pre-split, %bb.c
  %i.ap = phi i32 [ %.pr, %thread-pre-split ], [ %i.ac, %bb.c ]
  switch i32 %i.ap, label %bb.m [
    i32 7, label %bb.h
    i32 4, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.as = load i32, ptr %i.aq, align 4, !tbaa !3
  %i.at = load i32, ptr %i.ar, align 4, !tbaa !3
  %i.au = call i32 @llvm.smax.i32(i32 %i.as, i32 %i.at) ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 52
  %i.ax = load i32, ptr %i.av, align 4, !tbaa !3
  %i.ay = load i32, ptr %i.aw, align 4, !tbaa !3
  %i.az = call i32 @llvm.smax.i32(i32 %i.ax, i32 %i.ay) ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !98 ; 2 uses
  %i.bc = mul nsw i32 %i.au, 3
  %i.bd = icmp eq i32 %i.bb, %i.bc
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !100
  %i.bg = shl nsw i32 %i.az, 1
  %i.bh = icmp eq i32 %i.bf, %i.bg
  br i1 %i.bh, label %.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.bi = icmp eq i32 %i.bb, %i.au
  br i1 %i.bi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bj = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !100
  %i.bl = mul nsw i32 %i.az, 6
  %i.bm = icmp eq i32 %i.bk, %i.bl
  br i1 %i.bm, label %.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  br label %.sink.split

.sink.split:                                      ; preds = %bb.k, %bb.i, %bb.l
  %.sink70 = phi i32 [ 2, %bb.i ], [ 0, %bb.l ], [ 3, %bb.k ]
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 %.sink70, ptr %i.bn, align 8, !tbaa !572
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %bb.g
  %i.bo = load ptr, ptr %i.b, align 8, !tbaa !275
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 120
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !298
  %i.br = call noundef zeroext i1 @_ZN11OpenImageIO4v3_13pvt29check_texture_metadata_sanityERNS0_9ImageSpecE(ptr noundef nonnull align 8 dereferenceable(160) %i.bq) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #5
  store ptr @.str.68, ptr %11, align 8, !tbaa !7
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 10, ptr %i.bs, align 8, !tbaa !12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  call void @_ZNK11OpenImageIO4v3_19ImageSpec20get_string_attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr dead_on_unwind nonnull writable sret(%"class.OpenImageIO::v3_1::basic_string_view") align 8 %10, ptr noundef nonnull align 8 dereferenceable(160) %i.e, ptr noundef nonnull dead_on_return %11, ptr noundef nonnull dead_on_return %12)
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !12 ; 2 uses
  %.not29 = icmp eq i64 %i.bu, 0
  br i1 %.not29, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bv = load ptr, ptr %10, align 8, !tbaa !7    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  %.not.i36 = icmp eq ptr %i.bv, null
  br i1 %.not.i36, label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store ptr %i.bv, ptr %1, align 8, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.bu, ptr %i.bw, align 8, !tbaa !12
  %i.bx = call noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %1)
  %i.by = ptrtoint ptr %i.bx to i64
  br label %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit

_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit: ; preds = %bb.n, %bb.o
  %i.bz = phi i64 [ %i.by, %bb.o ], [ 0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 %i.bz, ptr %i.ca, align 8, !tbaa !114
  br label %bb.p

bb.p:                                             ; preds = %_ZN11OpenImageIO4v3_17ustringC2ENS0_17basic_string_viewIcSt11char_traitsIcEEE.exit, %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !573)
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !13, !noalias !573 ; 3 uses
  %.not.i.i37 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i37, label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -24
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !207, !noalias !573
  br label %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit

_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit: ; preds = %bb.p, %bb.q
  %.0.i.i = phi i64 [ %i.ce, %bb.q ], [ 0, %bb.p ]
  store ptr %i.cc, ptr %13, align 8, !tbaa !7, !alias.scope !573
  %i.cf = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %.0.i.i, ptr %i.cf, align 8, !tbaa !12, !alias.scope !573
  %i.cg = call noundef i64 @_ZN11OpenImageIO4v3_110Filesystem15last_write_timeENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull dead_on_return %13) #5
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 320
  store i64 %i.cg, ptr %i.ch, align 8, !tbaa !576
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !276
  %i.ck = load ptr, ptr %i.b, align 8, !tbaa !275 ; 2 uses
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = ptrtoint ptr %i.ck to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %i.co = lshr exact i64 %i.cn, 7                 ; 2 uses
  %i.cp = trunc i64 %i.co to i32
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %.lr.ph.preheader.new, label %._crit_edge

.lr.ph.preheader.new:                             ; preds = %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit
  %unroll_iter = and i64 %i.co, 2147483647
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.cr = zext nneg i32 %.sroa.speculated.1 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit
  %.053.lcssa = phi i64 [ 1, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit ], [ %i.cr, %._crit_edge.loopexit ] ; 4 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !184 ; 5 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !577 ; 2 uses
  %.not.i.i38 = icmp eq ptr %i.cv, %i.ct
  br i1 %.not.i.i38, label %_ZNSt6vectorImSaImEE5clearEv.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %._crit_edge
  store ptr %i.ct, ptr %i.cu, align 8, !tbaa !577
  br label %_ZNSt6vectorImSaImEE5clearEv.exit

_ZNSt6vectorImSaImEE5clearEv.exit:                ; preds = %._crit_edge, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i
  %i.cw = phi ptr [ %i.cv, %._crit_edge ], [ %i.ct, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i64 0, ptr %i.a, align 8, !tbaa !201
  %i.cx = ptrtoint ptr %i.cw to i64
  %i.cy = ptrtoint ptr %i.ct to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = ashr exact i64 %i.cz, 3                 ; 3 uses
  %i.db = icmp ult i64 %i.da, %.053.lcssa
  br i1 %i.db, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit
  %i.dc = sub nuw nsw i64 %.053.lcssa, %i.da
  call void @_ZNSt6vectorImSaImEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPmS1_EEmRKm(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, ptr %i.cw, i64 noundef %i.dc, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

bb.s:                                             ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit
  %i.dd = icmp ugt i64 %i.da, %.053.lcssa
  br i1 %i.dd, label %bb.t, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

bb.t:                                             ; preds = %bb.s
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.053.lcssa ; 2 uses
  %.not.i.i39 = icmp eq ptr %i.cw, %i.de
  br i1 %.not.i.i39, label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i40

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i40:      ; preds = %bb.t
  store ptr %i.de, ptr %i.cu, align 8, !tbaa !577
  br label %_ZNSt6vectorImSaImEE6resizeEmRKm.exit

_ZNSt6vectorImSaImEE6resizeEmRKm.exit:            ; preds = %bb.r, %bb.s, %bb.t, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 241
  store volatile i8 1, ptr %i.df, align 1, !tbaa !174
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #5
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader.new, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ] ; 2 uses
  %.05356 = phi i32 [ 1, %.lr.ph.preheader.new ], [ %.sroa.speculated.1, %.lr.ph ]
  %i.dg = getelementptr inbounds nuw [128 x i8], ptr %i.ck, i64 %indvars.iv ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !375
  %i.dj = load ptr, ptr %i.dg, align 8, !tbaa !374
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl
  %i.dn = sdiv exact i64 %i.dm, 40
  %i.do = trunc i64 %i.dn to i32
  %.sroa.speculated.1 = call i32 @llvm.smax.i32(i32 %.05356, i32 %i.do) ; 2 uses
  %niter.next.1 = add nuw nsw i64 %indvars.iv, 1  ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !578
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN11OpenImageIO4v3_15TimerD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store", align 16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !434, !range !368, !noundef !290
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !522  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  %spec.select = select i1 %.not, ptr @.str.106, ptr %i.e
  %i.f = load i8, ptr %0, align 8, !tbaa !440, !range !368, !noundef !290
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !439
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #5
  %i.j = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %1) #5 ; 0 uses
  %i.k = load i64, ptr %1, align 8, !tbaa !436
  %i.l = mul nsw i64 %i.k, 1000000000
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !438
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #5
  %i.o = sub i64 %i.n, %i.i
  %i.p = add i64 %i.o, %i.l
  %i.q = call noundef i64 @llvm.abs.i64(i64 %i.p, i1 true)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.r = phi i64 [ %i.q, %bb.c ], [ 0, %bb.b ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load i64, ptr %i.s, align 8, !tbaa !523
  %i.u = add nsw i64 %i.t, %i.r
  %i.v = sitofp i64 %i.u to double
  %i.w = load double, ptr @_ZN11OpenImageIO4v3_15Timer16seconds_per_tickE, align 8, !tbaa !71
  %i.x = fmul double %i.w, %i.v
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #5
  store ptr %spec.select, ptr %2, align 16, !tbaa !39
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.x, ptr %i.y, align 16, !tbaa !39
  %i.z = load ptr, ptr @stdout, align 8, !tbaa !524
  invoke void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %i.z, ptr nonnull @.str.269, i64 16, i64 172, ptr nonnull %2)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #5
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  ret void

bb.g:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #49
  unreachable
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_13pvt29check_texture_metadata_sanityERNS0_9ImageSpecE(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #12

; Function Attrs: nounwind
declare noundef i64 @_ZN11OpenImageIO4v3_110Filesystem15last_write_timeENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef dead_on_return) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN11OpenImageIO4v3_114ImageCacheFile9read_tileEPNS0_23ImageCachePerThreadInfoERKNS0_6TileIDEPv(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"class.std::shared_ptr.30", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %8 = alloca %"class.std::allocator.27", align 1 ; 4 uses
  %9 = alloca %"class.OpenImageIO::v3_1::ImageSpec", align 8 ; 15 uses
  %10 = alloca %"class.OpenImageIO::v3_1::ImageBuf", align 8 ; 8 uses
  %11 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %12 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %13 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  %14 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 2 uses
  %15 = alloca %"struct.OpenImageIO::v3_1::ROI", align 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i32, ptr %i.b, align 8, !tbaa !579  ; 4 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 1, ptr %i.e, align 8, !tbaa !580
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.g = sext i32 %i.c to i64                     ; 3 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !184
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.g ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !201
  %i.k = add i64 %i.j, 1
  store i64 %i.k, ptr %i.i, align 8, !tbaa !201
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !581  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.o = sext i32 %i.m to i64                     ; 2 uses
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !275
  %i.q = getelementptr inbounds nuw [128 x i8], ptr %i.p, i64 %i.o ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !374
  %i.s = getelementptr inbounds nuw [40 x i8], ptr %i.r, i64 %i.g
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !74   ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 120 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = select i1 %.not.i, ptr %i.v, ptr %i.t    ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.q, i64 41
  %i.y = load i8, ptr %i.x, align 1, !tbaa !509, !range !368, !noundef !290
  %i.z = trunc nuw i8 %i.y to i1
  %i.aa = icmp ne i32 %i.c, 0
  %or.cond = and i1 %i.aa, %i.z
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_114ImageCacheFile13read_unmippedEPNS0_23ImageCachePerThreadInfoERKNS0_6TileIDEPv(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %3)
  br label %bb.bh

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  call void @_ZN11OpenImageIO4v3_114ImageCacheFile4openEPNS0_23ImageCachePerThreadInfoE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.30") align 8 %4, ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1)
  %i.ac = load ptr, ptr %4, align 8, !tbaa !288   ; 6 uses
  %.not128 = icmp eq ptr %i.ac, null
  br i1 %.not128, label %bb.az, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !500, !range !368, !noundef !290
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ag = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_114ImageCacheFile12read_untiledEPNS0_23ImageCachePerThreadInfoEPNS0_10ImageInputERKNS0_6TileIDEPv(ptr noundef nonnull align 8 dereferenceable(400) %0, ptr noundef %1, ptr noundef nonnull %i.ac, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %3)
          to label %bb.az unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.i:                                             ; preds = %bb.f
  %i.ai = load i32, ptr %2, align 8, !tbaa !582   ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !583 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !584 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ao = load i16, ptr %i.an, align 4, !tbaa !585
  %i.ap = sext i16 %i.ao to i32
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !586
  %i.as = sext i16 %i.ar to i32
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !587
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !275
  %i.ax = getelementptr inbounds nuw [128 x i8], ptr %i.aw, i64 %i.o
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %.sroa.0.0.copyload.i = load i64, ptr %i.ay, align 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 5 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !289, !nonnull !290, !align !291
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 152
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !477
  %.not136 = icmp slt i32 %i.bc, 0
  br i1 %.not136, label %.critedge105, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %i.w, i64 52
  %i.bf = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  br label %bb.j

.loopexit:                                        ; preds = %bb.j, %bb.q
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.j:                                             ; preds = %.lr.ph, %bb.r
  %.087137 = phi i32 [ 0, %.lr.ph ], [ %i.cd, %bb.r ] ; 4 uses
  %i.bg = load i32, ptr %i.bd, align 4, !tbaa !105
  %i.bh = add nsw i32 %i.bg, %i.ai
  %i.bi = load i32, ptr %i.be, align 4, !tbaa !104
  %i.bj = add nsw i32 %i.bi, %i.ak
end_hunk_0
