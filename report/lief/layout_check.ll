Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lief/original/layout_check?download=true
inline.NumInlined: 4839
inline.NumDeleted: 1623
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN4LIEF5MachO13LayoutChecker20check_chained_fixupsEv:bb.a
  br i1 %i.ak, label %bb.j, label %bb.k

bb.j:                                             ; preds = %switch.lookup
  %i.al = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.89)
  br label %bb.aj

bb.k:                                             ; preds = %switch.lookup
  %i.am = getelementptr inbounds nuw i8, ptr %i.k, i64 100
  %i.an = load i32, ptr %i.am, align 4, !tbaa !816 ; 2 uses
  %.not69 = icmp eq i32 %i.an, 0
  br i1 %.not69, label %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i32 %i.an, ptr %i.c, align 4, !tbaa !117
  %i.ao = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJjEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.90, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.aj

_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit: ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.k, i64 112 ; 2 uses
  %i.aq = load ptr, ptr %i.i, align 8, !tbaa !52, !nonnull !53, !align !54 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 256
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 264
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !66
  %i.au = load ptr, ptr %i.ar, align 8, !tbaa !67 ; 2 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 2 uses
  %i.ay = ashr exact i64 %i.ax, 3                 ; 2 uses
  %i.az = getelementptr i8, ptr %i.au, i64 %i.ax
  %i.ba = getelementptr i8, ptr %i.az, i64 -8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !70
  %i.bc = getelementptr inbounds nuw i8, ptr %i.k, i64 120 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !817 ; 2 uses
  %i.be = load ptr, ptr %i.ap, align 8, !tbaa !818 ; 2 uses
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = ptrtoint ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = sdiv exact i64 %i.bh, 88                ; 3 uses
  %.not70 = icmp eq i64 %i.bi, %i.ay
  br i1 %.not70, label %bb.q, label %bb.m

bb.m:                                             ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit
  %i.bj = icmp ugt i64 %i.bi, %i.ay
  br i1 %i.bj, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bk = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.91)
  br label %bb.aj

bb.o:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bb, i64 56
  %i.bm = tail call noundef zeroext i1 @_ZStneIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_(ptr noundef nonnull align 8 dereferenceable(32) %i.bl, ptr noundef nonnull @.str.92)
  br i1 %i.bm, label %bb.p, label %._crit_edge167

._crit_edge167:                                   ; preds = %bb.o
  %.pre = load i32, ptr %i.u, align 8, !tbaa !812
  %.pre168 = load ptr, ptr %i.ap, align 8, !tbaa !819, !noalias !820 ; 2 uses
  %.pre169 = load ptr, ptr %i.bc, align 8, !tbaa !819, !noalias !821 ; 2 uses
  %.pre170 = ptrtoint ptr %.pre169 to i64
  %.pre171 = ptrtoint ptr %.pre168 to i64
  %.pre173 = sub i64 %.pre170, %.pre171
  %.pre175 = sdiv exact i64 %.pre173, 88
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bn = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.93)
  br label %bb.aj

bb.q:                                             ; preds = %._crit_edge167, %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit
  %.pre-phi176 = phi i64 [ %.pre175, %._crit_edge167 ], [ %i.bi, %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit ]
  %i.bo = phi ptr [ %.pre169, %._crit_edge167 ], [ %i.bd, %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit ]
  %i.bp = phi ptr [ %.pre168, %._crit_edge167 ], [ %i.be, %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit ] ; 2 uses
  %i.bq = phi i32 [ %.pre, %._crit_edge167 ], [ %i.v, %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit ]
  %i.br = zext i32 %i.bq to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i64 0, ptr %i.d, align 8, !tbaa !91
  %.not116141 = icmp eq ptr %i.bo, %i.bp
  br i1 %.not116141, label %.thread109, label %.lr.ph149

.lr.ph149:                                        ; preds = %bb.q, %bb.ai
  %.0146 = phi i32 [ %.2, %bb.ai ], [ 0, %bb.q ]  ; 5 uses
  %.sroa.479.0145 = phi ptr [ %i.dg, %bb.ai ], [ %i.bp, %bb.q ] ; 9 uses
  %.sroa.8.0144 = phi i64 [ %i.dh, %bb.ai ], [ 0, %bb.q ]
  %.sroa.082.0143 = phi i32 [ %.sroa.082.2, %bb.ai ], [ 2, %bb.q ] ; 3 uses
  %.sroa.6.0142 = phi i1 [ %.sroa.6.2, %bb.ai ], [ false, %bb.q ] ; 2 uses
  %i.bs = load i32, ptr %.sroa.479.0145, align 8, !tbaa !829 ; 2 uses
  %i.bt = icmp eq i32 %i.bs, 0
  br i1 %i.bt, label %bb.ai, label %bb.r

bb.r:                                             ; preds = %.lr.ph149
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.479.0145, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !830
  %i.bw = zext i32 %i.bv to i64                   ; 2 uses
  %i.bx = zext i32 %i.bs to i64
  %i.by = sub nsw i64 %i.br, %i.bx
  %i.bz = icmp ult i64 %i.by, %i.bw
  br i1 %i.bz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ca = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.94, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %.thread109

bb.t:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.479.0145, i64 8
  %i.cc = load i16, ptr %i.cb, align 8, !tbaa !831 ; 2 uses
  switch i16 %i.cc, label %bb.u [
    i16 4096, label %bb.v
    i16 16384, label %bb.v
  ]

bb.u:                                             ; preds = %bb.t
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.479.0145, i64 8
  %i.ce = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmtEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.95, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 2 dereferenceable(2) %i.cd)
  br label %.thread109

bb.v:                                             ; preds = %bb.t, %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.479.0145, i64 28
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !832 ; 4 uses
  %i.ch = icmp sgt i32 %i.cg, 13
  br i1 %i.ch, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ci = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.96, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  br label %.thread109

bb.x:                                             ; preds = %bb.v
  %.not117196 = icmp ne i32 %.sroa.082.0143, %i.cg
  %.not117.not = select i1 %.sroa.6.0142, i1 %.not117196, i1 false
  br i1 %.not117.not, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  %i.cj = tail call noundef ptr @_ZN4LIEF5MachO9to_stringENS0_23DYLD_CHAINED_PTR_FORMATE(i32 noundef %i.cg) #24
  store ptr %i.cj, ptr %i.e, align 8, !tbaa !123
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  %i.ck = tail call noundef ptr @_ZN4LIEF5MachO9to_stringENS0_23DYLD_CHAINED_PTR_FORMATE(i32 noundef %.sroa.082.0143) #24
  store ptr %i.ck, ptr %i.f, align 8, !tbaa !123
  %i.cl = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJPKcS4_EEEbS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.97, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  br label %.thread109

bb.z:                                             ; preds = %bb.x
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.479.0145, i64 24
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !833 ; 3 uses
  %.not73 = icmp eq i32 %i.cn, 0
  br i1 %.not73, label %bb.ad, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.co = icmp eq i32 %.0146, 0
  br i1 %i.co, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.not74 = icmp eq i32 %.0146, %i.cn
  br i1 %.not74, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cp = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.98)
  br label %.thread109

bb.ad:                                            ; preds = %bb.aa, %bb.ab, %bb.z
  %.1 = phi i32 [ %.0146, %bb.z ], [ %.0146, %bb.ab ], [ %i.cn, %bb.aa ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.479.0145, i64 32
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.479.0145, i64 40
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !834 ; 2 uses
  %i.ct = load ptr, ptr %i.cq, align 8, !tbaa !835 ; 3 uses
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = sub i64 %i.cu, %i.cv                    ; 2 uses
  %i.cx = icmp ugt i64 %i.cw, %i.bw
  br i1 %i.cx, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cy = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.99)
  br label %.thread109

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  %.not151 = icmp eq ptr %i.cs, %i.ct
  br i1 %.not151, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.af
  %i.cz = lshr exact i64 %i.cw, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.ag
  %storemerge140 = phi i64 [ %i.de, %bb.ag ], [ 0, %.lr.ph.preheader ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  %i.da = getelementptr inbounds nuw [2 x i8], ptr %i.ct, i64 %storemerge140
  %i.db = load i16, ptr %i.da, align 2, !tbaa !253 ; 3 uses
  store i16 %i.db, ptr %i.h, align 2, !tbaa !253
  %i.dc = icmp sgt i16 %i.db, -1
  %i.dd = icmp ugt i16 %i.db, %i.cc
  %or.cond = and i1 %i.dc, %i.dd
  br i1 %or.cond, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  %i.de = add nuw nsw i64 %storemerge140, 1       ; 2 uses
  %1 = icmp samesign ult i64 %i.de, %i.cz
  br i1 %1, label %.lr.ph, label %._crit_edge, !llvm.loop !809

bb.ah:                                            ; preds = %.lr.ph
  store i64 %storemerge140, ptr %i.g, align 8, !tbaa !91
  %i.df = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmmtEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.100, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 2 dereferenceable(2) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  br label %.thread109

._crit_edge:                                      ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  br label %bb.ai

bb.ai:                                            ; preds = %.lr.ph149, %._crit_edge
  %.sroa.6.2 = phi i1 [ %.sroa.6.0142, %.lr.ph149 ], [ true, %._crit_edge ]
  %.sroa.082.2 = phi i32 [ %.sroa.082.0143, %.lr.ph149 ], [ %i.cg, %._crit_edge ]
  %.2 = phi i32 [ %.0146, %.lr.ph149 ], [ %.1, %._crit_edge ]
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.479.0145, i64 88
  %i.dh = add nuw nsw i64 %.sroa.8.0144, 1        ; 2 uses
  %.not116 = icmp eq i64 %i.dh, %.pre-phi176
  br i1 %.not116, label %.thread109, label %.lr.ph149

.thread109:                                       ; preds = %bb.ai, %bb.q, %bb.ah, %bb.ae, %bb.y, %bb.w, %bb.u, %bb.s, %bb.ac
  %.not116125 = phi i1 [ %i.cp, %bb.ac ], [ %i.df, %bb.ah ], [ %i.cy, %bb.ae ], [ %i.cl, %bb.y ], [ %i.ci, %bb.w ], [ %i.ce, %bb.u ], [ %i.ca, %bb.s ], [ true, %bb.q ], [ true, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %bb.aj

bb.aj:                                            ; preds = %bb.n, %bb.p, %.thread109, %bb.i, %bb.j, %bb.l, %bb.a, %bb.g, %bb.e, %bb.c
  %.9 = phi i1 [ true, %bb.a ], [ %i.o, %bb.c ], [ %i.t, %bb.e ], [ %i.w, %bb.g ], [ %i.aa, %bb.i ], [ %i.al, %bb.j ], [ %i.ao, %bb.l ], [ %i.bk, %bb.n ], [ %i.bn, %bb.p ], [ %.not116125, %.thread109 ]
  ret i1 %.9
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker18check_exports_trieEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52, !nonnull !53, !align !54
  %i.c = tail call noundef ptr @_ZNK4LIEF5MachO6Binary9dyld_infoEv(ptr noundef nonnull align 8 dereferenceable(552) %i.b) #24 ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !52, !nonnull !53, !align !54
  %i.e = tail call noundef ptr @_ZNK4LIEF5MachO6Binary17dyld_exports_trieEv(ptr noundef nonnull align 8 dereferenceable(552) %i.d) #24 ; 3 uses
  %i.f = icmp eq ptr %i.c, null                   ; 2 uses
  %i.g = icmp eq ptr %i.e, null                   ; 2 uses
  %or.cond = and i1 %i.f, %i.g
  br i1 %or.cond, label %.critedge42, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !52, !nonnull !53, !align !54 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 256
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !68, !noalias !848 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 264
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !68, !noalias !849 ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %.not85 = icmp eq ptr %i.l, %i.j
  br i1 %.not85, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread, %bb.b
  %.0.lcssa = phi i64 [ 16384, %bb.b ], [ %.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread ] ; 2 uses
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !62
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 104
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef i64 %i.s(ptr noundef nonnull align 8 dereferenceable(552) %i.h) #24 ; 2 uses
  br i1 %i.g, label %.critedge, label %bb.c

.lr.ph:                                           ; preds = %bb.b, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread
  %.03289 = phi i64 [ %.133112, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread ], [ 0, %bb.b ] ; 4 uses
  %.088 = phi i64 [ %.1, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread ], [ 16384, %bb.b ] ; 2 uses
  %.sroa.470.087 = phi ptr [ %i.bc, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread ], [ %i.j, %bb.b ] ; 2 uses
  %.sroa.8.086 = phi i64 [ %i.bd, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread ], [ 0, %bb.b ]
  %i.u = load ptr, ptr %.sroa.470.087, align 8, !tbaa !70 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.x = load i64, ptr %i.w, align 8, !tbaa !134
  switch i64 %i.x, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread81 [
    i64 6, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 10, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.lr.ph
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !106  ; 2 uses
  %i.z = load i32, ptr %i.y, align 1
  %i.aa = xor i32 %i.z, 1163157343
  %i.ab = getelementptr i8, ptr %i.y, i64 4
  %i.ac = load i16, ptr %i.ab, align 1
  %i.ad = zext i16 %i.ac to i32
  %i.ae = xor i32 %i.ad, 21592
  %i.af = or i32 %i.aa, %i.ae
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread81

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !88
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread81

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44: ; preds = %.lr.ph
  %i.al = load ptr, ptr %i.v, align 8, !tbaa !106 ; 2 uses
  %i.am = load i64, ptr %i.al, align 1
  %i.an = xor i64 %i.am, 4919420967581409119
  %i.ao = getelementptr i8, ptr %i.al, i64 8
  %i.ap = load i16, ptr %i.ao, align 1
  %i.aq = zext i16 %i.ap to i64
  %i.ar = xor i64 %i.aq, 21577
  %i.as = or i64 %i.an, %i.ar
  %i.at = icmp ne i64 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  br i1 %i.av, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread81

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread81: ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44
  %.133113 = phi i64 [ %.03289, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44 ], [ %.03289, %.lr.ph ], [ %.03289, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %i.ak, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !88
  %i.ay = sub i64 %i.ax, %.133113
  %i.az = getelementptr inbounds nuw i8, ptr %i.u, i64 96
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !89
  %i.bb = add i64 %i.ay, %i.ba
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %.088, i64 %i.bb)
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread81
  %.133112 = phi i64 [ %.03289, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44 ], [ %.133113, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread81 ]
  %.1 = phi i64 [ %.088, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44 ], [ %.sroa.speculated, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit44.thread81 ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.470.087, i64 8
  %i.bd = add nuw nsw i64 %.sroa.8.086, 1         ; 2 uses
  %.not = icmp eq i64 %i.bd, %i.p
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.c:                                             ; preds = %._crit_edge
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !850, !noalias !851 ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !850, !noalias !852 ; 2 uses
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = ashr exact i64 %i.bk, 3
  %.not8290 = icmp eq ptr %i.bh, %i.bf
  br i1 %.not8290, label %.critedge, label %.lr.ph94

.lr.ph94:                                         ; preds = %bb.c, %bb.d
  %.sroa.559.092 = phi ptr [ %i.bo, %bb.d ], [ %i.bf, %bb.c ] ; 2 uses
  %.sroa.960.091 = phi i64 [ %i.bp, %bb.d ], [ 0, %bb.c ]
  %i.bm = load ptr, ptr %.sroa.559.092, align 8, !tbaa !854
  %i.bn = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker12check_exportEmmRKNS0_10ExportInfoE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.t, i64 noundef %.0.lcssa, ptr noundef nonnull align 8 dereferenceable(64) %i.bm)
  br i1 %i.bn, label %bb.d, label %.critedge42

bb.d:                                             ; preds = %.lr.ph94
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.559.092, i64 8
  %i.bp = add nuw nsw i64 %.sroa.960.091, 1       ; 2 uses
  %.not82 = icmp eq i64 %i.bp, %i.bl
  br i1 %.not82, label %.critedge, label %.lr.ph94

.critedge:                                        ; preds = %bb.d, %bb.c, %._crit_edge
  br i1 %i.f, label %.critedge42, label %bb.e

bb.e:                                             ; preds = %.critedge
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !850, !noalias !855 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !850, !noalias !856 ; 2 uses
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %i.br to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = ashr exact i64 %i.bw, 3
  %.not8395 = icmp eq ptr %i.bt, %i.br
  br i1 %.not8395, label %.critedge42, label %.lr.ph99

.lr.ph99:                                         ; preds = %bb.e, %.lr.ph99
  %.sroa.550.097 = phi ptr [ %i.ca, %.lr.ph99 ], [ %i.br, %bb.e ] ; 2 uses
  %.sroa.9.096 = phi i64 [ %i.cb, %.lr.ph99 ], [ 0, %bb.e ]
  %i.by = load ptr, ptr %.sroa.550.097, align 8, !tbaa !854
  %i.bz = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker12check_exportEmmRKNS0_10ExportInfoE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %i.t, i64 noundef %.0.lcssa, ptr noundef nonnull align 8 dereferenceable(64) %i.by) ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.550.097, i64 8
  %i.cb = add nuw nsw i64 %.sroa.9.096, 1         ; 2 uses
  %.not83 = icmp ne i64 %i.cb, %i.bx
  %or.cond118.not = select i1 %i.bz, i1 %.not83, i1 false
  br i1 %or.cond118.not, label %.lr.ph99, label %.critedge42

.critedge42:                                      ; preds = %.lr.ph94, %.lr.ph99, %bb.e, %.critedge, %bb.a
  %.8 = phi i1 [ true, %bb.a ], [ true, %.critedge ], [ %i.bz, %.lr.ph99 ], [ true, %bb.e ], [ false, %.lr.ph94 ]
  ret i1 %.8
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker23check_function_variantsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %2 = alloca %"class.std::unordered_set", align 8 ; 14 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !52, !nonnull !53, !align !54
  %i.g = tail call noundef ptr @_ZNK4LIEF5MachO6Binary17function_variantsEv(ptr noundef nonnull align 8 dereferenceable(552) %i.f) #24 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
end_hunk_0
begin_hunk_1_@_ZN4LIEF5MachO13LayoutChecker23check_function_variantsEv:bb.a
  %i.cj = load ptr, ptr %i.r, align 8, !tbaa !261 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.cj, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i46

.lr.ph.i.i.i.i46:                                 ; preds = %.thread86, %.lr.ph.i.i.i.i46
  %.06.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i46 ], [ %i.cj, %.thread86 ] ; 2 uses
  %i.ck = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !259 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.06.i.i.i.i, i64 noundef 16) #27
  %.not.i.i.i.i47 = icmp eq ptr %i.ck, null
  br i1 %.not.i.i.i.i47, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i46, !llvm.loop !866

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i46, %.thread86
  %i.cl = load ptr, ptr %2, align 8, !tbaa !255
  %i.cm = load i64, ptr %i.q, align 8, !tbaa !256
  %i.cn = shl i64 %i.cm, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.cl, i8 0, i64 %i.cn, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.co = load ptr, ptr %2, align 8, !tbaa !255   ; 2 uses
  %i.cp = icmp eq ptr %i.co, %i.p
  br i1 %i.cp, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  %i.cq = load i64, ptr %i.q, align 8, !tbaa !256
  %i.cr = shl i64 %i.cq, 3
  call void @_ZdlPvm(ptr noundef %i.co, i64 noundef %i.cr) #27
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit: ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit
  %.10 = phi i1 [ %.not89106, %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit ], [ true, %bb.a ]
  ret i1 %.10
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker29check_function_variant_fixupsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 7 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52, !nonnull !53, !align !54
  %i.l = tail call noundef ptr @_ZNK4LIEF5MachO6Binary23function_variant_fixupsEv(ptr noundef nonnull align 8 dereferenceable(552) %i.k) #24 ; 4 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 60
  %i.o = load i32, ptr %i.n, align 4, !tbaa !250  ; 2 uses
  %i.p = and i32 %i.o, 7
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 %i.o, ptr %i.a, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 8, ptr %i.b, align 8, !tbaa !91
  %i.q = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJjmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.107, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.j, align 8, !tbaa !52, !nonnull !53, !align !54 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 256 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !68, !noalias !898
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 264
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !66
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.t to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = ashr exact i64 %i.y, 3                   ; 2 uses
  store i64 %i.z, ptr %i.c, align 8, !tbaa !91
  %i.aa = tail call noundef ptr @_ZNK4LIEF5MachO6Binary17function_variantsEv(ptr noundef nonnull align 8 dereferenceable(552) %i.r) #24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 80
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 88
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !899
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !900
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 5
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ak = phi i64 [ %i.aj, %bb.e ], [ 0, %bb.d ]  ; 2 uses
  store i64 %i.ak, ptr %i.d, align 8, !tbaa !91
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  store i64 0, ptr %i.e, align 8, !tbaa !91
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !901, !noalias !902 ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !901, !noalias !903 ; 2 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.am to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 5
  %.not4661 = icmp eq ptr %i.ao, %i.am
  br i1 %.not4661, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.k
  %.sroa.432.064 = phi ptr [ %i.bu, %bb.k ], [ %i.am, %bb.f ] ; 4 uses
  %.sroa.8.063 = phi i64 [ %i.bv, %bb.k ], [ 0, %bb.f ]
  %i.at = phi i64 [ %i.bt, %bb.k ], [ 0, %bb.f ]
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.432.064, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !905 ; 2 uses
  %i.aw = zext i32 %i.av to i64                   ; 2 uses
  %.not29 = icmp ugt i64 %i.z, %i.aw
  br i1 %.not29, label %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  store i32 %i.av, ptr %i.f, align 4, !tbaa !117
  %i.ax = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmjmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.108, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  br label %.thread

_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit: ; preds = %.lr.ph
  %i.ay = load ptr, ptr %i.s, align 8, !tbaa !68
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !70 ; 2 uses
  %i.bb = load i32, ptr %.sroa.432.064, align 8, !tbaa !906 ; 2 uses
  %i.bc = zext i32 %i.bb to i64
  %i.bd = load ptr, ptr %i.j, align 8, !tbaa !52, !nonnull !53, !align !54
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 104
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !60 ; 2 uses
  %i.bg = icmp eq i32 %i.bf, -17958194
  %i.bh = icmp eq i32 %i.bf, -822415874
  %spec.select.i.i = or i1 %i.bg, %i.bh
  %i.bi = select i1 %spec.select.i.i, i64 4, i64 8
  %i.bj = add nuw nsw i64 %i.bi, %i.bc
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ba, i64 96
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !89 ; 2 uses
  %i.bm = icmp ugt i64 %i.bj, %i.bl
  br i1 %i.bm, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ba, i64 56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  store i32 %i.bb, ptr %i.g, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  store i64 %i.bl, ptr %i.h, align 8, !tbaa !91
  %i.bo = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEjmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.109, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.bn, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  br label %.thread

bb.i:                                             ; preds = %_ZN4LIEF12ref_iteratorIRKSt6vectorIPNS_5MachO14SegmentCommandESaIS4_EES4_N9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEixEm.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.432.064, i64 8
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !907 ; 2 uses
  %i.br = zext i32 %i.bq to i64
  %.not30 = icmp ugt i64 %i.ak, %i.br
  br i1 %.not30, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #24
  store i32 %i.bq, ptr %i.i, align 4, !tbaa !117
  %i.bs = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmjmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.110, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #24
  br label %.thread

bb.k:                                             ; preds = %bb.i
  %i.bt = add i64 %i.at, 1                        ; 2 uses
  store i64 %i.bt, ptr %i.e, align 8, !tbaa !91
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.432.064, i64 32
  %i.bv = add nuw nsw i64 %.sroa.8.063, 1         ; 2 uses
  %.not46 = icmp eq i64 %i.bv, %i.as
  br i1 %.not46, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.k, %bb.f, %bb.j, %bb.h, %bb.g
  %.not4650 = phi i1 [ %i.ax, %bb.g ], [ %i.bs, %bb.j ], [ %i.bo, %bb.h ], [ true, %bb.f ], [ true, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %.thread, %bb.c
  %.5 = phi i1 [ %.not4650, %.thread ], [ %i.q, %bb.c ], [ true, %bb.a ]
  ret i1 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker27check_lazy_load_dylib_infosEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i64, align 8                      ; 7 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %1 = alloca %"class.LIEF::SpanStream", align 8  ; 12 uses
  %2 = alloca %"class.LIEF::result.316", align 4  ; 13 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 6 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  store i64 16384, ptr %i.b, align 8, !tbaa !91
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !52, !nonnull !53, !align !54 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !62
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 104
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef i64 %i.m(ptr noundef nonnull align 8 dereferenceable(552) %i.j) #24
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !52, !nonnull !53, !align !54 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 256
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !68, !noalias !920 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 264
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !68, !noalias !921 ; 2 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.q to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 3
  %.not113158 = icmp eq ptr %i.s, %i.q
  br i1 %.not113158, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !95, !noalias !922 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 144
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !95, !noalias !923 ; 2 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 3
  %.not114174 = icmp eq ptr %i.aa, %i.y
  br i1 %.not114174, label %.loopexit, label %.lr.ph179

.lr.ph179:                                        ; preds = %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %.sroa.479.0160 = phi ptr [ %i.bv, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ %i.q, %bb.a ] ; 2 uses
  %.sroa.880.0159 = phi i64 [ %i.bw, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ 0, %bb.a ]
  %i.ap = phi i64 [ %i.bu, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread ], [ 16384, %bb.a ] ; 3 uses
  %i.aq = load ptr, ptr %.sroa.479.0160, align 8, !tbaa !70 ; 4 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !134
  %cond = icmp eq i64 %i.as, 10
  br i1 %cond, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread87

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %.lr.ph
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !106 ; 4 uses
  %i.av = load i64, ptr %i.au, align 1
  %i.aw = xor i64 %i.av, 4919420967581409119
  %i.ax = getelementptr i8, ptr %i.au, i64 8
  %i.ay = load i16, ptr %i.ax, align 1
  %i.az = zext i16 %i.ay to i64
  %i.ba = xor i64 %i.az, 21577
  %i.bb = or i64 %i.aw, %i.ba
  %i.bc = icmp ne i64 %i.bb, 0
  %i.bd = zext i1 %i.bc to i32
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread86

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread86: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.bf = load i64, ptr %i.au, align 1
  %i.bg = xor i64 %i.bf, 4997382908861767519
  %i.bh = getelementptr i8, ptr %i.au, i64 8
  %i.bi = load i16, ptr %i.bh, align 1
  %i.bj = zext i16 %i.bi to i64
  %i.bk = xor i64 %i.bj, 20306
  %i.bl = or i64 %i.bg, %i.bk
  %i.bm = icmp ne i64 %i.bl, 0
  %i.bn = zext i1 %i.bm to i32
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread87

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread87: ; preds = %.lr.ph, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread86
  %i.bp = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !88
  %spec.select112 = tail call i64 @llvm.usub.sat.i64(i64 %i.bq, i64 %i.n)
  %i.br = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !89
  %i.bt = add i64 %spec.select112, %i.bs
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.ap, i64 %i.bt) ; 2 uses
  store i64 %.sroa.speculated, ptr %i.b, align 8, !tbaa !91
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread86, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread87
  %i.bu = phi i64 [ %i.ap, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ], [ %i.ap, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread86 ], [ %.sroa.speculated, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit40.thread87 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.479.0160, i64 8
  %i.bw = add nuw nsw i64 %.sroa.880.0159, 1      ; 2 uses
  %.not113 = icmp eq i64 %i.bw, %i.w
  br i1 %.not113, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph179, %.thread101
  %.sroa.468.0176 = phi ptr [ %i.y, %.lr.ph179 ], [ %i.fh, %.thread101 ] ; 2 uses
  %.sroa.8.0175 = phi i64 [ 0, %.lr.ph179 ], [ %i.fi, %.thread101 ]
  %i.bx = load ptr, ptr %.sroa.468.0176, align 8, !tbaa !97 ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !98
  %i.ca = icmp ne i64 %i.bz, 58
  %i.cb = icmp eq ptr %i.bx, null
  %i.cc = or i1 %i.cb, %i.ca
  br i1 %i.cc, label %.thread101, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !924 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 72
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !164 ; 12 uses
  %i.ch = icmp ult i64 %i.cg, 24
  br i1 %i.ch, label %.thread98, label %_ZNK4LIEF10SpanStream7read_atEmmm.exit

.thread98:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 %i.cg, ptr %i.c, align 8, !tbaa !91
  %i.ci = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.112, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) @_ZZN4LIEF5MachO13LayoutChecker27check_lazy_load_dylib_infosEvE11HEADER_SIZE)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %.loopexit

_ZNK4LIEF10SpanStream7read_atEmmm.exit:           ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  store i64 0, ptr %i.af, align 8, !tbaa !111
  store i8 0, ptr %i.ag, align 8, !tbaa !112
  store i32 3, ptr %i.ah, align 4, !tbaa !113
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN4LIEF10SpanStreamE, i64 16), ptr %1, align 8, !tbaa !62
  store ptr %i.ce, ptr %i.ai, align 8, !tbaa !115
  store i64 %i.cg, ptr %i.aj, align 8, !tbaa !116
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !925)
  %.not290 = icmp eq ptr %i.ce, null
  br i1 %.not290, label %_ZNK4LIEF10SpanStream7read_atEmmm.exit.thread, label %bb.d

_ZNK4LIEF10SpanStream7read_atEmmm.exit.thread:    ; preds = %_ZNK4LIEF10SpanStream7read_atEmmm.exit
  store i32 1, ptr %2, align 4, !tbaa !928, !alias.scope !925
  store i64 0, ptr %i.af, align 8, !tbaa !111, !noalias !925
  store i8 0, ptr %i.ak, align 4, !tbaa !930, !alias.scope !925
  %i.cj = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.113)
  br label %.thread106

bb.d:                                             ; preds = %_ZNK4LIEF10SpanStream7read_atEmmm.exit
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %2, ptr noundef nonnull align 1 dereferenceable(24) %i.ce, i64 24, i1 false)
  store i64 0, ptr %i.af, align 8, !tbaa !111, !noalias !925
  store i8 1, ptr %i.ak, align 4, !tbaa !930, !alias.scope !925
  %i.ck = load i32, ptr %2, align 4, !tbaa !932
  %i.cl = zext i32 %i.ck to i64                   ; 3 uses
  %i.cm = icmp ult i64 %i.cg, %i.cl
  br i1 %i.cm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  store i64 %i.cg, ptr %i.d, align 8, !tbaa !91
  %i.cn = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJjmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.114, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #24
  br label %.thread106

bb.f:                                             ; preds = %bb.d
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cl ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cg ; 2 uses
  %i.cq = ptrtoint ptr %i.cp to i64
  %gepdiff = sub nuw nsw i64 %i.cg, %i.cl         ; 2 uses
  %i.cr = ashr i64 %gepdiff, 2                    ; 2 uses
  %i.cs = icmp sgt i64 %i.cr, 0
  br i1 %i.cs, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f
  %i.ct = and i64 %gepdiff, -4
  %scevgep.i.i.i = getelementptr i8, ptr %i.co, i64 %i.ct
  br label %bb.g

bb.g:                                             ; preds = %bb.k, %.lr.ph.i.i.i
  %.047.i.i.i = phi i64 [ %i.cr, %.lr.ph.i.i.i ], [ %i.dg, %bb.k ] ; 2 uses
  %.02946.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i ], [ %i.df, %bb.k ] ; 9 uses
  %i.cu = load i8, ptr %.02946.i.i.i, align 1, !tbaa !107
  %i.cv = icmp eq i8 %i.cu, 0
  br i1 %i.cv, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.cw = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !107
  %i.cy = icmp eq i8 %i.cx, 0
  br i1 %i.cy, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cz = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !107
  %i.db = icmp eq i8 %i.da, 0
  br i1 %i.db, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit401, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dc = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !107
  %i.de = icmp eq i8 %i.dd, 0
  br i1 %i.de, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit403, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.df = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 4
  %i.dg = add nsw i64 %.047.i.i.i, -1
  %i.dh = icmp sgt i64 %.047.i.i.i, 1
  br i1 %i.dh, label %bb.g, label %._crit_edge.i.i.i, !llvm.loop !2

._crit_edge.i.i.i:                                ; preds = %bb.k, %bb.f
  %.029.lcssa.i.i.i = phi ptr [ %i.co, %bb.f ], [ %scevgep.i.i.i, %bb.k ] ; 6 uses
  %.pre-phi.i.i.i = ptrtoint ptr %.029.lcssa.i.i.i to i64
  %i.di = sub i64 %i.cq, %.pre-phi.i.i.i
  switch i64 %i.di, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.thread [
    i64 3, label %bb.l
    i64 2, label %._crit_edge._crit_edge.i.i.i
    i64 1, label %._crit_edge._crit_edge52.i.i.i
  ]

bb.l:                                             ; preds = %._crit_edge.i.i.i
  %i.dj = load i8, ptr %.029.lcssa.i.i.i, align 1, !tbaa !107
  %i.dk = icmp eq i8 %i.dj, 0
  br i1 %i.dk, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dl = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i, i64 1
  br label %._crit_edge._crit_edge.i.i.i

._crit_edge._crit_edge.i.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.m
  %.1.i.i.i = phi ptr [ %i.dl, %bb.m ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.dm = load i8, ptr %.1.i.i.i, align 1, !tbaa !107
  %i.dn = icmp eq i8 %i.dm, 0
  br i1 %i.dn, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge._crit_edge.i.i.i
  %i.do = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 1
  br label %._crit_edge._crit_edge52.i.i.i

._crit_edge._crit_edge52.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.n
  %.2.i.i.i = phi ptr [ %i.do, %bb.n ], [ %.029.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.dp = load i8, ptr %.2.i.i.i, align 1, !tbaa !107
  %i.dq = icmp eq i8 %i.dp, 0
  br i1 %i.dq, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.thread

_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.h
  %i.dr = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 1
  br label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit

_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit401: ; preds = %bb.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 2
  br label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit

_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit403: ; preds = %bb.j
  %i.dt = getelementptr inbounds nuw i8, ptr %.02946.i.i.i, i64 3
  br label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit

_ZSt4findIPKhcET_S2_S2_RKT0_.exit:                ; preds = %bb.g, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit401, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit403, %bb.l, %._crit_edge._crit_edge.i.i.i, %._crit_edge._crit_edge52.i.i.i
  %.028.i.i.i = phi ptr [ %.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %.029.lcssa.i.i.i, %bb.l ], [ %.2.i.i.i, %._crit_edge._crit_edge52.i.i.i ], [ %i.dt, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit403 ], [ %i.dr, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit ], [ %i.ds, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.loopexit.split.loop.exit401 ], [ %.02946.i.i.i, %bb.g ]
  %i.du = icmp eq ptr %.028.i.i.i, %i.cp
  br i1 %i.du, label %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.thread, label %bb.o

_ZSt4findIPKhcET_S2_S2_RKT0_.exit.thread:         ; preds = %._crit_edge._crit_edge52.i.i.i, %._crit_edge.i.i.i, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit
  %i.dv = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.115)
  br label %.thread106

bb.o:                                             ; preds = %_ZSt4findIPKhcET_S2_S2_RKT0_.exit
  %i.dw = load i32, ptr %i.al, align 4, !tbaa !933
  %i.dx = zext i32 %i.dw to i64
  %i.dy = load i64, ptr %i.b, align 8, !tbaa !91  ; 2 uses
  %i.dz = icmp ult i64 %i.dy, %i.dx
  br i1 %i.dz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ea = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJjmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.116, ptr noundef nonnull align 4 dereferenceable(4) %i.al, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %.thread106

bb.q:                                             ; preds = %bb.o
  %i.eb = load i32, ptr %i.am, align 4, !tbaa !934
  %i.ec = zext i32 %i.eb to i64
  %i.ed = icmp ult i64 %i.dy, %i.ec
  br i1 %i.ed, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ee = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJjmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.117, ptr noundef nonnull align 4 dereferenceable(4) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  br label %.thread106

bb.s:                                             ; preds = %bb.q
  %i.ef = load i32, ptr %i.an, align 4, !tbaa !935
  %i.eg = zext i32 %i.ef to i64                   ; 2 uses
  %i.eh = load i32, ptr %i.ao, align 4, !tbaa !936 ; 2 uses
  %i.ei = zext i32 %i.eh to i64
  %i.ej = shl nuw nsw i64 %i.ei, 2
  %i.ek = icmp ult i64 %i.cg, %i.eg
  %i.el = sub nuw i64 %i.cg, %i.eg
  %i.em = icmp ugt i64 %i.ej, %i.el
  %i.en = select i1 %i.ek, i1 true, i1 %i.em
  br i1 %i.en, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #24
  store i64 %i.cg, ptr %i.e, align 8, !tbaa !91
  %i.eo = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJjmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.118, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #24
  br label %.thread106

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #24
  store i32 0, ptr %i.f, align 4, !tbaa !117
  %.not169.not = icmp eq i32 %i.eh, 0
  br i1 %.not169.not, label %._crit_edge173, label %.lr.ph172

.lr.ph172:                                        ; preds = %bb.u, %bb.x
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.x ], [ 0, %bb.u ] ; 2 uses
  %i.ep = load i32, ptr %i.an, align 4, !tbaa !935
  %i.eq = zext i32 %i.ep to i64
  %i.er = shl nuw nsw i64 %indvars.iv, 2
  %i.es = add nuw nsw i64 %i.er, %i.eq            ; 3 uses
  store i64 %i.es, ptr %i.af, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i32 0, ptr %i.a, align 4, !tbaa !117
  %i.et = load ptr, ptr %1, align 8, !tbaa !62
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 96
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = call i64 %i.ev(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.a, i64 noundef %i.es, i64 noundef 4, i64 noundef 0) #24, !inline_history !918
  %i.ex = and i64 %i.ew, 4294967296
  %.not.i.i = icmp eq i64 %i.ex, 0
  store i64 %i.es, ptr %i.af, align 8, !tbaa !111
  br i1 %.not.i.i, label %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEm.exit.thread, label %bb.v

_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEm.exit.thread: ; preds = %.lr.ph172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  store i64 0, ptr %i.af, align 8, !tbaa !111
  br label %.thread109

bb.v:                                             ; preds = %.lr.ph172
  %i.ey = load i8, ptr %i.ag, align 8, !tbaa !112, !range !118, !noundef !53
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.w, label %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEm.exit

bb.w:                                             ; preds = %bb.v
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.a) #24
  br label %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEm.exit

_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEm.exit: ; preds = %bb.v, %bb.w
  %i.fa = load i32, ptr %i.a, align 4, !tbaa !117 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  store i64 0, ptr %i.af, align 8, !tbaa !111
  %i.fb = zext i32 %i.fa to i64
  %i.fc = icmp ult i64 %i.cg, %i.fb
  br i1 %i.fc, label %.thread109, label %bb.x

.thread109:                                       ; preds = %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEm.exit, %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEm.exit.thread
  %i.fd = phi i32 [ 0, %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEm.exit.thread ], [ %i.fa, %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEm.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #24
  store i32 %i.fd, ptr %i.g, align 4, !tbaa !117
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #24
  store i64 %i.cg, ptr %i.h, align 8, !tbaa !91
  %i.fe = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJjjmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.119, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %.loopexit

bb.x:                                             ; preds = %_ZNK4LIEF12BinaryStream4peekIjEENS_6resultIT_EEm.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %3 = trunc nuw i64 %indvars.iv.next to i32
  store i32 %3, ptr %i.f, align 4, !tbaa !117
  %i.ff = load i32, ptr %i.ao, align 4, !tbaa !936
  %i.fg = zext i32 %i.ff to i64
  %.not = icmp samesign ult i64 %indvars.iv.next, %i.fg
  br i1 %.not, label %.lr.ph172, label %._crit_edge173, !llvm.loop !919

.thread106:                                       ; preds = %bb.e, %_ZNK4LIEF10SpanStream7read_atEmmm.exit.thread, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.thread, %bb.p, %bb.r, %bb.t
  %.6.ph = phi i1 [ %i.eo, %bb.t ], [ %i.ee, %bb.r ], [ %i.ea, %bb.p ], [ %i.dv, %_ZSt4findIPKhcET_S2_S2_RKT0_.exit.thread ], [ %i.cj, %_ZNK4LIEF10SpanStream7read_atEmmm.exit.thread ], [ %i.cn, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %.loopexit

._crit_edge173:                                   ; preds = %bb.x, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24
  br label %.thread101

.thread101:                                       ; preds = %bb.b, %._crit_edge173
  %i.fh = getelementptr inbounds nuw i8, ptr %.sroa.468.0176, i64 8
  %i.fi = add nuw nsw i64 %.sroa.8.0175, 1        ; 2 uses
  %.not114 = icmp eq i64 %i.fi, %i.ae
  br i1 %.not114, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %.thread101, %._crit_edge, %.thread109, %.thread106, %.thread98
  %.not114126 = phi i1 [ %i.fe, %.thread109 ], [ %.6.ph, %.thread106 ], [ %i.ci, %.thread98 ], [ true, %._crit_edge ], [ true, %.thread101 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  ret i1 %.not114126
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker9check_tlsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %1 = alloca %"class.LIEF::optional", align 8    ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %3 = alloca %"struct.LIEF::MachO::ThreadLocalVariables::Thunk", align 8 ; 9 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52, !nonnull !53, !align !54 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 104
  %i.g = load i32, ptr %i.f, align 8, !tbaa !60
  %.fr = freeze i32 %i.g
  %i.h = tail call { i64, i64 } @_ZNK4LIEF5MachO6Binary25tlv_initial_content_rangeEv(ptr noundef nonnull align 8 dereferenceable(552) %i.e) #24 ; 2 uses
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = extractvalue { i64, i64 } %i.h, 1
  %i.k = load ptr, ptr %i.d, align 8, !tbaa !52, !nonnull !53, !align !54 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 232
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !100, !noalias !945 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 240
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !100, !noalias !946 ; 2 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = ashr exact i64 %i.r, 3
  %.not95105 = icmp eq ptr %i.o, %i.m
  br i1 %.not95105, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.thread
  %.034108 = phi ptr [ %spec.select, %.thread ], [ null, %bb.a ]
  %.sroa.465.0107 = phi ptr [ %i.at, %.thread ], [ %i.m, %bb.a ] ; 2 uses
  %.sroa.866.0106 = phi i64 [ %i.au, %.thread ], [ 0, %bb.a ]
  %i.t = load ptr, ptr %.sroa.465.0107, align 8, !tbaa !102 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 116
  %i.v = load i32, ptr %i.u, align 4, !tbaa !105
  %i.w = and i32 %i.v, 255
  %i.x = icmp eq i32 %i.w, 19
  %..i = select i1 %i.x, ptr %i.t, ptr null       ; 2 uses
  %.not = icmp eq ptr %..i, null
  %spec.select = select i1 %.not, ptr %.034108, ptr %..i ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !52, !nonnull !53, !align !54
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 104
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !60  ; 2 uses
  %i.ab = icmp eq i32 %i.aa, -17958194
  %i.ac = icmp eq i32 %i.aa, -822415874
  %spec.select.i.i48 = or i1 %i.ab, %i.ac
  %i.ad = select i1 %spec.select.i.i48, i64 12, i64 24 ; 2 uses
  store i64 %i.ad, ptr %i.a, align 8, !tbaa !91
  %.not43 = icmp eq ptr %spec.select, null
  br i1 %.not43, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  %i.ae = load ptr, ptr %spec.select, align 8, !tbaa !62
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call { ptr, i64 } %i.ag(ptr noundef nonnull align 8 dereferenceable(192) %spec.select) #24
  %i.ai = extractvalue { ptr, i64 } %i.ah, 1      ; 2 uses
  store i64 %i.ai, ptr %i.b, align 8, !tbaa !91
  %i.aj = urem i64 %i.ai, %i.ad
  %.not44 = icmp eq i64 %i.aj, 0
  br i1 %.not44, label %.thread82, label %bb.c

.thread82:                                        ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  br label %.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.ak = load ptr, ptr %spec.select, align 8, !tbaa !62
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  %i.am = load ptr, ptr %i.al, align 8
  call void %i.am(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(64) %spec.select) #24
  %i.an = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.120, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.ao = load ptr, ptr %2, align 8, !tbaa !106   ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aq = icmp eq ptr %i.ao, %i.ap
  br i1 %i.aq, label %.thread84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.ar = load i64, ptr %i.ap, align 8, !tbaa !107
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ao, i64 noundef %i.as) #27
  br label %.thread84

.thread84:                                        ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %.loopexit

.thread:                                          ; preds = %.lr.ph, %.thread82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.465.0107, i64 8
  %i.au = add nuw nsw i64 %.sroa.866.0106, 1      ; 2 uses
  %.not95 = icmp eq i64 %i.au, %i.s
  br i1 %.not95, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.thread, %bb.a
  %.034.lcssa = phi ptr [ null, %bb.a ], [ %spec.select, %.thread ] ; 4 uses
  %i.av = sub i64 %i.j, %i.i
  %.fr122 = freeze i64 %i.av                      ; 4 uses
  %i.aw = icmp ugt i64 %.fr122, 4294967296
  br i1 %i.aw, label %switch.early.test, label %bb.d

switch.early.test:                                ; preds = %._crit_edge
  %i.ax = tail call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.121)
  br label %.loopexit

bb.d:                                             ; preds = %._crit_edge
  %.not45 = icmp eq ptr %.034.lcssa, null
  br i1 %.not45, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ay = tail call noundef i64 @_ZNK4LIEF5MachO20ThreadLocalVariables9nb_thunksEv(ptr noundef nonnull align 8 dereferenceable(192) %.034.lcssa) #24, !noalias !947 ; 3 uses
  %.not96109 = icmp eq i64 %i.ay, 0
  br i1 %.not96109, label %.loopexit, label %.lr.ph112

.lr.ph112:                                        ; preds = %bb.e
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  switch i32 %.fr, label %.lr.ph112.split.split [
    i32 -17958194, label %.lr.ph112.split.us.preheader
    i32 -822415874, label %.lr.ph112.split.us.preheader
  ]

.lr.ph112.split.us.preheader:                     ; preds = %.lr.ph112, %.lr.ph112
  br label %.lr.ph112.split.us

.lr.ph112.split.us:                               ; preds = %.lr.ph112.split.us.preheader, %bb.g
  %.sroa.4.0110.us = phi i64 [ %i.bf, %bb.g ], [ 0, %.lr.ph112.split.us.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24, !noalias !948
  call void @_ZNK4LIEF5MachO20ThreadLocalVariables3getEm(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::optional") align 8 %1, ptr noundef nonnull align 8 dereferenceable(192) %.034.lcssa, i64 noundef %.sroa.4.0110.us) #24, !noalias !948
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24, !noalias !948
  %i.bb = load i64, ptr %i.az, align 8, !tbaa !950
  %i.bc = icmp ugt i64 %i.bb, %.fr122
  br i1 %i.bc, label %.split.us, label %bb.f

bb.f:                                             ; preds = %.lr.ph112.split.us
  %i.bd = load i64, ptr %i.ba, align 8, !tbaa !951
  %i.be = icmp ugt i64 %i.bd, 65535
  br i1 %i.be, label %.split114.us, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %i.bf = add nuw i64 %.sroa.4.0110.us, 1         ; 2 uses
  %.not96.us = icmp eq i64 %i.bf, %i.ay
  br i1 %.not96.us, label %.loopexit, label %.lr.ph112.split.us

.lr.ph112.split.split:                            ; preds = %.lr.ph112, %bb.i
  %.sroa.4.0110 = phi i64 [ %i.bm, %bb.i ], [ 0, %.lr.ph112 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24, !noalias !948
  call void @_ZNK4LIEF5MachO20ThreadLocalVariables3getEm(ptr dead_on_unwind nonnull writable sret(%"class.LIEF::optional") align 8 %1, ptr noundef nonnull align 8 dereferenceable(192) %.034.lcssa, i64 noundef %.sroa.4.0110) #24, !noalias !948
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !92
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #24, !noalias !948
  %i.bg = load i64, ptr %i.az, align 8, !tbaa !950
  %i.bh = icmp ugt i64 %i.bg, %.fr122
  br i1 %i.bh, label %.split.us, label %bb.h

.split.us:                                        ; preds = %.lr.ph112.split.us, %.lr.ph112.split.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 %.fr122, ptr %i.c, align 8, !tbaa !91
  %i.bi = call noundef zeroext i1 @_ZN4LIEF5MachO13LayoutChecker5errorIJmmEEEbPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull @.str.122, ptr noundef nonnull align 8 dereferenceable(8) %i.az, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  br label %.thread90

end_hunk_1
