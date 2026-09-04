Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/enc_patch_dictionary?download=true
inline.NumInlined: 4484
inline.NumDeleted: 2596
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZNSt3__19__sift_upB8nn180100INS_17_ClassicAlgPolicyERNS_6__lessIvvEEPNS_4pairIN3jxl14QuantizedPatchENS_6vectorINS5_IjjEENS_9allocatorIS9_EEEEEEEEvT1_SF_OT0_NS_15iterator_traitsISF_E15difference_typeE:bb.a
  %.not.i.i.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i.i.i.i, label %_ZNSt3__14pairIN3jxl14QuantizedPatchENS_6vectorINS0_IjjEENS_9allocatorIS4_EEEEEaSB8nn180100EOS8_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %.019, i64 168
  store ptr %i.be, ptr %i.bf, align 8, !tbaa !216
  %i.bg = getelementptr inbounds nuw i8, ptr %.019, i64 176
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !220
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.be to i64
  %i.bk = sub i64 %i.bi, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.be, i64 noundef %i.bk) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  br label %_ZNSt3__14pairIN3jxl14QuantizedPatchENS_6vectorINS0_IjjEENS_9allocatorIS4_EEEEEaSB8nn180100EOS8_.exit

_ZNSt3__14pairIN3jxl14QuantizedPatchENS_6vectorINS0_IjjEENS_9allocatorIS4_EEEEEaSB8nn180100EOS8_.exit: ; preds = %bb.d, %bb.e
  %i.bl = getelementptr inbounds nuw i8, ptr %.018, i64 160 ; 5 uses
  %i.bm = load <2 x ptr>, ptr %i.bl, align 8, !tbaa !220
  store <2 x ptr> %i.bm, ptr %i.bd, align 8, !tbaa !220
  %i.bn = getelementptr inbounds nuw i8, ptr %.018, i64 176
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !220
  %i.bp = getelementptr inbounds nuw i8, ptr %.019, i64 176
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !220
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i8 0, i64 24, i1 false)
  %i.bq = icmp eq i64 %.0, 0
  br i1 %i.bq, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt3__14pairIN3jxl14QuantizedPatchENS_6vectorINS0_IjjEENS_9allocatorIS4_EEEEEaSB8nn180100EOS8_.exit
  %i.br = add nsw i64 %.0, -1
  %i.bs = lshr i64 %i.br, 1                       ; 2 uses
  %i.bt = getelementptr inbounds nuw [184 x i8], ptr %0, i64 %i.bs ; 2 uses
  %i.bu = call noundef zeroext i1 @_ZNSt3__1ltB8nn180100IN3jxl14QuantizedPatchENS_6vectorINS_4pairIjjEENS_9allocatorIS5_EEEES2_S8_EEbRKNS4_IT_T0_EERKNS4_IT1_T2_EE(ptr noundef nonnull align 8 dereferenceable(184) %i.bt, ptr noundef nonnull align 8 dereferenceable(184) %4) #24
  br i1 %i.bu, label %bb.d, label %bb.g, !llvm.loop !935

bb.g:                                             ; preds = %_ZNSt3__14pairIN3jxl14QuantizedPatchENS_6vectorINS0_IjjEENS_9allocatorIS4_EEEEEaSB8nn180100EOS8_.exit, %bb.f
  %i.bv = getelementptr inbounds nuw i8, ptr %.018, i64 176 ; 2 uses
  %i.bw = call noundef nonnull align 8 dereferenceable(160) ptr @_ZN3jxl14QuantizedPatchaSEOS0_(ptr noundef nonnull align 8 dereferenceable(184) %.018, ptr noundef nonnull align 8 dereferenceable(184) %4) #23 ; 0 uses
  %i.bx = load ptr, ptr %i.bl, align 8, !tbaa !221 ; 4 uses
  %.not.i.i.i.i10 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i.i10, label %_ZNSt3__14pairIN3jxl14QuantizedPatchENS_6vectorINS0_IjjEENS_9allocatorIS4_EEEEED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.by = getelementptr inbounds nuw i8, ptr %.018, i64 168
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !216
  %i.bz = load ptr, ptr %i.bv, align 8, !tbaa !220
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cc) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bl, i8 0, i64 24, i1 false)
  br label %_ZNSt3__14pairIN3jxl14QuantizedPatchENS_6vectorINS0_IjjEENS_9allocatorIS4_EEEEED2Ev.exit

_ZNSt3__14pairIN3jxl14QuantizedPatchENS_6vectorINS0_IjjEENS_9allocatorIS4_EEEEED2Ev.exit: ; preds = %bb.h, %bb.g
  %i.cd = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !220
  store <2 x ptr> %i.cd, ptr %i.bl, align 8, !tbaa !220
  %i.ce = load ptr, ptr %i.ay, align 8, !tbaa !220
  store ptr %i.ce, ptr %i.bv, align 8, !tbaa !220
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i8 0, i64 24, i1 false)
  %i.cf = load ptr, ptr %i.ap, align 8, !tbaa !225 ; 4 uses
  %.not.i.i.i12 = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i12, label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt3__14pairIN3jxl14QuantizedPatchENS_6vectorINS0_IjjEENS_9allocatorIS4_EEEEED2Ev.exit
  store ptr %i.cf, ptr %i.ar, align 8, !tbaa !260
  %i.cg = load ptr, ptr %i.as, align 8, !tbaa !184
  %i.ch = ptrtoint ptr %i.cg to i64
  %i.ci = ptrtoint ptr %i.cf to i64
  %i.cj = sub i64 %i.ch, %i.ci
  call void @_ZdlPvm(ptr noundef nonnull %i.cf, i64 noundef %i.cj) #21
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit.i

_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit.i: ; preds = %bb.i, %_ZNSt3__14pairIN3jxl14QuantizedPatchENS_6vectorINS0_IjjEENS_9allocatorIS4_EEEEED2Ev.exit
  %i.ck = load ptr, ptr %i.ai, align 8, !tbaa !225 ; 4 uses
  %.not.i.i.1.i = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.1.i, label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit.1.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit.i
  store ptr %i.ck, ptr %i.ak, align 8, !tbaa !260
  %i.cl = load ptr, ptr %i.al, align 8, !tbaa !184
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.ck to i64
  %i.co = sub i64 %i.cm, %i.cn
  call void @_ZdlPvm(ptr noundef nonnull %i.ck, i64 noundef %i.co) #21
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit.1.i

_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit.1.i: ; preds = %bb.j, %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit.i
  %i.cp = load ptr, ptr %i.ab, align 8, !tbaa !225 ; 4 uses
  %.not.i.i.2.i = icmp eq ptr %i.cp, null
  br i1 %.not.i.i.2.i, label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit.2.i, label %bb.k

bb.k:                                             ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit.1.i
  store ptr %i.cp, ptr %i.ad, align 8, !tbaa !260
  %i.cq = load ptr, ptr %i.ae, align 8, !tbaa !184
  %i.cr = ptrtoint ptr %i.cq to i64
  %i.cs = ptrtoint ptr %i.cp to i64
  %i.ct = sub i64 %i.cr, %i.cs
  call void @_ZdlPvm(ptr noundef nonnull %i.cp, i64 noundef %i.ct) #21
  br label %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit.2.i

_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit.2.i: ; preds = %bb.k, %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit.1.i
  %i.cu = load ptr, ptr %i.u, align 8, !tbaa !229 ; 4 uses
  %.not.i.i7.i = icmp eq ptr %i.cu, null
  br i1 %.not.i.i7.i, label %_ZNSt3__16vectorIaNS_9allocatorIaEEED2B8nn180100Ev.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit.2.i
  store ptr %i.cu, ptr %i.w, align 8, !tbaa !332
  %i.cv = load ptr, ptr %i.x, align 8, !tbaa !88
  %i.cw = ptrtoint ptr %i.cv to i64
  %i.cx = ptrtoint ptr %i.cu to i64
  %i.cy = sub i64 %i.cw, %i.cx
  call void @_ZdlPvm(ptr noundef nonnull %i.cu, i64 noundef %i.cy) #21
  br label %_ZNSt3__16vectorIaNS_9allocatorIaEEED2B8nn180100Ev.exit.i

_ZNSt3__16vectorIaNS_9allocatorIaEEED2B8nn180100Ev.exit.i: ; preds = %bb.l, %_ZNSt3__16vectorIfNS_9allocatorIfEEED2B8nn180100Ev.exit.2.i
  %i.cz = load ptr, ptr %i.n, align 8, !tbaa !229 ; 4 uses
  %.not.i.i7.1.i = icmp eq ptr %i.cz, null
  br i1 %.not.i.i7.1.i, label %_ZNSt3__16vectorIaNS_9allocatorIaEEED2B8nn180100Ev.exit.1.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt3__16vectorIaNS_9allocatorIaEEED2B8nn180100Ev.exit.i
  store ptr %i.cz, ptr %i.p, align 8, !tbaa !332
  %i.da = load ptr, ptr %i.q, align 8, !tbaa !88
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %i.cz to i64
  %i.dd = sub i64 %i.db, %i.dc
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dd) #21
  br label %_ZNSt3__16vectorIaNS_9allocatorIaEEED2B8nn180100Ev.exit.1.i

_ZNSt3__16vectorIaNS_9allocatorIaEEED2B8nn180100Ev.exit.1.i: ; preds = %bb.m, %_ZNSt3__16vectorIaNS_9allocatorIaEEED2B8nn180100Ev.exit.i
  %i.de = load ptr, ptr %i.g, align 8, !tbaa !229 ; 4 uses
  %.not.i.i7.2.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i7.2.i, label %_ZN3jxl14QuantizedPatchD2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt3__16vectorIaNS_9allocatorIaEEED2B8nn180100Ev.exit.1.i
  store ptr %i.de, ptr %i.i, align 8, !tbaa !332
  %i.df = load ptr, ptr %i.j, align 8, !tbaa !88
  %i.dg = ptrtoint ptr %i.df to i64
  %i.dh = ptrtoint ptr %i.de to i64
  %i.di = sub i64 %i.dg, %i.dh
  call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef %i.di) #21
  br label %_ZN3jxl14QuantizedPatchD2Ev.exit

_ZN3jxl14QuantizedPatchD2Ev.exit:                 ; preds = %_ZNSt3__16vectorIaNS_9allocatorIaEEED2B8nn180100Ev.exit.1.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %bb.o

bb.o:                                             ; preds = %bb.b, %_ZN3jxl14QuantizedPatchD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden ptr @_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE18__insert_with_sizeB8nn180100INS_11__wrap_iterIPS2_EES9_EES9_NS7_IPKS2_EET_T0_l(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr %2, ptr %3, i64 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !221    ; 6 uses
  %i.c = ptrtoint ptr %1 to i64                   ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 6 uses
  %i.e = sub i64 %i.c, %i.d                       ; 2 uses
  %i.f = getelementptr i8, ptr %i.b, i64 %i.e     ; 14 uses
  %i.g = icmp sgt i64 %4, 0
  br i1 %i.g, label %bb.b, label %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !220
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !216  ; 6 uses
  %i.l = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64                 ; 6 uses
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 3
  %.not = icmp sgt i64 %4, %i.o
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %4
  %i.q = sub i64 %i.m, %i.c                       ; 2 uses
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = icmp sgt i64 %4, %i.r
  br i1 %i.s, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds i8, ptr %2, i64 %i.q ; 3 uses
  %.not12.i.i.i = icmp eq ptr %i.t, %3
  br i1 %.not12.i.i.i, label %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE18__construct_at_endINS_11__wrap_iterIPS2_EES9_EEvT_T0_m.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.014.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %i.t, %bb.d ] ; 2 uses
  %.01113.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %i.k, %bb.d ] ; 2 uses
  %i.u = load i64, ptr %.014.i.i.i, align 4
  store i64 %i.u, ptr %.01113.i.i.i, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %.014.i.i.i, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.01113.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.v, %3
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE18__construct_at_endINS_11__wrap_iterIPS2_EES9_EEvT_T0_m.exit.loopexit, label %.lr.ph.i.i.i, !llvm.loop !8

_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE18__construct_at_endINS_11__wrap_iterIPS2_EES9_EEvT_T0_m.exit.loopexit: ; preds = %.lr.ph.i.i.i
  %.pre55 = ptrtoint ptr %i.w to i64
  br label %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE18__construct_at_endINS_11__wrap_iterIPS2_EES9_EEvT_T0_m.exit

_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE18__construct_at_endINS_11__wrap_iterIPS2_EES9_EEvT_T0_m.exit: ; preds = %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE18__construct_at_endINS_11__wrap_iterIPS2_EES9_EEvT_T0_m.exit.loopexit, %bb.d
  %.pre-phi = phi i64 [ %.pre55, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE18__construct_at_endINS_11__wrap_iterIPS2_EES9_EEvT_T0_m.exit.loopexit ], [ %i.m, %bb.d ]
  %i.x = sub i64 %.pre-phi, %i.m
  %i.y = getelementptr inbounds i8, ptr %i.k, i64 %i.x ; 3 uses
  store ptr %i.y, ptr %i.j, align 8, !tbaa !216
  %i.z = icmp sgt i64 %i.r, 0
  br i1 %i.z, label %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE18__construct_at_endINS_11__wrap_iterIPS2_EES9_EEvT_T0_m.exit..critedge_crit_edge, label %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEED2Ev.exit

_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE18__construct_at_endINS_11__wrap_iterIPS2_EES9_EEvT_T0_m.exit..critedge_crit_edge: ; preds = %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE18__construct_at_endINS_11__wrap_iterIPS2_EES9_EEvT_T0_m.exit
  %.pre56 = ptrtoint ptr %i.y to i64
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE18__construct_at_endINS_11__wrap_iterIPS2_EES9_EEvT_T0_m.exit..critedge_crit_edge, %bb.c
  %.pre-phi57 = phi i64 [ %.pre56, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE18__construct_at_endINS_11__wrap_iterIPS2_EES9_EEvT_T0_m.exit..critedge_crit_edge ], [ %i.m, %bb.c ]
  %i.aa = phi ptr [ %i.y, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE18__construct_at_endINS_11__wrap_iterIPS2_EES9_EEvT_T0_m.exit..critedge_crit_edge ], [ %i.k, %bb.c ] ; 4 uses
  %.sroa.045.0 = phi ptr [ %i.t, %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE18__construct_at_endINS_11__wrap_iterIPS2_EES9_EEvT_T0_m.exit..critedge_crit_edge ], [ %i.p, %bb.c ] ; 3 uses
  %.sroa.045.074 = ptrtoaddr ptr %.sroa.045.0 to i64 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %4 ; 2 uses
  %i.ac = ptrtoint ptr %i.ab to i64
  %i.ad = sub i64 %.pre-phi57, %i.ac
  %i.ae = getelementptr inbounds i8, ptr %i.f, i64 %i.ad ; 3 uses
  %i.af = icmp ult ptr %i.ae, %i.k
  br i1 %i.af, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.critedge
  %.sroa.4.0.lcssa.i = phi ptr [ %i.aa, %.critedge ], [ %i.ao, %.lr.ph.i ]
  store ptr %.sroa.4.0.lcssa.i, ptr %i.j, align 8, !tbaa !216
  %.not8.i.i.i.i.i.i = icmp eq ptr %i.aa, %i.ab
  br i1 %.not8.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12__move_rangeEPS2_S6_S6_.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %._crit_edge.i, %.lr.ph.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i ], [ %i.ae, %._crit_edge.i ] ; 2 uses
  %.079.i.i.i.i.i.i = phi ptr [ %i.ah, %.lr.ph.i.i.i.i.i.i ], [ %i.aa, %._crit_edge.i ] ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.ah = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -8 ; 2 uses
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !209
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !218
  %i.aj = getelementptr inbounds i8, ptr %.010.i.i.i.i.i.i, i64 -4
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !209
  %i.al = getelementptr inbounds i8, ptr %.079.i.i.i.i.i.i, i64 -4
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !219
  %.not.i.i.i.i.i.i = icmp eq ptr %1, %i.ag
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12__move_rangeEPS2_S6_S6_.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !936

.lr.ph.i:                                         ; preds = %.critedge, %.lr.ph.i
  %.01720.i = phi ptr [ %i.an, %.lr.ph.i ], [ %i.ae, %.critedge ] ; 2 uses
  %.sroa.4.019.i = phi ptr [ %i.ao, %.lr.ph.i ], [ %i.aa, %.critedge ] ; 2 uses
  %i.am = load i64, ptr %.01720.i, align 4
  store i64 %i.am, ptr %.sroa.4.019.i, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %.01720.i, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.4.019.i, i64 8 ; 2 uses
  %i.ap = icmp ult ptr %i.an, %i.k
  br i1 %i.ap, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !937

_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12__move_rangeEPS2_S6_S6_.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %._crit_edge.i
  %.not6.i.i.i.i.i = icmp eq ptr %2, %.sroa.045.0
  br i1 %.not6.i.i.i.i.i, label %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEED2Ev.exit, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE12__move_rangeEPS2_S6_S6_.exit
  %i.aq = add i64 %.sroa.045.074, -8
  %i.ar = sub i64 %i.aq, %i.a                     ; 2 uses
  %i.as = lshr i64 %i.ar, 3
  %i.at = add nuw nsw i64 %i.as, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.ar, 328
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader93, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.au = add i64 %.sroa.045.074, -8
  %i.av = sub i64 %i.au, %i.a
  %i.aw = and i64 %i.av, -8                       ; 4 uses
  %i.ax = add i64 %i.aw, %i.c
  %i.ay = add i64 %i.ax, 4
  %i.az = sub i64 %i.ay, %i.d
  %scevgep = getelementptr i8, ptr %i.b, i64 %i.az
  %i.ba = getelementptr i8, ptr %2, i64 %i.aw
  %scevgep75 = getelementptr i8, ptr %i.ba, i64 4
  %i.bb = add i64 %i.c, 4
  %i.bc = sub i64 %i.bb, %i.d
  %scevgep76 = getelementptr i8, ptr %i.b, i64 %i.bc
  %i.bd = add i64 %i.aw, %i.c
  %i.be = add i64 %i.bd, 8
  %i.bf = sub i64 %i.be, %i.d
  %scevgep77 = getelementptr i8, ptr %i.b, i64 %i.bf
  %scevgep78 = getelementptr i8, ptr %2, i64 4
  %i.bg = getelementptr i8, ptr %2, i64 %i.aw
  %scevgep79 = getelementptr i8, ptr %i.bg, i64 8
  %bound0 = icmp ult ptr %1, %scevgep75
  %bound1 = icmp ult ptr %2, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound080 = icmp ult ptr %scevgep76, %scevgep79
  %bound181 = icmp ult ptr %scevgep78, %scevgep77
  %found.conflict82 = and i1 %bound080, %bound181
  %conflict.rdx = or i1 %found.conflict, %found.conflict82
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.preheader93, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.at, 4611686018427387900     ; 3 uses
  %i.bh = shl i64 %n.vec, 3                       ; 2 uses
  %i.bi = getelementptr i8, ptr %i.f, i64 %i.bh
  %i.bj = getelementptr i8, ptr %2, i64 %i.bh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bk = shl i64 %index, 3                       ; 3 uses
  %i.bl = or disjoint i64 %i.bk, 16               ; 2 uses
  %next.gep = getelementptr i8, ptr %i.f, i64 %i.bk
  %next.gep83 = getelementptr i8, ptr %i.f, i64 %i.bl
  %next.gep84 = getelementptr i8, ptr %2, i64 %i.bk
  %next.gep85 = getelementptr i8, ptr %2, i64 %i.bl
  %wide.vec = load <4 x i32>, ptr %next.gep84, align 4, !tbaa !209
  %wide.vec87 = load <4 x i32>, ptr %next.gep85, align 4, !tbaa !209
  store <4 x i32> %wide.vec, ptr %next.gep, align 4, !tbaa !209
  store <4 x i32> %wide.vec87, ptr %next.gep83, align 4, !tbaa !209
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !938

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.at, %n.vec
  br i1 %cmp.n, label %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEED2Ev.exit, label %.lr.ph.i.i.i.i.i.preheader93

.lr.ph.i.i.i.i.i.preheader93:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %storemerge8.i.i.i.i.i.ph = phi ptr [ %i.f, %vector.memcheck ], [ %i.f, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bi, %middle.block ]
  %.07.i.i.i.i.i.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bj, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader93, %.lr.ph.i.i.i.i.i
  %storemerge8.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i ], [ %storemerge8.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader93 ] ; 2 uses
  %.07.i.i.i.i.i = phi ptr [ %i.bo, %.lr.ph.i.i.i.i.i ], [ %.07.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader93 ] ; 2 uses
  %i.bn = load <2 x i32>, ptr %.07.i.i.i.i.i, align 4, !tbaa !209
  store <2 x i32> %i.bn, ptr %storemerge8.i.i.i.i.i, align 4, !tbaa !209
  %i.bo = getelementptr inbounds nuw i8, ptr %.07.i.i.i.i.i, i64 8 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %storemerge8.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.bo, %.sroa.045.0
  br i1 %.not.i.i.i.i.i, label %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEED2Ev.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !939

bb.e:                                             ; preds = %bb.b
  %i.bq = sub i64 %i.m, %i.d
  %i.br = ashr exact i64 %i.bq, 3
  %i.bs = add i64 %i.br, %4                       ; 2 uses
  %i.bt = icmp ugt i64 %i.bs, 2305843009213693951
  br i1 %i.bt, label %bb.f, label %_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE20__throw_length_errorB8nn180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #22
  unreachable

_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit: ; preds = %bb.e
  %i.bu = sub i64 %i.l, %i.d                      ; 2 uses
  %.not.i = icmp ult i64 %i.bu, 9223372036854775800
  %i.bv = ashr exact i64 %i.bu, 2
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bv, i64 %i.bs)
  %.0.i = select i1 %.not.i, i64 %.sroa.speculated.i, i64 2305843009213693951 ; 4 uses
  %i.bw = icmp eq i64 %.0.i, 0
  br i1 %i.bw, label %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEEC2EmmS5_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit
  %i.bx = icmp ugt i64 %.0.i, 2305843009213693951
  br i1 %i.bx, label %bb.h, label %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt28__throw_bad_array_new_lengthB8nn180100v() #22
  unreachable

_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i: ; preds = %bb.g
  %i.by = shl nuw i64 %.0.i, 3
  %i.bz = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #20
  %.pre = load ptr, ptr %0, align 8, !tbaa !221
  br label %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEEC2EmmS5_.exit

_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEEC2EmmS5_.exit: ; preds = %_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i
  %i.ca = phi ptr [ %.pre, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i ], [ %i.b, %_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit ] ; 5 uses
  %storemerge.i = phi ptr [ %i.bz, %_ZNSt3__119__allocate_at_leastB8nn180100INS_9allocatorINS_4pairIjjEEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS7_m.exit.i ], [ null, %_ZNKSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE11__recommendB8nn180100Em.exit ] ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %storemerge.i, i64 %i.e ; 6 uses
  %.idx.i = shl nuw nsw i64 %4, 3                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.cb, ptr align 4 %2, i64 %.idx.i, i1 false)
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %storemerge.i, i64 %.0.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx.i ; 2 uses
  %.not13.i.i = icmp eq ptr %1, %i.ca
  br i1 %.not13.i.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorINS_4pairIjjEEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEEC2EmmS5_.exit, %.lr.ph.i.i
  %i.ce = phi ptr [ %i.cf, %.lr.ph.i.i ], [ %i.cb, %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEEC2EmmS5_.exit ]
  %.sroa.18.014.i.i = phi ptr [ %i.cg, %.lr.ph.i.i ], [ %i.f, %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEEC2EmmS5_.exit ]
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 -8 ; 3 uses
  %i.cg = getelementptr inbounds i8, ptr %.sroa.18.014.i.i, i64 -8 ; 3 uses
  %i.ch = load i64, ptr %i.cg, align 4
  store i64 %i.ch, ptr %i.cf, align 4
  %.not.i.i = icmp eq ptr %i.cg, %i.ca
  br i1 %.not.i.i, label %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorINS_4pairIjjEEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_.exit.i, label %.lr.ph.i.i, !llvm.loop !1

_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorINS_4pairIjjEEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_.exit.i: ; preds = %.lr.ph.i.i, %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEEC2EmmS5_.exit
  %.sroa.2.0.copyload.i.i = phi ptr [ %i.cb, %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEEC2EmmS5_.exit ], [ %i.cf, %.lr.ph.i.i ]
  %i.ci = load ptr, ptr %i.j, align 8, !tbaa !216 ; 2 uses
  %.not12.i.i = icmp eq ptr %1, %i.ci
  br i1 %.not12.i.i, label %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EEPS2_.exit, label %.lr.ph.i14.i

.lr.ph.i14.i:                                     ; preds = %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorINS_4pairIjjEEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_.exit.i, %.lr.ph.i14.i
  %.014.i.i = phi ptr [ %i.ck, %.lr.ph.i14.i ], [ %i.f, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorINS_4pairIjjEEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_.exit.i ] ; 2 uses
  %.01113.i.i = phi ptr [ %i.cl, %.lr.ph.i14.i ], [ %i.cd, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorINS_4pairIjjEEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_.exit.i ] ; 2 uses
  %i.cj = load i64, ptr %.014.i.i, align 4
  store i64 %i.cj, ptr %.01113.i.i, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %.014.i.i, i64 8 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.01113.i.i, i64 8 ; 2 uses
  %.not.i15.i = icmp eq ptr %i.ck, %i.ci
  br i1 %.not.i15.i, label %_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EEPS2_.exit, label %.lr.ph.i14.i, !llvm.loop !940

_ZNSt3__16vectorINS_4pairIjjEENS_9allocatorIS2_EEE26__swap_out_circular_bufferERNS_14__split_bufferIS2_RS4_EEPS2_.exit: ; preds = %.lr.ph.i14.i, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorINS_4pairIjjEEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_.exit.i
  %.011.lcssa.i.i = phi ptr [ %i.cd, %_ZNSt3__142__uninitialized_allocator_move_if_noexceptB8nn180100INS_9allocatorINS_4pairIjjEEEENS_16reverse_iteratorIPS3_EES7_S7_EET2_RT_T0_T1_S8_.exit.i ], [ %i.cl, %.lr.ph.i14.i ]
  store ptr %.sroa.2.0.copyload.i.i, ptr %0, align 8, !tbaa !220
  store ptr %.011.lcssa.i.i, ptr %i.j, align 8, !tbaa !220
  %i.cm = load ptr, ptr %i.h, align 8, !tbaa !220
  store ptr %i.cc, ptr %i.h, align 8, !tbaa !220
  %.not.i39 = icmp eq ptr %i.ca, null
  br i1 %.not.i39, label %_ZNSt3__114__split_bufferINS_4pairIjjEERNS_9allocatorIS2_EEED2Ev.exit, label %bb.i
end_hunk_0
