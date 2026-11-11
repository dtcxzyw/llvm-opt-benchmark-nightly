Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ozz-animation/original/options?download=true
inline.NumInlined: 549
inline.NumDeleted: 215
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZSt16__merge_adaptiveIPPN3ozz7options6OptionElS4_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SB_SB_T0_SC_T1_T2_:bb.a
  %i.k = and i1 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %_ZSt4moveIPPN3ozz7options6OptionES4_ET0_T_S6_S5_.exit, %.lr.ph.i
  %.024.i = phi ptr [ %i.o, %.lr.ph.i ], [ %0, %_ZSt4moveIPPN3ozz7options6OptionES4_ET0_T_S6_S5_.exit ] ; 2 uses
  %.01823.i = phi ptr [ %.1.i, %.lr.ph.i ], [ %5, %_ZSt4moveIPPN3ozz7options6OptionES4_ET0_T_S6_S5_.exit ] ; 3 uses
  %.01922.i = phi ptr [ %.120.i, %.lr.ph.i ], [ %1, %_ZSt4moveIPPN3ozz7options6OptionES4_ET0_T_S6_S5_.exit ] ; 3 uses
  %i.l = load ptr, ptr %.01922.i, align 8, !tbaa !67
  %i.m = load ptr, ptr %.01823.i, align 8, !tbaa !67
  %i.n = tail call noundef zeroext i1 %i.a(ptr noundef %i.l, ptr noundef %i.m), !inline_history !172 ; 3 uses
  %.sink.in.i = select i1 %i.n, ptr %.01922.i, ptr %.01823.i
  %.120.idx.i = select i1 %i.n, i64 8, i64 0
  %.120.i = getelementptr inbounds nuw i8, ptr %.01922.i, i64 %.120.idx.i ; 2 uses
  %.1.idx.i = select i1 %i.n, i64 0, i64 8
  %.1.i = getelementptr inbounds nuw i8, ptr %.01823.i, i64 %.1.idx.i ; 3 uses
  %.sink.i = load ptr, ptr %.sink.in.i, align 8, !tbaa !67
  store ptr %.sink.i, ptr %.024.i, align 8, !tbaa !67
  %i.o = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 2 uses
  %i.p = icmp ne ptr %.1.i, %i.h                  ; 2 uses
  %i.q = icmp ne ptr %.120.i, %2
  %i.r = select i1 %i.p, i1 %i.q, i1 false
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !173

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_ZSt4moveIPPN3ozz7options6OptionES4_ET0_T_S6_S5_.exit
  %.018.lcssa.i = phi ptr [ %5, %_ZSt4moveIPPN3ozz7options6OptionES4_ET0_T_S6_S5_.exit ], [ %.1.i, %.lr.ph.i ] ; 3 uses
  %.0.lcssa.i = phi ptr [ %0, %_ZSt4moveIPPN3ozz7options6OptionES4_ET0_T_S6_S5_.exit ], [ %i.o, %.lr.ph.i ] ; 2 uses
  %.lcssa.i = phi i1 [ %i.i, %_ZSt4moveIPPN3ozz7options6OptionES4_ET0_T_S6_S5_.exit ], [ %i.p, %.lr.ph.i ]
  br i1 %.lcssa.i, label %bb.f, label %_ZSt21__move_merge_adaptiveIPPN3ozz7options6OptionES4_S4_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SB_T0_SC_T1_T2_.exit

bb.f:                                             ; preds = %._crit_edge.i
  %i.s = ptrtoint ptr %i.h to i64
  %i.t = ptrtoint ptr %.018.lcssa.i to i64
  %i.u = sub i64 %i.s, %i.t                       ; 3 uses
  %i.v = icmp sgt i64 %i.u, 8
  br i1 %i.v, label %bb.g, label %bb.h, !prof !102

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %.0.lcssa.i, ptr align 8 %.018.lcssa.i, i64 %i.u, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPPN3ozz7options6OptionES4_S4_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SB_T0_SC_T1_T2_.exit

bb.h:                                             ; preds = %bb.f
  %i.w = icmp eq i64 %i.u, 8
  br i1 %i.w, label %bb.i, label %_ZSt21__move_merge_adaptiveIPPN3ozz7options6OptionES4_S4_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SB_T0_SC_T1_T2_.exit

bb.i:                                             ; preds = %bb.h
  %i.x = load ptr, ptr %.018.lcssa.i, align 8, !tbaa !67
  store ptr %i.x, ptr %.0.lcssa.i, align 8, !tbaa !67
  br label %_ZSt21__move_merge_adaptiveIPPN3ozz7options6OptionES4_S4_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SB_T0_SC_T1_T2_.exit

bb.j:                                             ; preds = %bb.a
  %i.y = ptrtoint ptr %2 to i64
  %i.z = ptrtoint ptr %1 to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 7 uses
  %i.ab = icmp sgt i64 %i.aa, 8
  br i1 %i.ab, label %bb.k, label %bb.l, !prof !102

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %5, ptr align 8 %1, i64 %i.aa, i1 false)
  br label %_ZSt4moveIPPN3ozz7options6OptionES4_ET0_T_S6_S5_.exit19

bb.l:                                             ; preds = %bb.j
  %i.ac = icmp eq i64 %i.aa, 8
  br i1 %i.ac, label %bb.m, label %_ZSt4moveIPPN3ozz7options6OptionES4_ET0_T_S6_S5_.exit19

bb.m:                                             ; preds = %bb.l
  %i.ad = load ptr, ptr %1, align 8, !tbaa !67
  store ptr %i.ad, ptr %5, align 8, !tbaa !67
  br label %_ZSt4moveIPPN3ozz7options6OptionES4_ET0_T_S6_S5_.exit19

_ZSt4moveIPPN3ozz7options6OptionES4_ET0_T_S6_S5_.exit19: ; preds = %bb.k, %bb.l, %bb.m
  %i.ae = getelementptr inbounds i8, ptr %5, i64 %i.aa
  %i.af = icmp eq ptr %0, %1
  br i1 %i.af, label %bb.n, label %bb.r

bb.n:                                             ; preds = %_ZSt4moveIPPN3ozz7options6OptionES4_ET0_T_S6_S5_.exit19
  %i.ag = ashr exact i64 %i.aa, 3                 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 1
  br i1 %i.ah, label %bb.o, label %bb.p, !prof !102

bb.o:                                             ; preds = %bb.n
  %i.ai = sub nsw i64 0, %i.ag
  %i.aj = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ai
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aj, ptr align 8 %5, i64 %i.aa, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPPN3ozz7options6OptionES4_S4_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SB_T0_SC_T1_T2_.exit

bb.p:                                             ; preds = %bb.n
  %i.ak = icmp eq i64 %i.aa, 8
  br i1 %i.ak, label %bb.q, label %_ZSt21__move_merge_adaptiveIPPN3ozz7options6OptionES4_S4_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SB_T0_SC_T1_T2_.exit

bb.q:                                             ; preds = %bb.p
  %i.al = getelementptr inbounds i8, ptr %2, i64 -8
  %i.am = load ptr, ptr %5, align 8, !tbaa !67
  store ptr %i.am, ptr %i.al, align 8, !tbaa !67
  br label %_ZSt21__move_merge_adaptiveIPPN3ozz7options6OptionES4_S4_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SB_T0_SC_T1_T2_.exit

bb.r:                                             ; preds = %_ZSt4moveIPPN3ozz7options6OptionES4_ET0_T_S6_S5_.exit19
  %i.an = icmp eq ptr %2, %1
  br i1 %i.an, label %_ZSt21__move_merge_adaptiveIPPN3ozz7options6OptionES4_S4_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SB_T0_SC_T1_T2_.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = getelementptr inbounds i8, ptr %i.ae, i64 -8
  br label %.outer

.outer:                                           ; preds = %bb.u, %bb.s
  %.026.i.ph.pn = phi ptr [ %1, %bb.s ], [ %.026.i.ph, %bb.u ]
  %.024.i20.ph = phi ptr [ %i.ao, %bb.s ], [ %.024.i20, %bb.u ]
  %.0.i.ph = phi ptr [ %2, %bb.s ], [ %i.as, %bb.u ]
  %.026.i.ph = getelementptr inbounds i8, ptr %.026.i.ph.pn, i64 -8 ; 4 uses
  br label %bb.t

bb.t:                                             ; preds = %.outer, %bb.aa
  %.024.i20 = phi ptr [ %i.bi, %bb.aa ], [ %.024.i20.ph, %.outer ] ; 6 uses
  %.0.i = phi ptr [ %i.as, %bb.aa ], [ %.0.i.ph, %.outer ] ; 2 uses
  %i.ap = load ptr, ptr %.024.i20, align 8, !tbaa !67
  %i.aq = load ptr, ptr %.026.i.ph, align 8, !tbaa !67
  %i.ar = tail call noundef zeroext i1 %i.a(ptr noundef %i.ap, ptr noundef %i.aq), !inline_history !174
  %i.as = getelementptr inbounds i8, ptr %.0.i, i64 -8 ; 5 uses
  br i1 %i.ar, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.at = load ptr, ptr %.026.i.ph, align 8, !tbaa !67
  store ptr %i.at, ptr %i.as, align 8, !tbaa !67
  %i.au = icmp eq ptr %0, %.026.i.ph
  br i1 %i.au, label %bb.v, label %.outer, !llvm.loop !175

bb.v:                                             ; preds = %bb.u
  %i.av = getelementptr inbounds nuw i8, ptr %.024.i20, i64 8
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %5 to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 3 uses
  %i.az = ashr exact i64 %i.ay, 3                 ; 2 uses
  %i.ba = icmp sgt i64 %i.az, 1
  br i1 %i.ba, label %bb.w, label %bb.x, !prof !102

bb.w:                                             ; preds = %bb.v
  %i.bb = sub nsw i64 0, %i.az
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.as, i64 %i.bb
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bc, ptr align 8 %5, i64 %i.ay, i1 false)
  br label %_ZSt21__move_merge_adaptiveIPPN3ozz7options6OptionES4_S4_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SB_T0_SC_T1_T2_.exit

bb.x:                                             ; preds = %bb.v
  %i.bd = icmp eq i64 %i.ay, 8
  br i1 %i.bd, label %bb.y, label %_ZSt21__move_merge_adaptiveIPPN3ozz7options6OptionES4_S4_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SB_T0_SC_T1_T2_.exit

bb.y:                                             ; preds = %bb.x
  %i.be = getelementptr inbounds i8, ptr %.0.i, i64 -16
  %i.bf = load ptr, ptr %5, align 8, !tbaa !67
  store ptr %i.bf, ptr %i.be, align 8, !tbaa !67
  br label %_ZSt21__move_merge_adaptiveIPPN3ozz7options6OptionES4_S4_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SB_T0_SC_T1_T2_.exit

bb.z:                                             ; preds = %bb.t
  %i.bg = load ptr, ptr %.024.i20, align 8, !tbaa !67
  store ptr %i.bg, ptr %i.as, align 8, !tbaa !67
  %i.bh = icmp eq ptr %5, %.024.i20
  br i1 %i.bh, label %_ZSt21__move_merge_adaptiveIPPN3ozz7options6OptionES4_S4_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SB_T0_SC_T1_T2_.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bi = getelementptr inbounds i8, ptr %.024.i20, i64 -8
  br label %bb.t, !llvm.loop !175

_ZSt21__move_merge_adaptiveIPPN3ozz7options6OptionES4_S4_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SB_T0_SC_T1_T2_.exit: ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.r, %bb.q, %bb.p, %bb.o, %bb.i, %bb.h, %bb.g, %._crit_edge.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__merge_without_bufferIPPN3ozz7options6OptionElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SB_SB_T0_SC_T1_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq i64 %3, 0
  %i.b = icmp eq i64 %4, 0
  %or.cond73 = or i1 %i.a, %i.b
  br i1 %or.cond73, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %2 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr6979 = phi i64 [ %4, %.lr.ph ], [ %i.av, %tailrecurse ] ; 4 uses
  %.tr6878 = phi i64 [ %3, %.lr.ph ], [ %i.au, %tailrecurse ] ; 4 uses
  %.tr6676 = phi ptr [ %1, %.lr.ph ], [ %.062, %tailrecurse ] ; 8 uses
  %.tr74 = phi ptr [ %0, %.lr.ph ], [ %i.at, %tailrecurse ] ; 8 uses
  %i.d = add nsw i64 %.tr6979, %.tr6878
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %.tr6676, align 8, !tbaa !67
  %i.g = load ptr, ptr %.tr74, align 8, !tbaa !67
  %i.h = tail call noundef zeroext i1 %5(ptr noundef %i.f, ptr noundef %i.g), !inline_history !176
  br i1 %i.h, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %.tr74, align 8, !tbaa !67
  %i.j = load ptr, ptr %.tr6676, align 8, !tbaa !67
  store ptr %i.j, ptr %.tr74, align 8, !tbaa !67
  store ptr %i.i, ptr %.tr6676, align 8, !tbaa !67
  br label %.loopexit

bb.e:                                             ; preds = %bb.b
  %i.k = icmp sgt i64 %.tr6878, %.tr6979
  %i.l = ptrtoint ptr %.tr6676 to i64             ; 4 uses
  br i1 %i.k, label %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit44

_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %i.m = sdiv i64 %.tr6878, 2                     ; 2 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %.tr74, i64 %i.m ; 2 uses
  %i.o = sub i64 %i.c, %i.l
  %i.p = ashr exact i64 %i.o, 3                   ; 2 uses
  %i.q = icmp sgt i64 %i.p, 0
  br i1 %i.q, label %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit

_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.017.i = phi i64 [ %.1.i, %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.p, %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.01116.i = phi ptr [ %.112.i, %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %.tr6676, %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.r = lshr i64 %.017.i, 1                      ; 3 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.01116.i, i64 %i.r ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !67
  %i.u = load ptr, ptr %i.n, align 8, !tbaa !67
  %i.v = tail call noundef zeroext i1 %5(ptr noundef %i.t, ptr noundef %i.u), !inline_history !5 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.x = xor i64 %i.r, -1
  %i.y = add nsw i64 %.017.i, %i.x
  %.112.i = select i1 %i.v, ptr %i.w, ptr %.01116.i ; 3 uses
  %.1.i = select i1 %i.v, i64 %i.y, i64 %i.r      ; 2 uses
  %i.z = icmp sgt i64 %.1.i, 0
  br i1 %i.z, label %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, !llvm.loop !6

_ZSt13__lower_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.112.i to i64
  br label %_ZSt13__lower_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit

_ZSt13__lower_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %i.l, %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.011.lcssa.i = phi ptr [ %.112.i, %_ZSt13__lower_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %.tr6676, %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.aa = sub i64 %.pre-phi, %i.l
  %i.ab = ashr exact i64 %i.aa, 3
  br label %tailrecurse

_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit44: ; preds = %bb.e
  %i.ac = sdiv i64 %.tr6979, 2                    ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %.tr6676, i64 %i.ac ; 2 uses
  %i.ae = ptrtoint ptr %.tr74 to i64              ; 3 uses
  %i.af = sub i64 %i.l, %i.ae
  %i.ag = ashr exact i64 %i.af, 3                 ; 2 uses
  %i.ah = icmp sgt i64 %i.ag, 0
  br i1 %i.ah, label %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit.i46, label %_ZSt13__upper_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit

_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit.i46: ; preds = %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit44, %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit.i46
  %.017.i47 = phi i64 [ %.1.i52, %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit.i46 ], [ %i.ag, %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit44 ] ; 2 uses
  %.01116.i48 = phi ptr [ %.112.i51, %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit.i46 ], [ %.tr74, %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit44 ] ; 2 uses
  %i.ai = lshr i64 %.017.i47, 1                   ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.01116.i48, i64 %i.ai ; 2 uses
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !67
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !67
  %i.am = tail call noundef zeroext i1 %5(ptr noundef %i.ak, ptr noundef %i.al), !inline_history !7 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.ao = xor i64 %i.ai, -1
  %i.ap = add nsw i64 %.017.i47, %i.ao
  %.112.i51 = select i1 %i.am, ptr %.01116.i48, ptr %i.an ; 3 uses
  %.1.i52 = select i1 %i.am, i64 %i.ai, i64 %i.ap ; 2 uses
  %i.aq = icmp sgt i64 %.1.i52, 0
  br i1 %i.aq, label %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit.i46, label %_ZSt13__upper_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, !llvm.loop !8

_ZSt13__upper_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit.i46
  %.pre82 = ptrtoint ptr %.112.i51 to i64
  br label %_ZSt13__upper_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit

_ZSt13__upper_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit44
  %.pre-phi83 = phi i64 [ %.pre82, %_ZSt13__upper_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %i.ae, %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit44 ]
  %.011.lcssa.i45 = phi ptr [ %.112.i51, %_ZSt13__upper_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %.tr74, %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit44 ]
  %i.ar = sub i64 %.pre-phi83, %i.ae
  %i.as = ashr exact i64 %i.ar, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit, %_ZSt13__lower_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit
  %.063 = phi ptr [ %i.n, %_ZSt13__lower_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit ], [ %.011.lcssa.i45, %_ZSt13__upper_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %.062 = phi ptr [ %.011.lcssa.i, %_ZSt13__lower_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit ], [ %i.ad, %_ZSt13__upper_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %.038 = phi i64 [ %i.ab, %_ZSt13__lower_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit ], [ %i.ac, %_ZSt13__upper_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %.0 = phi i64 [ %i.m, %_ZSt13__lower_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit ], [ %i.as, %_ZSt13__upper_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %i.at = tail call noundef ptr @_ZNSt3_V28__rotateIPPN3ozz7options6OptionEEET_S6_S6_S6_St26random_access_iterator_tag(ptr noundef %.063, ptr noundef %.tr6676, ptr noundef %.062) ; 2 uses
  tail call void @_ZSt22__merge_without_bufferIPPN3ozz7options6OptionElN9__gnu_cxx5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SB_SB_T0_SC_T1_(ptr noundef %.tr74, ptr noundef %.063, ptr noundef %i.at, i64 noundef %.0, i64 noundef %.038, ptr %5)
  %i.au = sub nsw i64 %.tr6878, %.0               ; 2 uses
  %i.av = sub nsw i64 %.tr6979, %.038             ; 2 uses
  %i.aw = icmp eq i64 %i.au, 0
  %i.ax = icmp eq i64 %i.av, 0
  %or.cond = or i1 %i.aw, %i.ax
  br i1 %or.cond, label %.loopexit, label %bb.b

.loopexit:                                        ; preds = %tailrecurse, %bb.a, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt23__merge_adaptive_resizeIPPN3ozz7options6OptionElS4_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SB_SB_T0_SC_T1_SC_T2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef %6, i64 %7) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = inttoptr i64 %7 to ptr                   ; 2 uses
  %.not87 = icmp sgt i64 %3, %6
  %.not5488 = icmp sgt i64 %4, %6
  %or.cond89 = and i1 %.not87, %.not5488
  br i1 %or.cond89, label %.lr.ph, label %tailrecurse._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %2 to i64
  br label %bb.b

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.am, %tailrecurse ]
  %.tr80.lcssa = phi ptr [ %1, %bb.a ], [ %.076, %tailrecurse ]
  %.tr82.lcssa = phi i64 [ %3, %bb.a ], [ %i.al, %tailrecurse ]
  %.tr83.lcssa = phi i64 [ %4, %bb.a ], [ %i.an, %tailrecurse ]
  tail call void @_ZSt16__merge_adaptiveIPPN3ozz7options6OptionElS4_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SB_SB_T0_SC_T1_T2_(ptr noundef %.tr.lcssa, ptr noundef %.tr80.lcssa, ptr noundef %2, i64 noundef %.tr82.lcssa, i64 noundef %.tr83.lcssa, ptr noundef %5, i64 %7)
  ret void

bb.b:                                             ; preds = %.lr.ph, %tailrecurse
  %.tr8395 = phi i64 [ %4, %.lr.ph ], [ %i.an, %tailrecurse ] ; 3 uses
  %.tr8294 = phi i64 [ %3, %.lr.ph ], [ %i.al, %tailrecurse ] ; 3 uses
  %.tr8092 = phi ptr [ %1, %.lr.ph ], [ %.076, %tailrecurse ] ; 5 uses
  %.tr90 = phi ptr [ %0, %.lr.ph ], [ %i.am, %tailrecurse ] ; 5 uses
  %i.c = icmp sgt i64 %.tr8294, %.tr8395
  %i.d = ptrtoint ptr %.tr8092 to i64             ; 4 uses
  br i1 %i.c, label %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit, label %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit58

_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.b
  %i.e = sdiv i64 %.tr8294, 2                     ; 2 uses
  %i.f = getelementptr inbounds [8 x i8], ptr %.tr90, i64 %i.e ; 2 uses
  %i.g = sub i64 %i.b, %i.d
  %i.h = ashr exact i64 %i.g, 3                   ; 2 uses
  %i.i = icmp sgt i64 %i.h, 0
  br i1 %i.i, label %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit

_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit.i: ; preds = %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit, %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.017.i = phi i64 [ %.1.i, %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %i.h, %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %.01116.i = phi ptr [ %.112.i, %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit.i ], [ %.tr8092, %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit ] ; 2 uses
  %i.j = lshr i64 %.017.i, 1                      ; 3 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.01116.i, i64 %i.j ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !67
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !67
  %i.n = tail call noundef zeroext i1 %i.a(ptr noundef %i.l, ptr noundef %i.m), !inline_history !5 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.p = xor i64 %i.j, -1
  %i.q = add nsw i64 %.017.i, %i.p
  %.112.i = select i1 %i.n, ptr %i.o, ptr %.01116.i ; 3 uses
  %.1.i = select i1 %i.n, i64 %i.q, i64 %i.j      ; 2 uses
  %i.r = icmp sgt i64 %.1.i, 0
  br i1 %i.r, label %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit.i, label %_ZSt13__lower_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, !llvm.loop !6

_ZSt13__lower_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit.i
  %.pre = ptrtoint ptr %.112.i to i64
  br label %_ZSt13__lower_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit

_ZSt13__lower_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit: ; preds = %_ZSt13__lower_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit
  %.pre-phi = phi i64 [ %.pre, %_ZSt13__lower_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %i.d, %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit ]
  %.011.lcssa.i = phi ptr [ %.112.i, %_ZSt13__lower_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %.tr8092, %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit ]
  %i.s = sub i64 %.pre-phi, %i.d
  %i.t = ashr exact i64 %i.s, 3
  br label %tailrecurse

_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit58: ; preds = %bb.b
  %i.u = sdiv i64 %.tr8395, 2                     ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %.tr8092, i64 %i.u ; 2 uses
  %i.w = ptrtoint ptr %.tr90 to i64               ; 3 uses
  %i.x = sub i64 %i.d, %i.w
  %i.y = ashr exact i64 %i.x, 3                   ; 2 uses
  %i.z = icmp sgt i64 %i.y, 0
  br i1 %i.z, label %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit.i60, label %_ZSt13__upper_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit

_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit.i60: ; preds = %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit58, %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit.i60
  %.017.i61 = phi i64 [ %.1.i66, %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit.i60 ], [ %i.y, %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit58 ] ; 2 uses
  %.01116.i62 = phi ptr [ %.112.i65, %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit.i60 ], [ %.tr90, %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit58 ] ; 2 uses
  %i.aa = lshr i64 %.017.i61, 1                   ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.01116.i62, i64 %i.aa ; 2 uses
  %i.ac = load ptr, ptr %i.v, align 8, !tbaa !67
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !67
  %i.ae = tail call noundef zeroext i1 %i.a(ptr noundef %i.ac, ptr noundef %i.ad), !inline_history !7 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ag = xor i64 %i.aa, -1
  %i.ah = add nsw i64 %.017.i61, %i.ag
  %.112.i65 = select i1 %i.ae, ptr %.01116.i62, ptr %i.af ; 3 uses
  %.1.i66 = select i1 %i.ae, i64 %i.aa, i64 %i.ah ; 2 uses
  %i.ai = icmp sgt i64 %.1.i66, 0
  br i1 %i.ai, label %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit.i60, label %_ZSt13__upper_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, !llvm.loop !8

_ZSt13__upper_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit.loopexit: ; preds = %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit.i60
  %.pre101 = ptrtoint ptr %.112.i65 to i64
  br label %_ZSt13__upper_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit

_ZSt13__upper_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit: ; preds = %_ZSt13__upper_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit.loopexit, %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit58
  %.pre-phi102 = phi i64 [ %.pre101, %_ZSt13__upper_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %i.w, %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit58 ]
  %.011.lcssa.i59 = phi ptr [ %.112.i65, %_ZSt13__upper_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit.loopexit ], [ %.tr90, %_ZSt9__advanceIPPN3ozz7options6OptionElEvRT_T0_St26random_access_iterator_tag.exit58 ]
  %i.aj = sub i64 %.pre-phi102, %i.w
  %i.ak = ashr exact i64 %i.aj, 3
  br label %tailrecurse

tailrecurse:                                      ; preds = %_ZSt13__upper_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit, %_ZSt13__lower_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit
  %.077 = phi ptr [ %i.f, %_ZSt13__lower_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit ], [ %.011.lcssa.i59, %_ZSt13__upper_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %.076 = phi ptr [ %.011.lcssa.i, %_ZSt13__lower_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit ], [ %i.v, %_ZSt13__upper_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit ] ; 3 uses
  %.050 = phi i64 [ %i.t, %_ZSt13__lower_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit ], [ %i.u, %_ZSt13__upper_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit ] ; 3 uses
  %.0 = phi i64 [ %i.e, %_ZSt13__lower_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Iter_comp_valIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit ], [ %i.ak, %_ZSt13__upper_boundIPPN3ozz7options6OptionES3_N9__gnu_cxx5__ops14_Val_comp_iterIPFbS3_S3_EEEET_SB_SB_RKT0_T1_.exit ] ; 2 uses
  %i.al = sub nsw i64 %.tr8294, %.0               ; 4 uses
  %i.am = tail call noundef ptr @_ZSt17__rotate_adaptiveIPPN3ozz7options6OptionES4_lET_S5_S5_S5_T1_S6_T0_S6_(ptr noundef %.077, ptr noundef %.tr8092, ptr noundef %.076, i64 noundef %i.al, i64 noundef %.050, ptr noundef %5, i64 noundef %6) ; 3 uses
  tail call void @_ZSt23__merge_adaptive_resizeIPPN3ozz7options6OptionElS4_N9__gnu_cxx5__ops15_Iter_comp_iterIPFbS3_S3_EEEEvT_SB_SB_T0_SC_T1_SC_T2_(ptr noundef %.tr90, ptr noundef %.077, ptr noundef %i.am, i64 noundef %.0, i64 noundef %.050, ptr noundef %5, i64 noundef %6, i64 %7)
  %i.an = sub nsw i64 %.tr8395, %.050             ; 3 uses
  %.not = icmp sgt i64 %i.al, %6
  %.not54 = icmp sgt i64 %i.an, %6
  %or.cond = and i1 %.not, %.not54
  br i1 %or.cond, label %bb.b, label %tailrecurse._crit_edge
}

; Function Attrs: nobuiltin nounwind allocsize(0)
declare noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt3_V28__rotateIPPN3ozz7options6OptionEEET_S6_S6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %_ZSt11swap_rangesIPPN3ozz7options6OptionES4_ET0_T_S6_S5_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %2, %1
  br i1 %i.b, label %_ZSt11swap_rangesIPPN3ozz7options6OptionES4_ET0_T_S6_S5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.d = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = ashr exact i64 %i.e, 3                   ; 2 uses
  %i.g = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.h = sub i64 %i.g, %i.d
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = sub nsw i64 %i.f, %i.i
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph.i.preheader, label %bb.d

.lr.ph.i.preheader:                               ; preds = %bb.c
  %i.l = add i64 %i.g, -8
  %i.m = sub i64 %i.l, %i.d                       ; 3 uses
  %i.n = lshr i64 %i.m, 3
  %i.o = add nuw nsw i64 %i.n, 1                  ; 2 uses
  %min.iters.check176 = icmp ult i64 %i.m, 120
  br i1 %min.iters.check176, label %.lr.ph.i.preheader196, label %vector.memcheck177

vector.memcheck177:                               ; preds = %.lr.ph.i.preheader
  %i.p = and i64 %i.m, -8
  %i.q = add i64 %i.p, 8                          ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 %i.q
  %i.s = getelementptr i8, ptr %1, i64 %i.q
  %bound0178 = icmp ult ptr %0, %i.s
  %bound1179 = icmp ult ptr %1, %i.r
  %found.conflict180 = and i1 %bound0178, %bound1179
  br i1 %found.conflict180, label %.lr.ph.i.preheader196, label %vector.ph181

vector.ph181:                                     ; preds = %vector.memcheck177
  %n.vec182 = and i64 %i.o, 4611686018427387896   ; 3 uses
  %i.t = shl i64 %n.vec182, 3                     ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 %i.t
  %i.v = getelementptr i8, ptr %0, i64 %i.t
  br label %vector.body183

vector.body183:                                   ; preds = %vector.body183, %vector.ph181
  %index184 = phi i64 [ 0, %vector.ph181 ], [ %index.next191, %vector.body183 ] ; 2 uses
  %i.w = shl i64 %index184, 3                     ; 2 uses
  %next.gep185 = getelementptr i8, ptr %1, i64 %i.w ; 3 uses
  %next.gep186 = getelementptr i8, ptr %0, i64 %i.w ; 3 uses
  %i.x = getelementptr i8, ptr %next.gep186, i64 32 ; 2 uses
  %wide.load187 = load <4 x ptr>, ptr %next.gep186, align 8, !tbaa !67, !alias.scope !195, !noalias !196
  %wide.load188 = load <4 x ptr>, ptr %i.x, align 8, !tbaa !67, !alias.scope !195, !noalias !196
  %i.y = getelementptr i8, ptr %next.gep185, i64 32 ; 2 uses
  %wide.load189 = load <4 x ptr>, ptr %next.gep185, align 8, !tbaa !67, !alias.scope !196
  %wide.load190 = load <4 x ptr>, ptr %i.y, align 8, !tbaa !67, !alias.scope !196
  store <4 x ptr> %wide.load189, ptr %next.gep186, align 8, !tbaa !67, !alias.scope !195, !noalias !196
  store <4 x ptr> %wide.load190, ptr %i.x, align 8, !tbaa !67, !alias.scope !195, !noalias !196
  store <4 x ptr> %wide.load187, ptr %next.gep185, align 8, !tbaa !67, !alias.scope !196
  store <4 x ptr> %wide.load188, ptr %i.y, align 8, !tbaa !67, !alias.scope !196
  %index.next191 = add nuw i64 %index184, 8       ; 2 uses
  %i.z = icmp eq i64 %index.next191, %n.vec182
  br i1 %i.z, label %middle.block192, label %vector.body183, !llvm.loop !180

middle.block192:                                  ; preds = %vector.body183
  %cmp.n193 = icmp eq i64 %i.o, %n.vec182
  br i1 %cmp.n193, label %_ZSt11swap_rangesIPPN3ozz7options6OptionES4_ET0_T_S6_S5_.exit, label %.lr.ph.i.preheader196

.lr.ph.i.preheader196:                            ; preds = %vector.memcheck177, %.lr.ph.i.preheader, %middle.block192
  %.010.i.ph = phi ptr [ %1, %vector.memcheck177 ], [ %1, %.lr.ph.i.preheader ], [ %i.u, %middle.block192 ]
  %.079.i.ph = phi ptr [ %0, %vector.memcheck177 ], [ %0, %.lr.ph.i.preheader ], [ %i.v, %middle.block192 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader196, %.lr.ph.i
  %.010.i = phi ptr [ %i.ad, %.lr.ph.i ], [ %.010.i.ph, %.lr.ph.i.preheader196 ] ; 3 uses
  %.079.i = phi ptr [ %i.ac, %.lr.ph.i ], [ %.079.i.ph, %.lr.ph.i.preheader196 ] ; 3 uses
  %i.aa = load ptr, ptr %.079.i, align 8, !tbaa !67
  %i.ab = load ptr, ptr %.010.i, align 8, !tbaa !67
  store ptr %i.ab, ptr %.079.i, align 8, !tbaa !67
  store ptr %i.aa, ptr %.010.i, align 8, !tbaa !67
  %i.ac = getelementptr inbounds nuw i8, ptr %.079.i, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.010.i, i64 8
  %.not.i = icmp eq ptr %i.ac, %1
  br i1 %.not.i, label %_ZSt11swap_rangesIPPN3ozz7options6OptionES4_ET0_T_S6_S5_.exit, label %.lr.ph.i, !llvm.loop !181

bb.d:                                             ; preds = %bb.c
  %i.ae = sub i64 %i.c, %i.g
  %i.af = getelementptr inbounds i8, ptr %0, i64 %i.ae ; 4 uses
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %bb.d
  %.086 = phi i64 [ %i.f, %bb.d ], [ %.086.be, %.backedge ] ; 11 uses
  %.082 = phi i64 [ %i.i, %bb.d ], [ %.082.be, %.backedge ] ; 18 uses
  %.058 = phi ptr [ %0, %bb.d ], [ %.058.be, %.backedge ] ; 22 uses
  %i.ag = sub nsw i64 %.086, %.082                ; 10 uses
  %i.ah = icmp slt i64 %.082, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ai = icmp eq i64 %.082, 1
  br i1 %i.ai, label %_ZSt4moveIPPN3ozz7options6OptionES4_ET0_T_S6_S5_.exit, label %bb.g

_ZSt4moveIPPN3ozz7options6OptionES4_ET0_T_S6_S5_.exit: ; preds = %bb.f
  %i.aj = load ptr, ptr %.058, align 8, !tbaa !67
  %i.ak = getelementptr inbounds nuw i8, ptr %.058, i64 8
  %.idx97 = shl nuw nsw i64 %.086, 3              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.058, i64 %.idx97
  %gepdiff = add nsw i64 %.idx97, -8
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %.058, ptr nonnull align 8 %i.ak, i64 %gepdiff, i1 false)
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 -8
  store ptr %i.aj, ptr %i.am, align 8, !tbaa !67
  br label %_ZSt11swap_rangesIPPN3ozz7options6OptionES4_ET0_T_S6_S5_.exit

bb.g:                                             ; preds = %bb.f
  %i.an = icmp sgt i64 %i.ag, 0
  br i1 %i.an, label %.lr.ph110.preheader, label %._crit_edge111

.lr.ph110.preheader:                              ; preds = %bb.g
  %i.ao = getelementptr [8 x i8], ptr %.058, i64 %.082 ; 5 uses
  %min.iters.check = icmp ult i64 %i.ag, 8
  br i1 %min.iters.check, label %.lr.ph110.preheader197, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph110.preheader
  %i.ap = shl i64 %.086, 3
  %i.aq = sub i64 %.086, %.082
  %i.ar = shl i64 %i.aq, 3
  %i.as = getelementptr i8, ptr %.058, i64 %i.ar
  %i.at = getelementptr i8, ptr %.058, i64 %i.ap
  %bound0 = icmp ult ptr %.058, %i.at
  %bound1 = icmp ult ptr %i.ao, %i.as
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph110.preheader197, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ag, 9223372036854775800     ; 4 uses
  %i.au = shl i64 %n.vec, 3                       ; 2 uses
  %i.av = getelementptr i8, ptr %i.ao, i64 %i.au
  %i.aw = getelementptr i8, ptr %.058, i64 %i.au  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ao, i64 %i.ax ; 3 uses
  %next.gep138 = getelementptr i8, ptr %.058, i64 %i.ax ; 3 uses
  %i.ay = getelementptr i8, ptr %next.gep138, i64 32 ; 2 uses
  %wide.load = load <4 x ptr>, ptr %next.gep138, align 8, !tbaa !67, !alias.scope !197, !noalias !198
  %wide.load139 = load <4 x ptr>, ptr %i.ay, align 8, !tbaa !67, !alias.scope !197, !noalias !198
  %i.az = getelementptr i8, ptr %next.gep, i64 32 ; 2 uses
  %wide.load140 = load <4 x ptr>, ptr %next.gep, align 8, !tbaa !67, !alias.scope !198
  %wide.load141 = load <4 x ptr>, ptr %i.az, align 8, !tbaa !67, !alias.scope !198
  store <4 x ptr> %wide.load140, ptr %next.gep138, align 8, !tbaa !67, !alias.scope !197, !noalias !198
  store <4 x ptr> %wide.load141, ptr %i.ay, align 8, !tbaa !67, !alias.scope !197, !noalias !198
  store <4 x ptr> %wide.load, ptr %next.gep, align 8, !tbaa !67, !alias.scope !198
  store <4 x ptr> %wide.load139, ptr %i.az, align 8, !tbaa !67, !alias.scope !198
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !185

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ag, %n.vec
  br i1 %cmp.n, label %._crit_edge111, label %.lr.ph110.preheader197

.lr.ph110.preheader197:                           ; preds = %vector.memcheck, %.lr.ph110.preheader, %middle.block
  %.054108.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph110.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %.055107.ph = phi ptr [ %i.ao, %vector.memcheck ], [ %i.ao, %.lr.ph110.preheader ], [ %i.av, %middle.block ] ; 2 uses
  %.159106.ph = phi ptr [ %.058, %vector.memcheck ], [ %.058, %.lr.ph110.preheader ], [ %i.aw, %middle.block ] ; 2 uses
  %i.bb = sub i64 %.086, %.082
  %xtraiter205 = and i64 %i.bb, 3                 ; 2 uses
  %lcmp.mod206.not = icmp eq i64 %xtraiter205, 0
  br i1 %lcmp.mod206.not, label %.lr.ph110.prol.loopexit, label %.lr.ph110.prol

.lr.ph110.prol:                                   ; preds = %.lr.ph110.preheader197, %.lr.ph110.prol
end_hunk_0
