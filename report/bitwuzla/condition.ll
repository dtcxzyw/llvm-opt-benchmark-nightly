Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/condition?download=true
inline.NumInlined: 671
inline.NumDeleted: 233
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN7CaDiCaL8Internal15condition_roundEl:bb.a

.lr.ph1339:                                       ; preds = %.preheader
  %i.aet = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  %.pre1559 = load ptr, ptr %i.c, align 8, !tbaa !199
  %.pre1561 = load ptr, ptr %i.aet, align 8, !tbaa !167
  br label %bb.ea

._crit_edge1340:                                  ; preds = %bb.ed, %.preheader
  invoke void @_ZN7CaDiCaL8Internal17unprotect_reasonsEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
          to label %bb.ee unwind label %bb.ec

bb.ea:                                            ; preds = %.lr.ph1339, %bb.ed
  %i.aeu = phi ptr [ %.pre1561, %.lr.ph1339 ], [ %i.afg, %bb.ed ] ; 2 uses
  %i.aev = phi ptr [ %.pre1559, %.lr.ph1339 ], [ %i.afh, %bb.ed ] ; 2 uses
  %.01338 = phi i64 [ 0, %.lr.ph1339 ], [ %i.afi, %bb.ed ] ; 2 uses
  %i.aew = getelementptr inbounds nuw [4 x i8], ptr %i.aev, i64 %.01338
  %i.aex = load i32, ptr %i.aew, align 4, !tbaa !202 ; 2 uses
  %i.aey = sext i32 %i.aex to i64
  %i.aez = getelementptr inbounds i8, ptr %i.aeu, i64 %i.aey ; 2 uses
  %i.afa = load i8, ptr %i.aez, align 1, !tbaa !168
  %.not406 = icmp eq i8 %i.afa, 0
  br i1 %.not406, label %bb.eb, label %bb.ed

bb.eb:                                            ; preds = %bb.ea
  store i8 1, ptr %i.aez, align 1, !tbaa !168
  %i.afb = load ptr, ptr %i.aet, align 8, !tbaa !167
  %i.afc = sub nsw i32 0, %i.aex
  %i.afd = sext i32 %i.afc to i64
  %i.afe = getelementptr inbounds i8, ptr %i.afb, i64 %i.afd
  store i8 -1, ptr %i.afe, align 1, !tbaa !168
  %.pre1558 = load ptr, ptr %i.c, align 8, !tbaa !199
  %.pre1560 = load ptr, ptr %i.aet, align 8, !tbaa !167
  br label %bb.ed

bb.ec:                                            ; preds = %.invoke, %bb.bn, %bb.do, %bb.dy, %bb.dz, %._crit_edge1340
  %.sroa.0609.22 = phi ptr [ %.sroa.0609.28, %._crit_edge1340 ], [ %.sroa.0609.28, %bb.dz ], [ %.sroa.0609.28, %bb.dy ], [ %.sroa.0609.61085, %bb.do ], [ %.sroa.0609.0.lcssa, %bb.bn ], [ %.sroa.0609.0.lcssa, %.invoke ]
  %.sroa.0588.6 = phi ptr [ %.sroa.0588.11, %._crit_edge1340 ], [ %.sroa.0588.11, %bb.dz ], [ %.sroa.0588.11, %bb.dy ], [ %.sroa.0588.0.lcssa, %bb.do ], [ %.sroa.0588.0.lcssa, %bb.bn ], [ %.sroa.0588.0.lcssa, %.invoke ]
  %.sroa.0564.8 = phi ptr [ %.sroa.0564.12, %._crit_edge1340 ], [ %.sroa.0564.12, %bb.dz ], [ %.sroa.0564.12, %bb.dy ], [ %.sroa.0564.01043, %bb.do ], [ null, %bb.bn ], [ null, %.invoke ]
  %i.aff = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ed:                                            ; preds = %bb.eb, %bb.ea
  %i.afg = phi ptr [ %.pre1560, %bb.eb ], [ %i.aeu, %bb.ea ]
  %i.afh = phi ptr [ %.pre1558, %bb.eb ], [ %i.aev, %bb.ea ]
  %i.afi = add nuw i64 %.01338, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.afi, %i.j
  br i1 %exitcond.not, label %._crit_edge1340, label %bb.ea, !llvm.loop !196

bb.ee:                                            ; preds = %._crit_edge1340
  %.not.i.i.i514 = icmp eq ptr %.sroa.0564.12, null
  br i1 %.not.i.i.i514, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0564.12) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.ee, %bb.ef
  %.not.i.i.i515 = icmp eq ptr %.sroa.0588.11, null
  br i1 %.not.i.i.i515, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit, label %bb.eg

bb.eg:                                            ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0588.11) #15
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.eg
  %.not.i.i.i516 = icmp eq ptr %.sroa.0609.28, null
  br i1 %.not.i.i.i516, label %_ZNSt6vectorIiSaIiEED2Ev.exit517, label %bb.eh

bb.eh:                                            ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0609.28) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit517

_ZNSt6vectorIiSaIiEED2Ev.exit517:                 ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit, %bb.eh
  ret i64 %.02831013

.body:                                            ; preds = %.loopexit.split-lp774.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit781, %.loopexit.split-lp782, %.loopexit.split-lp759.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp759.loopexit, %.loopexit.split-lp.loopexit.split-lp, %bb.ec
  %.sroa.0609.23 = phi ptr [ %.sroa.0609.101254, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0609.22, %bb.ec ], [ %.sroa.0609.9.lcssa, %.loopexit.split-lp759.loopexit ], [ %.sroa.0609.91261, %.loopexit.split-lp759.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0609.61314, %.loopexit.split-lp782 ], [ %.sroa.0609.18.ph, %.loopexit781 ], [ %.sroa.0609.712842401, %.loopexit.split-lp774.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.0588.7 = phi ptr [ %.sroa.0588.0.lcssa, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0588.6, %bb.ec ], [ %.sroa.0588.0.lcssa, %.loopexit.split-lp759.loopexit ], [ %.sroa.0588.0.lcssa, %.loopexit.split-lp759.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0588.0.lcssa, %.loopexit.split-lp782 ], [ %.sroa.0588.0.lcssa, %.loopexit781 ], [ %.sroa.0588.0.lcssa, %.loopexit.split-lp774.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.sroa.0564.9 = phi ptr [ %.sroa.0564.11, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0564.8, %bb.ec ], [ %.sroa.0564.11, %.loopexit.split-lp759.loopexit ], [ %.sroa.0564.11, %.loopexit.split-lp759.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.0564.01317, %.loopexit.split-lp782 ], [ %.sroa.0564.4.ph, %.loopexit781 ], [ %.sroa.0564.112872398, %.loopexit.split-lp774.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.pn407.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp2421, %.loopexit.split-lp.loopexit.split-lp ], [ %i.aff, %bb.ec ], [ %lpad.loopexit763, %.loopexit.split-lp759.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp759.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp784, %.loopexit.split-lp782 ], [ %lpad.loopexit783, %.loopexit781 ], [ %lpad.loopexit.split-lp2432, %.loopexit.split-lp774.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i518 = icmp eq ptr %.sroa.0564.9, null
  br i1 %.not.i.i.i518, label %_ZNSt6vectorIiSaIiEED2Ev.exit519, label %.body.thread694

.body.thread694:                                  ; preds = %.body
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0564.9) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit519

_ZNSt6vectorIiSaIiEED2Ev.exit519:                 ; preds = %.loopexit.split-lp788.loopexit.split-lp, %.loopexit792, %.loopexit.split-lp793, %.body.thread694, %.body, %.body.thread, %bb.ay
  %.sroa.0609.24 = phi ptr [ %.sroa.0609.23, %.body.thread694 ], [ %.sroa.0609.01202, %.loopexit.split-lp793 ], [ %.sroa.0609.5, %bb.ay ], [ %.sroa.0609.23, %.body ], [ %.sroa.0609.0.lcssa, %.body.thread ], [ %.sroa.0609.01202, %.loopexit792 ], [ %.sroa.0609.11189, %.loopexit.split-lp788.loopexit.split-lp ] ; 2 uses
  %.sroa.0588.8 = phi ptr [ %.sroa.0588.7, %.body.thread694 ], [ %.sroa.0588.2.ph794, %.loopexit.split-lp793 ], [ %.sroa.0588.5, %bb.ay ], [ %.sroa.0588.7, %.body ], [ %.sroa.0588.0.lcssa, %.body.thread ], [ %.sroa.0588.2.ph, %.loopexit792 ], [ %.sroa.0588.01205, %.loopexit.split-lp788.loopexit.split-lp ] ; 2 uses
  %.pn424.pn.pn = phi { ptr, i32 } [ %.pn407.pn, %.body.thread694 ], [ %lpad.loopexit.split-lp796, %.loopexit.split-lp793 ], [ %i.ju, %bb.ay ], [ %.pn407.pn, %.body ], [ %i.mj, %.body.thread ], [ %lpad.loopexit795, %.loopexit792 ], [ %lpad.loopexit.split-lp2737, %.loopexit.split-lp788.loopexit.split-lp ]
  %.not.i.i.i520 = icmp eq ptr %.sroa.0588.8, null
  br i1 %.not.i.i.i520, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit521, label %_ZNSt6vectorIiSaIiEED2Ev.exit519.thread

_ZNSt6vectorIiSaIiEED2Ev.exit519.thread:          ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit519
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0588.8) #15
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit521

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit521: ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit519, %_ZNSt6vectorIiSaIiEED2Ev.exit519.thread
  %.not.i.i.i522 = icmp eq ptr %.sroa.0609.24, null
  br i1 %.not.i.i.i522, label %_ZNSt6vectorIiSaIiEED2Ev.exit523, label %bb.ei

bb.ei:                                            ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit521
  tail call void @_ZdlPv(ptr noundef nonnull %.sroa.0609.24) #15
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit523

_ZNSt6vectorIiSaIiEED2Ev.exit523:                 ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EED2Ev.exit521, %bb.ei
  resume { ptr, i32 } %.pn424.pn.pn
}

declare void @_ZN7CaDiCaL8Internal15protect_reasonsEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #3

declare noundef i32 @_ZN7CaDiCaL8Internal12decide_phaseEib(ptr noundef nonnull align 8 dereferenceable(7288), i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8Internal9init_occsEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare void @_ZN7CaDiCaL8Internal12mark_garbageEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @_ZN7CaDiCaL8External28push_zero_on_extension_stackEv(ptr noundef nonnull align 8 dereferenceable(568)) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8External39push_witness_literal_on_extension_stackEi(ptr noundef nonnull align 8 dereferenceable(568), i32 noundef) local_unnamed_addr #3

declare void @_ZN7CaDiCaL5Proof12weaken_minusEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8External30push_clause_on_extension_stackEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(568), ptr noundef) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8Internal10reset_occsEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8Internal22delete_garbage_clausesEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8Internal17unprotect_reasonsEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal9conditionEb(ptr noundef nonnull align 8 dereferenceable(7288) %0, i1 noundef zeroext %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i8, ptr %i.a, align 4, !tbaa !252, !range !160, !noundef !161
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4224 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !165
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.aj, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3620 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !253
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit

_ZN7CaDiCaL8Internal4timeEv.exit:                 ; preds = %bb.d, %bb.e
  %i.j = phi double [ %i.h, %bb.d ], [ %i.i, %bb.e ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 7248 ; 12 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !169  ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 3608
  %i.n = load i32, ptr %i.m, align 8, !tbaa !254  ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load i8, ptr %i.o, align 8, !tbaa !159, !range !160, !noundef !161
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %bb.m, label %bb.f

bb.f:                                             ; preds = %_ZN7CaDiCaL8Internal4timeEv.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.s = load i8, ptr %i.r, align 1, !tbaa !255, !range !160, !noundef !161
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.v = load i8, ptr %i.u, align 4, !tbaa !256, !range !160, !noundef !161
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.h, label %.thread61

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 6800
  %i.y = load i32, ptr %i.x, align 8, !tbaa !257
  %.not27 = icmp sgt i32 %i.y, %i.n
  br i1 %.not27, label %.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 6768
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.l, ptr noundef nonnull align 8 dereferenceable(36) %i.z, double noundef %i.j)
  %.pre.a = load i8, ptr %i.u, align 4, !tbaa !256, !range !160
  %.pre51.pre = load ptr, ptr %i.k, align 8, !tbaa !169 ; 2 uses
  %i.aa = trunc nuw i8 %.pre.a to i1
  br i1 %i.aa, label %.thread, label %.thread61

.thread61:                                        ; preds = %bb.g, %bb.i
  %.pre5163 = phi ptr [ %.pre51.pre, %bb.i ], [ %i.l, %bb.g ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.pre5163, i64 7040
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !258
  %.not28 = icmp sgt i32 %i.ac, %i.n
  br i1 %.not28, label %.thread, label %bb.j

bb.j:                                             ; preds = %.thread61
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre5163, i64 7008
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %.pre5163, ptr noundef nonnull align 8 dereferenceable(36) %i.ad, double noundef %i.j)
  %.pre50 = load ptr, ptr %i.k, align 8, !tbaa !169
  br label %.thread

.thread:                                          ; preds = %bb.h, %bb.j, %.thread61, %bb.i
  %i.ae = phi ptr [ %.pre50, %bb.j ], [ %.pre5163, %.thread61 ], [ %.pre51.pre, %bb.i ], [ %i.l, %bb.h ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 6720
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !259
  %.not29 = icmp sgt i32 %i.ag, %i.n
  br i1 %.not29, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.thread
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 6688
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.ae, ptr noundef nonnull align 8 dereferenceable(36) %i.ah, double noundef %i.j)
  %.pre52.pre = load ptr, ptr %i.k, align 8, !tbaa !169
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread
  %.pre52 = phi ptr [ %.pre52.pre, %bb.k ], [ %i.ae, %.thread ]
  %i.ai = load i32, ptr %0, align 8, !tbaa !260
  %i.aj = and i32 %i.ai, -257
  store i32 %i.aj, ptr %0, align 8, !tbaa !260
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.f, %_ZN7CaDiCaL8Internal4timeEv.exit
  %i.ak = phi ptr [ %.pre52, %bb.l ], [ %i.l, %bb.f ], [ %i.l, %_ZN7CaDiCaL8Internal4timeEv.exit ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 6880
  %i.am = load i32, ptr %i.al, align 8, !tbaa !261
  %.not30 = icmp sgt i32 %i.am, %i.n
  br i1 %.not30, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 6848
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.ak, ptr noundef nonnull align 8 dereferenceable(36) %i.an, double noundef %i.j)
  %.pre53 = load ptr, ptr %i.k, align 8, !tbaa !169
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ao = phi ptr [ %.pre53, %bb.n ], [ %i.ak, %bb.m ] ; 4 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 5920
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !262
  %.not31 = icmp sgt i32 %i.aq, %i.n
  br i1 %.not31, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 5888
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.ao, ptr noundef nonnull align 8 dereferenceable(36) %i.ar, double noundef %i.j)
  %.pre54 = load ptr, ptr %i.k, align 8, !tbaa !169
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.as = phi ptr [ %.pre54, %bb.p ], [ %i.ao, %bb.o ] ; 2 uses
  %i.at = load i32, ptr %0, align 8, !tbaa !260
  %i.au = or i32 %i.at, 514
  store i32 %i.au, ptr %0, align 8, !tbaa !260
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 4160 ; 3 uses
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !170
  %i.ax = add nsw i64 %i.aw, 1                    ; 2 uses
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !170
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 3968
  %i.az = load i64, ptr %i.ay, align 8, !tbaa !263
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 3332
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !264
  %i.bc = sext i32 %i.bb to i64
  %i.bd = mul nsw i64 %i.az, %i.bc
  %i.be = sdiv i64 %i.bd, 1000
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 3328
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !265
  %i.bh = sext i32 %i.bg to i64
  %spec.store.select = tail call i64 @llvm.smax.i64(i64 %i.be, i64 %i.bh)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 3320
  %i.bj = load i32, ptr %i.bi, align 8, !tbaa !266
  %i.bk = sext i32 %i.bj to i64
  %spec.store.select40 = tail call i64 @llvm.smin.i64(i64 %spec.store.select, i64 %i.bk)
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 5544
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !166 ; 2 uses
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = sitofp i32 %i.bn to double
  %i.bp = fmul nnan double %i.bo, 2.000000e+00
  %i.bq = load i64, ptr %i.d, align 8, !tbaa !165
  %i.br = sitofp i64 %i.bq to double
  %i.bs = fdiv double %i.bp, %i.br
  %i.bt = sitofp i64 %spec.store.select40 to double
  %i.bu = fmul double %i.bs, %i.bt
  %i.bv = fptosi double %i.bu to i64
  %sext = shl i64 %i.bm, 32
  %i.bw = ashr exact i64 %sext, 31
  %.sroa.speculated = tail call i64 @llvm.smax.i64(i64 %i.bw, i64 %i.bv) ; 2 uses
  %.not32 = icmp eq ptr %i.as, null
  br i1 %.not32, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 3928
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !163
  tail call void (ptr, ptr, i64, ptr, ...) @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288) %i.as, ptr noundef nonnull @.str, i64 noundef %i.ax, ptr noundef nonnull @.str.11, i64 noundef %i.by, i64 noundef %.sroa.speculated)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bz = tail call noundef i64 @_ZN7CaDiCaL8Internal15condition_roundEl(ptr noundef nonnull align 8 dereferenceable(7288) %0, i64 noundef %.sroa.speculated)
  %i.ca = load i32, ptr %i.f, align 4, !tbaa !253
  %.not.i41 = icmp eq i32 %i.ca, 0
  br i1 %.not.i41, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cb = tail call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit42

bb.u:                                             ; preds = %bb.s
  %i.cc = tail call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit42

_ZN7CaDiCaL8Internal4timeEv.exit42:               ; preds = %bb.t, %bb.u
  %i.cd = phi double [ %i.cb, %bb.t ], [ %i.cc, %bb.u ] ; 5 uses
  %i.ce = load ptr, ptr %i.k, align 8, !tbaa !169 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 3608
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !254 ; 5 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 5920
  %i.ci = load i32, ptr %i.ch, align 8, !tbaa !262
  %.not33 = icmp sgt i32 %i.ci, %i.cg
  br i1 %.not33, label %bb.w, label %bb.v

bb.v:                                             ; preds = %_ZN7CaDiCaL8Internal4timeEv.exit42
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 5888
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.ce, ptr noundef nonnull align 8 dereferenceable(36) %i.cj, double noundef %i.cd)
  %.pre55 = load ptr, ptr %i.k, align 8, !tbaa !169
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZN7CaDiCaL8Internal4timeEv.exit42
  %i.ck = phi ptr [ %.pre55, %bb.v ], [ %i.ce, %_ZN7CaDiCaL8Internal4timeEv.exit42 ] ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 6880
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !261
  %.not34 = icmp sgt i32 %i.cm, %i.cg
  br i1 %.not34, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 6848
  tail call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.ck, ptr noundef nonnull align 8 dereferenceable(36) %i.cn, double noundef %i.cd)
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.co = load i32, ptr %0, align 8, !tbaa !260
  %i.cp = and i32 %i.co, -515
  store i32 %i.cp, ptr %0, align 8, !tbaa !260
  %i.cq = load i8, ptr %i.o, align 8, !tbaa !159, !range !160, !noundef !161
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %bb.ag, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !255, !range !160, !noundef !161
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.ag, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cv = load ptr, ptr %i.k, align 8, !tbaa !169 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 6720
  %i.cx = load i32, ptr %i.cw, align 8, !tbaa !259
  %.not35 = icmp sgt i32 %i.cx, %i.cg
  br i1 %.not35, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 6688
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.cv, ptr noundef nonnull align 8 dereferenceable(36) %i.cy, double noundef %i.cd)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.da = load i8, ptr %i.cz, align 4, !tbaa !256, !range !160, !noundef !161
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.ad, label %.thread65

bb.ad:                                            ; preds = %bb.ac
  %2 = load ptr, ptr %i.k, align 8, !tbaa !169    ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 6800
  %i.dd = load i32, ptr %i.dc, align 8, !tbaa !257
  %.not36 = icmp sgt i32 %i.dd, %i.cg
  br i1 %.not36, label %.thread64, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 6768
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %2, ptr noundef nonnull align 8 dereferenceable(36) %i.de, double noundef %i.cd)
  %.pre56 = load i8, ptr %i.cz, align 4, !tbaa !256, !range !160
  %i.df = trunc nuw i8 %.pre56 to i1
  br i1 %i.df, label %.thread64, label %.thread65

.thread65:                                        ; preds = %bb.ac, %bb.ae
  %3 = load ptr, ptr %i.k, align 8, !tbaa !169    ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 7040
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !258
  %.not37 = icmp sgt i32 %i.dh, %i.cg
  br i1 %.not37, label %.thread64, label %bb.af

bb.af:                                            ; preds = %.thread65
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 7008
  tail call void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %3, ptr noundef nonnull align 8 dereferenceable(36) %i.di, double noundef %i.cd)
  br label %.thread64

.thread64:                                        ; preds = %bb.ad, %bb.af, %.thread65, %bb.ae
  %i.dj = load i32, ptr %0, align 8, !tbaa !260
  %i.dk = or i32 %i.dj, 256
  store i32 %i.dk, ptr %0, align 8, !tbaa !260
  br label %bb.ag

bb.ag:                                            ; preds = %.thread64, %bb.z, %bb.y
  %.not38 = icmp eq i64 %i.bz, 0
  %i.dl = zext i1 %.not38 to i32
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(7288) %0, i8 noundef signext 103, i32 noundef %i.dl)
  br i1 %1, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 3316
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !267
  %i.do = sext i32 %i.dn to i64
  %i.dp = load i64, ptr %i.av, align 8, !tbaa !170 ; 2 uses
  %i.dq = add nsw i64 %i.dp, 1
  %i.dr = mul nsw i64 %i.dq, %i.do                ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 3928
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !163
  %i.du = add nsw i64 %i.dr, %i.dt                ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 2848
  store i64 %i.du, ptr %i.dv, align 8, !tbaa !162
  %i.dw = load ptr, ptr %i.k, align 8, !tbaa !169 ; 2 uses
  %.not39 = icmp eq ptr %i.dw, null
  br i1 %.not39, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void (ptr, ptr, i64, ptr, ...) @_ZN7CaDiCaL8Internal5phaseEPKclS2_z(ptr noundef nonnull align 8 dereferenceable(7288) %i.dw, ptr noundef nonnull @.str, i64 noundef %i.dp, ptr noundef nonnull @.str.12, i64 noundef %i.du, i64 noundef %i.dr)
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ag, %bb.ai, %bb.ah, %bb.b, %bb.a
  ret void
}

declare void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef nonnull align 8 dereferenceable(36), double noundef) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8Internal15start_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef nonnull align 8 dereferenceable(36), double noundef) local_unnamed_addr #3

declare void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(7288), i8 noundef signext, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

declare noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #3

declare noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !171  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !172    ; 4 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !175
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 3                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.b, align 8, !tbaa !173
  %i.p = getelementptr i8, ptr %i.b, i64 8        ; 3 uses
  %i.q = add nsw i64 %1, -1                       ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit, label %_ZSt6fill_nIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i

_ZSt6fill_nIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.q, 3       ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.p, i8 0, i64 %.idx.i.i.i.i.i, i1 false), !tbaa !173
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %.idx.i.i.i.i.i
  br label %_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.c, %_ZSt6fill_nIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i
  %.0.i.i.i = phi ptr [ %i.s, %_ZSt6fill_nIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i, ptr %i.a, align 8, !tbaa !171
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %1
  br i1 %i.t, label %bb.e, label %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #13
  unreachable

_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.d
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.u = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975) ; 2 uses
  %i.w = shl nuw nsw i64 %i.v, 3
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.w) #14 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.f ; 3 uses
  store ptr null, ptr %i.y, align 8, !tbaa !173
  %i.z = add nsw i64 %1, -1                       ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit33, label %_ZSt6fill_nIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i30

_ZSt6fill_nIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i30: ; preds = %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ab = getelementptr i8, ptr %i.y, i64 8
  %.idx.i.i.i.i.i31 = shl nuw nsw i64 %i.z, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ab, i8 0, i64 %.idx.i.i.i.i.i31, i1 false), !tbaa !173
  br label %_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit33

_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit33: ; preds = %_ZSt6fill_nIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RKT1_.exit.loopexit.i.i.i30, %_ZNKSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ac = icmp sgt i64 %i.f, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit33
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.x, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit

_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit33, %bb.f
  %.not.i35 = icmp eq ptr %i.c, null
  br i1 %.not.i35, label %_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE13_M_deallocateEPS2_m.exit36, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #15
  br label %_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE13_M_deallocateEPS2_m.exit36

_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE13_M_deallocateEPS2_m.exit36: ; preds = %_ZNSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.g
  store ptr %i.x, ptr %0, align 8, !tbaa !172
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %1
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !171
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.v
  store ptr %i.ae, ptr %i.h, align 8, !tbaa !175
  br label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPPN7CaDiCaL6ClauseEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE13_M_deallocateEPS2_m.exit36, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__stable_sort_adaptiveIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_16less_conditionedEEEEvT_SE_SE_T0_T1_(ptr %0, ptr %1, ptr %2, ptr noundef %3) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 3                   ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.c
  tail call void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterINS2_16less_conditionedEEEEvT_SE_T0_T1_(ptr %0, ptr %1, i64 noundef 7)
  %i.f = icmp sgt i64 %i.d, 7
  br i1 %i.f, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_16less_conditionedEEEEvT_SE_T0_T1_.exit

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.022.i = phi i64 [ %i.h, %.lr.ph.i ], [ 7, %bb.a ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterINS2_16less_conditionedEEEEvT_SE_T0_T1_T2_(ptr %0, ptr %1, ptr noundef %3, i64 noundef %.022.i)
  %i.g = shl nuw nsw i64 %.022.i, 1
  tail call void @_ZSt17__merge_sort_loopIPPN7CaDiCaL6ClauseEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEElNS4_5__ops15_Iter_comp_iterINS0_16less_conditionedEEEEvT_SE_T0_T1_T2_(ptr noundef %3, ptr noundef %i.e, ptr %0, i64 noundef %i.g)
  %i.h = shl nsw i64 %.022.i, 2                   ; 2 uses
  %i.i = icmp slt i64 %i.h, %i.d
  br i1 %i.i, label %.lr.ph.i, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_16less_conditionedEEEEvT_SE_T0_T1_.exit, !llvm.loop !268

_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_16less_conditionedEEEEvT_SE_T0_T1_.exit: ; preds = %.lr.ph.i, %bb.a
  %i.j = ptrtoint ptr %2 to i64
  %i.k = sub i64 %i.j, %i.a                       ; 2 uses
  %i.l = ashr exact i64 %i.k, 3                   ; 3 uses
  %i.m = getelementptr inbounds i8, ptr %3, i64 %i.k
  tail call void @_ZSt22__chunk_insertion_sortIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_comp_iterINS2_16less_conditionedEEEEvT_SE_T0_T1_(ptr %1, ptr %2, i64 noundef 7)
  %i.n = icmp sgt i64 %i.l, 7
  br i1 %i.n, label %.lr.ph.i15, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_16less_conditionedEEEEvT_SE_T0_T1_.exit17

.lr.ph.i15:                                       ; preds = %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_16less_conditionedEEEEvT_SE_T0_T1_.exit, %.lr.ph.i15
  %.022.i16 = phi i64 [ %i.p, %.lr.ph.i15 ], [ 7, %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_16less_conditionedEEEEvT_SE_T0_T1_.exit ] ; 3 uses
  tail call void @_ZSt17__merge_sort_loopIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_lNS0_5__ops15_Iter_comp_iterINS2_16less_conditionedEEEEvT_SE_T0_T1_T2_(ptr %1, ptr %2, ptr noundef %3, i64 noundef %.022.i16)
  %i.o = shl nuw nsw i64 %.022.i16, 1
  tail call void @_ZSt17__merge_sort_loopIPPN7CaDiCaL6ClauseEN9__gnu_cxx17__normal_iteratorIS3_St6vectorIS2_SaIS2_EEEElNS4_5__ops15_Iter_comp_iterINS0_16less_conditionedEEEEvT_SE_T0_T1_T2_(ptr noundef %3, ptr noundef %i.m, ptr %1, i64 noundef %i.o)
  %i.p = shl nsw i64 %.022.i16, 2                 ; 2 uses
  %i.q = icmp slt i64 %i.p, %i.l
  br i1 %i.q, label %.lr.ph.i15, label %_ZSt24__merge_sort_with_bufferIN9__gnu_cxx17__normal_iteratorIPPN7CaDiCaL6ClauseESt6vectorIS4_SaIS4_EEEES5_NS0_5__ops15_Iter_comp_iterINS2_16less_conditionedEEEEvT_SE_T0_T1_.exit17, !llvm.loop !268
end_hunk_0
