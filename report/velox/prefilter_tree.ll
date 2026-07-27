inline.NumInlined: 1854
inline.NumDeleted: 788
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN3re213PrefilterTree15AssignUniqueIdsEPN4absl12lts_2024011613flat_hash_setIPNS_9PrefilterENS0_13PrefilterHashENS0_14PrefilterEqualESaIS5_EEEPSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaISH_EE:bb.a
  %i.qy = load i32, ptr %.sroa.032.1.i.i.i, align 4, !tbaa !70
  %i.qz = icmp eq i32 %i.qy, %i.ni
  br i1 %i.qz, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit, label %bb.ct

bb.ct:                                            ; preds = %._crit_edge._crit_edge.i.i.i
  %i.ra = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i, i64 4
  br label %._crit_edge._crit_edge57.i.i.i

._crit_edge._crit_edge57.i.i.i:                   ; preds = %._crit_edge.i.i.i, %bb.ct
  %.sroa.032.2.i.i.i = phi ptr [ %i.ra, %bb.ct ], [ %.sroa.032.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %i.rb = load i32, ptr %.sroa.032.2.i.i.i, align 4, !tbaa !70
  %i.rc = icmp eq i32 %i.rb, %i.ni
  %spec.select.i.i.i = select i1 %i.rc, ptr %.sroa.032.2.i.i.i, ptr %i.ps
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit: ; preds = %bb.cp
  %i.rd = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 12
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit683: ; preds = %bb.co
  %i.re = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 8
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit685: ; preds = %bb.cn
  %i.rf = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i, i64 4
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit: ; preds = %bb.cm, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit683, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit685, %._crit_edge._crit_edge57.i.i.i, %._crit_edge._crit_edge.i.i.i, %bb.cr
  %.sroa.08.0.in.sroa.speculated.i.i.i = phi ptr [ %.sroa.032.1.i.i.i, %._crit_edge._crit_edge.i.i.i ], [ %spec.select.i.i.i, %._crit_edge._crit_edge57.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i, %bb.cr ], [ %i.rf, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit685 ], [ %i.re, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit683 ], [ %i.rd, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i, %bb.cm ] ; 2 uses
  %i.rg = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i, %i.ps
  br i1 %i.rg, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.thread, label %bb.cu

bb.cu:                                            ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit
  %i.rh = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i to i64
  %i.ri = sub i64 %i.rh, %i.pv
  %i.rj = getelementptr inbounds i8, ptr %i.pt, i64 %i.ri ; 3 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 4 ; 4 uses
  %i.rl = icmp eq ptr %i.rk, %i.ps
  br i1 %i.rl, label %bb.cz, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.rm = ptrtoint ptr %i.rk to i64
  %i.rn = sub i64 %i.pu, %i.rm                    ; 3 uses
  %i.ro = icmp sgt i64 %i.rn, 4
  br i1 %i.ro, label %bb.cw, label %bb.cx, !prof !107

bb.cw:                                            ; preds = %bb.cv
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.rj, ptr nonnull align 4 %i.rk, i64 %i.rn, i1 false)
  %.pre.i.i = load ptr, ptr %i.pr, align 8, !tbaa !69
  %.pre542 = load ptr, ptr %0, align 8, !tbaa !33
  br label %bb.cz

bb.cx:                                            ; preds = %bb.cv
  %i.rp = icmp eq i64 %i.rn, 4
  br i1 %i.rp, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.rq = load i32, ptr %i.rk, align 4, !tbaa !70
  store i32 %i.rq, ptr %i.rj, align 4, !tbaa !70
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %bb.cw, %bb.cu
  %i.rr = phi ptr [ %i.pj, %bb.cy ], [ %i.pj, %bb.cx ], [ %.pre542, %bb.cw ], [ %i.pj, %bb.cu ] ; 3 uses
  %i.rs = phi ptr [ %i.ps, %bb.cy ], [ %i.ps, %bb.cx ], [ %.pre.i.i, %bb.cw ], [ %i.ps, %bb.cu ]
  %i.rt = getelementptr inbounds i8, ptr %i.rs, i64 -4
  store ptr %i.rt, ptr %i.pr, align 8, !tbaa !69
  %i.ru = getelementptr inbounds nuw [56 x i8], ptr %i.rr, i64 %i.np ; 2 uses
  %i.rv = load i32, ptr %i.ru, align 8, !tbaa !91
  %i.rw = add nsw i32 %i.rv, -1
  store i32 %i.rw, ptr %i.ru, align 8, !tbaa !91
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.thread

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.thread: ; preds = %._crit_edge.i.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit, %bb.cz, %bb.ck, %bb.cj
  %i.rx = phi ptr [ %i.pj, %bb.cj ], [ %i.pj, %bb.ck ], [ %i.pj, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit ], [ %i.rr, %bb.cz ], [ %i.pj, %._crit_edge.i.i.i ]
  %i.ry = phi ptr [ %i.pk, %bb.cj ], [ %i.pk, %bb.ck ], [ %i.pk, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit ], [ %i.rr, %bb.cz ], [ %i.pk, %._crit_edge.i.i.i ]
  %.1112 = phi double [ %i.qb, %bb.cj ], [ %.0111473, %bb.ck ], [ %.0111473, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit ], [ %.0111473, %bb.cz ], [ %.0111473, %._crit_edge.i.i.i ]
  %i.rz = getelementptr inbounds nuw i8, ptr %.sroa.0227.0472, i64 16 ; 2 uses
  %i.sa = icmp eq ptr %i.rz, %.sroa.11.1.lcssa
  br i1 %i.sa, label %.loopexit, label %bb.ci

.critedge305:                                     ; preds = %.noexc209
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.loopexit

.loopexit:                                        ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.thread, %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.preheader, %.critedge305, %bb.cc, %.lr.ph482, %bb.bz
  %.sroa.18.2 = phi ptr [ %.sroa.18.0477, %.lr.ph482 ], [ %.sroa.18.0477, %bb.bz ], [ %.sroa.18.0477, %bb.cc ], [ %.sroa.18.0477, %.critedge305 ], [ %.sroa.18.1.lcssa, %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.preheader ], [ %.sroa.18.1.lcssa, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.thread ] ; 2 uses
  %.sroa.11.2 = phi ptr [ %.sroa.11.0478, %.lr.ph482 ], [ %.sroa.11.0478, %bb.bz ], [ %.sroa.11.0478, %bb.cc ], [ %.sroa.11.0478, %.critedge305 ], [ %.sroa.11.1.lcssa, %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.preheader ], [ %.sroa.11.1.lcssa, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.thread ]
  %.sroa.0238.2 = phi ptr [ %.sroa.0238.0479, %.lr.ph482 ], [ %.sroa.0238.0479, %bb.bz ], [ %.sroa.0238.0479, %bb.cc ], [ %.sroa.0238.0479, %.critedge305 ], [ %.sroa.0238.1.lcssa, %_ZSt11stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEEEvT_S9_.exit.preheader ], [ %.sroa.0238.1.lcssa, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEiET_S7_S7_RKT0_.exit.thread ] ; 4 uses
  %i.sb = icmp sgt i64 %indvars.iv531, 1
  br i1 %i.sb, label %.lr.ph482, label %._crit_edge483, !llvm.loop !108

bb.da:                                            ; preds = %.loopexit306, %.loopexit.split-lp, %bb.cd, %bb.ca
  %.sroa.18.3 = phi ptr [ %.sroa.18.0477, %bb.ca ], [ %.sroa.18.1.lcssa, %bb.cd ], [ %.sroa.11.1456, %.loopexit306 ], [ %.sroa.11.1456, %.loopexit.split-lp ]
  %.sroa.0238.3 = phi ptr [ %.sroa.0238.0479, %bb.ca ], [ %.sroa.0238.1.lcssa, %bb.cd ], [ %.sroa.0238.1457, %.loopexit306 ], [ %.sroa.0238.1457, %.loopexit.split-lp ] ; 3 uses
  %.pn132.pn = phi { ptr, i32 } [ %i.nb, %bb.ca ], [ %i.nq, %bb.cd ], [ %lpad.loopexit, %.loopexit306 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i218 = icmp eq ptr %.sroa.0238.3, null
  br i1 %.not.i.i.i218, label %_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit219, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.sc = ptrtoint ptr %.sroa.18.3 to i64
  %i.sd = ptrtoint ptr %.sroa.0238.3 to i64
  %i.se = sub i64 %i.sc, %i.sd
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0238.3, i64 noundef %i.se) #30
  br label %_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit219

_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit:        ; preds = %.critedge._crit_edge, %bb.by, %._crit_edge483
  %.not.i.i.i220 = icmp eq ptr %.sroa.0265.1.lcssa626639, null
  br i1 %.not.i.i.i220, label %_ZNSt6vectorIPN3re29PrefilterESaIS2_EED2Ev.exit, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit.thread, %_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit
  %i.sf = ptrtoint ptr %.sroa.28.1.lcssa624641 to i64
  %i.sg = sub i64 %i.sf, %.lcssa380627637
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0265.1.lcssa626639, i64 noundef %i.sg) #30
  br label %_ZNSt6vectorIPN3re29PrefilterESaIS2_EED2Ev.exit

_ZNSt6vectorIPN3re29PrefilterESaIS2_EED2Ev.exit:  ; preds = %_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit, %bb.dc
  ret void

_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit219:     ; preds = %.loopexit307, %.loopexit.split-lp308, %.loopexit312, %.loopexit.split-lp313, %.loopexit323, %.loopexit.split-lp324, %.loopexit333, %.loopexit.split-lp334, %.loopexit328, %.loopexit.split-lp329, %bb.au, %bb.bx, %bb.da, %bb.db
  %.sroa.28.4 = phi ptr [ %.sroa.28.1.lcssa624641, %.loopexit312 ], [ %.sroa.18277.0414, %.loopexit.split-lp334 ], [ %.sroa.28.0413, %.loopexit.split-lp329 ], [ %.sroa.28.1.lcssa624641, %bb.db ], [ %.sroa.28.1.lcssa624641, %bb.da ], [ %.sroa.28.3, %bb.au ], [ %.sroa.18277.2420, %.loopexit.split-lp324 ], [ %.sroa.28.1.lcssa624641, %bb.bx ], [ %.sroa.28.0413, %.loopexit328 ], [ %.sroa.18277.0414, %.loopexit333 ], [ %.sroa.18277.2420, %.loopexit323 ], [ %.sroa.28.1.lcssa624641, %.loopexit.split-lp313 ], [ %.sroa.28.1.lcssa624641, %.loopexit.split-lp308 ], [ %.sroa.28.1.lcssa624641, %.loopexit307 ]
  %.sroa.0265.4 = phi ptr [ %.sroa.0265.1.lcssa626639, %.loopexit312 ], [ %.sroa.0265.0415, %.loopexit.split-lp334 ], [ %.sroa.0265.0415, %.loopexit.split-lp329 ], [ %.sroa.0265.1.lcssa626639, %bb.db ], [ %.sroa.0265.1.lcssa626639, %bb.da ], [ %.sroa.0265.3, %bb.au ], [ %.sroa.0265.2421, %.loopexit.split-lp324 ], [ %.sroa.0265.1.lcssa626639, %bb.bx ], [ %.sroa.0265.0415, %.loopexit328 ], [ %.sroa.0265.0415, %.loopexit333 ], [ %.sroa.0265.2421, %.loopexit323 ], [ %.sroa.0265.1.lcssa626639, %.loopexit.split-lp313 ], [ %.sroa.0265.1.lcssa626639, %.loopexit.split-lp308 ], [ %.sroa.0265.1.lcssa626639, %.loopexit307 ] ; 2 uses
  %.pn140.pn = phi { ptr, i32 } [ %lpad.loopexit314, %.loopexit312 ], [ %lpad.loopexit.split-lp336, %.loopexit.split-lp334 ], [ %lpad.loopexit.split-lp331, %.loopexit.split-lp329 ], [ %.pn132.pn, %bb.db ], [ %.pn132.pn, %bb.da ], [ %i.hq, %bb.au ], [ %lpad.loopexit.split-lp326, %.loopexit.split-lp324 ], [ %i.ml, %bb.bx ], [ %lpad.loopexit330, %.loopexit328 ], [ %lpad.loopexit335, %.loopexit333 ], [ %lpad.loopexit325, %.loopexit323 ], [ %lpad.loopexit.split-lp315, %.loopexit.split-lp313 ], [ %lpad.loopexit.split-lp310, %.loopexit.split-lp308 ], [ %lpad.loopexit309, %.loopexit307 ] ; 2 uses
  %.not.i.i.i221 = icmp eq ptr %.sroa.0265.4, null
  br i1 %.not.i.i.i221, label %_ZNSt6vectorIPN3re29PrefilterESaIS2_EED2Ev.exit222, label %_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit219.thread

_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit219.thread: ; preds = %bb.at, %bb.ax, %bb.bf, %_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit219
  %.pn140.pn298 = phi { ptr, i32 } [ %.pn140.pn, %_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit219 ], [ %.pn.pn, %bb.bf ], [ %i.hz, %bb.ax ], [ %.pn137, %bb.at ]
  %.sroa.0265.4297 = phi ptr [ %.sroa.0265.4, %_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit219 ], [ %.sroa.0265.1.lcssa626639, %bb.bf ], [ %.sroa.0265.1.lcssa626639, %bb.ax ], [ %.sroa.0265.3, %bb.at ] ; 2 uses
  %.sroa.28.4296 = phi ptr [ %.sroa.28.4, %_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit219 ], [ %.sroa.28.1.lcssa624641, %bb.bf ], [ %.sroa.28.1.lcssa624641, %bb.ax ], [ %.sroa.28.3, %bb.at ]
  %i.sh = ptrtoint ptr %.sroa.28.4296 to i64
  %i.si = ptrtoint ptr %.sroa.0265.4297 to i64
  %i.sj = sub i64 %i.sh, %i.si
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0265.4297, i64 noundef %i.sj) #30
  br label %_ZNSt6vectorIPN3re29PrefilterESaIS2_EED2Ev.exit222

_ZNSt6vectorIPN3re29PrefilterESaIS2_EED2Ev.exit222: ; preds = %_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit219, %_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit219.thread
  %.pn140.pn299 = phi { ptr, i32 } [ %.pn140.pn, %_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit219 ], [ %.pn140.pn298, %_ZNSt6vectorISt4pairImiESaIS1_EED2Ev.exit219.thread ]
  resume { ptr, i32 } %.pn140.pn299
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re29PrefilterEEENS4_13PrefilterTree13PrefilterHashENS8_14PrefilterEqualESaIS6_EED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !58   ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re29PrefilterEEENS4_13PrefilterTree13PrefilterHashENS8_14PrefilterEqualESaIS6_EE15destructor_implEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !60
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !61
  %i.g = and i64 %i.f, 1                          ; 2 uses
  %i.h = sub nuw nsw i64 -8, %i.g
  %i.i = getelementptr inbounds i8, ptr %i.d, i64 %i.h
  %i.j = add i64 %i.b, 31
  %i.k = shl i64 %i.b, 3
  %i.l = add i64 %i.j, %i.k
  %i.m = add i64 %i.l, %i.g
  %i.n = and i64 %i.m, -8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.n) #30
  br label %_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re29PrefilterEEENS4_13PrefilterTree13PrefilterHashENS8_14PrefilterEqualESaIS6_EE15destructor_implEv.exit

_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re29PrefilterEEENS4_13PrefilterTree13PrefilterHashENS8_14PrefilterEqualESaIS6_EE15destructor_implEv.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN3re213PrefilterTree13CanonicalNodeEPN4absl12lts_2024011613flat_hash_setIPNS_9PrefilterENS0_13PrefilterHashENS0_14PrefilterEqualESaIS5_EEES5_(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(104) %0, ptr noundef nonnull %1, ptr noundef %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !38
  %i.b = call { ptr, ptr } @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re29PrefilterEEENS4_13PrefilterTree13PrefilterHashENS8_14PrefilterEqualESaIS6_EE4findIS6_EENSC_8iteratorERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.b, 0
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { ptr, ptr } %i.b, 1
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { ptr, ptr } @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re29PrefilterEEENS4_13PrefilterTree13PrefilterHashENS8_14PrefilterEqualESaIS6_EE4findIS6_EENSC_8iteratorERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !60
  tail call void @llvm.prefetch.p0(ptr %i.a, i32 0, i32 1, i32 1)
  %i.b = load ptr, ptr %1, align 8, !tbaa !38     ; 4 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !53   ; 2 uses
  %i.d = zext i32 %i.c to i64
  %i.e = add i64 %i.d, ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64)
  %i.f = zext i64 %i.e to i128
  %i.g = mul nuw i128 %i.f, 11376068507788127593  ; 2 uses
  %i.h = lshr i128 %i.g, 64
  %i.i = xor i128 %i.h, %i.g
  %i.j = trunc i128 %i.i to i64                   ; 2 uses
  switch i32 %i.c, label %_ZNK3re213PrefilterTree13PrefilterHashclEPKNS_9PrefilterE.exit [
    i32 2, label %bb.b
    i32 3, label %bb.c
    i32 4, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !66
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !54   ; 2 uses
  %2 = zext i64 add (i64 ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64), i64 2) to i128
  %3 = mul nuw i128 %2, 11376068507788127593      ; 2 uses
  %4 = lshr i128 %3, 64
  %5 = xor i128 %4, %3
  %6 = trunc i128 %5 to i64
  %i.o = tail call i64 @_ZN4absl12lts_2024011613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %6, ptr noundef %i.l, i64 noundef %i.n)
  %i.p = add i64 %i.o, %i.n
  %i.q = zext i64 %i.p to i128
  %i.r = mul nuw i128 %i.q, 11376068507788127593  ; 2 uses
  %i.s = lshr i128 %i.r, 64
  %i.t = xor i128 %i.s, %i.r
  %i.u = trunc i128 %i.t to i64
  br label %_ZNK3re213PrefilterTree13PrefilterHashclEPKNS_9PrefilterE.exit

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !52   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !28   ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !29   ; 5 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  %i.ad = ashr exact i64 %i.ac, 3                 ; 3 uses
  %i.ae = add i64 %i.ad, %i.j
  %i.af = zext i64 %i.ae to i128
  %i.ag = mul nuw i128 %i.af, 11376068507788127593 ; 2 uses
  %i.ah = lshr i128 %i.ag, 64
  %i.ai = xor i128 %i.ah, %i.ag
  %i.aj = trunc i128 %i.ai to i64                 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i.i.i, label %_ZNK3re213PrefilterTree13PrefilterHashclEPKNS_9PrefilterE.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.c
  %i.ak = icmp eq i64 %i.ac, 8
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.ad, -2
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.new
  %.sroa.017.025.i.i.i.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.bf, %.lr.ph.i.i.i.i.i.i ]
  %.024.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.bg, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.024.i.i.i.i.i.i
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !38
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %.0.copyload.i.i32.i.i.i.i.i23.i.i.i.i.i.i = load i32, ptr %i.an, align 1
  %i.ao = zext i32 %.0.copyload.i.i32.i.i.i.i.i23.i.i.i.i.i.i to i64
  %i.ap = add i64 %.sroa.017.025.i.i.i.i.i.i, %i.ao
  %i.aq = zext i64 %i.ap to i128
  %i.ar = mul nuw i128 %i.aq, 11376068507788127593 ; 2 uses
  %i.as = lshr i128 %i.ar, 64
  %i.at = xor i128 %i.as, %i.ar
  %i.au = trunc i128 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.024.i.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !38
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %.0.copyload.i.i32.i.i.i.i.i23.i.i.i.i.i.i.1 = load i32, ptr %i.ay, align 1
  %i.az = zext i32 %.0.copyload.i.i32.i.i.i.i.i23.i.i.i.i.i.i.1 to i64
  %i.ba = add i64 %i.au, %i.az
  %i.bb = zext i64 %i.ba to i128
  %i.bc = mul nuw i128 %i.bb, 11376068507788127593 ; 2 uses
  %i.bd = lshr i128 %i.bc, 64
  %i.be = xor i128 %i.bd, %i.bc
  %i.bf = trunc i128 %i.be to i64                 ; 3 uses
  %i.bg = add nuw i64 %.024.i.i.i.i.i.i, 2        ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK3re213PrefilterTree13PrefilterHashclEPKNS_9PrefilterE.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !109

_ZNK3re213PrefilterTree13PrefilterHashclEPKNS_9PrefilterE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bh = and i64 %i.ac, 8
  %lcmp.mod.not = icmp eq i64 %i.bh, 0
  br i1 %lcmp.mod.not, label %_ZNK3re213PrefilterTree13PrefilterHashclEPKNS_9PrefilterE.exit, label %.lr.ph.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.epil.preheader:                ; preds = %_ZNK3re213PrefilterTree13PrefilterHashclEPKNS_9PrefilterE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.preheader
  %.sroa.017.025.i.i.i.i.i.i.epil.init = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bf, %_ZNK3re213PrefilterTree13PrefilterHashclEPKNS_9PrefilterE.exit.loopexit.unr-lcssa ]
  %.024.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bg, %_ZNK3re213PrefilterTree13PrefilterHashclEPKNS_9PrefilterE.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %i.ad to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.024.i.i.i.i.i.i.epil.init
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !38
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %.0.copyload.i.i32.i.i.i.i.i23.i.i.i.i.i.i.epil = load i32, ptr %i.bk, align 1
  %i.bl = zext i32 %.0.copyload.i.i32.i.i.i.i.i23.i.i.i.i.i.i.epil to i64
  %i.bm = add i64 %.sroa.017.025.i.i.i.i.i.i.epil.init, %i.bl
  %i.bn = zext i64 %i.bm to i128
  %i.bo = mul nuw i128 %i.bn, 11376068507788127593 ; 2 uses
  %i.bp = lshr i128 %i.bo, 64
  %i.bq = xor i128 %i.bp, %i.bo
  %i.br = trunc i128 %i.bq to i64
  br label %_ZNK3re213PrefilterTree13PrefilterHashclEPKNS_9PrefilterE.exit

_ZNK3re213PrefilterTree13PrefilterHashclEPKNS_9PrefilterE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.epil.preheader, %_ZNK3re213PrefilterTree13PrefilterHashclEPKNS_9PrefilterE.exit.loopexit.unr-lcssa, %bb.a, %bb.b, %bb.c
  %.sroa.017.1.i.i.i.i.i.i = phi i64 [ %i.u, %bb.b ], [ %i.j, %bb.a ], [ %i.aj, %bb.c ], [ %i.bf, %_ZNK3re213PrefilterTree13PrefilterHashclEPKNS_9PrefilterE.exit.loopexit.unr-lcssa ], [ %i.br, %.lr.ph.i.i.i.i.i.i.epil.preheader ]
  %i.bs = tail call { ptr, ptr } @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re29PrefilterEEENS4_13PrefilterTree13PrefilterHashENS8_14PrefilterEqualESaIS6_EE4findIS6_EENSC_8iteratorERKS6_m(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.sroa.017.1.i.i.i.i.i.i)
  ret { ptr, ptr } %i.bs
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(16) ptr @_ZN4absl12lts_2024011612log_internal10LogMessagelsIN3re29Prefilter2OpETnNSt9enable_ifIXntsr4absl16HasAbslStringifyIT_EE5valueEiE4typeELi0EEERS2_RKS8_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20240116::log_internal::LogMessage::OstreamView", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110
  call void @_ZN4absl12lts_2024011612log_internal10LogMessage11OstreamViewC1ERNS2_14LogMessageDataE(ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 1 %i.b)
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2024011612log_internal10LogMessage11OstreamView6streamEv(ptr noundef nonnull align 8 dereferenceable(120) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %1, align 4, !tbaa !53
  %i.e = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i32 noundef %i.d)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @_ZN4absl12lts_2024011612log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret ptr %0

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2024011612log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define void @_ZNK3re213PrefilterTree19RegexpsGivenStringsERKSt6vectorIiSaIiEEPS3_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(104) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.absl::lts_20240116::log_internal::LogMessage", align 8 ; 7 uses
  %4 = alloca %"class.re2::SparseArray", align 8  ; 12 uses
  %5 = alloca %"class.std::vector.0", align 8     ; 8 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !30     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !69
  %.not.i.i = icmp eq ptr %i.c, %i.a
  br i1 %.not.i.i, label %_ZNSt6vectorIiSaIiEE5clearEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.a, ptr %i.b, align 8, !tbaa !69
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit

_ZNSt6vectorIiSaIiEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = load i8, ptr %i.d, align 8, !tbaa !41, !range !42, !noundef !43
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  br i1 %i.f, label %bb.k, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !57
  %i.j = load ptr, ptr %i.g, align 8, !tbaa !57
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEEvT_S7_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageC1EPKciNS2_8ErrorTagE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull @.str, i32 noundef 280) #32
  invoke void @_ZN4absl12lts_2024011612log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %3, i64 42, ptr nonnull @.str.5)
          to label %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi43EEERS2_RAT__Kc.exit unwind label %bb.d

_ZN4absl12lts_2024011612log_internal10LogMessagelsILi43EEERS2_RAT__Kc.exit: ; preds = %bb.c
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !28
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !29
  %.not81 = icmp eq ptr %i.l, %i.m
  %.pre103 = load ptr, ptr %i.b, align 8, !tbaa !93 ; 2 uses
  br i1 %.not81, label %.loopexit62, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4absl12lts_2024011612log_internal10LogMessagelsILi43EEERS2_RAT__Kc.exit
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %.pre95 = load ptr, ptr %i.n, align 8, !tbaa !31
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2024011612log_internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %common.resume

bb.e:                                             ; preds = %.lr.ph, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit
  %i.p = phi ptr [ %.pre95, %.lr.ph ], [ %i.aj, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 3 uses
  %i.q = phi ptr [ %.pre103, %.lr.ph ], [ %i.ak, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 3 uses
  %.02763 = phi i64 [ 0, %.lr.ph ], [ %i.al, %_ZNSt6vectorIiSaIiEE9push_backEOi.exit ] ; 2 uses
  %i.r = trunc i64 %.02763 to i32                 ; 2 uses
  %.not.i.i34 = icmp eq ptr %i.q, %i.p
  br i1 %.not.i.i34, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.r, ptr %i.q, align 4, !tbaa !70
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  store ptr %i.s, ptr %i.b, align 8, !tbaa !69
  br label %_ZNSt6vectorIiSaIiEE9push_backEOi.exit

bb.g:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %2, align 8, !tbaa !30     ; 4 uses
  %i.u = ptrtoint ptr %i.p to i64
  %i.v = ptrtoint ptr %i.t to i64
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re29PrefilterEEENS4_13PrefilterTree13PrefilterHashENS8_14PrefilterEqualESaIS6_EE4findIS6_EENSC_8iteratorERKS6_m:bb.a
  %i.bb = load ptr, ptr %i.ay, align 8, !tbaa !29 ; 2 uses
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %.not24.i.i.i.i.i.i = icmp eq i64 %i.aw, %i.be
  br i1 %.not24.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.loopexit

.preheader.i.i.i.i.i.i:                           ; preds = %bb.g
  %.not29.i.i.i.i.i.i = icmp eq ptr %i.as, %i.at
  br i1 %.not29.i.i.i.i.i.i, label %.thread41, label %.lr.ph.i.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bf = add nuw i64 %.01928.i.i.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.bf, %i.ax
  br i1 %exitcond.not.i.i.i.i.i.i, label %bb.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !195

.lr.ph.i.i.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.i.i, %bb.h
  %.01928.i.i.i.i.i.i = phi i64 [ %i.bf, %bb.h ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.01928.i.i.i.i.i.i
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !38
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !74
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.01928.i.i.i.i.i.i
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !38
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 48
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !74
  %.not25.i.i.i.i.i.i = icmp eq i32 %i.bj, %i.bn
  br i1 %.not25.i.i.i.i.i.i, label %bb.h, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %bb.g, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i, %bb.c, %bb.e
  %i.bo = add i16 %.sroa.016.064, -1
  %i.bp = and i16 %i.bo, %.sroa.016.064           ; 2 uses
  %.not = icmp eq i16 %i.bp, 0
  br i1 %.not, label %.thread33, label %.lr.ph

.thread41:                                        ; preds = %bb.d, %bb.f, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.y
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.y
  br label %.loopexit54

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.y
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.y
  br label %.loopexit54

.thread33:                                        ; preds = %.loopexit, %bb.b
  %i.bu = tail call <16 x i8> @llvm.x86.ssse3.psign.b.128(<16 x i8> %i.s, <16 x i8> %i.s)
  %i.bv = icmp slt <16 x i8> %i.bu, zeroinitializer
  %i.bw = bitcast <16 x i1> %i.bv to i16
  %.not53 = icmp eq i16 %i.bw, 0
  br i1 %.not53, label %bb.j, label %.loopexit54, !prof !89

bb.j:                                             ; preds = %.thread33
  %i.bx = add i64 %.sroa.12.0, 16                 ; 2 uses
  %i.by = add i64 %i.bx, %.sroa.6.0
  br label %bb.b, !llvm.loop !196

.loopexit54:                                      ; preds = %.thread33, %bb.i, %.thread41, %.thread38
  %.sroa.0.4.ph = phi ptr [ %i.br, %.thread41 ], [ %i.ad, %.thread38 ], [ %i.bt, %bb.i ], [ null, %.thread33 ]
  %.sroa.3.4.ph = phi ptr [ %i.bq, %.thread41 ], [ %i.ac, %.thread38 ], [ %i.bs, %bb.i ], [ undef, %.thread33 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.0.4.ph, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.3.4.ph, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @llvm.prefetch.p0(ptr readonly captures(none), i32 immarg range(i32 0, 2), i32 immarg range(i32 0, 4), i32 immarg range(i32 0, 2)) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare <16 x i8> @llvm.x86.ssse3.psign.b.128(<16 x i8>, <16 x i8>) #22

; Function Attrs: mustprogress uwtable
define linkonce_odr i64 @_ZN4absl12lts_2024011613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = icmp ugt i64 %2, 16
  br i1 %i.a, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.b = icmp ugt i64 %2, 1024
  br i1 %i.b, label %bb.c, label %bb.d, !prof !89

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef i64 @_ZN4absl12lts_2024011613hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef %0, ptr noundef %1, i64 noundef %2)
  br label %_ZN4absl12lts_2024011613hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.d:                                             ; preds = %bb.b
  %i.d = tail call noundef i64 @_ZN4absl12lts_2024011613hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef %1, i64 noundef %2)
  br label %bb.k

bb.e:                                             ; preds = %bb.a
  %i.e = icmp samesign ugt i64 %2, 8
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %.0.copyload.i.i.i = load i64, ptr %1, align 1  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.g = getelementptr inbounds i8, ptr %i.f, i64 -8
  %.0.copyload.i4.i.i = load i64, ptr %i.g, align 1
  %i.h = tail call i64 @llvm.fshl.i64(i64 %.0.copyload.i.i.i, i64 %.0.copyload.i.i.i, i64 11)
  %i.i = add i64 %0, -7070675565921424023         ; 2 uses
  %i.j = add i64 %i.h, %i.i
  %i.k = xor i64 %.0.copyload.i4.i.i, %i.i
  %i.l = zext i64 %i.k to i128
  %i.m = zext i64 %i.j to i128
  %i.n = mul nuw i128 %i.l, %i.m                  ; 2 uses
  %i.o = lshr i128 %i.n, 64
  %i.p = xor i128 %i.o, %i.n
  %i.q = trunc i128 %i.p to i64
  br label %_ZN4absl12lts_2024011613hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

bb.g:                                             ; preds = %bb.e
  %i.r = icmp samesign ugt i64 %2, 3
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %.0.copyload.i.i32.i = load i32, ptr %1, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -4
  %.0.copyload.i7.i.i = load i32, ptr %i.t, align 1
  %i.u = zext i32 %.0.copyload.i7.i.i to i64
  %i.v = shl nuw nsw i64 %2, 3
  %i.w = add nsw i64 %i.v, -32
  %i.x = shl nuw i64 %i.u, %i.w
  %i.y = zext i32 %.0.copyload.i.i32.i to i64
  %i.z = or i64 %i.x, %i.y
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_ZN4absl12lts_2024011613hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load i8, ptr %1, align 1, !tbaa !67
  %i.ab = lshr i64 %2, 1                          ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !67
  %i.ae = add nsw i64 %2, -1                      ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !67
  %i.ah = zext i8 %i.aa to i32
  %i.ai = zext i8 %i.ad to i32
  %i.aj = shl nuw nsw i64 %i.ab, 3
  %i.ak = trunc nuw nsw i64 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ai, %i.ak
  %i.am = or i32 %i.al, %i.ah
  %i.an = zext i8 %i.ag to i32
  %.tr.i.i = trunc nuw nsw i64 %i.ae to i32
  %i.ao = shl nuw nsw i32 %.tr.i.i, 3
  %i.ap = shl nuw nsw i32 %i.an, %i.ao
  %i.aq = or i32 %i.am, %i.ap
  %i.ar = zext nneg i32 %i.aq to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h, %bb.d
  %.030.i = phi i64 [ %i.d, %bb.d ], [ %i.z, %bb.h ], [ %i.ar, %bb.j ]
  %i.as = add i64 %.030.i, %0
  %i.at = zext i64 %i.as to i128
  %i.au = mul nuw i128 %i.at, 11376068507788127593 ; 2 uses
  %i.av = lshr i128 %i.au, 64
  %i.aw = xor i128 %i.av, %i.au
  %i.ax = trunc i128 %i.aw to i64
  br label %_ZN4absl12lts_2024011613hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit

_ZN4absl12lts_2024011613hash_internal15MixingHashState21CombineContiguousImplEmPKhmSt17integral_constantIiLi8EE.exit: ; preds = %bb.c, %bb.f, %bb.i, %bb.k
  %.0.i = phi i64 [ %i.c, %bb.c ], [ %i.ax, %bb.k ], [ %i.q, %bb.f ], [ %0, %bb.i ]
  ret i64 %.0.i
}

declare noundef i64 @_ZN4absl12lts_2024011613hash_internal15MixingHashState28CombineLargeContiguousImpl64EmPKhm(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #10

declare noundef i64 @_ZN4absl12lts_2024011613hash_internal15MixingHashState16LowLevelHashImplEPKhm(ptr noundef, i64 noundef) local_unnamed_addr #10

declare void @_ZN4absl12lts_2024011612log_internal10LogMessage11OstreamViewC1ERNS2_14LogMessageDataE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 1) unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4absl12lts_2024011612log_internal10LogMessage11OstreamView6streamEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZN4absl12lts_2024011612log_internal10LogMessage11OstreamViewD1Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120)) unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, i8 } @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re29PrefilterEEENS4_13PrefilterTree13PrefilterHashENS8_14PrefilterEqualESaIS6_EE22find_or_prepare_insertIS6_EESt4pairImbERKT_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !60     ; 5 uses
  tail call void @llvm.prefetch.p0(ptr %i.a, i32 0, i32 1, i32 1)
  %i.b = load ptr, ptr %1, align 8, !tbaa !38     ; 4 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !53   ; 2 uses
  %i.d = zext i32 %i.c to i64
  %i.e = add i64 %i.d, ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64)
  %i.f = zext i64 %i.e to i128
  %i.g = mul nuw i128 %i.f, 11376068507788127593  ; 2 uses
  %i.h = lshr i128 %i.g, 64
  %i.i = xor i128 %i.h, %i.g
  %i.j = trunc i128 %i.i to i64                   ; 2 uses
  switch i32 %i.c, label %_ZNK3re213PrefilterTree13PrefilterHashclEPKNS_9PrefilterE.exit [
    i32 2, label %bb.b
    i32 3, label %bb.c
    i32 4, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !66
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !54   ; 2 uses
  %2 = zext i64 add (i64 ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64), i64 2) to i128
  %3 = mul nuw i128 %2, 11376068507788127593      ; 2 uses
  %4 = lshr i128 %3, 64
  %5 = xor i128 %4, %3
  %6 = trunc i128 %5 to i64
  %i.o = tail call i64 @_ZN4absl12lts_2024011613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %6, ptr noundef %i.l, i64 noundef %i.n)
  %i.p = add i64 %i.o, %i.n
  %i.q = zext i64 %i.p to i128
  %i.r = mul nuw i128 %i.q, 11376068507788127593  ; 2 uses
  %i.s = lshr i128 %i.r, 64
  %i.t = xor i128 %i.s, %i.r
  %i.u = trunc i128 %i.t to i64
  %.pre = load ptr, ptr %0, align 8, !tbaa !60, !noalias !197
  br label %_ZNK3re213PrefilterTree13PrefilterHashclEPKNS_9PrefilterE.exit

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !52   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !28   ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8, !tbaa !29   ; 5 uses
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 3 uses
  %i.ad = ashr exact i64 %i.ac, 3                 ; 3 uses
  %i.ae = add i64 %i.ad, %i.j
  %i.af = zext i64 %i.ae to i128
  %i.ag = mul nuw i128 %i.af, 11376068507788127593 ; 2 uses
  %i.ah = lshr i128 %i.ag, 64
  %i.ai = xor i128 %i.ah, %i.ag
  %i.aj = trunc i128 %i.ai to i64                 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.y, %i.z
  br i1 %.not.i.i.i.i.i.i, label %_ZNK3re213PrefilterTree13PrefilterHashclEPKNS_9PrefilterE.exit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.c
  %i.ak = icmp eq i64 %i.ac, 8
  br i1 %i.ak, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.ad, -2
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.new
  %.sroa.017.025.i.i.i.i.i.i = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.bf, %.lr.ph.i.i.i.i.i.i ]
  %.024.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.bg, %.lr.ph.i.i.i.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.024.i.i.i.i.i.i
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !38
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  %.0.copyload.i.i32.i.i.i.i.i23.i.i.i.i.i.i = load i32, ptr %i.an, align 1
  %i.ao = zext i32 %.0.copyload.i.i32.i.i.i.i.i23.i.i.i.i.i.i to i64
  %i.ap = add i64 %.sroa.017.025.i.i.i.i.i.i, %i.ao
  %i.aq = zext i64 %i.ap to i128
  %i.ar = mul nuw i128 %i.aq, 11376068507788127593 ; 2 uses
  %i.as = lshr i128 %i.ar, 64
  %i.at = xor i128 %i.as, %i.ar
  %i.au = trunc i128 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.024.i.i.i.i.i.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !38
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %.0.copyload.i.i32.i.i.i.i.i23.i.i.i.i.i.i.1 = load i32, ptr %i.ay, align 1
  %i.az = zext i32 %.0.copyload.i.i32.i.i.i.i.i23.i.i.i.i.i.i.1 to i64
  %i.ba = add i64 %i.au, %i.az
  %i.bb = zext i64 %i.ba to i128
  %i.bc = mul nuw i128 %i.bb, 11376068507788127593 ; 2 uses
  %i.bd = lshr i128 %i.bc, 64
  %i.be = xor i128 %i.bd, %i.bc
  %i.bf = trunc i128 %i.be to i64                 ; 3 uses
  %i.bg = add nuw i64 %.024.i.i.i.i.i.i, 2        ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK3re213PrefilterTree13PrefilterHashclEPKNS_9PrefilterE.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !109

_ZNK3re213PrefilterTree13PrefilterHashclEPKNS_9PrefilterE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.bh = and i64 %i.ac, 8
  %lcmp.mod.not = icmp eq i64 %i.bh, 0
  br i1 %lcmp.mod.not, label %_ZNK3re213PrefilterTree13PrefilterHashclEPKNS_9PrefilterE.exit, label %.lr.ph.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.epil.preheader:                ; preds = %_ZNK3re213PrefilterTree13PrefilterHashclEPKNS_9PrefilterE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.preheader
  %.sroa.017.025.i.i.i.i.i.i.epil.init = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bf, %_ZNK3re213PrefilterTree13PrefilterHashclEPKNS_9PrefilterE.exit.loopexit.unr-lcssa ]
  %.024.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bg, %_ZNK3re213PrefilterTree13PrefilterHashclEPKNS_9PrefilterE.exit.loopexit.unr-lcssa ]
  %lcmp.mod92 = trunc i64 %i.ad to i1
  tail call void @llvm.assume(i1 %lcmp.mod92)
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.024.i.i.i.i.i.i.epil.init
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !38
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %.0.copyload.i.i32.i.i.i.i.i23.i.i.i.i.i.i.epil = load i32, ptr %i.bk, align 1
  %i.bl = zext i32 %.0.copyload.i.i32.i.i.i.i.i23.i.i.i.i.i.i.epil to i64
  %i.bm = add i64 %.sroa.017.025.i.i.i.i.i.i.epil.init, %i.bl
  %i.bn = zext i64 %i.bm to i128
  %i.bo = mul nuw i128 %i.bn, 11376068507788127593 ; 2 uses
  %i.bp = lshr i128 %i.bo, 64
  %i.bq = xor i128 %i.bp, %i.bo
  %i.br = trunc i128 %i.bq to i64
  br label %_ZNK3re213PrefilterTree13PrefilterHashclEPKNS_9PrefilterE.exit

_ZNK3re213PrefilterTree13PrefilterHashclEPKNS_9PrefilterE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.epil.preheader, %_ZNK3re213PrefilterTree13PrefilterHashclEPKNS_9PrefilterE.exit.loopexit.unr-lcssa, %bb.a, %bb.b, %bb.c
  %i.bs = phi ptr [ %.pre, %bb.b ], [ %i.a, %bb.a ], [ %i.a, %bb.c ], [ %i.a, %_ZNK3re213PrefilterTree13PrefilterHashclEPKNS_9PrefilterE.exit.loopexit.unr-lcssa ], [ %i.a, %.lr.ph.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %.sroa.017.1.i.i.i.i.i.i = phi i64 [ %i.u, %bb.b ], [ %i.j, %bb.a ], [ %i.aj, %bb.c ], [ %i.bf, %_ZNK3re213PrefilterTree13PrefilterHashclEPKNS_9PrefilterE.exit.loopexit.unr-lcssa ], [ %i.br, %.lr.ph.i.i.i.i.i.i.epil.preheader ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !58, !noalias !197 ; 2 uses
  %i.bv = lshr i64 %.sroa.017.1.i.i.i.i.i.i, 7
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = lshr i64 %i.bw, 12
  %i.by = xor i64 %i.bx, %i.bv
  %i.bz = trunc i64 %.sroa.017.1.i.i.i.i.i.i to i8
  %i.ca = and i8 %i.bz, 127
  %i.cb = insertelement <16 x i8> poison, i8 %i.ca, i64 0
  %i.cc = shufflevector <16 x i8> %i.cb, <16 x i8> poison, <16 x i32> zeroinitializer
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.l, %_ZNK3re213PrefilterTree13PrefilterHashclEPKNS_9PrefilterE.exit
  %.pn = phi i64 [ %i.by, %_ZNK3re213PrefilterTree13PrefilterHashclEPKNS_9PrefilterE.exit ], [ %i.ek, %bb.l ]
  %.sroa.12.0 = phi i64 [ 0, %_ZNK3re213PrefilterTree13PrefilterHashclEPKNS_9PrefilterE.exit ], [ %i.ej, %bb.l ]
  %.sroa.6.0 = and i64 %.pn, %i.bu                ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.sroa.6.0
  %i.cf = load <16 x i8>, ptr %i.ce, align 1, !tbaa !67 ; 3 uses
  %i.cg = icmp eq <16 x i8> %i.cc, %i.cf
  %i.ch = bitcast <16 x i1> %i.cg to i16          ; 2 uses
  %.not65 = icmp eq i16 %i.ch, 0
  br i1 %.not65, label %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re29PrefilterEEEvE5applyINS1_12raw_hash_setIS7_NS4_13PrefilterTree13PrefilterHashENSB_14PrefilterEqualESaIS6_EE12EqualElementIS6_EEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit.thread42, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.ci = load ptr, ptr %i.cd, align 8, !tbaa !75
  %i.cj = load ptr, ptr %1, align 8, !tbaa !38    ; 5 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.critedge
  %.sroa.022.066 = phi i16 [ %i.ch, %.lr.ph ], [ %i.ef, %.critedge ] ; 3 uses
  %i.cn = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.022.066, i1 true)
  %i.co = zext nneg i16 %i.cn to i64
  %i.cp = add i64 %.sroa.6.0, %i.co
  %i.cq = and i64 %i.cp, %i.bu                    ; 7 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !38 ; 5 uses
  %i.ct = icmp eq ptr %i.cs, %i.cj
  br i1 %i.ct, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cu = load i32, ptr %i.cs, align 8, !tbaa !44 ; 2 uses
  %i.cv = load i32, ptr %i.cj, align 8, !tbaa !44
  %.not.i.i.i.i.i.i14 = icmp eq i32 %i.cu, %i.cv
  br i1 %.not.i.i.i.i.i.i14, label %bb.g, label %.critedge, !prof !194

bb.g:                                             ; preds = %bb.f
  switch i32 %i.cu, label %.thread [
    i32 2, label %bb.h
    i32 3, label %bb.j
    i32 4, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !54 ; 3 uses
  %i.cz = load i64, ptr %i.cm, align 8, !tbaa !54
  %i.da = icmp eq i64 %i.cy, %i.cz
  br i1 %i.da, label %bb.i, label %.critedge, !prof !194

bb.i:                                             ; preds = %bb.h
  %i.db = icmp eq i64 %i.cy, 0
  br i1 %i.db, label %.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i: ; preds = %bb.i
  %i.dc = load ptr, ptr %i.cl, align 8, !tbaa !66
  %i.dd = load ptr, ptr %i.cw, align 8, !tbaa !66
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.dd, ptr %i.dc, i64 %i.cy)
  %i.de = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.de, label %.thread, label %.critedge

bb.j:                                             ; preds = %bb.g, %bb.g
  %i.df = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !52 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !28 ; 2 uses
  %i.dj = load ptr, ptr %i.dg, align 8, !tbaa !29 ; 3 uses
  %i.dk = ptrtoint ptr %i.di to i64
  %i.dl = ptrtoint ptr %i.dj to i64
  %i.dm = sub i64 %i.dk, %i.dl                    ; 2 uses
  %i.dn = ashr exact i64 %i.dm, 3
  %i.do = load ptr, ptr %i.ck, align 8, !tbaa !52 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !28
  %i.dr = load ptr, ptr %i.do, align 8, !tbaa !29 ; 2 uses
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = ptrtoint ptr %i.dr to i64
  %i.du = sub i64 %i.ds, %i.dt
  %.not24.i.i.i.i.i.i = icmp eq i64 %i.dm, %i.du
  br i1 %.not24.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.critedge

.preheader.i.i.i.i.i.i:                           ; preds = %bb.j
  %.not29.i.i.i.i.i.i = icmp eq ptr %i.di, %i.dj
  br i1 %.not29.i.i.i.i.i.i, label %.thread, label %.lr.ph.i.i.i.i.i.i15

bb.k:                                             ; preds = %.lr.ph.i.i.i.i.i.i15
  %i.dv = add nuw i64 %.01928.i.i.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i.i16 = icmp eq i64 %i.dv, %i.dn
  br i1 %exitcond.not.i.i.i.i.i.i16, label %.thread, label %.lr.ph.i.i.i.i.i.i15, !llvm.loop !195

.lr.ph.i.i.i.i.i.i15:                             ; preds = %.preheader.i.i.i.i.i.i, %bb.k
  %.01928.i.i.i.i.i.i = phi i64 [ %i.dv, %bb.k ], [ 0, %.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dj, i64 %.01928.i.i.i.i.i.i
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !38
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 48
  %i.dz = load i32, ptr %i.dy, align 8, !tbaa !74
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %.01928.i.i.i.i.i.i
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !38
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 48
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !74
  %.not25.i.i.i.i.i.i = icmp eq i32 %i.dz, %i.ed
  br i1 %.not25.i.i.i.i.i.i, label %bb.k, label %.critedge

.critedge:                                        ; preds = %.lr.ph.i.i.i.i.i.i15, %bb.h, %bb.f, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i, %bb.j
  %i.ee = add i16 %.sroa.022.066, -1
  %i.ef = and i16 %i.ee, %.sroa.022.066           ; 2 uses
  %.not = icmp eq i16 %i.ef, 0
  br i1 %.not, label %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re29PrefilterEEEvE5applyINS1_12raw_hash_setIS7_NS4_13PrefilterTree13PrefilterHashENSB_14PrefilterEqualESaIS6_EE12EqualElementIS6_EEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit.thread42, label %bb.e

_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re29PrefilterEEEvE5applyINS1_12raw_hash_setIS7_NS4_13PrefilterTree13PrefilterHashENSB_14PrefilterEqualESaIS6_EE12EqualElementIS6_EEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit.thread42: ; preds = %.critedge, %bb.d
  %i.eg = tail call <16 x i8> @llvm.x86.ssse3.psign.b.128(<16 x i8> %i.cf, <16 x i8> %i.cf)
  %i.eh = icmp slt <16 x i8> %i.eg, zeroinitializer
  %i.ei = bitcast <16 x i1> %i.eh to i16
  %.not61 = icmp eq i16 %i.ei, 0
  br i1 %.not61, label %bb.l, label %bb.m, !prof !89

bb.l:                                             ; preds = %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re29PrefilterEEEvE5applyINS1_12raw_hash_setIS7_NS4_13PrefilterTree13PrefilterHashENSB_14PrefilterEqualESaIS6_EE12EqualElementIS6_EEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit.thread42
  %i.ej = add i64 %.sroa.12.0, 16                 ; 2 uses
  %i.ek = add i64 %i.ej, %.sroa.6.0
  br label %bb.d

bb.m:                                             ; preds = %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re29PrefilterEEEvE5applyINS1_12raw_hash_setIS7_NS4_13PrefilterTree13PrefilterHashENSB_14PrefilterEqualESaIS6_EE12EqualElementIS6_EEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSK_DpOSL_.exit.thread42
  %i.el = tail call noundef i64 @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re29PrefilterEEENS4_13PrefilterTree13PrefilterHashENS8_14PrefilterEqualESaIS6_EE14prepare_insertEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.sroa.017.1.i.i.i.i.i.i)
  br label %.thread

.thread:                                          ; preds = %.preheader.i.i.i.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i, %bb.i, %bb.g, %bb.e, %bb.k, %bb.m
  %.sroa.034.2 = phi i64 [ %i.el, %bb.m ], [ %i.cq, %bb.k ], [ %i.cq, %bb.e ], [ %i.cq, %bb.g ], [ %i.cq, %bb.i ], [ %i.cq, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i ], [ %i.cq, %.preheader.i.i.i.i.i.i ]
  %.sroa.3.2 = phi i8 [ 1, %bb.m ], [ 0, %bb.k ], [ 0, %bb.e ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EESA_.exit.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i ]
  %.fca.0.insert = insertvalue { i64, i8 } poison, i64 %.sroa.034.2, 0
  %.fca.1.insert = insertvalue { i64, i8 } %.fca.0.insert, i8 %.sroa.3.2, 1
  ret { i64, i8 } %.fca.1.insert
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef i64 @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re29PrefilterEEENS4_13PrefilterTree13PrefilterHashENS8_14PrefilterEqualESaIS6_EE14prepare_insertEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #23 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !60, !noalias !200 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !58, !noalias !200 ; 4 uses
  %i.d = lshr i64 %1, 7
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = lshr i64 %i.e, 12
  %i.g = xor i64 %i.f, %i.d
  %i.h = and i64 %i.g, %i.c                       ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.h
  %i.j = load <16 x i8>, ptr %i.i, align 1, !tbaa !67
  %i.k = icmp slt <16 x i8> %i.j, splat (i8 -1)
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %.not17.i = icmp eq i16 %i.l, 0
  br i1 %.not17.i, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.sroa.10.019.i = phi i64 [ %i.m, %.lr.ph.i ], [ 0, %bb.a ]
  %.sroa.5.018.i = phi i64 [ %i.o, %.lr.ph.i ], [ %i.h, %bb.a ]
  %i.m = add i64 %.sroa.10.019.i, 16              ; 2 uses
  %i.n = add i64 %i.m, %.sroa.5.018.i
  %i.o = and i64 %i.n, %i.c                       ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.o
  %i.q = load <16 x i8>, ptr %i.p, align 1, !tbaa !67
  %i.r = icmp slt <16 x i8> %i.q, splat (i8 -1)
  %i.s = bitcast <16 x i1> %i.r to i16            ; 2 uses
  %.not.i = icmp eq i16 %i.s, 0
  br i1 %.not.i, label %.lr.ph.i, label %.loopexit, !llvm.loop !203

.loopexit:                                        ; preds = %.lr.ph.i, %bb.a
  %.sroa.5.0.lcssa.i = phi i64 [ %i.h, %bb.a ], [ %i.o, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.l, %bb.a ], [ %i.s, %.lr.ph.i ]
  %i.t = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.u = zext nneg i16 %i.t to i64
  %i.v = add i64 %.sroa.5.0.lcssa.i, %i.u
  %i.w = and i64 %i.v, %i.c                       ; 3 uses
  %i.x = getelementptr inbounds i8, ptr %i.a, i64 -8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !155
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.loopexit
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.w
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !157
  %.not = icmp eq i8 %i.ab, -2
  br i1 %.not, label %.critedge, label %bb.c, !prof !107

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re29PrefilterEEENS4_13PrefilterTree13PrefilterHashENS8_14PrefilterEqualESaIS6_EE28rehash_and_grow_if_necessaryEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.ac = tail call { i64, i64 } @_ZN4absl12lts_2024011618container_internal19HashSetResizeHelper27FindFirstNonFullAfterResizeERKNS1_12CommonFieldsEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.c, i64 noundef %1)
  %i.ad = extractvalue { i64, i64 } %i.ac, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !60
  br label %.critedge

.critedge:                                        ; preds = %.loopexit, %bb.c, %bb.b
  %i.ae = phi ptr [ %i.a, %.loopexit ], [ %.pre, %bb.c ], [ %i.a, %bb.b ] ; 3 uses
  %.sroa.01.0 = phi i64 [ %i.w, %.loopexit ], [ %i.ad, %bb.c ], [ %i.w, %bb.b ] ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !61
  %i.ah = add i64 %i.ag, 2
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !61
  %i.ai = getelementptr inbounds i8, ptr %i.ae, i64 -8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !155
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sroa.01.0 ; 2 uses
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !157
  %i.am = icmp eq i8 %i.al, -128
  %.neg = sext i1 %i.am to i64
  %i.an = add i64 %i.aj, %.neg
  store i64 %i.an, ptr %i.ai, align 8, !tbaa !155
  %i.ao = trunc i64 %1 to i8
  %i.ap = and i8 %i.ao, 127                       ; 2 uses
  %i.aq = load i64, ptr %i.b, align 8, !tbaa !58  ; 2 uses
  store i8 %i.ap, ptr %i.ak, align 1, !tbaa !157
  %i.ar = add i64 %.sroa.01.0, -15
  %i.as = and i64 %i.aq, %i.ar
  %i.at = and i64 %i.aq, 15
  %i.au = getelementptr i8, ptr %i.ae, i64 %i.as
  %i.av = getelementptr i8, ptr %i.au, i64 %i.at
  store i8 %i.ap, ptr %i.av, align 1, !tbaa !157
  ret i64 %.sroa.01.0
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re29PrefilterEEENS4_13PrefilterTree13PrefilterHashENS8_14PrefilterEqualESaIS6_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #23 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20240116::container_internal::HashSetResizeHelper", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.10", align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.a = load ptr, ptr %0, align 8, !tbaa !60
  store ptr %i.a, ptr %2, align 8, !tbaa !204
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !58
  store i64 %i.d, ptr %i.b, align 8, !tbaa !206
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !61
  %i.h = trunc i64 %i.g to i8
  %i.i = and i8 %i.h, 1
  store i8 %i.i, ptr %i.e, align 8, !tbaa !207
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !75   ; 2 uses
  store i64 %1, ptr %i.c, align 8, !tbaa !58
  %i.l = call noundef zeroext i1 @_ZN4absl12lts_2024011618container_internal19HashSetResizeHelper15InitializeSlotsISaIcELm8ELb1ELm8EEEbRNS1_12CommonFieldsEPvT_(ptr noundef nonnull align 8 dereferenceable(17) %2, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.k, ptr noundef nonnull align 1 %3)
  %i.m = load i64, ptr %i.b, align 8, !tbaa !206  ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  %brmerge = or i1 %i.l, %i.n
  br i1 %brmerge, label %bb.f, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !75
  %4 = zext i64 add (i64 ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64), i64 2) to i128
  %5 = mul nuw i128 %4, 11376068507788127593      ; 2 uses
  %6 = lshr i128 %5, 64
  %7 = xor i128 %6, %5
  %8 = trunc i128 %7 to i64
  %.pre36 = load ptr, ptr %2, align 8, !tbaa !204
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %i.p = phi i64 [ %i.m, %.lr.ph.preheader ], [ %i.ds, %bb.e ]
  %i.q = phi ptr [ %.pre36, %.lr.ph.preheader ], [ %i.dt, %bb.e ] ; 2 uses
  %.02230 = phi i64 [ 0, %.lr.ph.preheader ], [ %i.du, %bb.e ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %.02230
  %i.s = load i8, ptr %i.r, align 1, !tbaa !157
  %i.t = icmp sgt i8 %i.s, -1
  br i1 %i.t, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.02230 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !38   ; 4 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !53   ; 2 uses
  %i.x = zext i32 %i.w to i64
  %i.y = add i64 %i.x, ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64)
  %i.z = zext i64 %i.y to i128
  %i.aa = mul nuw i128 %i.z, 11376068507788127593 ; 2 uses
  %i.ab = lshr i128 %i.aa, 64
  %i.ac = xor i128 %i.ab, %i.aa
  %i.ad = trunc i128 %i.ac to i64                 ; 2 uses
  switch i32 %i.w, label %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re29PrefilterEEEvE5applyINS1_12raw_hash_setIS7_NS4_13PrefilterTree13PrefilterHashENSB_14PrefilterEqualESaIS6_EE11HashElementEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSK_.exit [
    i32 2, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !66
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !54 ; 2 uses
  %i.ai = call i64 @_ZN4absl12lts_2024011613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %8, ptr noundef %i.af, i64 noundef %i.ah)
  %i.aj = add i64 %i.ai, %i.ah
  %i.ak = zext i64 %i.aj to i128
  %i.al = mul nuw i128 %i.ak, 11376068507788127593 ; 2 uses
  %i.am = lshr i128 %i.al, 64
  %i.an = xor i128 %i.am, %i.al
  %i.ao = trunc i128 %i.an to i64
  br label %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re29PrefilterEEEvE5applyINS1_12raw_hash_setIS7_NS4_13PrefilterTree13PrefilterHashENSB_14PrefilterEqualESaIS6_EE11HashElementEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSK_.exit

bb.d:                                             ; preds = %bb.b, %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !52 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !28 ; 2 uses
  %i.at = load ptr, ptr %i.aq, align 8, !tbaa !29 ; 5 uses
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = sub i64 %i.au, %i.av                    ; 3 uses
  %i.ax = ashr exact i64 %i.aw, 3                 ; 3 uses
  %i.ay = add i64 %i.ax, %i.ad
  %i.az = zext i64 %i.ay to i128
  %i.ba = mul nuw i128 %i.az, 11376068507788127593 ; 2 uses
  %i.bb = lshr i128 %i.ba, 64
  %i.bc = xor i128 %i.bb, %i.ba
  %i.bd = trunc i128 %i.bc to i64                 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.as, %i.at
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re29PrefilterEEEvE5applyINS1_12raw_hash_setIS7_NS4_13PrefilterTree13PrefilterHashENSB_14PrefilterEqualESaIS6_EE11HashElementEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSK_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.d
  %i.be = icmp eq i64 %i.aw, 8
  br i1 %i.be, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.ax, -2
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new
  %.sroa.017.025.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.bz, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.024.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.ca, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.024.i.i.i.i.i.i.i.i.i.i
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !38
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 48
  %.0.copyload.i.i32.i.i.i.i.i23.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.bh, align 1
  %i.bi = zext i32 %.0.copyload.i.i32.i.i.i.i.i23.i.i.i.i.i.i.i.i.i.i to i64
  %i.bj = add i64 %.sroa.017.025.i.i.i.i.i.i.i.i.i.i, %i.bi
  %i.bk = zext i64 %i.bj to i128
  %i.bl = mul nuw i128 %i.bk, 11376068507788127593 ; 2 uses
  %i.bm = lshr i128 %i.bl, 64
  %i.bn = xor i128 %i.bm, %i.bl
  %i.bo = trunc i128 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.024.i.i.i.i.i.i.i.i.i.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !38
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 48
  %.0.copyload.i.i32.i.i.i.i.i23.i.i.i.i.i.i.i.i.i.i.1 = load i32, ptr %i.bs, align 1
  %i.bt = zext i32 %.0.copyload.i.i32.i.i.i.i.i23.i.i.i.i.i.i.i.i.i.i.1 to i64
  %i.bu = add i64 %i.bo, %i.bt
  %i.bv = zext i64 %i.bu to i128
  %i.bw = mul nuw i128 %i.bv, 11376068507788127593 ; 2 uses
  %i.bx = lshr i128 %i.bw, 64
  %i.by = xor i128 %i.bx, %i.bw
  %i.bz = trunc i128 %i.by to i64                 ; 3 uses
  %i.ca = add nuw i64 %.024.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re29PrefilterEEEvE5applyINS1_12raw_hash_setIS7_NS4_13PrefilterTree13PrefilterHashENSB_14PrefilterEqualESaIS6_EE11HashElementEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSK_.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !109

_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re29PrefilterEEEvE5applyINS1_12raw_hash_setIS7_NS4_13PrefilterTree13PrefilterHashENSB_14PrefilterEqualESaIS6_EE11HashElementEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSK_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.cb = and i64 %i.aw, 8
  %lcmp.mod.not = icmp eq i64 %i.cb, 0
  br i1 %lcmp.mod.not, label %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re29PrefilterEEEvE5applyINS1_12raw_hash_setIS7_NS4_13PrefilterTree13PrefilterHashENSB_14PrefilterEqualESaIS6_EE11HashElementEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSK_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader:        ; preds = %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re29PrefilterEEEvE5applyINS1_12raw_hash_setIS7_NS4_13PrefilterTree13PrefilterHashENSB_14PrefilterEqualESaIS6_EE11HashElementEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSK_.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.017.025.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ %i.bd, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bz, %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re29PrefilterEEEvE5applyINS1_12raw_hash_setIS7_NS4_13PrefilterTree13PrefilterHashENSB_14PrefilterEqualESaIS6_EE11HashElementEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSK_.exit.loopexit.unr-lcssa ]
  %.024.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ca, %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re29PrefilterEEEvE5applyINS1_12raw_hash_setIS7_NS4_13PrefilterTree13PrefilterHashENSB_14PrefilterEqualESaIS6_EE11HashElementEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSK_.exit.loopexit.unr-lcssa ]
  %lcmp.mod58 = trunc i64 %i.ax to i1
  call void @llvm.assume(i1 %lcmp.mod58)
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.024.i.i.i.i.i.i.i.i.i.i.epil.init
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !38
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 48
  %.0.copyload.i.i32.i.i.i.i.i23.i.i.i.i.i.i.i.i.i.i.epil = load i32, ptr %i.ce, align 1
  %i.cf = zext i32 %.0.copyload.i.i32.i.i.i.i.i23.i.i.i.i.i.i.i.i.i.i.epil to i64
  %i.cg = add i64 %.sroa.017.025.i.i.i.i.i.i.i.i.i.i.epil.init, %i.cf
  %i.ch = zext i64 %i.cg to i128
  %i.ci = mul nuw i128 %i.ch, 11376068507788127593 ; 2 uses
  %i.cj = lshr i128 %i.ci, 64
  %i.ck = xor i128 %i.cj, %i.ci
  %i.cl = trunc i128 %i.ck to i64
  br label %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re29PrefilterEEEvE5applyINS1_12raw_hash_setIS7_NS4_13PrefilterTree13PrefilterHashENSB_14PrefilterEqualESaIS6_EE11HashElementEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSK_.exit

_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re29PrefilterEEEvE5applyINS1_12raw_hash_setIS7_NS4_13PrefilterTree13PrefilterHashENSB_14PrefilterEqualESaIS6_EE11HashElementEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSK_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader, %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re29PrefilterEEEvE5applyINS1_12raw_hash_setIS7_NS4_13PrefilterTree13PrefilterHashENSB_14PrefilterEqualESaIS6_EE11HashElementEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSK_.exit.loopexit.unr-lcssa, %bb.b, %bb.c, %bb.d
  %.sroa.017.1.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ao, %bb.c ], [ %i.ad, %bb.b ], [ %i.bd, %bb.d ], [ %i.bz, %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re29PrefilterEEEvE5applyINS1_12raw_hash_setIS7_NS4_13PrefilterTree13PrefilterHashENSB_14PrefilterEqualESaIS6_EE11HashElementEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSK_.exit.loopexit.unr-lcssa ], [ %i.cl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %i.cm = load ptr, ptr %0, align 8, !tbaa !60, !noalias !208 ; 5 uses
  %i.cn = load i64, ptr %i.c, align 8, !tbaa !58, !noalias !208 ; 5 uses
  %i.co = lshr i64 %.sroa.017.1.i.i.i.i.i.i.i.i.i.i, 7
  %i.cp = ptrtoint ptr %i.cm to i64
  %i.cq = lshr i64 %i.cp, 12
  %i.cr = xor i64 %i.cq, %i.co
  %i.cs = and i64 %i.cr, %i.cn                    ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cs
  %i.cu = load <16 x i8>, ptr %i.ct, align 1, !tbaa !67
  %i.cv = icmp slt <16 x i8> %i.cu, splat (i8 -1)
  %i.cw = bitcast <16 x i1> %i.cv to i16          ; 2 uses
  %.not17.i = icmp eq i16 %i.cw, 0
  br i1 %.not17.i, label %.lr.ph.i, label %_ZN4absl12lts_2024011618container_internal19find_first_non_fullIvEENS1_8FindInfoERKNS1_12CommonFieldsEm.exit

.lr.ph.i:                                         ; preds = %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re29PrefilterEEEvE5applyINS1_12raw_hash_setIS7_NS4_13PrefilterTree13PrefilterHashENSB_14PrefilterEqualESaIS6_EE11HashElementEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSK_.exit, %.lr.ph.i
  %.sroa.10.019.i = phi i64 [ %i.cx, %.lr.ph.i ], [ 0, %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re29PrefilterEEEvE5applyINS1_12raw_hash_setIS7_NS4_13PrefilterTree13PrefilterHashENSB_14PrefilterEqualESaIS6_EE11HashElementEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSK_.exit ]
  %.sroa.5.018.i = phi i64 [ %i.cz, %.lr.ph.i ], [ %i.cs, %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re29PrefilterEEEvE5applyINS1_12raw_hash_setIS7_NS4_13PrefilterTree13PrefilterHashENSB_14PrefilterEqualESaIS6_EE11HashElementEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSK_.exit ]
  %i.cx = add i64 %.sroa.10.019.i, 16             ; 2 uses
  %i.cy = add i64 %i.cx, %.sroa.5.018.i
  %i.cz = and i64 %i.cy, %i.cn                    ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cz
  %i.db = load <16 x i8>, ptr %i.da, align 1, !tbaa !67
  %i.dc = icmp slt <16 x i8> %i.db, splat (i8 -1)
  %i.dd = bitcast <16 x i1> %i.dc to i16          ; 2 uses
  %.not.i = icmp eq i16 %i.dd, 0
  br i1 %.not.i, label %.lr.ph.i, label %_ZN4absl12lts_2024011618container_internal19find_first_non_fullIvEENS1_8FindInfoERKNS1_12CommonFieldsEm.exit, !llvm.loop !203

_ZN4absl12lts_2024011618container_internal19find_first_non_fullIvEENS1_8FindInfoERKNS1_12CommonFieldsEm.exit: ; preds = %.lr.ph.i, %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re29PrefilterEEEvE5applyINS1_12raw_hash_setIS7_NS4_13PrefilterTree13PrefilterHashENSB_14PrefilterEqualESaIS6_EE11HashElementEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSK_.exit
  %.sroa.5.0.lcssa.i = phi i64 [ %i.cs, %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re29PrefilterEEEvE5applyINS1_12raw_hash_setIS7_NS4_13PrefilterTree13PrefilterHashENSB_14PrefilterEqualESaIS6_EE11HashElementEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSK_.exit ], [ %i.cz, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cw, %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re29PrefilterEEEvE5applyINS1_12raw_hash_setIS7_NS4_13PrefilterTree13PrefilterHashENSB_14PrefilterEqualESaIS6_EE11HashElementEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSK_.exit ], [ %i.dd, %.lr.ph.i ]
  %i.de = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.df = zext nneg i16 %i.de to i64
  %i.dg = add i64 %.sroa.5.0.lcssa.i, %i.df
  %i.dh = and i64 %i.dg, %i.cn                    ; 3 uses
  %i.di = trunc i64 %.sroa.017.1.i.i.i.i.i.i.i.i.i.i to i8
  %i.dj = and i8 %i.di, 127                       ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.dh
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !157
  %i.dl = add i64 %i.dh, -15
  %i.dm = and i64 %i.dl, %i.cn
  %i.dn = and i64 %i.cn, 15
  %i.do = getelementptr i8, ptr %i.cm, i64 %i.dm
  %i.dp = getelementptr i8, ptr %i.do, i64 %i.dn
  store i8 %i.dj, ptr %i.dp, align 1, !tbaa !157
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %i.dh
  %i.dr = load i64, ptr %i.u, align 8
  store i64 %i.dr, ptr %i.dq, align 1
  %.pre = load ptr, ptr %2, align 8, !tbaa !204
  %.pre37 = load i64, ptr %i.b, align 8, !tbaa !206
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %_ZN4absl12lts_2024011618container_internal19find_first_non_fullIvEENS1_8FindInfoERKNS1_12CommonFieldsEm.exit
  %i.ds = phi i64 [ %.pre37, %_ZN4absl12lts_2024011618container_internal19find_first_non_fullIvEENS1_8FindInfoERKNS1_12CommonFieldsEm.exit ], [ %i.p, %.lr.ph ] ; 4 uses
  %i.dt = phi ptr [ %.pre, %_ZN4absl12lts_2024011618container_internal19find_first_non_fullIvEENS1_8FindInfoERKNS1_12CommonFieldsEm.exit ], [ %i.q, %.lr.ph ] ; 2 uses
  %i.du = add i64 %.02230, 1                      ; 2 uses
  %.not = icmp eq i64 %i.du, %i.ds
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !211

._crit_edge:                                      ; preds = %bb.e
  %i.dv = load i8, ptr %i.e, align 8, !tbaa !207, !range !42, !noundef !43
  %i.dw = trunc nuw i8 %i.dv to i1                ; 2 uses
  %.neg.i = select i1 %i.dw, i64 -9, i64 -8
  %i.dx = select i1 %i.dw, i64 9, i64 8
  %i.dy = getelementptr inbounds i8, ptr %i.dt, i64 %.neg.i
  %i.dz = add i64 %i.ds, 23
  %i.ea = add i64 %i.dz, %i.dx
  %i.eb = shl i64 %i.ds, 3
  %i.ec = add i64 %i.ea, %i.eb
  %i.ed = and i64 %i.ec, -8
  call void @_ZdlPvm(ptr noundef nonnull %i.dy, i64 noundef %i.ed) #30
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re29PrefilterEEENS4_13PrefilterTree13PrefilterHashENS8_14PrefilterEqualESaIS6_EE28rehash_and_grow_if_necessaryEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !58   ; 3 uses
  %i.d = icmp ugt i64 %i.c, 16
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !61
  %i.g = shl i64 %i.f, 4
  %i.h = and i64 %i.g, -32
  %i.i = mul i64 %i.c, 25
  %.not = icmp ugt i64 %i.h, %i.i
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  call void @_ZN4absl12lts_2024011618container_internal24DropDeletesWithoutResizeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPv(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re29PrefilterEEENS4_13PrefilterTree13PrefilterHashENS8_14PrefilterEqualESaIS6_EE18GetPolicyFunctionsEvE5value, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.j = shl i64 %i.c, 1
  %i.k = or disjoint i64 %i.j, 1
  tail call void @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re29PrefilterEEENS4_13PrefilterTree13PrefilterHashENS8_14PrefilterEqualESaIS6_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.k)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr { i64, i64 } @_ZN4absl12lts_2024011618container_internal19HashSetResizeHelper27FindFirstNonFullAfterResizeERKNS1_12CommonFieldsEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #19 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !58   ; 5 uses
  %i.c = icmp ult i64 %i.b, 17
  %i.d = icmp ult i64 %1, %i.b
  %i.e = and i1 %i.c, %i.d
  %i.f = load ptr, ptr %0, align 8, !tbaa !60, !noalias !43 ; 3 uses
  %i.g = lshr i64 %2, 7
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = lshr i64 %i.h, 12
  %i.j = xor i64 %i.i, %i.g
  %i.k = and i64 %i.j, %i.b                       ; 5 uses
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.k
  %i.m = load <16 x i8>, ptr %i.l, align 1, !tbaa !67
  %i.n = icmp slt <16 x i8> %i.m, splat (i8 -1)
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not17.i = icmp eq i16 %i.o, 0
  br i1 %.not17.i, label %.lr.ph.i, label %_ZN4absl12lts_2024011618container_internal19find_first_non_fullIvEENS1_8FindInfoERKNS1_12CommonFieldsEm.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.sroa.10.019.i = phi i64 [ %i.p, %.lr.ph.i ], [ 0, %bb.b ]
  %.sroa.5.018.i = phi i64 [ %i.r, %.lr.ph.i ], [ %i.k, %bb.b ]
  %i.p = add i64 %.sroa.10.019.i, 16              ; 3 uses
  %i.q = add i64 %i.p, %.sroa.5.018.i
  %i.r = and i64 %i.q, %i.b                       ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.r
  %i.t = load <16 x i8>, ptr %i.s, align 1, !tbaa !67
  %i.u = icmp slt <16 x i8> %i.t, splat (i8 -1)
  %i.v = bitcast <16 x i1> %i.u to i16            ; 2 uses
  %.not.i = icmp eq i16 %i.v, 0
  br i1 %.not.i, label %.lr.ph.i, label %_ZN4absl12lts_2024011618container_internal19find_first_non_fullIvEENS1_8FindInfoERKNS1_12CommonFieldsEm.exit, !llvm.loop !203

_ZN4absl12lts_2024011618container_internal19find_first_non_fullIvEENS1_8FindInfoERKNS1_12CommonFieldsEm.exit: ; preds = %.lr.ph.i, %bb.b
  %.sroa.5.0.lcssa.i = phi i64 [ %i.k, %bb.b ], [ %i.r, %.lr.ph.i ]
  %.sroa.10.0.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.p, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.o, %bb.b ], [ %i.v, %.lr.ph.i ]
  %i.w = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.x = zext nneg i16 %i.w to i64
  %i.y = add i64 %.sroa.5.0.lcssa.i, %i.x
  %i.z = and i64 %i.y, %i.b
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.neg = xor i64 %1, -1
  %i.aa = add i64 %i.k, %.neg
  %.not = icmp ult i64 %i.aa, %1
  %i.ab = lshr i64 %1, 1
  %spec.select = select i1 %.not, i64 %i.k, i64 %i.ab
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN4absl12lts_2024011618container_internal19find_first_non_fullIvEENS1_8FindInfoERKNS1_12CommonFieldsEm.exit
  %spec.select.pn = phi i64 [ %spec.select, %bb.c ], [ %i.z, %_ZN4absl12lts_2024011618container_internal19find_first_non_fullIvEENS1_8FindInfoERKNS1_12CommonFieldsEm.exit ]
  %.pn11 = phi i64 [ 0, %bb.c ], [ %.sroa.10.0.lcssa.i, %_ZN4absl12lts_2024011618container_internal19find_first_non_fullIvEENS1_8FindInfoERKNS1_12CommonFieldsEm.exit ]
  %.pn = insertvalue { i64, i64 } poison, i64 %spec.select.pn, 0
  %.fca.1.insert.merged = insertvalue { i64, i64 } %.pn, i64 %.pn11, 1
  ret { i64, i64 } %.fca.1.insert.merged
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef zeroext i1 @_ZN4absl12lts_2024011618container_internal19HashSetResizeHelper15InitializeSlotsISaIcELm8ELb1ELm8EEEbRNS1_12CommonFieldsEPvT_(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef align 1 %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !58   ; 8 uses
  %i.c = add i64 %i.b, 31                         ; 2 uses
  %i.d = shl i64 %i.b, 3
  %i.e = add i64 %i.c, %i.d                       ; 2 uses
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.b, label %_ZN4absl12lts_2024011618container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit, !prof !89

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt17__throw_bad_allocv() #34
  unreachable

_ZN4absl12lts_2024011618container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit: ; preds = %bb.a
  %i.g = and i64 %i.c, -8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = and i64 %i.e, 9223372036854775800
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #35 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store ptr %i.k, ptr %1, align 8, !tbaa !60
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.g
  store ptr %i.l, ptr %i.h, align 8, !tbaa !75
  %i.m = lshr i64 %i.b, 3
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !61   ; 2 uses
  %i.p = lshr i64 %i.o, 1
  %i.q = add nuw i64 %i.m, %i.p
  %i.r = sub i64 %i.b, %i.q
  store i64 %i.r, ptr %i.j, align 8, !tbaa !155
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !206  ; 2 uses
  %i.u = icmp ult i64 %i.b, 17
  %i.v = icmp ult i64 %i.t, %i.b
  %i.w = and i1 %i.u, %i.v                        ; 2 uses
  %i.x = icmp ne i64 %i.t, 0
  %or.cond = and i1 %i.x, %i.w
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4absl12lts_2024011618container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit
  tail call void @_ZN4absl12lts_2024011618container_internal19HashSetResizeHelper35GrowSizeIntoSingleGroupTransferableERNS1_12CommonFieldsEPvm(ptr noundef nonnull align 8 dereferenceable(17) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, i64 noundef 8)
  %i.y = load i64, ptr %i.s, align 8, !tbaa !206  ; 2 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !204
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !207, !range !42, !noundef !43
  %i.ac = trunc nuw i8 %i.ab to i1                ; 2 uses
  %.neg.i = select i1 %i.ac, i64 -9, i64 -8
  %i.ad = select i1 %i.ac, i64 9, i64 8
  %i.ae = getelementptr inbounds i8, ptr %i.z, i64 %.neg.i
  %i.af = add i64 %i.y, 23
  %i.ag = add i64 %i.af, %i.ad
  %i.ah = shl i64 %i.y, 3
  %i.ai = add i64 %i.ag, %i.ah
  %i.aj = and i64 %i.ai, -8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.aj) #30
  %.pre = load i64, ptr %i.n, align 8, !tbaa !61
  br label %bb.e

bb.d:                                             ; preds = %_ZN4absl12lts_2024011618container_internal8AllocateILm8ESaIcEEEPvPT0_m.exit
  %i.ak = add i64 %i.b, 16
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.k, i8 -128, i64 %i.ak, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.b
  store i8 -1, ptr %i.al, align 1, !tbaa !157
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.am = phi i64 [ %.pre, %bb.c ], [ %i.o, %bb.d ]
  %i.an = and i64 %i.am, -2
  store i64 %i.an, ptr %i.n, align 8, !tbaa !61
  ret i1 %i.w
}

declare void @_ZN4absl12lts_2024011618container_internal19HashSetResizeHelper35GrowSizeIntoSingleGroupTransferableERNS1_12CommonFieldsEPvm(ptr noundef nonnull align 8 dereferenceable(17), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #10

declare void @_ZN4absl12lts_2024011618container_internal24DropDeletesWithoutResizeERNS1_12CommonFieldsERKNS1_15PolicyFunctionsEPv(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN4absl12lts_2024011618container_internal12raw_hash_setINS1_17FlatHashSetPolicyIPN3re29PrefilterEEENS4_13PrefilterTree13PrefilterHashENS8_14PrefilterEqualESaIS6_EE12hash_slot_fnEPvSD_(ptr noundef %0, ptr noundef %1) #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !38     ; 4 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !53   ; 2 uses
  %i.c = zext i32 %i.b to i64
  %i.d = add i64 %i.c, ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64)
  %i.e = zext i64 %i.d to i128
  %i.f = mul nuw i128 %i.e, 11376068507788127593  ; 2 uses
  %i.g = lshr i128 %i.f, 64
  %i.h = xor i128 %i.g, %i.f
  %i.i = trunc i128 %i.h to i64                   ; 2 uses
  switch i32 %i.b, label %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re29PrefilterEEEvE5applyINS1_12raw_hash_setIS7_NS4_13PrefilterTree13PrefilterHashENSB_14PrefilterEqualESaIS6_EE11HashElementEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSK_.exit [
    i32 2, label %bb.b
    i32 3, label %bb.c
    i32 4, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !66
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !54   ; 2 uses
  %2 = zext i64 add (i64 ptrtoint (ptr @_ZN4absl12lts_2024011613hash_internal15MixingHashState5kSeedE to i64), i64 2) to i128
  %3 = mul nuw i128 %2, 11376068507788127593      ; 2 uses
  %4 = lshr i128 %3, 64
  %5 = xor i128 %4, %3
  %6 = trunc i128 %5 to i64
  %i.n = tail call i64 @_ZN4absl12lts_2024011613hash_internal15MixingHashState18combine_contiguousES2_PKhm(i64 %6, ptr noundef %i.k, i64 noundef %i.m)
  %i.o = add i64 %i.n, %i.m
  %i.p = zext i64 %i.o to i128
  %i.q = mul nuw i128 %i.p, 11376068507788127593  ; 2 uses
  %i.r = lshr i128 %i.q, 64
  %i.s = xor i128 %i.r, %i.q
  %i.t = trunc i128 %i.s to i64
  br label %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re29PrefilterEEEvE5applyINS1_12raw_hash_setIS7_NS4_13PrefilterTree13PrefilterHashENSB_14PrefilterEqualESaIS6_EE11HashElementEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSK_.exit

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !52   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !28   ; 2 uses
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !29   ; 5 uses
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = ashr exact i64 %i.ab, 3                 ; 3 uses
  %i.ad = add i64 %i.ac, %i.i
  %i.ae = zext i64 %i.ad to i128
  %i.af = mul nuw i128 %i.ae, 11376068507788127593 ; 2 uses
  %i.ag = lshr i128 %i.af, 64
  %i.ah = xor i128 %i.ag, %i.af
  %i.ai = trunc i128 %i.ah to i64                 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re29PrefilterEEEvE5applyINS1_12raw_hash_setIS7_NS4_13PrefilterTree13PrefilterHashENSB_14PrefilterEqualESaIS6_EE11HashElementEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSK_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %bb.c
  %i.aj = icmp eq i64 %i.ab, 8
  br i1 %i.aj, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.ac, -2
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new
  %.sroa.017.025.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %.024.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.024.i.i.i.i.i.i.i.i.i.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !38
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %.0.copyload.i.i32.i.i.i.i.i23.i.i.i.i.i.i.i.i.i.i = load i32, ptr %i.am, align 1
  %i.an = zext i32 %.0.copyload.i.i32.i.i.i.i.i23.i.i.i.i.i.i.i.i.i.i to i64
  %i.ao = add i64 %.sroa.017.025.i.i.i.i.i.i.i.i.i.i, %i.an
  %i.ap = zext i64 %i.ao to i128
  %i.aq = mul nuw i128 %i.ap, 11376068507788127593 ; 2 uses
  %i.ar = lshr i128 %i.aq, 64
  %i.as = xor i128 %i.ar, %i.aq
  %i.at = trunc i128 %i.as to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.024.i.i.i.i.i.i.i.i.i.i
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !38
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 48
  %.0.copyload.i.i32.i.i.i.i.i23.i.i.i.i.i.i.i.i.i.i.1 = load i32, ptr %i.ax, align 1
  %i.ay = zext i32 %.0.copyload.i.i32.i.i.i.i.i23.i.i.i.i.i.i.i.i.i.i.1 to i64
  %i.az = add i64 %i.at, %i.ay
  %i.ba = zext i64 %i.az to i128
  %i.bb = mul nuw i128 %i.ba, 11376068507788127593 ; 2 uses
  %i.bc = lshr i128 %i.bb, 64
  %i.bd = xor i128 %i.bc, %i.bb
  %i.be = trunc i128 %i.bd to i64                 ; 3 uses
  %i.bf = add nuw i64 %.024.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re29PrefilterEEEvE5applyINS1_12raw_hash_setIS7_NS4_13PrefilterTree13PrefilterHashENSB_14PrefilterEqualESaIS6_EE11HashElementEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSK_.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !109

_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re29PrefilterEEEvE5applyINS1_12raw_hash_setIS7_NS4_13PrefilterTree13PrefilterHashENSB_14PrefilterEqualESaIS6_EE11HashElementEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSK_.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.bg = and i64 %i.ab, 8
  %lcmp.mod.not = icmp eq i64 %i.bg, 0
  br i1 %lcmp.mod.not, label %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re29PrefilterEEEvE5applyINS1_12raw_hash_setIS7_NS4_13PrefilterTree13PrefilterHashENSB_14PrefilterEqualESaIS6_EE11HashElementEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSK_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader:        ; preds = %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re29PrefilterEEEvE5applyINS1_12raw_hash_setIS7_NS4_13PrefilterTree13PrefilterHashENSB_14PrefilterEqualESaIS6_EE11HashElementEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSK_.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %.sroa.017.025.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ %i.ai, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.be, %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re29PrefilterEEEvE5applyINS1_12raw_hash_setIS7_NS4_13PrefilterTree13PrefilterHashENSB_14PrefilterEqualESaIS6_EE11HashElementEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSK_.exit.loopexit.unr-lcssa ]
  %.024.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bf, %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re29PrefilterEEEvE5applyINS1_12raw_hash_setIS7_NS4_13PrefilterTree13PrefilterHashENSB_14PrefilterEqualESaIS6_EE11HashElementEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSK_.exit.loopexit.unr-lcssa ]
  %lcmp.mod4 = trunc i64 %i.ac to i1
  tail call void @llvm.assume(i1 %lcmp.mod4)
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %.024.i.i.i.i.i.i.i.i.i.i.epil.init
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !38
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  %.0.copyload.i.i32.i.i.i.i.i23.i.i.i.i.i.i.i.i.i.i.epil = load i32, ptr %i.bj, align 1
  %i.bk = zext i32 %.0.copyload.i.i32.i.i.i.i.i23.i.i.i.i.i.i.i.i.i.i.epil to i64
  %i.bl = add i64 %.sroa.017.025.i.i.i.i.i.i.i.i.i.i.epil.init, %i.bk
  %i.bm = zext i64 %i.bl to i128
  %i.bn = mul nuw i128 %i.bm, 11376068507788127593 ; 2 uses
  %i.bo = lshr i128 %i.bn, 64
  %i.bp = xor i128 %i.bo, %i.bn
  %i.bq = trunc i128 %i.bp to i64
  br label %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re29PrefilterEEEvE5applyINS1_12raw_hash_setIS7_NS4_13PrefilterTree13PrefilterHashENSB_14PrefilterEqualESaIS6_EE11HashElementEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSK_.exit

_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re29PrefilterEEEvE5applyINS1_12raw_hash_setIS7_NS4_13PrefilterTree13PrefilterHashENSB_14PrefilterEqualESaIS6_EE11HashElementEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSK_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader, %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re29PrefilterEEEvE5applyINS1_12raw_hash_setIS7_NS4_13PrefilterTree13PrefilterHashENSB_14PrefilterEqualESaIS6_EE11HashElementEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSK_.exit.loopexit.unr-lcssa, %bb.a, %bb.b, %bb.c
  %.sroa.017.1.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.t, %bb.b ], [ %i.i, %bb.a ], [ %i.ai, %bb.c ], [ %i.be, %_ZN4absl12lts_2024011618container_internal18hash_policy_traitsINS1_17FlatHashSetPolicyIPN3re29PrefilterEEEvE5applyINS1_12raw_hash_setIS7_NS4_13PrefilterTree13PrefilterHashENSB_14PrefilterEqualESaIS6_EE11HashElementEJRS6_ES7_EEDTclsrT1_5applyclsr3stdE7forwardIT_Efp_Espclsr3stdE7forwardIT0_Efp0_EEEOSJ_DpOSK_.exit.loopexit.unr-lcssa ], [ %i.bq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  ret i64 %.sroa.017.1.i.i.i.i.i.i.i.i.i.i
}

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr void @_ZN4absl12lts_2024011618container_internal19TransferRelocatableILm8EEEvPvS3_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #24 comdat {
bb.a:
  %i.a = load i64, ptr %2, align 1
  store i64 %i.a, ptr %1, align 1
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN4absl12lts_2024011618container_internal18DeallocateStandardILm8EEEvRNS1_12CommonFieldsERKNS1_15PolicyFunctionsE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #8 comdat {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !212
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !58   ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !60
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !61
  %i.g = and i64 %i.f, 1                          ; 2 uses
  %i.h = sub nuw nsw i64 -8, %i.g
  %i.i = getelementptr inbounds i8, ptr %i.d, i64 %i.h
  %i.j = add i64 %i.c, 31
  %i.k = add i64 %i.j, %i.g
  %i.l = mul i64 %i.c, %i.a
  %i.m = or i64 %i.k, 7
  %i.n = add i64 %i.l, %i.m
  %i.o = and i64 %i.n, -8
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.o) #30
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZSt13__stable_sortIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_less_iterEEvT_SB_T0_(ptr %0, ptr %1) local_unnamed_addr #25 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = ptrtoint ptr %0 to i64
  %i.d = sub i64 %i.b, %i.c
  %i.e = ashr exact i64 %i.d, 4                   ; 2 uses
  %i.f = add nsw i64 %i.e, 1
  %i.g = sdiv i64 %i.f, 2                         ; 3 uses
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph.i.i, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES3_EC2ES8_l.exit

.lr.ph.i.i:                                       ; preds = %bb.b, %select.unfold.i.i
  %.010.i.i = phi i64 [ %i.m, %select.unfold.i.i ], [ %i.g, %bb.b ] ; 5 uses
  %i.i = shl nuw nsw i64 %.010.i.i, 4             ; 3 uses
  %i.j = tail call noalias noundef ptr @_ZnwmRKSt9nothrow_t(i64 noundef %i.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt7nothrow) #37 ; 8 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %select.unfold.i.i, label %bb.c

select.unfold.i.i:                                ; preds = %.lr.ph.i.i
  %i.k = icmp eq i64 %.010.i.i, 1
  %i.l = add nuw nsw i64 %.010.i.i, 1
  %i.m = lshr i64 %i.l, 1
  br i1 %i.k, label %_ZNSt17_Temporary_bufferIN9__gnu_cxx17__normal_iteratorIPSt4pairImiESt6vectorIS3_SaIS3_EEEES3_EC2ES8_l.exit, label %.lr.ph.i.i, !llvm.loop !214

bb.c:                                             ; preds = %.lr.ph.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %0, i64 16, i1 false)
  %.not18.i.i.i = icmp eq i64 %.010.i.i, 1
  br i1 %.not18.i.i.i, label %_ZSt29__uninitialized_construct_bufIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEEvT_S9_T0_.exit.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %bb.c
  %.01317.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.o = add nsw i64 %i.i, -32                    ; 2 uses
  %i.p = lshr exact i64 %i.o, 4
  %i.q = add nuw nsw i64 %i.p, 1
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.preheader.i, %.lr.ph.i.i.i.prol
  %.01320.i.i.i.prol = phi ptr [ %.013.i.i.i.prol, %.lr.ph.i.i.i.prol ], [ %.01317.i.i.i, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %.019.i.i.i.prol = phi ptr [ %i.r, %.lr.ph.i.i.i.prol ], [ %i.j, %.lr.ph.i.i.preheader.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.preheader.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01320.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(16) %.019.i.i.i.prol, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %.019.i.i.i.prol, i64 16 ; 3 uses
  %.013.i.i.i.prol = getelementptr inbounds nuw i8, ptr %.01320.i.i.i.prol, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !215

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.preheader.i
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader.i ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %.01320.i.i.i.unr = phi ptr [ %.01317.i.i.i, %.lr.ph.i.i.preheader.i ], [ %.013.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.019.i.i.i.unr = phi ptr [ %i.j, %.lr.ph.i.i.preheader.i ], [ %i.r, %.lr.ph.i.i.i.prol ]
  %i.s = icmp ult i64 %i.o, 48
  br i1 %i.s, label %_ZSt29__uninitialized_construct_bufIPSt4pairImiEN9__gnu_cxx17__normal_iteratorIS2_St6vectorIS1_SaIS1_EEEEEvT_S9_T0_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.01320.i.i.i = phi ptr [ %.013.i.i.i.3, %.lr.ph.i.i.i ], [ %.01320.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  %.019.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i ], [ %.019.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.01320.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.019.i.i.i, i64 16, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 16
  %.013.i.i.i = getelementptr inbounds nuw i8, ptr %.01320.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 32
  %.013.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.1, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %.019.i.i.i, i64 48
  %.013.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.01320.i.i.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.013.i.i.i.2, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false)
end_hunk_1
