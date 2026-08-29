Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/graycodepattern?download=true
inline.NumInlined: 547
inline.NumDeleted: 286
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZNK2cv16structured_light20GrayCodePattern_Impl18computeShadowMasksERKNS_11_InputArrayES4_RKNS_12_OutputArrayE:bb.a
  %i.by = getelementptr inbounds nuw [208 x i8], ptr %i.bx, i64 %indvars.iv79 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !38
  %i.cb = icmp slt i32 %i.ca, 2
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !46
  %i.ce = getelementptr inbounds nuw i8, ptr %i.by, i64 128
  %i.cf = load i64, ptr %i.ce, align 8
  %i.cg = mul i64 %i.cf, %indvars.iv71
  %.sink.idx.i45.us.us = select i1 %i.cb, i64 0, i64 %i.cg
  %.sink.i46.us.us = getelementptr inbounds nuw i8, ptr %i.cd, i64 %.sink.idx.i45.us.us
  %i.ch = getelementptr inbounds nuw i8, ptr %.sink.i46.us.us, i64 %indvars.iv74
  %. = zext i1 %i.bw to i8
  store i8 %., ptr %i.ch, align 1, !tbaa !47
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next72, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us.us, label %bb.e, !llvm.loop !105

.preheader.us.us:                                 ; preds = %.preheader.lr.ph.us.us, %._crit_edge.us.us
  %indvars.iv74 = phi i64 [ 0, %.preheader.lr.ph.us.us ], [ %indvars.iv.next75, %._crit_edge.us.us ] ; 4 uses
  br label %bb.e

._crit_edge.us.us:                                ; preds = %bb.e
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count77
  br i1 %exitcond78.not, label %._crit_edge59.us.us, label %.preheader.us.us, !llvm.loop !106

._crit_edge59.us.us:                              ; preds = %._crit_edge.us.us
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %i.ci = load ptr, ptr %i.n, align 8, !tbaa !28
  %i.cj = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = sdiv exact i64 %i.cm, 208
  %sext88 = shl i64 %i.cn, 32
  %i.co = ashr exact i64 %sext88, 32
  %i.cp = icmp slt i64 %indvars.iv.next80, %i.co
  br i1 %i.cp, label %.lr.ph.split.us.split.us, label %._crit_edge61, !llvm.loop !107

.split.us.split.us:                               ; preds = %.lr.ph.split.us.split.us
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %.preheader.lr.ph.us
  %indvars.iv68 = phi i64 [ %indvars.iv.next69, %.preheader.lr.ph.us ], [ 0, %.lr.ph.split.us ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef %.fr, i32 noundef %.fr64, i32 noundef 0)
  %i.cr = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.cs = getelementptr inbounds nuw [208 x i8], ptr %i.cr, i64 %indvars.iv68
  %i.ct = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.cs, ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %.preheader.lr.ph.us unwind label %.split.us.split ; 0 uses

.preheader.lr.ph.us:                              ; preds = %.lr.ph.split.us.split
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %indvars.iv.next69 = add nuw nsw i64 %indvars.iv68, 1 ; 2 uses
  %i.cu = load ptr, ptr %i.n, align 8, !tbaa !28
  %i.cv = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = sdiv exact i64 %i.cy, 208
  %sext87 = shl i64 %i.cz, 32
  %i.da = ashr exact i64 %sext87, 32
  %i.db = icmp slt i64 %indvars.iv.next69, %i.da
  br i1 %i.db, label %.lr.ph.split.us.split, label %._crit_edge61, !llvm.loop !107

.split.us.split:                                  ; preds = %.lr.ph.split.us.split
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

._crit_edge61:                                    ; preds = %bb.f, %.preheader.lr.ph.us, %._crit_edge59.us.us, %_ZNSt6vectorIN2cv3MatESaIS1_EE6resizeEm.exit
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 0, %.lr.ph ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @_ZN2cv3MatC1Eiii(ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef %.fr, i32 noundef %.fr64, i32 noundef 0)
  %i.dd = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.de = getelementptr inbounds nuw [208 x i8], ptr %i.dd, i64 %indvars.iv
  %i.df = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3MataSEOS0_(ptr noundef nonnull align 8 dereferenceable(208) %i.de, ptr noundef nonnull align 8 dereferenceable(208) %4)
          to label %bb.f unwind label %.split     ; 0 uses

bb.f:                                             ; preds = %.lr.ph.split
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.dg = load ptr, ptr %i.n, align 8, !tbaa !28
  %i.dh = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = ptrtoint ptr %i.dh to i64
  %i.dk = sub i64 %i.di, %i.dj
  %i.dl = sdiv exact i64 %i.dk, 208
  %sext = shl i64 %i.dl, 32
  %i.dm = ashr exact i64 %sext, 32
  %i.dn = icmp slt i64 %indvars.iv.next, %i.dm
  br i1 %i.dn, label %.lr.ph.split, label %._crit_edge61, !llvm.loop !107

.split:                                           ; preds = %.lr.ph.split
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %.split.us

.split.us:                                        ; preds = %.split.us.split, %.split.us.split.us, %.split
  %.us-phi = phi { ptr, i32 } [ %i.do, %.split ], [ %i.dc, %.split.us.split ], [ %i.cq, %.split.us.split.us ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.us-phi
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK2cv16structured_light20GrayCodePattern_Impl12getProjPixelERKNS_11_InputArrayEiiRNS_6Point_IiEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
.lr.ph:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = sext i32 %3 to i64                       ; 4 uses
  %i.e = sext i32 %2 to i64                       ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.d

._crit_edge:                                      ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  %i.g = load i8, ptr %.sroa.0153.1, align 1, !tbaa !47 ; 2 uses
  %.not.i = icmp eq i8 %i.g, 0
  %.pre23.i = ptrtoint ptr %.sroa.11158.1 to i64
  %.pre24.i = ptrtoint ptr %.sroa.0153.1 to i64   ; 2 uses
  %.pre26.i = sub i64 %.pre23.i, %.pre24.i        ; 3 uses
  %.pre28.i = trunc i64 %.pre26.i to i32          ; 2 uses
  br i1 %.not.i, label %._crit_edge22.i, label %bb.a

bb.a:                                             ; preds = %._crit_edge
  %i.h = add i32 %.pre28.i, -1
  %ldexp.i = tail call double @ldexp(double 1.000000e+00, i32 %i.h)
  %i.i = fptosi double %ldexp.i to i32
  br label %._crit_edge22.i

._crit_edge22.i:                                  ; preds = %bb.a, %._crit_edge
  %.015.i = phi i32 [ %i.i, %bb.a ], [ 0, %._crit_edge ] ; 2 uses
  %i.j = icmp sgt i32 %.pre28.i, 1
  br i1 %i.j, label %.lr.ph.preheader.i, label %_ZNK2cv16structured_light20GrayCodePattern_Impl9grayToDecERKSt6vectorIhSaIhEE.exit

.lr.ph.preheader.i:                               ; preds = %._crit_edge22.i
  %i.k = zext i8 %i.g to i32
  %wide.trip.count.i = and i64 %.pre26.i, 2147483647
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %.01419.i = phi i32 [ %i.k, %.lr.ph.preheader.i ], [ %i.o, %bb.c ] ; 2 uses
  %.118.i = phi i32 [ %.015.i, %.lr.ph.preheader.i ], [ %.2.i, %bb.c ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.0153.1, i64 %indvars.iv.i
  %i.m = load i8, ptr %i.l, align 1, !tbaa !47
  %i.n = zext i8 %i.m to i32                      ; 2 uses
  %i.o = xor i32 %.01419.i, %i.n
  %.not16.i = icmp eq i32 %.01419.i, %i.n
  br i1 %.not16.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  %i.p = xor i64 %indvars.iv.i, -1
  %i.q = add i64 %.pre26.i, %i.p
  %i.r = trunc i64 %i.q to i32
  %ldexp17.i = tail call double @ldexp(double 1.000000e+00, i32 %i.r)
  %i.s = fptosi double %ldexp17.i to i32
  %i.t = add nsw i32 %.118.i, %i.s
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %.2.i = phi i32 [ %i.t, %bb.b ], [ %.118.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK2cv16structured_light20GrayCodePattern_Impl9grayToDecERKSt6vectorIhSaIhEE.exit, label %.lr.ph.i, !llvm.loop !108

_ZNK2cv16structured_light20GrayCodePattern_Impl9grayToDecERKSt6vectorIhSaIhEE.exit: ; preds = %bb.c, %._crit_edge22.i
  %.1.lcssa.i = phi i32 [ %.015.i, %._crit_edge22.i ], [ %.2.i, %bb.c ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.t

bb.d:                                             ; preds = %.lr.ph, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit
  %.044252 = phi i64 [ 0, %.lr.ph ], [ %i.bz, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ] ; 2 uses
  %.045251 = phi i1 [ false, %.lr.ph ], [ %spec.select, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ]
  %.sroa.0153.0250 = phi ptr [ null, %.lr.ph ], [ %.sroa.0153.1, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ] ; 14 uses
  %.sroa.11158.0249 = phi ptr [ null, %.lr.ph ], [ %.sroa.11158.1, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ] ; 11 uses
  %.sroa.20162.0248 = phi ptr [ null, %.lr.ph ], [ %.sroa.20162.1, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit ] ; 3 uses
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !31
  %.idx = mul i64 %.044252, 416
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !38
  %i.z = icmp slt i32 %i.y, 2
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !46
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = mul i64 %i.ad, %i.d
  %.sink.idx.i = select i1 %i.z, i64 0, i64 %i.ae
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.sink.idx.i
  %i.af = getelementptr inbounds i8, ptr %.sink.i, i64 %i.e
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !47
  %5 = uitofp i8 %i.ag to double                  ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 212
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !38
  %i.aj = icmp slt i32 %i.ai, 2
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 232
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !46
  %i.am = getelementptr inbounds nuw i8, ptr %i.w, i64 336
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = mul i64 %i.an, %i.d
  %.sink.idx.i58 = select i1 %i.aj, i64 0, i64 %i.ao
  %.sink.i59 = getelementptr inbounds nuw i8, ptr %i.al, i64 %.sink.idx.i58
  %i.ap = getelementptr inbounds i8, ptr %.sink.i59, i64 %i.e
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !47
  %i.ar = uitofp i8 %i.aq to double               ; 2 uses
  %i.as = fsub double %5, %i.ar
  %i.at = tail call noundef double @llvm.fabs.f64(double %i.as)
  %i.au = load i64, ptr %i.f, align 8, !tbaa !21
  %i.av = uitofp i64 %i.au to double
  %i.aw = fcmp olt double %i.at, %i.av
  %spec.select = select i1 %i.aw, i1 true, i1 %.045251 ; 2 uses
  %6 = fcmp ogt double %5, %i.ar
  %.not.i.i = icmp eq ptr %.sroa.11158.0249, %.sroa.20162.0248 ; 2 uses
  br i1 %6, label %bb.e, label %bb.k

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %.sroa.11158.0249, align 1, !tbaa !47
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.11158.0249, i64 1
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.g:                                             ; preds = %bb.e
  %i.ay = ptrtoint ptr %.sroa.11158.0249 to i64
  %i.az = ptrtoint ptr %.sroa.0153.0250 to i64
  %i.ba = sub i64 %i.ay, %i.az                    ; 8 uses
  %i.bb = icmp eq i64 %i.ba, 9223372036854775807
  br i1 %i.bb, label %bb.h, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #23
          to label %.noexc unwind label %.loopexit.split-lp194

.noexc:                                           ; preds = %bb.h
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bc = add i64 %.sroa.speculated.i.i.i.i, %i.ba ; 2 uses
  %i.bd = icmp ult i64 %i.bc, %i.ba
  %i.be = tail call i64 @llvm.umin.i64(i64 %i.bc, i64 9223372036854775807)
  %i.bf = select i1 %i.bd, i64 9223372036854775807, i64 %i.be ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #24
          to label %.noexc61 unwind label %.loopexit193 ; 4 uses

.noexc61:                                         ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.ba ; 2 uses
  store i8 1, ptr %i.bh, align 1, !tbaa !47
  %i.bi = icmp sgt i64 %i.ba, 0
  br i1 %i.bi, label %bb.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

bb.i:                                             ; preds = %.noexc61
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr align 1 %.sroa.0153.0250, i64 %i.ba, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.i, %.noexc61
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 1
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0153.0250, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0153.0250, i64 noundef %i.ba) #25
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 %i.bf
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

.loopexit193:                                     ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit195 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit124

.loopexit.split-lp194:                            ; preds = %bb.h
  %lpad.loopexit.split-lp196 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit124

bb.k:                                             ; preds = %bb.d
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr %.sroa.11158.0249, align 1, !tbaa !47
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.11158.0249, i64 1
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

bb.m:                                             ; preds = %bb.k
  %i.bm = ptrtoint ptr %.sroa.11158.0249 to i64
  %i.bn = ptrtoint ptr %.sroa.0153.0250 to i64
  %i.bo = sub i64 %i.bm, %i.bn                    ; 8 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775807
  br i1 %i.bp, label %bb.n, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i63

bb.n:                                             ; preds = %bb.m
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #23
          to label %.noexc69 unwind label %.loopexit.split-lp189

.noexc69:                                         ; preds = %bb.n
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i63: ; preds = %bb.m
  %.sroa.speculated.i.i.i.i64 = tail call i64 @llvm.umax.i64(i64 %i.bo, i64 1)
  %i.bq = add i64 %.sroa.speculated.i.i.i.i64, %i.bo ; 2 uses
  %i.br = icmp ult i64 %i.bq, %i.bo
  %i.bs = tail call i64 @llvm.umin.i64(i64 %i.bq, i64 9223372036854775807)
  %i.bt = select i1 %i.br, i64 9223372036854775807, i64 %i.bs ; 3 uses
  %.not.i.i.i.i65 = icmp ne i64 %i.bt, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i65)
  %i.bu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #24
          to label %.noexc70 unwind label %.loopexit188 ; 4 uses

.noexc70:                                         ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i63
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bo ; 2 uses
  store i8 0, ptr %i.bv, align 1, !tbaa !47
  %i.bw = icmp sgt i64 %i.bo, 0
  br i1 %i.bw, label %bb.o, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i66

bb.o:                                             ; preds = %.noexc70
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bu, ptr align 1 %.sroa.0153.0250, i64 %i.bo, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i66

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i66: ; preds = %bb.o, %.noexc70
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  %.not.i17.i.i.i67 = icmp eq ptr %.sroa.0153.0250, null
  br i1 %.not.i17.i.i.i67, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i68, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i66
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0153.0250, i64 noundef %i.bo) #25
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i68

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i68: ; preds = %bb.p, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i66
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bt
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit

.loopexit188:                                     ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i63
  %lpad.loopexit190 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit124

.loopexit.split-lp189:                            ; preds = %bb.n
  %lpad.loopexit.split-lp191 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit124

_ZNSt6vectorIhSaIhEE9push_backEOh.exit:           ; preds = %bb.l, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i68, %bb.f, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i
  %.sroa.20162.1 = phi ptr [ %.sroa.20162.0248, %bb.f ], [ %i.bk, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ], [ %i.by, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i68 ], [ %.sroa.20162.0248, %bb.l ] ; 4 uses
  %.sroa.11158.1 = phi ptr [ %i.ax, %bb.f ], [ %i.bj, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ], [ %i.bx, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i68 ], [ %i.bl, %bb.l ] ; 2 uses
  %.sroa.0153.1 = phi ptr [ %.sroa.0153.0250, %bb.f ], [ %i.bg, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i ], [ %i.bu, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i68 ], [ %.sroa.0153.0250, %bb.l ] ; 7 uses
  %i.bz = add nuw i64 %.044252, 1                 ; 2 uses
  %i.ca = load i64, ptr %i.c, align 8, !tbaa !13
  %i.cb = icmp ult i64 %i.bz, %i.ca
  br i1 %i.cb, label %bb.d, label %._crit_edge, !llvm.loop !109

._crit_edge262:                                   ; preds = %_ZNSt6vectorIhSaIhEE9push_backEOh.exit110
  %i.cc = load i8, ptr %.sroa.0140.1, align 1, !tbaa !47 ; 2 uses
  %.not.i72 = icmp eq i8 %i.cc, 0
  %.pre23.i75 = ptrtoint ptr %.sroa.11.1 to i64
  %.pre24.i76 = ptrtoint ptr %.sroa.0140.1 to i64 ; 2 uses
  %.pre26.i77 = sub i64 %.pre23.i75, %.pre24.i76  ; 3 uses
  %.pre28.i78 = trunc i64 %.pre26.i77 to i32      ; 2 uses
  br i1 %.not.i72, label %._crit_edge22.i80, label %bb.q

bb.q:                                             ; preds = %._crit_edge262
  %i.cd = add i32 %.pre28.i78, -1
  %ldexp.i79 = tail call double @ldexp(double 1.000000e+00, i32 %i.cd)
  %i.ce = fptosi double %ldexp.i79 to i32
  br label %._crit_edge22.i80

._crit_edge22.i80:                                ; preds = %bb.q, %._crit_edge262
  %.015.i81 = phi i32 [ %i.ce, %bb.q ], [ 0, %._crit_edge262 ] ; 2 uses
  %i.cf = icmp sgt i32 %.pre28.i78, 1
  br i1 %i.cf, label %.lr.ph.preheader.i83, label %_ZNK2cv16structured_light20GrayCodePattern_Impl9grayToDecERKSt6vectorIhSaIhEE.exit94

.lr.ph.preheader.i83:                             ; preds = %._crit_edge22.i80
  %i.cg = zext i8 %i.cc to i32
  %wide.trip.count.i84 = and i64 %.pre26.i77, 2147483647
  br label %.lr.ph.i85

.lr.ph.i85:                                       ; preds = %bb.s, %.lr.ph.preheader.i83
  %indvars.iv.i86 = phi i64 [ 1, %.lr.ph.preheader.i83 ], [ %indvars.iv.next.i92, %bb.s ] ; 3 uses
  %.01419.i87 = phi i32 [ %i.cg, %.lr.ph.preheader.i83 ], [ %i.ck, %bb.s ] ; 2 uses
  %.118.i88 = phi i32 [ %.015.i81, %.lr.ph.preheader.i83 ], [ %.2.i91, %bb.s ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0140.1, i64 %indvars.iv.i86
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !47
  %i.cj = zext i8 %i.ci to i32                    ; 2 uses
  %i.ck = xor i32 %.01419.i87, %i.cj
  %.not16.i89 = icmp eq i32 %.01419.i87, %i.cj
  br i1 %.not16.i89, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph.i85
  %i.cl = xor i64 %indvars.iv.i86, -1
  %i.cm = add i64 %.pre26.i77, %i.cl
  %i.cn = trunc i64 %i.cm to i32
  %ldexp17.i90 = tail call double @ldexp(double 1.000000e+00, i32 %i.cn)
  %i.co = fptosi double %ldexp17.i90 to i32
  %i.cp = add nsw i32 %.118.i88, %i.co
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i85
  %.2.i91 = phi i32 [ %i.cp, %bb.r ], [ %.118.i88, %.lr.ph.i85 ] ; 2 uses
  %indvars.iv.next.i92 = add nuw nsw i64 %indvars.iv.i86, 1 ; 2 uses
  %exitcond.not.i93 = icmp eq i64 %indvars.iv.next.i92, %wide.trip.count.i84
  br i1 %exitcond.not.i93, label %_ZNK2cv16structured_light20GrayCodePattern_Impl9grayToDecERKSt6vectorIhSaIhEE.exit94, label %.lr.ph.i85, !llvm.loop !108

bb.t:                                             ; preds = %_ZNK2cv16structured_light20GrayCodePattern_Impl9grayToDecERKSt6vectorIhSaIhEE.exit, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit110
  %.0260 = phi i64 [ 0, %_ZNK2cv16structured_light20GrayCodePattern_Impl9grayToDecERKSt6vectorIhSaIhEE.exit ], [ %i.ew, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit110 ] ; 2 uses
  %.247259 = phi i1 [ %spec.select, %_ZNK2cv16structured_light20GrayCodePattern_Impl9grayToDecERKSt6vectorIhSaIhEE.exit ], [ %spec.select57, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit110 ]
  %.sroa.0140.0258 = phi ptr [ null, %_ZNK2cv16structured_light20GrayCodePattern_Impl9grayToDecERKSt6vectorIhSaIhEE.exit ], [ %.sroa.0140.1, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit110 ] ; 13 uses
  %.sroa.11.0257 = phi ptr [ null, %_ZNK2cv16structured_light20GrayCodePattern_Impl9grayToDecERKSt6vectorIhSaIhEE.exit ], [ %.sroa.11.1, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit110 ] ; 8 uses
  %.sroa.20.0256 = phi ptr [ null, %_ZNK2cv16structured_light20GrayCodePattern_Impl9grayToDecERKSt6vectorIhSaIhEE.exit ], [ %.sroa.20.1, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit110 ] ; 3 uses
  %i.cq = load i64, ptr %i.c, align 8, !tbaa !13
  %i.cr = add i64 %i.cq, %.0260
  %i.cs = load ptr, ptr %i.b, align 8, !tbaa !31
  %.idx298 = mul i64 %i.cr, 416
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %.idx298 ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !38
  %i.cw = icmp slt i32 %i.cv, 2
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !46
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ct, i64 128
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = mul i64 %i.da, %i.d
  %.sink.idx.i95 = select i1 %i.cw, i64 0, i64 %i.db
  %.sink.i96 = getelementptr inbounds nuw i8, ptr %i.cy, i64 %.sink.idx.i95
  %i.dc = getelementptr inbounds i8, ptr %.sink.i96, i64 %i.e
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !47
  %7 = uitofp i8 %i.dd to double                  ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.ct, i64 212
  %i.df = load i32, ptr %i.de, align 4, !tbaa !38
  %i.dg = icmp slt i32 %i.df, 2
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ct, i64 232
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !46
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ct, i64 336
  %i.dk = load i64, ptr %i.dj, align 8
  %i.dl = mul i64 %i.dk, %i.d
  %.sink.idx.i98 = select i1 %i.dg, i64 0, i64 %i.dl
  %.sink.i99 = getelementptr inbounds nuw i8, ptr %i.di, i64 %.sink.idx.i98
  %i.dm = getelementptr inbounds i8, ptr %.sink.i99, i64 %i.e
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !47
  %i.do = uitofp i8 %i.dn to double               ; 2 uses
  %i.dp = fsub double %7, %i.do
  %i.dq = tail call noundef double @llvm.fabs.f64(double %i.dp)
  %i.dr = load i64, ptr %i.f, align 8, !tbaa !21
  %i.ds = uitofp i64 %i.dr to double
  %i.dt = fcmp olt double %i.dq, %i.ds
  %spec.select57 = select i1 %i.dt, i1 true, i1 %.247259 ; 2 uses
  %8 = fcmp ogt double %7, %i.do
  %.not.i.i101 = icmp eq ptr %.sroa.11.0257, %.sroa.20.0256 ; 2 uses
  br i1 %8, label %bb.u, label %bb.aa

bb.u:                                             ; preds = %bb.t
  br i1 %.not.i.i101, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i8 1, ptr %.sroa.11.0257, align 1, !tbaa !47
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.11.0257, i64 1
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit110

bb.w:                                             ; preds = %bb.u
  %i.dv = ptrtoint ptr %.sroa.11.0257 to i64
  %i.dw = ptrtoint ptr %.sroa.0140.0258 to i64
  %i.dx = sub i64 %i.dv, %i.dw                    ; 8 uses
  %i.dy = icmp eq i64 %i.dx, 9223372036854775807
  br i1 %i.dy, label %bb.x, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i102

bb.x:                                             ; preds = %bb.w
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #23
          to label %.noexc108 unwind label %.loopexit.split-lp184

.noexc108:                                        ; preds = %bb.x
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i102: ; preds = %bb.w
  %.sroa.speculated.i.i.i.i103 = tail call i64 @llvm.umax.i64(i64 %i.dx, i64 1)
  %i.dz = add i64 %.sroa.speculated.i.i.i.i103, %i.dx ; 2 uses
  %i.ea = icmp ult i64 %i.dz, %i.dx
  %i.eb = tail call i64 @llvm.umin.i64(i64 %i.dz, i64 9223372036854775807)
  %i.ec = select i1 %i.ea, i64 9223372036854775807, i64 %i.eb ; 3 uses
  %.not.i.i.i.i104 = icmp ne i64 %i.ec, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i104)
  %i.ed = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ec) #24
          to label %.noexc109 unwind label %.loopexit183 ; 4 uses

.noexc109:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i102
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.dx ; 2 uses
  store i8 1, ptr %i.ee, align 1, !tbaa !47
  %i.ef = icmp sgt i64 %i.dx, 0
  br i1 %i.ef, label %bb.y, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i105

bb.y:                                             ; preds = %.noexc109
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ed, ptr align 1 %.sroa.0140.0258, i64 %i.dx, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i105

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i105: ; preds = %bb.y, %.noexc109
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 1
  %.not.i17.i.i.i106 = icmp eq ptr %.sroa.0140.0258, null
  br i1 %.not.i17.i.i.i106, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i107, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i105
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0140.0258, i64 noundef %i.dx) #25
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i107

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i107: ; preds = %bb.z, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i105
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 %i.ec
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit110

.loopexit183:                                     ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i102
  %lpad.loopexit185 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp184:                            ; preds = %bb.x
  %lpad.loopexit.split-lp186 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.aa:                                            ; preds = %bb.t
  br i1 %.not.i.i101, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store i8 0, ptr %.sroa.11.0257, align 1, !tbaa !47
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.11.0257, i64 1
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit110

bb.ac:                                            ; preds = %bb.aa
  %i.ej = ptrtoint ptr %.sroa.11.0257 to i64
  %i.ek = ptrtoint ptr %.sroa.0140.0258 to i64
  %i.el = sub i64 %i.ej, %i.ek                    ; 8 uses
  %i.em = icmp eq i64 %i.el, 9223372036854775807
  br i1 %i.em, label %bb.ad, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i112

bb.ad:                                            ; preds = %bb.ac
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #23
          to label %.noexc118 unwind label %.loopexit.split-lp

.noexc118:                                        ; preds = %bb.ad
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i112: ; preds = %bb.ac
  %.sroa.speculated.i.i.i.i113 = tail call i64 @llvm.umax.i64(i64 %i.el, i64 1)
  %i.en = add i64 %.sroa.speculated.i.i.i.i113, %i.el ; 2 uses
  %i.eo = icmp ult i64 %i.en, %i.el
  %i.ep = tail call i64 @llvm.umin.i64(i64 %i.en, i64 9223372036854775807)
  %i.eq = select i1 %i.eo, i64 9223372036854775807, i64 %i.ep ; 3 uses
  %.not.i.i.i.i114 = icmp ne i64 %i.eq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i114)
  %i.er = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eq) #24
          to label %.noexc119 unwind label %.loopexit ; 4 uses

.noexc119:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i112
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.el ; 2 uses
  store i8 0, ptr %i.es, align 1, !tbaa !47
  %i.et = icmp sgt i64 %i.el, 0
  br i1 %i.et, label %bb.ae, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i115

bb.ae:                                            ; preds = %.noexc119
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.er, ptr align 1 %.sroa.0140.0258, i64 %i.el, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i115

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i115: ; preds = %bb.ae, %.noexc119
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 1
  %.not.i17.i.i.i116 = icmp eq ptr %.sroa.0140.0258, null
  br i1 %.not.i17.i.i.i116, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i117, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i115
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0140.0258, i64 noundef %i.el) #25
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i117

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i117: ; preds = %bb.af, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i115
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 %i.eq
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit110

.loopexit:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i112
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.loopexit.split-lp:                               ; preds = %bb.ad
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

_ZNSt6vectorIhSaIhEE9push_backEOh.exit110:        ; preds = %bb.ab, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i117, %bb.v, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i107
  %.sroa.20.1 = phi ptr [ %.sroa.20.0256, %bb.v ], [ %i.eh, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i107 ], [ %i.ev, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i117 ], [ %.sroa.20.0256, %bb.ab ] ; 2 uses
  %.sroa.11.1 = phi ptr [ %i.du, %bb.v ], [ %i.eg, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i107 ], [ %i.eu, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i117 ], [ %i.ei, %bb.ab ] ; 2 uses
  %.sroa.0140.1 = phi ptr [ %.sroa.0140.0258, %bb.v ], [ %i.ed, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i107 ], [ %i.er, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i117 ], [ %.sroa.0140.0258, %bb.ab ] ; 5 uses
  %i.ew = add nuw i64 %.0260, 1                   ; 2 uses
  %i.ex = load i64, ptr %i.u, align 8, !tbaa !18
  %i.ey = icmp ult i64 %i.ew, %i.ex
  br i1 %i.ey, label %bb.t, label %._crit_edge262, !llvm.loop !110

_ZNK2cv16structured_light20GrayCodePattern_Impl9grayToDecERKSt6vectorIhSaIhEE.exit94: ; preds = %bb.s, %._crit_edge22.i80
  %.1.lcssa.i82 = phi i32 [ %.015.i81, %._crit_edge22.i80 ], [ %.2.i91, %bb.s ] ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !23
  %.not = icmp slt i32 %.1.lcssa.i82, %i.fa
  br i1 %.not, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_ZNK2cv16structured_light20GrayCodePattern_Impl9grayToDecERKSt6vectorIhSaIhEE.exit94
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.fc = load i32, ptr %i.fb, align 8, !tbaa !22
  %.not50 = icmp slt i32 %.1.lcssa.i, %i.fc
  br i1 %.not50, label %_ZNSt6vectorIhSaIhEED2Ev.exit122, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZNK2cv16structured_light20GrayCodePattern_Impl9grayToDecERKSt6vectorIhSaIhEE.exit94
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit122

_ZNSt6vectorIhSaIhEED2Ev.exit122:                 ; preds = %bb.ah, %bb.ag
  %.449 = phi i1 [ true, %bb.ah ], [ %spec.select57, %bb.ag ]
  store i32 %.1.lcssa.i, ptr %4, align 4, !tbaa !58
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 %.1.lcssa.i82, ptr %i.fd, align 4, !tbaa !60
  %i.fe = ptrtoint ptr %.sroa.20.1 to i64
  %i.ff = sub i64 %i.fe, %.pre24.i76
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0140.1, i64 noundef %i.ff) #25
  %i.fg = ptrtoint ptr %.sroa.20162.1 to i64
  %i.fh = sub i64 %i.fg, %.pre24.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0153.1, i64 noundef %i.fh) #25
  ret i1 %.449

bb.ai:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit183, %.loopexit.split-lp184
  %.pn53.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp186, %.loopexit.split-lp184 ], [ %lpad.loopexit185, %.loopexit183 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i123 = icmp eq ptr %.sroa.0140.0258, null
  br i1 %.not.i.i.i123, label %_ZNSt6vectorIhSaIhEED2Ev.exit124, label %.thread175

.thread175:                                       ; preds = %bb.ai
  %i.fi = ptrtoint ptr %.sroa.11.0257 to i64
  %i.fj = ptrtoint ptr %.sroa.0140.0258 to i64
  %i.fk = sub i64 %i.fi, %i.fj
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0140.0258, i64 noundef %i.fk) #25
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit124

_ZNSt6vectorIhSaIhEED2Ev.exit124:                 ; preds = %.loopexit188, %.loopexit.split-lp189, %.loopexit193, %.loopexit.split-lp194, %bb.ai, %.thread175
  %.sroa.20162.0244 = phi ptr [ %.sroa.20162.1, %.thread175 ], [ %.sroa.20162.1, %bb.ai ], [ %.sroa.11158.0249, %.loopexit.split-lp194 ], [ %.sroa.11158.0249, %.loopexit193 ], [ %.sroa.11158.0249, %.loopexit188 ], [ %.sroa.11158.0249, %.loopexit.split-lp189 ]
  %.sroa.0153.0232 = phi ptr [ %.sroa.0153.1, %.thread175 ], [ %.sroa.0153.1, %bb.ai ], [ %.sroa.0153.0250, %.loopexit.split-lp194 ], [ %.sroa.0153.0250, %.loopexit193 ], [ %.sroa.0153.0250, %.loopexit188 ], [ %.sroa.0153.0250, %.loopexit.split-lp189 ] ; 3 uses
  %.pn53.pn.pn172 = phi { ptr, i32 } [ %.pn53.pn.pn, %.thread175 ], [ %.pn53.pn.pn, %bb.ai ], [ %lpad.loopexit.split-lp196, %.loopexit.split-lp194 ], [ %lpad.loopexit195, %.loopexit193 ], [ %lpad.loopexit190, %.loopexit188 ], [ %lpad.loopexit.split-lp191, %.loopexit.split-lp189 ]
  %.not.i.i.i125 = icmp eq ptr %.sroa.0153.0232, null
  br i1 %.not.i.i.i125, label %_ZNSt6vectorIhSaIhEED2Ev.exit126, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit124
  %i.fl = ptrtoint ptr %.sroa.20162.0244 to i64
  %i.fm = ptrtoint ptr %.sroa.0153.0232 to i64
  %i.fn = sub i64 %i.fl, %i.fm
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0153.0232, i64 noundef %i.fn) #25
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit126

_ZNSt6vectorIhSaIhEED2Ev.exit126:                 ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit124, %bb.aj
end_hunk_0
