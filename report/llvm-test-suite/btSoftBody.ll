inline.NumInlined: 2865
inline.NumDeleted: 633
begin_hunk_0_@_ZN10btSoftBodyD2Ev:bb.a
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEED2Ev.exit139

_ZN20btAlignedObjectArrayIN10btSoftBody5TetraEED2Ev.exit135: ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody6AnchorEED2Ev.exit131, %bb.bj, %bb.bi
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gy, %bb.bi ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bj ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN20btAlignedObjectArrayIN10btSoftBody6AnchorEED2Ev.exit131 ] ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !117 ; 2 uses
  %.not.i.i.i136 = icmp ne ptr %i.hg, null
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 904
  %i.hi = load i8, ptr %i.hh, align 8, !range !179
  %i.hj = trunc nuw i8 %i.hi to i1
  %or.cond.i.i137 = select i1 %.not.i.i.i136, i1 %i.hj, i1 false
  br i1 %or.cond.i.i137, label %bb.bl, label %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEED2Ev.exit139

bb.bl:                                            ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody5TetraEED2Ev.exit135
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.hg)
          to label %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEED2Ev.exit139 unwind label %bb.bx

bb.bm:                                            ; preds = %bb.v
  %i.hk = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEED2Ev.exit143

_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEED2Ev.exit139: ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody5TetraEED2Ev.exit135, %bb.bl, %bb.bk
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.he, %bb.bk ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bl ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN20btAlignedObjectArrayIN10btSoftBody5TetraEED2Ev.exit135 ] ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !113 ; 2 uses
  %.not.i.i.i140 = icmp ne ptr %i.hm, null
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.ho = load i8, ptr %i.hn, align 8, !range !179
  %i.hp = trunc nuw i8 %i.ho to i1
  %or.cond.i.i141 = select i1 %.not.i.i.i140, i1 %i.hp, i1 false
  br i1 %or.cond.i.i141, label %bb.bn, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEED2Ev.exit143

bb.bn:                                            ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEED2Ev.exit139
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.hm)
          to label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEED2Ev.exit143 unwind label %bb.bx

bb.bo:                                            ; preds = %bb.w
  %i.hq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4NodeEED2Ev.exit147

_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEED2Ev.exit143: ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEED2Ev.exit139, %bb.bn, %bb.bm
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hk, %bb.bm ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bn ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEED2Ev.exit139 ] ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !109 ; 2 uses
  %.not.i.i.i144 = icmp ne ptr %i.hs, null
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.hu = load i8, ptr %i.ht, align 8, !range !179
  %i.hv = trunc nuw i8 %i.hu to i1
  %or.cond.i.i145 = select i1 %.not.i.i.i144, i1 %i.hv, i1 false
  br i1 %or.cond.i.i145, label %bb.bp, label %_ZN20btAlignedObjectArrayIN10btSoftBody4NodeEED2Ev.exit147

bb.bp:                                            ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEED2Ev.exit143
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.hs)
          to label %_ZN20btAlignedObjectArrayIN10btSoftBody4NodeEED2Ev.exit147 unwind label %bb.bx

bb.bq:                                            ; preds = %bb.x
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEED2Ev.exit151

_ZN20btAlignedObjectArrayIN10btSoftBody4NodeEED2Ev.exit147: ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEED2Ev.exit143, %bb.bp, %bb.bo
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hq, %bb.bo ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bp ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEED2Ev.exit143 ] ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 800
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !105 ; 2 uses
  %.not.i.i.i148 = icmp ne ptr %i.hy, null
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.ia = load i8, ptr %i.hz, align 8, !range !179
  %i.ib = trunc nuw i8 %i.ia to i1
  %or.cond.i.i149 = select i1 %.not.i.i.i148, i1 %i.ib, i1 false
  br i1 %or.cond.i.i149, label %bb.br, label %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEED2Ev.exit151

bb.br:                                            ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody4NodeEED2Ev.exit147
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.hy)
          to label %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEED2Ev.exit151 unwind label %bb.bx

bb.bs:                                            ; preds = %bb.z
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEED2Ev.exit151: ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody4NodeEED2Ev.exit147, %bb.br, %bb.bq
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hw, %bb.bq ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.br ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN20btAlignedObjectArrayIN10btSoftBody4NodeEED2Ev.exit147 ]
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 536
  invoke void @_ZN10btSoftBody4PoseD2Ev(ptr noundef nonnull align 8 dead_on_return(232) dereferenceable(232) %i.id)
          to label %.body unwind label %bb.bx

bb.bt:                                            ; preds = %bb.af
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %.body95

.body:                                            ; preds = %bb.bs, %bb.ab, %bb.aa, %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEED2Ev.exit151
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEED2Ev.exit151 ], [ %i.ic, %bb.bs ], [ %i.dg, %bb.ab ], [ %i.dg, %bb.aa ]
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 312
  invoke void @_ZN10btSoftBody6ConfigD2Ev(ptr noundef nonnull align 8 dead_on_return(200) dereferenceable(200) %i.if)
          to label %.body95 unwind label %bb.bx

bb.bu:                                            ; preds = %bb.al
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %_ZN20btAlignedObjectArrayIP17btCollisionObjectED2Ev.exit155

.body95:                                          ; preds = %bb.bt, %bb.aj, %_ZN20btAlignedObjectArrayIN10btSoftBody8ePSolver1_EED2Ev.exit13.i, %.body
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body ], [ %i.ie, %bb.bt ], [ %.pn.i, %bb.aj ], [ %.pn.i, %_ZN20btAlignedObjectArrayIN10btSoftBody8ePSolver1_EED2Ev.exit13.i ] ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !17 ; 2 uses
  %.not.i.i.i152 = icmp ne ptr %i.ii, null
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ik = load i8, ptr %i.ij, align 8, !range !179
  %i.il = trunc nuw i8 %i.ik to i1
  %or.cond.i.i153 = select i1 %.not.i.i.i152, i1 %i.il, i1 false
  br i1 %or.cond.i.i153, label %bb.bv, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectED2Ev.exit155

bb.bv:                                            ; preds = %.body95
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ii)
          to label %_ZN20btAlignedObjectArrayIP17btCollisionObjectED2Ev.exit155 unwind label %bb.bx

_ZN20btAlignedObjectArrayIP17btCollisionObjectED2Ev.exit155: ; preds = %.body95, %bb.bv, %bb.bu
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ig, %bb.bu ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bv ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body95 ]
  invoke void @_ZN17btCollisionObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %0)
          to label %bb.bw unwind label %bb.bx

bb.bw:                                            ; preds = %_ZN20btAlignedObjectArrayIP17btCollisionObjectED2Ev.exit155
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn

bb.bx:                                            ; preds = %bb.bv, %bb.br, %bb.bp, %bb.bn, %bb.bl, %bb.bj, %bb.bh, %bb.bf, %bb.bd, %bb.bb, %bb.az, %bb.ar, %bb.ap, %bb.an, %_ZN20btAlignedObjectArrayIP17btCollisionObjectED2Ev.exit155, %.body, %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEED2Ev.exit151, %bb.aw, %bb.au, %_ZN20btAlignedObjectArrayIPN10btSoftBody7ClusterEED2Ev.exit111
  %i.im = landingpad { ptr, i32 }
          catch ptr null
  %i.in = extractvalue { ptr, i32 } %i.im, 0
  tail call void @__clang_call_terminate(ptr %i.in) #35
  unreachable
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody15releaseClustersEv(ptr noundef nonnull align 8 dereferenceable(1496) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1340 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !146
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  tail call void @_ZN10btSoftBody14releaseClusterEi(ptr noundef nonnull align 8 dereferenceable(1496) %0, i32 noundef 0)
  %i.d = load i32, ptr %i.a, align 4, !tbaa !146
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBodyD0Ev(ptr noundef nonnull align 8 dereferenceable(1496) initializes((0, 8)) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN10btSoftBodyD2Ev(ptr noundef nonnull align 8 dereferenceable(1496) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN17btCollisionObjectdlEPv.exit unwind label %bb.d

_ZN17btCollisionObjectdlEPv.exit:                 ; preds = %bb.c
  resume { ptr, i32 } %i.a

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #35
  unreachable
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK10btSoftBody9checkLinkEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1496) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [120 x i8], ptr %i.b, i64 %i.c ; 2 uses
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr inbounds [120 x i8], ptr %i.b, i64 %i.e ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.h = load i32, ptr %i.g, align 4, !tbaa !114  ; 2 uses
  %.not21.i = icmp sgt i32 %i.h, 0
  br i1 %.not21.i, label %.lr.ph.i, label %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !113
  %wide.trip.count.i = zext nneg i32 %i.h to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.k = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %i.k, label %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %3 = getelementptr inbounds nuw [72 x i8], ptr %i.j, i64 %indvars.iv.i ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %5 = load ptr, ptr %4, align 8, !tbaa !249      ; 2 uses
  %6 = icmp eq ptr %5, %i.d
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.f
  %or.cond.i = select i1 %6, i1 %i.n, i1 false
  br i1 %or.cond.i, label %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %7 = icmp eq ptr %5, %i.f
  %8 = icmp eq ptr %i.m, %i.d
  %or.cond23.i = select i1 %7, i1 %8, i1 false
  br i1 %or.cond23.i, label %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit, label %bb.b

_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit:   ; preds = %bb.b, %bb.c, %bb.d, %bb.a
  %.not.lcssa.i = phi i1 [ false, %bb.a ], [ true, %bb.d ], [ true, %bb.c ], [ false, %bb.b ]
  ret i1 %.not.lcssa.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1496) %0, ptr nofree noundef readnone captures(address) %1, ptr nofree noundef readnone captures(address) %2) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.b = load i32, ptr %i.a, align 4, !tbaa !114  ; 2 uses
  %.not21 = icmp sgt i32 %i.b, 0
  br i1 %.not21, label %.lr.ph, label %.critedge20

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !113
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.e = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %i.e, label %.critedge20, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %3 = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 16
  %5 = load ptr, ptr %4, align 8, !tbaa !249      ; 2 uses
  %6 = icmp eq ptr %5, %1
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq ptr %i.g, %2
  %or.cond = select i1 %6, i1 %i.h, i1 false
  br i1 %or.cond, label %.critedge20, label %bb.d

bb.d:                                             ; preds = %bb.c
  %7 = icmp eq ptr %5, %2
  %8 = icmp eq ptr %i.g, %1
  %or.cond23 = select i1 %7, i1 %8, i1 false
  br i1 %or.cond23, label %.critedge20, label %bb.b

.critedge20:                                      ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.not.lcssa = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ true, %bb.d ]
  ret i1 %.not.lcssa
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK10btSoftBody9checkFaceEiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1496) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 3 uses
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [120 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr inbounds [120 x i8], ptr %i.b, i64 %i.e ; 3 uses
  %i.g = sext i32 %3 to i64
  %i.h = getelementptr inbounds [120 x i8], ptr %i.b, i64 %i.g ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.j = load i32, ptr %i.i, align 4, !tbaa !118  ; 2 uses
  %.not2832 = icmp sgt i32 %i.j, 0
  br i1 %.not2832, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !117
  %wide.trip.count = zext nneg i32 %i.j to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.d, %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [72 x i8], ptr %i.l, i64 %indvars.iv ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !249  ; 3 uses
  %i.p = icmp eq ptr %i.o, %i.d
  %i.q = icmp eq ptr %i.o, %i.f
  %or.cond = or i1 %i.p, %i.q
  %i.r = icmp eq ptr %i.o, %i.h
  %or.cond29 = or i1 %i.r, %or.cond
  br i1 %or.cond29, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !249  ; 3 uses
  %i.u = icmp eq ptr %i.t, %i.d
  %i.v = icmp eq ptr %i.t, %i.f
  %or.cond.1 = or i1 %i.u, %i.v
  %i.w = icmp eq ptr %i.t, %i.h
  %or.cond29.1 = or i1 %i.w, %or.cond.1
  br i1 %or.cond29.1, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !249  ; 3 uses
  %i.z = icmp eq ptr %i.y, %i.d
  %i.aa = icmp eq ptr %i.y, %i.f
  %or.cond.2 = or i1 %i.z, %i.aa
  %i.ab = icmp eq ptr %i.y, %i.h
  %or.cond29.2 = or i1 %i.ab, %or.cond.2
  br i1 %or.cond29.2, label %.critedge, label %bb.b

.critedge:                                        ; preds = %bb.b, %bb.e, %bb.a
  %.not28.lcssa = phi i1 [ false, %bb.a ], [ true, %bb.e ], [ false, %bb.b ]
  ret i1 %.not28.lcssa
}

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody10appendNoteEPKcRK9btVector3RK9btVector4PNS_4NodeES9_S9_S9_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1496) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.6 = alloca [4 x float], align 8          ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %i.a = load atomic i8, ptr @_ZGVZL14ZeroInitializeIN10btSoftBody4NoteEEvRT_E9zerodummy acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZL14ZeroInitializeIN10btSoftBody4NoteEEvRT_.exit, !prof !195

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL14ZeroInitializeIN10btSoftBody4NoteEEvRT_E9zerodummy) #34
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZL14ZeroInitializeIN10btSoftBody4NoteEEvRT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr @_ZZL14ZeroInitializeIN10btSoftBody4NoteEEvRT_E9zerodummy, align 8, !tbaa !196
  %i.d = tail call ptr @llvm.invariant.start.p0(i64 88, ptr nonnull @_ZZL14ZeroInitializeIN10btSoftBody4NoteEEvRT_E9zerodummy) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZL14ZeroInitializeIN10btSoftBody4NoteEEvRT_E9zerodummy) #34
  br label %_ZL14ZeroInitializeIN10btSoftBody4NoteEEvRT_.exit

_ZL14ZeroInitializeIN10btSoftBody4NoteEEvRT_.exit: ; preds = %bb.a, %bb.b, %bb.c
  %.sroa.0.0.copyload = load ptr, ptr @_ZZL14ZeroInitializeIN10btSoftBody4NoteEEvRT_E9zerodummy, align 8
  %.sroa.13.0.copyload = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZZL14ZeroInitializeIN10btSoftBody4NoteEEvRT_E9zerodummy, i64 36), align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !197
  %i.e = load <4 x float>, ptr %3, align 4, !tbaa !159
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 788 ; 5 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !106  ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 792 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !107
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.d, label %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE9push_backERKS1_.exit

bb.d:                                             ; preds = %_ZL14ZeroInitializeIN10btSoftBody4NoteEEvRT_.exit
  %.not.i.i = icmp eq i32 %i.g, 0
  %i.k = shl nsw i32 %i.g, 1
  %i.l = select i1 %.not.i.i, i32 1, i32 %i.k     ; 4 uses
  %i.m = icmp slt i32 %i.g, %i.l
  br i1 %i.m, label %bb.e, label %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE9push_backERKS1_.exit

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE8allocateEi.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = sext i32 %i.l to i64
  %i.o = mul nsw i64 %i.n, 88
  %i.p = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.o, i32 noundef 16)
  %.pre.i = load i32, ptr %i.f, align 4, !tbaa !106
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE8allocateEi.exit.i.i: ; preds = %bb.f, %bb.e
  %i.q = phi i32 [ %.pre.i, %bb.f ], [ %i.g, %bb.e ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.p, %bb.f ], [ null, %bb.e ] ; 4 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4NoteEE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE8allocateEi.exit.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.q to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.t = icmp eq i32 %i.q, 1
  br i1 %i.t, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.g ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.g ]
  %i.u = getelementptr inbounds nuw [88 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.v = load ptr, ptr %i.s, align 8, !tbaa !105
  %i.w = getelementptr inbounds nuw [88 x i8], ptr %i.v, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.u, ptr noundef nonnull align 8 dereferenceable(88) %i.w, i64 88, i1 false)
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [88 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !105
  %i.z = getelementptr inbounds nuw [88 x i8], ptr %i.y, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.x, ptr noundef nonnull align 8 dereferenceable(88) %i.z, i64 88, i1 false)
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4NoteEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, label %bb.g

_ZNK20btAlignedObjectArrayIN10btSoftBody4NoteEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4NoteEE4copyEiiPS1_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4NoteEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayIN10btSoftBody4NoteEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod34 = trunc i32 %i.q to i1
  tail call void @llvm.assume(i1 %lcmp.mod34)
  %i.aa = getelementptr inbounds nuw [88 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.ab = load ptr, ptr %i.s, align 8, !tbaa !105
  %i.ac = getelementptr inbounds nuw [88 x i8], ptr %i.ab, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.aa, ptr noundef nonnull align 8 dereferenceable(88) %i.ac, i64 88, i1 false)
  br label %_ZNK20btAlignedObjectArrayIN10btSoftBody4NoteEE4copyEiiPS1_.exit.i.i

_ZNK20btAlignedObjectArrayIN10btSoftBody4NoteEE4copyEiiPS1_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayIN10btSoftBody4NoteEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE8allocateEi.exit.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 800 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !105 ; 2 uses
  %.not.i5.i.i = icmp ne ptr %i.ae, null
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 808 ; 2 uses
  %i.ag = load i8, ptr %i.af, align 8, !range !179
  %i.ah = trunc nuw i8 %i.ag to i1
  %or.cond.i.i = select i1 %.not.i5.i.i, i1 %i.ah, i1 false
  br i1 %or.cond.i.i, label %bb.h, label %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE10deallocateEv.exit.i.i

bb.h:                                             ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4NoteEE4copyEiiPS1_.exit.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ae)
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE10deallocateEv.exit.i.i: ; preds = %bb.h, %_ZNK20btAlignedObjectArrayIN10btSoftBody4NoteEE4copyEiiPS1_.exit.i.i
  store i8 1, ptr %i.af, align 8, !tbaa !104
  store ptr %.0.i.i.i, ptr %i.ad, align 8, !tbaa !105
  store i32 %i.l, ptr %i.h, align 8, !tbaa !107
  %.pre2.i = load i32, ptr %i.f, align 4, !tbaa !106
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE9push_backERKS1_.exit

_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE9push_backERKS1_.exit: ; preds = %_ZL14ZeroInitializeIN10btSoftBody4NoteEEvRT_.exit, %bb.d, %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE10deallocateEv.exit.i.i
  %i.ai = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIN10btSoftBody4NoteEE10deallocateEv.exit.i.i ], [ %i.g, %bb.d ], [ %i.g, %_ZL14ZeroInitializeIN10btSoftBody4NoteEEvRT_.exit ]
  %.not = icmp ne ptr %4, null
  %i.aj = zext i1 %.not to i32
  %.not15 = icmp ne ptr %5, null
  %i.ak = zext i1 %.not15 to i32
  %i.al = add nuw nsw i32 %i.ak, %i.aj
  %.not16 = icmp ne ptr %6, null
  %i.am = zext i1 %.not16 to i32
  %i.an = add nuw nsw i32 %i.al, %i.am
  %.not17 = icmp ne ptr %7, null
  %i.ao = zext i1 %.not17 to i32
end_hunk_0
begin_hunk_1_@_ZN10btSoftBody17indicesToPointersEPKi:bb.a
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !249
  %i.jl = ptrtoint ptr %i.jk to i64
  %i.jm = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jl
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !4
  %i.jo = sext i32 %i.jn to i64
  %i.jp = getelementptr inbounds [120 x i8], ptr %i.b, i64 %i.jo
  store ptr %i.jp, ptr %i.jj, align 8, !tbaa !249
  %indvars.iv.next152.3 = add nuw nsw i64 %indvars.iv151, 4 ; 2 uses
  %niter220.next.3 = add i64 %niter220, 4         ; 2 uses
  %niter220.ncmp.3 = icmp eq i64 %niter220.next.3, %unroll_iter219
  br i1 %niter220.ncmp.3, label %._crit_edge113.split.loopexit.unr-lcssa, label %bb.k

._crit_edge115:                                   ; preds = %._crit_edge113.split, %._crit_edge113.split.us.us, %._crit_edge110
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody10appendLinkEiPNS_8MaterialE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1496) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.7 = alloca <{ [2 x ptr], float, i8, [3 x i8], float, float, float, %class.btVector3, [4 x i8] }>, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.a = icmp sgt i32 %1, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !113
  %i.d = zext nneg i32 %1 to i64
  %i.e = getelementptr inbounds nuw [72 x i8], ptr %i.c, i64 %i.d ; 3 uses
  %.sroa.0.0.copyload5 = load ptr, ptr %i.e, align 8
  %.sroa.6.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.6.0.copyload8 = load ptr, ptr %.sroa.6.0..sroa_idx7, align 8
  %.sroa.7.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(52) %.sroa.7.0..sroa_idx10, i64 52, i1 false)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = load atomic i8, ptr @_ZGVZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_E9zerodummy acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %_ZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_.exit, !prof !195

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_E9zerodummy) #34
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr @_ZZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_E9zerodummy, align 8, !tbaa !196
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 72, ptr nonnull @_ZZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_E9zerodummy) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_E9zerodummy) #34
  br label %_ZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_.exit

_ZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.copyload6 = load ptr, ptr @_ZZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_E9zerodummy, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(52) getelementptr inbounds nuw (i8, ptr @_ZZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_E9zerodummy, i64 16), i64 52, i1 false)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !141
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !243
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_.exit, %bb.b
  %.sroa.6.0 = phi ptr [ %.sroa.6.0.copyload8, %bb.b ], [ %i.l, %bb.f ], [ %2, %_ZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_.exit ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload5, %bb.b ], [ %.sroa.0.0.copyload6, %bb.f ], [ %.sroa.0.0.copyload6, %_ZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 852 ; 5 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !114  ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !115
  %i.q = icmp eq i32 %i.n, %i.p
  br i1 %i.q, label %bb.h, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE9push_backERKS1_.exit

bb.h:                                             ; preds = %bb.g
  %.not.i.i = icmp eq i32 %i.n, 0
  %i.r = shl nsw i32 %i.n, 1
  %i.s = select i1 %.not.i.i, i32 1, i32 %i.r     ; 4 uses
  %i.t = icmp slt i32 %i.n, %i.s
  br i1 %i.t, label %bb.i, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE9push_backERKS1_.exit

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = sext i32 %i.s to i64
  %i.v = mul nsw i64 %i.u, 72
  %i.w = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.v, i32 noundef 16)
  %.pre.i = load i32, ptr %i.m, align 4, !tbaa !114
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i: ; preds = %bb.j, %bb.i
  %i.x = phi i32 [ %.pre.i, %bb.j ], [ %i.n, %bb.i ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.w, %bb.j ], [ null, %bb.i ] ; 4 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.x to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.aa = icmp eq i32 %i.x, 1
  br i1 %i.aa, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.k ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.k ]
  %i.ab = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !113
  %i.ad = getelementptr inbounds nuw [72 x i8], ptr %i.ac, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ab, ptr noundef nonnull align 8 dereferenceable(72) %i.ad, i64 72, i1 false)
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !113
  %i.ag = getelementptr inbounds nuw [72 x i8], ptr %i.af, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef nonnull align 8 dereferenceable(72) %i.ag, i64 72, i1 false)
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, label %bb.k

_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod16 = trunc i32 %i.x to i1
  tail call void @llvm.assume(i1 %lcmp.mod16)
  %i.ah = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !113
  %i.aj = getelementptr inbounds nuw [72 x i8], ptr %i.ai, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ah, ptr noundef nonnull align 8 dereferenceable(72) %i.aj, i64 72, i1 false)
  br label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i

_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !113 ; 2 uses
  %.not.i5.i.i = icmp ne ptr %i.al, null
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.an = load i8, ptr %i.am, align 8, !range !179
  %i.ao = trunc nuw i8 %i.an to i1
  %or.cond.i.i = select i1 %.not.i5.i.i, i1 %i.ao, i1 false
  br i1 %or.cond.i.i, label %bb.l, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i

bb.l:                                             ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.al)
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i: ; preds = %bb.l, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i
  store i8 1, ptr %i.am, align 8, !tbaa !112
  store ptr %.0.i.i.i, ptr %i.ak, align 8, !tbaa !113
  store i32 %i.s, ptr %i.o, align 8, !tbaa !115
  %.pre2.i = load i32, ptr %i.m, align 4, !tbaa !114
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE9push_backERKS1_.exit

_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE9push_backERKS1_.exit: ; preds = %bb.g, %bb.h, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i
  %i.ap = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i ], [ %i.n, %bb.h ], [ %i.n, %bb.g ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !113
  %i.as = sext i32 %i.ap to i64
  %i.at = getelementptr inbounds [72 x i8], ptr %i.ar, i64 %i.as ; 3 uses
  store ptr %.sroa.0.0, ptr %i.at, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7, i64 56, i1 false)
  %i.au = load i32, ptr %i.m, align 4, !tbaa !114
  %i.av = add nsw i32 %i.au, 1
  store i32 %i.av, ptr %i.m, align 4, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody10appendLinkEiiPNS_8MaterialEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1496) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109  ; 2 uses
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [120 x i8], ptr %i.b, i64 %i.c ; 6 uses
  %i.e = sext i32 %2 to i64
  %i.f = getelementptr inbounds [120 x i8], ptr %i.b, i64 %i.e ; 6 uses
  br i1 %4, label %bb.b, label %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.h = load i32, ptr %i.g, align 4, !tbaa !114  ; 2 uses
  %.not21.i.i = icmp sgt i32 %i.h, 0
  br i1 %.not21.i.i, label %.lr.ph.i.i, label %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !113
  %wide.trip.count.i.i = zext nneg i32 %i.h to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.e
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.k = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %i.k, label %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.c ] ; 2 uses
  %5 = getelementptr inbounds nuw [72 x i8], ptr %i.j, i64 %indvars.iv.i.i ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %7 = load ptr, ptr %6, align 8, !tbaa !249      ; 2 uses
  %8 = icmp eq ptr %7, %i.d
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.f
  %or.cond.i.i = select i1 %8, i1 %i.n, i1 false
  br i1 %or.cond.i.i, label %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %9 = icmp eq ptr %7, %i.f
  %10 = icmp eq ptr %i.m, %i.d
  %or.cond23.i.i = select i1 %9, i1 %10, i1 false
  br i1 %or.cond23.i.i, label %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit, label %bb.c

_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i: ; preds = %bb.c, %bb.b, %bb.a
  tail call void @_ZN10btSoftBody10appendLinkEiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(1496) %0, i32 noundef -1, ptr noundef %3)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.p = load i32, ptr %i.o, align 4, !tbaa !114
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !113
  %i.s = sext i32 %i.p to i64
  %i.t = getelementptr [72 x i8], ptr %i.r, i64 %i.s ; 3 uses
  %i.u = getelementptr i8, ptr %i.t, i64 -56
  store ptr %i.d, ptr %i.u, align 8, !tbaa !249
  %i.v = getelementptr i8, ptr %i.t, i64 -48
  store ptr %i.f, ptr %i.v, align 8, !tbaa !249
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.y = load float, ptr %i.w, align 4, !tbaa !159
  %i.z = load float, ptr %i.x, align 4, !tbaa !159
  %i.aa = fsub float %i.y, %i.z                   ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !159
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !159
  %i.af = fsub float %i.ac, %i.ae                 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !159
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !159
  %i.ak = fsub float %i.ah, %i.aj                 ; 2 uses
  %i.al = fmul float %i.af, %i.af
  %i.am = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.aa, float %i.al)
  %i.an = tail call noundef float @llvm.fmuladd.f32(float %i.ak, float %i.ak, float %i.am)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.an)
  %i.ao = getelementptr i8, ptr %i.t, i64 -40
  store float %sqrt.i.i, ptr %i.ao, align 8, !tbaa !269
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 1140
  store i8 1, ptr %i.ap, align 4, !tbaa !166
  br label %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit

_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit: ; preds = %bb.d, %bb.e, %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1496) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 {
bb.a:
  br i1 %4, label %bb.b, label %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.b = load i32, ptr %i.a, align 4, !tbaa !114  ; 2 uses
  %.not21.i = icmp sgt i32 %i.b, 0
  br i1 %.not21.i, label %.lr.ph.i, label %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !113
  %wide.trip.count.i = zext nneg i32 %i.b to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.e = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %i.e, label %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %5 = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %indvars.iv.i ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %7 = load ptr, ptr %6, align 8, !tbaa !249      ; 2 uses
  %8 = icmp eq ptr %7, %1
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq ptr %i.g, %2
  %or.cond.i = select i1 %8, i1 %i.h, i1 false
  br i1 %or.cond.i, label %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %9 = icmp eq ptr %7, %2
  %10 = icmp eq ptr %i.g, %1
  %or.cond23.i = select i1 %9, i1 %10, i1 false
  br i1 %or.cond23.i, label %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.thread, label %bb.c

_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit:   ; preds = %bb.c, %bb.b, %bb.a
  tail call void @_ZN10btSoftBody10appendLinkEiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(1496) %0, i32 noundef -1, ptr noundef %3)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.j = load i32, ptr %i.i, align 4, !tbaa !114
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !113
  %i.m = sext i32 %i.j to i64
  %i.n = getelementptr [72 x i8], ptr %i.l, i64 %i.m ; 3 uses
  %i.o = getelementptr i8, ptr %i.n, i64 -56
  store ptr %1, ptr %i.o, align 8, !tbaa !249
  %i.p = getelementptr i8, ptr %i.n, i64 -48
  store ptr %2, ptr %i.p, align 8, !tbaa !249
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = load float, ptr %i.q, align 4, !tbaa !159
  %i.t = load float, ptr %i.r, align 4, !tbaa !159
  %i.u = fsub float %i.s, %i.t                    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.w = load float, ptr %i.v, align 4, !tbaa !159
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.y = load float, ptr %i.x, align 4, !tbaa !159
  %i.z = fsub float %i.w, %i.y                    ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !159
  %i.ae = fsub float %i.ab, %i.ad                 ; 2 uses
  %i.af = fmul float %i.z, %i.z
  %i.ag = tail call float @llvm.fmuladd.f32(float %i.u, float %i.u, float %i.af)
  %i.ah = tail call noundef float @llvm.fmuladd.f32(float %i.ae, float %i.ae, float %i.ag)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.ah)
  %i.ai = getelementptr i8, ptr %i.n, i64 -40
  store float %sqrt.i, ptr %i.ai, align 8, !tbaa !269
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1140
  store i8 1, ptr %i.aj, align 4, !tbaa !166
  br label %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.thread

_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.thread: ; preds = %bb.e, %bb.d, %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody10appendFaceEiPNS_8MaterialE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1496) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.7 = alloca { [3 x ptr], %class.btVector3, float, ptr }, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.a = icmp sgt i32 %1, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !117
  %i.d = zext nneg i32 %1 to i64
  %i.e = getelementptr inbounds nuw [72 x i8], ptr %i.c, i64 %i.d ; 3 uses
  %.sroa.0.0.copyload = load ptr, ptr %i.e, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx, i64 56, i1 false)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = load atomic i8, ptr @_ZGVZL14ZeroInitializeIN10btSoftBody4FaceEEvRT_E9zerodummy acquire, align 8
  %i.g = icmp eq i8 %i.f, 0
  br i1 %i.g, label %bb.d, label %_ZL14ZeroInitializeIN10btSoftBody4FaceEEvRT_.exit, !prof !195

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL14ZeroInitializeIN10btSoftBody4FaceEEvRT_E9zerodummy) #34
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %_ZL14ZeroInitializeIN10btSoftBody4FaceEEvRT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr null, ptr @_ZZL14ZeroInitializeIN10btSoftBody4FaceEEvRT_E9zerodummy, align 8, !tbaa !196
  %i.i = tail call ptr @llvm.invariant.start.p0(i64 72, ptr nonnull @_ZZL14ZeroInitializeIN10btSoftBody4FaceEEvRT_E9zerodummy) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZL14ZeroInitializeIN10btSoftBody4FaceEEvRT_E9zerodummy) #34
  br label %_ZL14ZeroInitializeIN10btSoftBody4FaceEEvRT_.exit

_ZL14ZeroInitializeIN10btSoftBody4FaceEEvRT_.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.copyload5 = load ptr, ptr @_ZZL14ZeroInitializeIN10btSoftBody4FaceEEvRT_E9zerodummy, align 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7, ptr noundef nonnull align 8 dereferenceable(56) getelementptr inbounds nuw (i8, ptr @_ZZL14ZeroInitializeIN10btSoftBody4FaceEEvRT_E9zerodummy, i64 16), i64 56, i1 false)
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZL14ZeroInitializeIN10btSoftBody4FaceEEvRT_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !141
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !243
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZL14ZeroInitializeIN10btSoftBody4FaceEEvRT_.exit, %bb.b
  %.sroa.6.0 = phi ptr [ %.sroa.6.0.copyload, %bb.b ], [ %i.l, %bb.f ], [ %2, %_ZL14ZeroInitializeIN10btSoftBody4FaceEEvRT_.exit ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.copyload, %bb.b ], [ %.sroa.0.0.copyload5, %bb.f ], [ %.sroa.0.0.copyload5, %_ZL14ZeroInitializeIN10btSoftBody4FaceEEvRT_.exit ]
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 884 ; 5 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !118  ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !119
  %i.q = icmp eq i32 %i.n, %i.p
  br i1 %i.q, label %bb.h, label %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE9push_backERKS1_.exit

bb.h:                                             ; preds = %bb.g
  %.not.i.i = icmp eq i32 %i.n, 0
  %i.r = shl nsw i32 %i.n, 1
  %i.s = select i1 %.not.i.i, i32 1, i32 %i.r     ; 4 uses
  %i.t = icmp slt i32 %i.n, %i.s
  br i1 %i.t, label %bb.i, label %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE9push_backERKS1_.exit

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE8allocateEi.exit.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = sext i32 %i.s to i64
  %i.v = mul nsw i64 %i.u, 72
  %i.w = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.v, i32 noundef 16)
  %.pre.i = load i32, ptr %i.m, align 4, !tbaa !118
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE8allocateEi.exit.i.i: ; preds = %bb.j, %bb.i
  %i.x = phi i32 [ %.pre.i, %bb.j ], [ %i.n, %bb.i ] ; 4 uses
  %.0.i.i.i = phi ptr [ %i.w, %bb.j ], [ null, %bb.i ] ; 4 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE8allocateEi.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 3 uses
  %wide.trip.count.i.i.i = zext nneg i32 %i.x to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.aa = icmp eq i32 %i.x, 1
  br i1 %i.aa, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.k ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.k ]
  %i.ab = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !117
  %i.ad = getelementptr inbounds nuw [72 x i8], ptr %i.ac, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ab, ptr noundef nonnull align 8 dereferenceable(72) %i.ad, i64 72, i1 false)
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.af = load ptr, ptr %i.z, align 8, !tbaa !117
  %i.ag = getelementptr inbounds nuw [72 x i8], ptr %i.af, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ae, ptr noundef nonnull align 8 dereferenceable(72) %i.ag, i64 72, i1 false)
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, label %bb.k

_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod16 = trunc i32 %i.x to i1
  tail call void @llvm.assume(i1 %lcmp.mod16)
  %i.ah = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.epil.init
  %i.ai = load ptr, ptr %i.z, align 8, !tbaa !117
  %i.aj = getelementptr inbounds nuw [72 x i8], ptr %i.ai, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ah, ptr noundef nonnull align 8 dereferenceable(72) %i.aj, i64 72, i1 false)
  br label %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i

_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE8allocateEi.exit.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !117 ; 2 uses
  %.not.i5.i.i = icmp ne ptr %i.al, null
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  %i.an = load i8, ptr %i.am, align 8, !range !179
  %i.ao = trunc nuw i8 %i.an to i1
  %or.cond.i.i = select i1 %.not.i5.i.i, i1 %i.ao, i1 false
  br i1 %or.cond.i.i, label %bb.l, label %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE10deallocateEv.exit.i.i

bb.l:                                             ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.al)
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE10deallocateEv.exit.i.i: ; preds = %bb.l, %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i
  store i8 1, ptr %i.am, align 8, !tbaa !116
  store ptr %.0.i.i.i, ptr %i.ak, align 8, !tbaa !117
  store i32 %i.s, ptr %i.o, align 8, !tbaa !119
  %.pre2.i = load i32, ptr %i.m, align 4, !tbaa !118
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE9push_backERKS1_.exit

_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE9push_backERKS1_.exit: ; preds = %bb.g, %bb.h, %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE10deallocateEv.exit.i.i
  %i.ap = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE10deallocateEv.exit.i.i ], [ %i.n, %bb.h ], [ %i.n, %bb.g ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !117
  %i.as = sext i32 %i.ap to i64
  %i.at = getelementptr inbounds [72 x i8], ptr %i.ar, i64 %i.as ; 3 uses
  store ptr %.sroa.0.0, ptr %i.at, align 8
  %.sroa.6.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx8, align 8
  %.sroa.7.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx10, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7, i64 56, i1 false)
  %i.au = load i32, ptr %i.m, align 4, !tbaa !118
  %i.av = add nsw i32 %i.au, 1
  store i32 %i.av, ptr %i.m, align 4, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
end_hunk_1
begin_hunk_2_@_ZN10btSoftBody6refineEPNS_10ImplicitFnEfb:bb.a

.preheader543.lr.ph:                              ; preds = %._crit_edge604
  %i.zm = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.zn = load ptr, ptr %i.zm, align 8, !tbaa !117
  %i.zo = ptrtoint ptr %i.ti to i64               ; 3 uses
  %wide.trip.count676 = zext nneg i32 %i.zk to i64
  br label %.preheader543

.preheader543:                                    ; preds = %.preheader543.lr.ph, %.preheader543
  %indvars.iv673 = phi i64 [ 0, %.preheader543.lr.ph ], [ %indvars.iv.next674, %.preheader543 ] ; 2 uses
  %i.zp = getelementptr inbounds nuw [72 x i8], ptr %i.zn, i64 %indvars.iv673 ; 3 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 16
  %i.zr = load ptr, ptr %i.zq, align 8, !tbaa !249
  %i.zs = ptrtoint ptr %i.zr to i64
  %i.zt = sub i64 %i.zs, %i.zo
  %i.zu = sdiv exact i64 %i.zt, 120
  %sext534 = shl i64 %i.zu, 32
  %i.zv = ashr exact i64 %sext534, 30
  %i.zw = getelementptr inbounds i8, ptr %.sroa.10449.2, i64 %i.zv ; 2 uses
  %i.zx = load i32, ptr %i.zw, align 4, !tbaa !4
  %i.zy = add nsw i32 %i.zx, 1
  store i32 %i.zy, ptr %i.zw, align 4, !tbaa !4
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zp, i64 24
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !249
  %i.aab = ptrtoint ptr %i.aaa to i64
  %i.aac = sub i64 %i.aab, %i.zo
  %i.aad = sdiv exact i64 %i.aac, 120
  %sext534.1 = shl i64 %i.aad, 32
  %i.aae = ashr exact i64 %sext534.1, 30
  %i.aaf = getelementptr inbounds i8, ptr %.sroa.10449.2, i64 %i.aae ; 2 uses
  %i.aag = load i32, ptr %i.aaf, align 4, !tbaa !4
  %i.aah = add nsw i32 %i.aag, 1
  store i32 %i.aah, ptr %i.aaf, align 4, !tbaa !4
  %i.aai = getelementptr inbounds nuw i8, ptr %i.zp, i64 32
  %i.aaj = load ptr, ptr %i.aai, align 8, !tbaa !249
  %i.aak = ptrtoint ptr %i.aaj to i64
  %i.aal = sub i64 %i.aak, %i.zo
  %i.aam = sdiv exact i64 %i.aal, 120
  %sext534.2 = shl i64 %i.aam, 32
  %i.aan = ashr exact i64 %sext534.2, 30
  %i.aao = getelementptr inbounds i8, ptr %.sroa.10449.2, i64 %i.aan ; 2 uses
  %i.aap = load i32, ptr %i.aao, align 4, !tbaa !4
  %i.aaq = add nsw i32 %i.aap, 1
  store i32 %i.aaq, ptr %i.aao, align 4, !tbaa !4
  %indvars.iv.next674 = add nuw nsw i64 %indvars.iv673, 1 ; 2 uses
  %exitcond677.not = icmp eq i64 %indvars.iv.next674, %wide.trip.count676
  br i1 %exitcond677.not, label %.preheader, label %.preheader543

.preheader:                                       ; preds = %.preheader543, %._crit_edge604
  %i.aar = load i32, ptr %i.p, align 4, !tbaa !114 ; 2 uses
  %i.aas = icmp sgt i32 %i.aar, 0
  br i1 %i.aas, label %.lr.ph608, label %_ZN20btAlignedObjectArrayIiED2Ev.exit398

.lr.ph608:                                        ; preds = %.preheader
  %i.aat = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.aau = ptrtoint ptr %i.ti to i64              ; 2 uses
  br label %bb.cz

bb.cz:                                            ; preds = %.lr.ph608, %bb.db
  %i.aav = phi i32 [ %i.aar, %.lr.ph608 ], [ %i.acb, %bb.db ]
  %.5284607 = phi i32 [ 0, %.lr.ph608 ], [ %i.acc, %bb.db ] ; 3 uses
  %i.aaw = load ptr, ptr %i.aat, align 8, !tbaa !113 ; 2 uses
  %i.aax = sext i32 %.5284607 to i64
  %i.aay = getelementptr inbounds [72 x i8], ptr %i.aaw, i64 %i.aax ; 4 uses
  %i.aaz = getelementptr inbounds nuw i8, ptr %i.aay, i64 16
  %i.aba = load ptr, ptr %i.aaz, align 8, !tbaa !249
  %i.abb = ptrtoint ptr %i.aba to i64
  %i.abc = sub i64 %i.abb, %i.aau
  %i.abd = sdiv exact i64 %i.abc, 120
  %i.abe = getelementptr inbounds nuw i8, ptr %i.aay, i64 24
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !249
  %i.abg = ptrtoint ptr %i.abf to i64
  %i.abh = sub i64 %i.abg, %i.aau
  %i.abi = sdiv exact i64 %i.abh, 120
  %sext = shl i64 %i.abd, 32
  %i.abj = ashr exact i64 %sext, 30
  %i.abk = getelementptr inbounds i8, ptr %.sroa.10449.2, i64 %i.abj ; 2 uses
  %i.abl = load i32, ptr %i.abk, align 4, !tbaa !4 ; 2 uses
  %i.abm = icmp eq i32 %i.abl, 1
  %sext533 = shl i64 %i.abi, 32
  %i.abn = ashr exact i64 %sext533, 30
  %i.abo = getelementptr inbounds i8, ptr %.sroa.10449.2, i64 %i.abn ; 3 uses
  %i.abp = load i32, ptr %i.abo, align 4, !tbaa !4
  %i.abq = icmp eq i32 %i.abp, 1
  %or.cond = select i1 %i.abm, i1 true, i1 %i.abq
  br i1 %or.cond, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.abr = add nsw i32 %i.abl, -1
  store i32 %i.abr, ptr %i.abk, align 4, !tbaa !4
  %i.abs = load i32, ptr %i.abo, align 4, !tbaa !4
  %i.abt = add nsw i32 %i.abs, -1
  store i32 %i.abt, ptr %i.abo, align 4, !tbaa !4
  %i.abu = load i32, ptr %i.p, align 4, !tbaa !114
  %i.abv = sext i32 %i.abu to i64
  %i.abw = getelementptr [72 x i8], ptr %i.aaw, i64 %i.abv
  %i.abx = getelementptr i8, ptr %i.abw, i64 -72  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(72) %i.aay, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.aay, ptr noundef nonnull align 8 dereferenceable(68) %i.abx, i64 68, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %i.abx, ptr noundef nonnull align 8 dereferenceable(68) %4, i64 68, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.aby = load i32, ptr %i.p, align 4, !tbaa !114
  %i.abz = add nsw i32 %i.aby, -1                 ; 2 uses
  store i32 %i.abz, ptr %i.p, align 4, !tbaa !114
  %i.aca = add nsw i32 %.5284607, -1
  br label %bb.db

bb.db:                                            ; preds = %bb.cz, %bb.da
  %i.acb = phi i32 [ %i.abz, %bb.da ], [ %i.aav, %bb.cz ] ; 2 uses
  %.6285 = phi i32 [ %i.aca, %bb.da ], [ %.5284607, %bb.cz ]
  %i.acc = add nsw i32 %.6285, 1                  ; 2 uses
  %i.acd = icmp slt i32 %i.acc, %i.acb
  br i1 %i.acd, label %bb.cz, label %_ZN20btAlignedObjectArrayIiED2Ev.exit398.thread

_ZN20btAlignedObjectArrayIiED2Ev.exit398:         ; preds = %.preheader
  %.not.i.i.i399.not = icmp eq ptr %.sroa.10449.2, null
  br i1 %.not.i.i.i399.not, label %_ZN20btAlignedObjectArrayIiED2Ev.exit402, label %_ZN20btAlignedObjectArrayIiED2Ev.exit398.thread

_ZN20btAlignedObjectArrayIiED2Ev.exit398.thread:  ; preds = %bb.db, %_ZN20btAlignedObjectArrayIiED2Ev.exit398
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.10449.2)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit402 unwind label %bb.cy

_ZN20btAlignedObjectArrayIiED2Ev.exit402:         ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit398, %_ZN20btAlignedObjectArrayIiED2Ev.exit398.thread
  %.not.i.i.i403.not = icmp eq ptr %.sroa.10468.2753, null
  br i1 %.not.i.i.i403.not, label %_ZN20btAlignedObjectArrayIiED2Ev.exit406, label %bb.dc

bb.dc:                                            ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit402
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.10468.2753)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit406 unwind label %bb.bt

_ZN20btAlignedObjectArrayIiED2Ev.exit410:         ; preds = %bb.cx
  %i.ace = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.dd:                                            ; preds = %bb.cy, %_ZN20btAlignedObjectArrayIiED2Ev.exit410, %bb.ct, %bb.bz
  %.sroa.10468.2754 = phi ptr [ %i.sc, %bb.bz ], [ %.sroa.10468.2753, %_ZN20btAlignedObjectArrayIiED2Ev.exit410 ], [ %.sroa.10468.2753, %bb.ct ], [ %.sroa.10468.2753, %bb.cy ] ; 2 uses
  %.pn311.pn = phi { ptr, i32 } [ %.pn311, %bb.bz ], [ %i.ace, %_ZN20btAlignedObjectArrayIiED2Ev.exit410 ], [ %i.xg, %bb.ct ], [ %i.zj, %bb.cy ] ; 2 uses
  %.not.i.i.i411.not = icmp eq ptr %.sroa.10468.2754, null
  br i1 %.not.i.i.i411.not, label %_ZN20btAlignedObjectArrayIiED2Ev.exit414, label %bb.de

bb.de:                                            ; preds = %.thread518, %bb.dd
  %.sroa.10468.2755 = phi ptr [ %.sroa.10468.2753, %.thread518 ], [ %.sroa.10468.2754, %bb.dd ]
  %.pn311.pn524 = phi { ptr, i32 } [ %i.ui, %.thread518 ], [ %.pn311.pn, %bb.dd ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.10468.2755)
          to label %_ZN20btAlignedObjectArrayIiED2Ev.exit414 unwind label %bb.dg

_ZN20btAlignedObjectArrayIiED2Ev.exit406:         ; preds = %bb.dc, %_ZN20btAlignedObjectArrayIiED2Ev.exit402, %._crit_edge587
  %i.acf = getelementptr inbounds nuw i8, ptr %0, i64 1140
  store i8 1, ptr %i.acf, align 4, !tbaa !166
  %.not.i.i.i.i415.not = icmp eq ptr %.sroa.8489.0, null
  br i1 %.not.i.i.i.i415.not, label %_ZN11btSymMatrixIiED2Ev.exit, label %bb.df

bb.df:                                            ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit406
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.8489.0)
  br label %_ZN11btSymMatrixIiED2Ev.exit

_ZN11btSymMatrixIiED2Ev.exit:                     ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit406, %bb.df
  ret void

_ZN20btAlignedObjectArrayIiED2Ev.exit414:         ; preds = %.loopexit548, %bb.bt, %bb.de, %.thread525, %bb.dd, %bb.g, %bb.h, %bb.ad
  %.pn322.pn = phi { ptr, i32 } [ %i.ib, %bb.ad ], [ %i.sx, %bb.bt ], [ %i.bb, %bb.h ], [ %i.ba, %bb.g ], [ %.pn311.pn, %bb.dd ], [ %i.sy, %.thread525 ], [ %.pn311.pn524, %bb.de ], [ %lpad.loopexit, %.loopexit548 ] ; 2 uses
  %.not.i.i.i.i418.not = icmp eq ptr %.sroa.8489.0, null
  br i1 %.not.i.i.i.i418.not, label %common.resume, label %_ZN20btAlignedObjectArrayIiED2Ev.exit414.thread

_ZN20btAlignedObjectArrayIiED2Ev.exit414.thread:  ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit414.thread757, %bb.ai, %bb.bk, %_ZN20btAlignedObjectArrayIiED2Ev.exit414
  %.pn322.pn532 = phi { ptr, i32 } [ %.pn322.pn, %_ZN20btAlignedObjectArrayIiED2Ev.exit414 ], [ %.pn315, %bb.bk ], [ %i.kl, %bb.ai ], [ %lpad.loopexit.split-lp, %_ZN20btAlignedObjectArrayIiED2Ev.exit414.thread757 ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %.sroa.8489.0)
          to label %common.resume unwind label %bb.dg

bb.dg:                                            ; preds = %_ZN20btAlignedObjectArrayIiED2Ev.exit414.thread, %bb.de
  %i.acg = landingpad { ptr, i32 }
          catch ptr null
  %i.ach = extractvalue { ptr, i32 } %i.acg, 0
  call void @__clang_call_terminate(ptr %i.ach) #35
  unreachable
}

; Function Attrs: uwtable
define dso_local noundef zeroext i1 @_ZN10btSoftBody7cutLinkEPKNS_4NodeES2_f(ptr noundef nonnull align 8 dereferenceable(1496) %0, ptr noundef %1, ptr noundef %2, float noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 832
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !109
  %i.c = ptrtoint ptr %1 to i64
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = sub i64 %i.c, %i.d
  %i.f = sdiv exact i64 %i.e, 120
  %i.g = trunc i64 %i.f to i32
  %i.h = ptrtoint ptr %2 to i64
  %i.i = sub i64 %i.h, %i.d
  %i.j = sdiv exact i64 %i.i, 120
  %i.k = trunc i64 %i.j to i32
  %i.l = tail call noundef zeroext i1 @_ZN10btSoftBody7cutLinkEiif(ptr noundef nonnull align 8 dereferenceable(1496) %0, i32 noundef %i.g, i32 noundef %i.k, float noundef %3)
  ret i1 %i.l
}

; Function Attrs: uwtable
define dso_local noundef zeroext i1 @_ZN10btSoftBody7cutLinkEiif(ptr noundef nonnull align 8 dereferenceable(1496) %0, i32 noundef %1, i32 noundef %2, float noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.7.i97 = alloca <{ [2 x ptr], float, i8, [3 x i8], float, float, float, %class.btVector3, [4 x i8] }>, align 8 ; 4 uses
  %.sroa.7.i82 = alloca <{ [2 x ptr], float, i8, [3 x i8], float, float, float, %class.btVector3, [4 x i8] }>, align 8 ; 4 uses
  %.sroa.7.i = alloca { [3 x ptr], %class.btVector3, float, ptr }, align 8 ; 4 uses
  %4 = alloca %class.btVector3, align 8           ; 6 uses
  %i.a = alloca [2 x ptr], align 16               ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 832 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !109  ; 2 uses
  %i.d = sext i32 %1 to i64                       ; 2 uses
  %i.e = getelementptr inbounds [120 x i8], ptr %i.c, i64 %i.d ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = sext i32 %2 to i64                       ; 2 uses
  %i.h = getelementptr inbounds [120 x i8], ptr %i.c, i64 %i.g ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.k = load float, ptr %i.j, align 4, !tbaa !159 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.m = load float, ptr %i.l, align 4, !tbaa !159
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.n = fsub float %i.m, %i.k
  %i.o = fmul float %3, %i.n
  %i.p = load <2 x float>, ptr %i.f, align 4, !tbaa !159 ; 2 uses
  %i.q = load <2 x float>, ptr %i.i, align 4, !tbaa !159
  %i.r = fsub <2 x float> %i.q, %i.p
  %i.s = insertelement <2 x float> poison, float %3, i64 0
  %i.t = shufflevector <2 x float> %i.s, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.u = fmul <2 x float> %i.t, %i.r
  %i.v = fadd <2 x float> %i.p, %i.u
  %i.w = fadd float %i.k, %i.o
  %.sroa.3.12.vec.insert.i10.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.w, i64 0
  store <2 x float> %i.v, ptr %4, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i10.i, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !159
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !159 ; 2 uses
  %i.ae = fsub float %i.ab, %i.ad
  %i.af = fmul float %3, %i.ae
  %i.ag = load <2 x float>, ptr %i.z, align 4, !tbaa !159
  %i.ah = load <2 x float>, ptr %i.y, align 4, !tbaa !159 ; 2 uses
  %i.ai = fsub <2 x float> %i.ag, %i.ah
  %i.aj = fmul <2 x float> %i.t, %i.ai
  %i.ak = fadd <2 x float> %i.ah, %i.aj           ; 2 uses
  %i.al = fadd float %i.ad, %i.af
  %.sroa.3.12.vec.insert.i10.i63 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.al, i64 0 ; 2 uses
  call void @_ZN10btSoftBody10appendNodeERK9btVector3f(ptr noundef nonnull align 8 dereferenceable(1496) %0, ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef 1.000000e+00)
  call void @_ZN10btSoftBody10appendNodeERK9btVector3f(ptr noundef nonnull align 8 dereferenceable(1496) %0, ptr noundef nonnull align 4 dereferenceable(16) %4, float noundef 1.000000e+00)
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !109 ; 3 uses
  %i.an = getelementptr inbounds [120 x i8], ptr %i.am, i64 %i.d ; 4 uses
  %i.ao = getelementptr inbounds [120 x i8], ptr %i.am, i64 %i.g ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 820 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !110
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr [120 x i8], ptr %i.am, i64 %i.ar ; 14 uses
  %i.at = getelementptr i8, ptr %i.as, i64 -240   ; 4 uses
  store ptr %i.at, ptr %i.a, align 16, !tbaa !249
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.av = getelementptr i8, ptr %i.as, i64 -120   ; 4 uses
  store ptr %i.av, ptr %i.au, align 8, !tbaa !249
  %i.aw = getelementptr i8, ptr %i.as, i64 -192
  store <2 x float> %i.ak, ptr %i.aw, align 8
  %.sroa.5.0..sroa_idx = getelementptr i8, ptr %i.as, i64 -184
  store <2 x float> %.sroa.3.12.vec.insert.i10.i63, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !184
  %i.ax = getelementptr i8, ptr %i.as, i64 -72
  store <2 x float> %i.ak, ptr %i.ax, align 8
  %.sroa.5.0..sroa_idx24 = getelementptr i8, ptr %i.as, i64 -64
  store <2 x float> %.sroa.3.12.vec.insert.i10.i63, ptr %.sroa.5.0..sroa_idx24, align 8, !tbaa !184
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 852 ; 13 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !114 ; 2 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %wide.trip.count = zext nneg i32 %i.az to i64
  %.pre = load ptr, ptr %i.bb, align 8, !tbaa !113
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.bc = phi ptr [ %.pre, %.lr.ph ], [ %i.cb, %bb.d ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %.0120 = phi i1 [ false, %.lr.ph ], [ %.1, %bb.d ]
  %i.bd = getelementptr inbounds nuw [72 x i8], ptr %i.bc, i64 %indvars.iv ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !249 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !249 ; 2 uses
  %i.bi = icmp eq ptr %i.bf, %i.an
  %i.bj = icmp eq ptr %i.bh, %i.ao
  %or.cond.i = and i1 %i.bi, %i.bj
  %i.bk = icmp eq ptr %i.bf, %i.ao
  %i.bl = icmp eq ptr %i.bh, %i.an
  %or.cond8.i = and i1 %i.bk, %i.bl
  %spec.select.i = select i1 %or.cond8.i, i32 1, i32 -1
  %.0.i = select i1 %or.cond.i, i32 0, i32 %spec.select.i ; 3 uses
  %.not60 = icmp eq i32 %.0.i, -1
  br i1 %.not60, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bm = trunc nuw nsw i64 %indvars.iv to i32
  tail call void @_ZN10btSoftBody10appendLinkEiPNS_8MaterialE(ptr noundef nonnull align 8 dereferenceable(1496) %0, i32 noundef %i.bm, ptr noundef null)
  %i.bn = load ptr, ptr %i.bb, align 8, !tbaa !113 ; 3 uses
  %i.bo = getelementptr inbounds nuw [72 x i8], ptr %i.bn, i64 %indvars.iv
  %i.bp = load i32, ptr %i.ay, align 4, !tbaa !114
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr [72 x i8], ptr %i.bn, i64 %i.bq
  %i.bs = zext nneg i32 %.0.i to i64
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bs
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !249
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !249
  %i.bw = sub nuw nsw i32 1, %.0.i
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !249
  %i.ca = getelementptr i8, ptr %i.br, i64 -56
  store ptr %i.bz, ptr %i.ca, align 8, !tbaa !249
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.cb = phi ptr [ %i.bn, %bb.c ], [ %i.bc, %bb.b ]
  %.1 = phi i1 [ true, %bb.c ], [ %.0120, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.0.lcssa = phi i1 [ false, %bb.a ], [ %.1, %bb.d ] ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 884 ; 6 uses
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !118 ; 2 uses
  %i.ce = icmp sgt i32 %i.cd, 0
  br i1 %i.ce, label %.preheader.lr.ph, label %._crit_edge124

.preheader.lr.ph:                                 ; preds = %._crit_edge
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 7 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 15 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 856 ; 4 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 4 uses
  %i.cm = getelementptr i8, ptr %i.as, i64 -224
  %i.cn = getelementptr i8, ptr %i.as, i64 -220
  %i.co = getelementptr i8, ptr %i.as, i64 -216
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1140 ; 2 uses
  %i.cq = getelementptr i8, ptr %i.as, i64 -104
  %i.cr = getelementptr i8, ptr %i.as, i64 -100
  %i.cs = getelementptr i8, ptr %i.as, i64 -96
  %wide.trip.count132 = zext nneg i32 %i.cd to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.e
  %indvars.iv129 = phi i64 [ 0, %.preheader.lr.ph ], [ %indvars.iv.next130, %bb.e ] ; 3 uses
  br label %bb.f

bb.e:                                             ; preds = %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit79
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %exitcond133.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count132
  br i1 %exitcond133.not, label %._crit_edge124, label %.preheader

bb.f:                                             ; preds = %.preheader, %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit79
  %indvars.iv125 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next126.pre-phi, %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit79 ] ; 6 uses
  %.057121 = phi i64 [ 2, %.preheader ], [ %indvars.iv125, %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit79 ]
  %i.ct = load ptr, ptr %i.cf, align 8, !tbaa !117 ; 3 uses
  %i.cu = getelementptr inbounds nuw [72 x i8], ptr %i.ct, i64 %indvars.iv129 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16 ; 3 uses
  %i.cw = and i64 %.057121, 4294967295            ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cw
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !249 ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %indvars.iv125
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !249 ; 2 uses
  %i.db = icmp eq ptr %i.cy, %i.an
  %i.dc = icmp eq ptr %i.da, %i.ao
  %or.cond.i66 = and i1 %i.db, %i.dc
  %i.dd = icmp eq ptr %i.cy, %i.ao
  %i.de = icmp eq ptr %i.da, %i.an
  %or.cond8.i67 = and i1 %i.dd, %i.de
  %spec.select.i68 = select i1 %or.cond8.i67, i32 1, i32 -1
  %.0.i69 = select i1 %or.cond.i66, i32 0, i32 %spec.select.i68 ; 3 uses
  %.not = icmp eq i32 %.0.i69, -1
  br i1 %.not, label %._ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit79_crit_edge, label %bb.g

._ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit79_crit_edge: ; preds = %bb.f
  %.pre136.a = add nuw nsw i64 %indvars.iv125, 1
  br label %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit79

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  %i.df = load <2 x ptr>, ptr %i.cu, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(56) %i.cv, i64 56, i1 false)
  %i.dg = load i32, ptr %i.cc, align 4, !tbaa !118 ; 7 uses
  %i.dh = load i32, ptr %i.cg, align 8, !tbaa !119
  %i.di = icmp eq i32 %i.dg, %i.dh
  br i1 %i.di, label %bb.h, label %_ZN10btSoftBody10appendFaceEiPNS_8MaterialE.exit

bb.h:                                             ; preds = %bb.g
  %.not.i.i.i = icmp eq i32 %i.dg, 0
  %i.dj = shl nsw i32 %i.dg, 1
  %i.dk = select i1 %.not.i.i.i, i32 1, i32 %i.dj ; 4 uses
  %i.dl = icmp slt i32 %i.dg, %i.dk
  br i1 %i.dl, label %bb.i, label %_ZN10btSoftBody10appendFaceEiPNS_8MaterialE.exit

bb.i:                                             ; preds = %bb.h
  %.not.i.i.i.i = icmp eq i32 %i.dk, 0
  br i1 %.not.i.i.i.i, label %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE8allocateEi.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dm = sext i32 %i.dk to i64
  %i.dn = mul nsw i64 %i.dm, 72
  %i.do = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.dn, i32 noundef 16)
  %.pre.i.i = load i32, ptr %i.cc, align 4, !tbaa !118
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE8allocateEi.exit.i.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE8allocateEi.exit.i.i.i: ; preds = %bb.j, %bb.i
  %i.dp = phi i32 [ %.pre.i.i, %bb.j ], [ %i.dg, %bb.i ] ; 4 uses
  %.0.i.i.i.i = phi ptr [ %i.do, %bb.j ], [ null, %bb.i ] ; 5 uses
  %i.dq = icmp sgt i32 %i.dp, 0
  br i1 %i.dq, label %.lr.ph.i.i.i.i, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE8allocateEi.exit.i.i.i
  %wide.trip.count.i.i.i.i = zext nneg i32 %i.dp to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i, 1
  %i.dr = icmp eq i32 %i.dp, 1
  br i1 %i.dr, label %.epil.preheader, label %.lr.ph.i.i.i.i.new

.lr.ph.i.i.i.i.new:                               ; preds = %.lr.ph.i.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i.i, 2147483646
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i.i.i.new
  %indvars.iv.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %indvars.iv.next.i.i.i.i.1, %bb.k ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %niter.next.1, %bb.k ]
  %i.ds = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i.i.i
  %i.dt = load ptr, ptr %i.cf, align 8, !tbaa !117
  %i.du = getelementptr inbounds nuw [72 x i8], ptr %i.dt, i64 %indvars.iv.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ds, ptr noundef nonnull align 8 dereferenceable(72) %i.du, i64 72, i1 false)
  %indvars.iv.next.i.i.i.i = or disjoint i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.dv = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.next.i.i.i.i
  %i.dw = load ptr, ptr %i.cf, align 8, !tbaa !117
  %i.dx = getelementptr inbounds nuw [72 x i8], ptr %i.dw, i64 %indvars.iv.next.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dv, ptr noundef nonnull align 8 dereferenceable(72) %i.dx, i64 72, i1 false)
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa, label %bb.k

_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa: ; preds = %bb.k
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i.1, %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod157 = trunc i32 %i.dp to i1
  tail call void @llvm.assume(i1 %lcmp.mod157)
  %i.dy = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i, i64 %indvars.iv.i.i.i.i.epil.init
  %i.dz = load ptr, ptr %i.cf, align 8, !tbaa !117
  %i.ea = getelementptr inbounds nuw [72 x i8], ptr %i.dz, i64 %indvars.iv.i.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dy, ptr noundef nonnull align 8 dereferenceable(72) %i.ea, i64 72, i1 false)
  br label %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i

_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i: ; preds = %.epil.preheader, %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE8allocateEi.exit.i.i.i
  %i.eb = load ptr, ptr %i.cf, align 8, !tbaa !117 ; 2 uses
  %.not.i5.i.i.i = icmp ne ptr %i.eb, null
  %i.ec = load i8, ptr %i.ch, align 8, !range !179
  %i.ed = trunc nuw i8 %i.ec to i1
  %or.cond.i.i.i = select i1 %.not.i5.i.i.i, i1 %i.ed, i1 false
  br i1 %or.cond.i.i.i, label %bb.l, label %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE10deallocateEv.exit.i.i.i

bb.l:                                             ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.eb)
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE10deallocateEv.exit.i.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE10deallocateEv.exit.i.i.i: ; preds = %bb.l, %_ZNK20btAlignedObjectArrayIN10btSoftBody4FaceEE4copyEiiPS1_.exit.i.i.i
  store i8 1, ptr %i.ch, align 8, !tbaa !116
  store ptr %.0.i.i.i.i, ptr %i.cf, align 8, !tbaa !117
  store i32 %i.dk, ptr %i.cg, align 8, !tbaa !119
  %.pre2.i.i = load i32, ptr %i.cc, align 4, !tbaa !118
  br label %_ZN10btSoftBody10appendFaceEiPNS_8MaterialE.exit

_ZN10btSoftBody10appendFaceEiPNS_8MaterialE.exit: ; preds = %bb.g, %bb.h, %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE10deallocateEv.exit.i.i.i
  %i.ee = phi ptr [ %.0.i.i.i.i, %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE10deallocateEv.exit.i.i.i ], [ %i.ct, %bb.h ], [ %i.ct, %bb.g ]
  %i.ef = phi i32 [ %.pre2.i.i, %_ZN20btAlignedObjectArrayIN10btSoftBody4FaceEE10deallocateEv.exit.i.i.i ], [ %i.dg, %bb.h ], [ %i.dg, %bb.g ]
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds [72 x i8], ptr %i.ee, i64 %i.eg ; 2 uses
  store <2 x ptr> %i.df, ptr %i.eh, align 8
  %.sroa.7.0..sroa_idx10.i = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx10.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.i, i64 56, i1 false)
  %i.ei = load i32, ptr %i.cc, align 4, !tbaa !118 ; 2 uses
  %i.ej = add nsw i32 %i.ei, 1
  store i32 %i.ej, ptr %i.cc, align 4, !tbaa !118
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %i.ek = load ptr, ptr %i.cf, align 8, !tbaa !117 ; 2 uses
  %i.el = getelementptr inbounds nuw [72 x i8], ptr %i.ek, i64 %indvars.iv129 ; 2 uses
  %i.em = sext i32 %i.ei to i64
  %i.en = getelementptr inbounds [72 x i8], ptr %i.ek, i64 %i.em
  %i.eo = zext nneg i32 %.0.i69 to i64
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.eo
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !249
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %indvars.iv125
  store ptr %i.eq, ptr %i.es, align 8, !tbaa !249
  %i.et = sub nuw nsw i32 1, %.0.i69
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.eu
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !249
  %i.ex = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.cw
  store ptr %i.ew, ptr %i.ey, align 8, !tbaa !249
  %i.ez = add nuw nsw i64 %indvars.iv125, 1       ; 4 uses
  %.cmp.not = icmp eq i64 %indvars.iv125, 2
  %i.fa = and i64 %i.ez, 4294967295
  %i.fb = select i1 %.cmp.not, i64 0, i64 %i.fa
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.fb ; 2 uses
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !249 ; 8 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.el, i64 8 ; 2 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !208 ; 4 uses
  %i.fg = load i32, ptr %i.ay, align 4, !tbaa !114 ; 4 uses
  %.not21.i.i = icmp sgt i32 %i.fg, 0
  br i1 %.not21.i.i, label %.lr.ph.i.i, label %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i

.lr.ph.i.i:                                       ; preds = %_ZN10btSoftBody10appendFaceEiPNS_8MaterialE.exit
  %i.fh = load ptr, ptr %i.ci, align 8, !tbaa !113 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.fg to i64
  br label %bb.n

bb.m:                                             ; preds = %bb.o
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.fi = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %i.fi, label %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.m ] ; 2 uses
  %5 = getelementptr inbounds nuw [72 x i8], ptr %i.fh, i64 %indvars.iv.i.i ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %5, i64 16
  %7 = load ptr, ptr %6, align 8, !tbaa !249      ; 2 uses
  %8 = icmp eq ptr %7, %i.at
  %i.fj = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8            ; 2 uses
  %i.fl = icmp eq ptr %i.fk, %i.fd
  %or.cond.i.i = select i1 %8, i1 %i.fl, i1 false
  br i1 %or.cond.i.i, label %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %9 = icmp eq ptr %7, %i.fd
  %10 = icmp eq ptr %i.fk, %i.at
  %or.cond23.i.i = select i1 %9, i1 %10, i1 false
  br i1 %or.cond23.i.i, label %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit, label %bb.m

_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i: ; preds = %bb.m, %_ZN10btSoftBody10appendFaceEiPNS_8MaterialE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i82)
  %i.fm = load atomic i8, ptr @_ZGVZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_E9zerodummy acquire, align 8
  %i.fn = icmp eq i8 %i.fm, 0
  br i1 %i.fn, label %bb.p, label %_ZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_.exit.i, !prof !195

bb.p:                                             ; preds = %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i
  %i.fo = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_E9zerodummy) #34
  %.not.i.i = icmp eq i32 %i.fo, 0
  br i1 %.not.i.i, label %_ZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr null, ptr @_ZZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_E9zerodummy, align 8, !tbaa !196
  %i.fp = tail call ptr @llvm.invariant.start.p0(i64 72, ptr nonnull @_ZZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_E9zerodummy) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_E9zerodummy) #34
  br label %_ZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_.exit.i

_ZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_.exit.i: ; preds = %bb.q, %bb.p, %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i
  %.sroa.0.0.copyload6.i = load ptr, ptr @_ZZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_E9zerodummy, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %.sroa.7.i82, ptr noundef nonnull align 8 dereferenceable(52) getelementptr inbounds nuw (i8, ptr @_ZZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_E9zerodummy, i64 16), i64 52, i1 false)
  %.not.i = icmp eq ptr %i.ff, null
  br i1 %.not.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_.exit.i
  %i.fq = load ptr, ptr %i.cj, align 8, !tbaa !141
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !243
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %_ZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_.exit.i
  %.sroa.6.0.i = phi ptr [ %i.ff, %_ZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_.exit.i ], [ %i.fr, %bb.r ]
  %i.fs = load i32, ptr %i.ay, align 4, !tbaa !114 ; 7 uses
  %i.ft = load i32, ptr %i.ck, align 8, !tbaa !115
  %i.fu = icmp eq i32 %i.fs, %i.ft
  br i1 %i.fu, label %bb.t, label %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit

bb.t:                                             ; preds = %bb.s
  %.not.i.i.i83 = icmp eq i32 %i.fs, 0
  %i.fv = shl nsw i32 %i.fs, 1
  %i.fw = select i1 %.not.i.i.i83, i32 1, i32 %i.fv ; 4 uses
  %i.fx = icmp slt i32 %i.fs, %i.fw
  br i1 %i.fx, label %bb.u, label %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit

bb.u:                                             ; preds = %bb.t
  %.not.i.i.i.i84 = icmp eq i32 %i.fw, 0
  br i1 %.not.i.i.i.i84, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.fy = sext i32 %i.fw to i64
  %i.fz = mul nsw i64 %i.fy, 72
  %i.ga = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.fz, i32 noundef 16)
  %.pre.i.i85 = load i32, ptr %i.ay, align 4, !tbaa !114
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i: ; preds = %bb.v, %bb.u
  %i.gb = phi i32 [ %.pre.i.i85, %bb.v ], [ %i.fs, %bb.u ] ; 4 uses
  %.0.i.i.i.i86 = phi ptr [ %i.ga, %bb.v ], [ null, %bb.u ] ; 4 uses
  %i.gc = icmp sgt i32 %i.gb, 0
  br i1 %i.gc, label %.lr.ph.i.i.i.i90, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i

.lr.ph.i.i.i.i90:                                 ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i
  %wide.trip.count.i.i.i.i91 = zext nneg i32 %i.gb to i64 ; 2 uses
  %xtraiter159 = and i64 %wide.trip.count.i.i.i.i91, 1
  %i.gd = icmp eq i32 %i.gb, 1
  br i1 %i.gd, label %.epil.preheader158, label %.lr.ph.i.i.i.i90.new

.lr.ph.i.i.i.i90.new:                             ; preds = %.lr.ph.i.i.i.i90
  %unroll_iter162 = and i64 %wide.trip.count.i.i.i.i91, 2147483646
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %.lr.ph.i.i.i.i90.new
  %indvars.iv.i.i.i.i92 = phi i64 [ 0, %.lr.ph.i.i.i.i90.new ], [ %indvars.iv.next.i.i.i.i93.1, %bb.w ] ; 4 uses
  %niter163 = phi i64 [ 0, %.lr.ph.i.i.i.i90.new ], [ %niter163.next.1, %bb.w ]
  %i.ge = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i86, i64 %indvars.iv.i.i.i.i92
  %i.gf = load ptr, ptr %i.ci, align 8, !tbaa !113
  %i.gg = getelementptr inbounds nuw [72 x i8], ptr %i.gf, i64 %indvars.iv.i.i.i.i92
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ge, ptr noundef nonnull align 8 dereferenceable(72) %i.gg, i64 72, i1 false)
  %indvars.iv.next.i.i.i.i93 = or disjoint i64 %indvars.iv.i.i.i.i92, 1 ; 2 uses
  %i.gh = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i86, i64 %indvars.iv.next.i.i.i.i93
  %i.gi = load ptr, ptr %i.ci, align 8, !tbaa !113
  %i.gj = getelementptr inbounds nuw [72 x i8], ptr %i.gi, i64 %indvars.iv.next.i.i.i.i93
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.gh, ptr noundef nonnull align 8 dereferenceable(72) %i.gj, i64 72, i1 false)
  %indvars.iv.next.i.i.i.i93.1 = add nuw nsw i64 %indvars.iv.i.i.i.i92, 2 ; 2 uses
  %niter163.next.1 = add i64 %niter163, 2         ; 2 uses
  %niter163.ncmp.1 = icmp eq i64 %niter163.next.1, %unroll_iter162
  br i1 %niter163.ncmp.1, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa, label %bb.w

_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa: ; preds = %bb.w
  %lcmp.mod160.not = icmp eq i64 %xtraiter159, 0
  br i1 %lcmp.mod160.not, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i, label %.epil.preheader158

.epil.preheader158:                               ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i90
  %indvars.iv.i.i.i.i92.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i90 ], [ %indvars.iv.next.i.i.i.i93.1, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod161 = trunc i32 %i.gb to i1
  tail call void @llvm.assume(i1 %lcmp.mod161)
  %i.gk = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i86, i64 %indvars.iv.i.i.i.i92.epil.init
  %i.gl = load ptr, ptr %i.ci, align 8, !tbaa !113
  %i.gm = getelementptr inbounds nuw [72 x i8], ptr %i.gl, i64 %indvars.iv.i.i.i.i92.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.gk, ptr noundef nonnull align 8 dereferenceable(72) %i.gm, i64 72, i1 false)
  br label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i

_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i: ; preds = %.epil.preheader158, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i
  %i.gn = load ptr, ptr %i.ci, align 8, !tbaa !113 ; 2 uses
  %.not.i5.i.i.i87 = icmp ne ptr %i.gn, null
  %i.go = load i8, ptr %i.cl, align 8, !range !179
  %i.gp = trunc nuw i8 %i.go to i1
  %or.cond.i.i.i88 = select i1 %.not.i5.i.i.i87, i1 %i.gp, i1 false
  br i1 %or.cond.i.i.i88, label %bb.x, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i

bb.x:                                             ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.gn)
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i

_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i: ; preds = %bb.x, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i
  store i8 1, ptr %i.cl, align 8, !tbaa !112
  store ptr %.0.i.i.i.i86, ptr %i.ci, align 8, !tbaa !113
  store i32 %i.fw, ptr %i.ck, align 8, !tbaa !115
  %.pre2.i.i89 = load i32, ptr %i.ay, align 4, !tbaa !114
  br label %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit

_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit: ; preds = %bb.s, %bb.t, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i
  %i.gq = phi i32 [ %.pre2.i.i89, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i ], [ %i.fs, %bb.t ], [ %i.fs, %bb.s ]
  %i.gr = load ptr, ptr %i.ci, align 8, !tbaa !113
  %i.gs = sext i32 %i.gq to i64
  %i.gt = getelementptr inbounds [72 x i8], ptr %i.gr, i64 %i.gs ; 3 uses
  store ptr %.sroa.0.0.copyload6.i, ptr %i.gt, align 8
  %.sroa.6.0..sroa_idx.i81 = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  store ptr %.sroa.6.0.i, ptr %.sroa.6.0..sroa_idx.i81, align 8
  %.sroa.7.0..sroa_idx.i82 = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx.i82, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.i82, i64 56, i1 false)
  %i.gu = load i32, ptr %i.ay, align 4, !tbaa !114
  %i.gv = add nsw i32 %i.gu, 1                    ; 3 uses
  store i32 %i.gv, ptr %i.ay, align 4, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i82)
  %i.gw = load ptr, ptr %i.ci, align 8, !tbaa !113 ; 2 uses
  %i.gx = sext i32 %i.gv to i64
  %i.gy = getelementptr [72 x i8], ptr %i.gw, i64 %i.gx ; 3 uses
  %i.gz = getelementptr i8, ptr %i.gy, i64 -56
  store ptr %i.at, ptr %i.gz, align 8, !tbaa !249
  %i.ha = getelementptr i8, ptr %i.gy, i64 -48
  store ptr %i.fd, ptr %i.ha, align 8, !tbaa !249
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fd, i64 16
  %i.hc = load float, ptr %i.cm, align 8, !tbaa !159
  %i.hd = load float, ptr %i.hb, align 4, !tbaa !159
  %i.he = fsub float %i.hc, %i.hd                 ; 2 uses
  %i.hf = load float, ptr %i.cn, align 4, !tbaa !159
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fd, i64 20
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !159
  %i.hi = fsub float %i.hf, %i.hh                 ; 2 uses
  %i.hj = load float, ptr %i.co, align 8, !tbaa !159
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !159
  %i.hm = fsub float %i.hj, %i.hl                 ; 2 uses
  %i.hn = fmul float %i.hi, %i.hi
  %i.ho = tail call float @llvm.fmuladd.f32(float %i.he, float %i.he, float %i.hn)
  %i.hp = tail call noundef float @llvm.fmuladd.f32(float %i.hm, float %i.hm, float %i.ho)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.hp)
  %i.hq = getelementptr i8, ptr %i.gy, i64 -40
  store float %sqrt.i.i, ptr %i.hq, align 8, !tbaa !269
  store i8 1, ptr %i.cp, align 4, !tbaa !166
  %.pre134 = load ptr, ptr %i.fc, align 8, !tbaa !249
  %.pre135 = load ptr, ptr %i.fe, align 8, !tbaa !208
  br label %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit

_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit: ; preds = %bb.n, %bb.o, %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit
  %i.hr = phi ptr [ %i.gw, %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit ], [ %i.fh, %bb.o ], [ %i.fh, %bb.n ]
  %i.hs = phi i32 [ %i.gv, %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit ], [ %i.fg, %bb.o ], [ %i.fg, %bb.n ] ; 2 uses
  %i.ht = phi ptr [ %.pre135, %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit ], [ %i.ff, %bb.o ], [ %i.ff, %bb.n ] ; 2 uses
  %i.hu = phi ptr [ %.pre134, %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit ], [ %i.fd, %bb.o ], [ %i.fd, %bb.n ] ; 6 uses
  %.not21.i.i70 = icmp sgt i32 %i.hs, 0
  br i1 %.not21.i.i70, label %.lr.ph.i.i73, label %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i71

.lr.ph.i.i73:                                     ; preds = %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit
  %wide.trip.count.i.i74 = zext nneg i32 %i.hs to i64
  br label %bb.z

bb.y:                                             ; preds = %bb.aa
  %indvars.iv.next.i.i79 = add nuw nsw i64 %indvars.iv.i.i75, 1 ; 2 uses
  %i.hv = icmp eq i64 %indvars.iv.next.i.i79, %wide.trip.count.i.i74
  br i1 %i.hv, label %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i71, label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph.i.i73
  %indvars.iv.i.i75 = phi i64 [ 0, %.lr.ph.i.i73 ], [ %indvars.iv.next.i.i79, %bb.y ] ; 2 uses
  %11 = getelementptr inbounds nuw [72 x i8], ptr %i.hr, i64 %indvars.iv.i.i75 ; 2 uses
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 16
  %13 = load ptr, ptr %12, align 8, !tbaa !249    ; 2 uses
  %14 = icmp eq ptr %13, %i.av
  %i.hw = getelementptr inbounds nuw i8, ptr %11, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8            ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.hu
  %or.cond.i.i76 = select i1 %14, i1 %i.hy, i1 false
  br i1 %or.cond.i.i76, label %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit79, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %15 = icmp eq ptr %13, %i.hu
  %16 = icmp eq ptr %i.hx, %i.av
  %or.cond23.i.i78 = select i1 %15, i1 %16, i1 false
  br i1 %or.cond23.i.i78, label %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit79, label %bb.y

_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i71: ; preds = %bb.y, %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i97)
  %i.hz = load atomic i8, ptr @_ZGVZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_E9zerodummy acquire, align 8
  %i.ia = icmp eq i8 %i.hz, 0
  br i1 %i.ia, label %bb.ab, label %_ZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_.exit.i96, !prof !195

bb.ab:                                            ; preds = %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i71
  %i.ib = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_E9zerodummy) #34
  %.not.i.i117 = icmp eq i32 %i.ib, 0
  br i1 %.not.i.i117, label %_ZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_.exit.i96, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store ptr null, ptr @_ZZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_E9zerodummy, align 8, !tbaa !196
  %i.ic = tail call ptr @llvm.invariant.start.p0(i64 72, ptr nonnull @_ZZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_E9zerodummy) ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_E9zerodummy) #34
  br label %_ZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_.exit.i96

_ZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_.exit.i96: ; preds = %bb.ac, %bb.ab, %_ZNK10btSoftBody9checkLinkEPKNS_4NodeES2_.exit.i71
  %.sroa.0.0.copyload6.i97 = load ptr, ptr @_ZZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_E9zerodummy, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(52) %.sroa.7.i97, ptr noundef nonnull align 8 dereferenceable(52) getelementptr inbounds nuw (i8, ptr @_ZZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_E9zerodummy, i64 16), i64 52, i1 false)
  %.not.i98 = icmp eq ptr %i.ht, null
  br i1 %.not.i98, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %_ZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_.exit.i96
  %i.id = load ptr, ptr %i.cj, align 8, !tbaa !141
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !243
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %_ZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_.exit.i96
  %.sroa.6.0.i99 = phi ptr [ %i.ht, %_ZL14ZeroInitializeIN10btSoftBody4LinkEEvRT_.exit.i96 ], [ %i.ie, %bb.ad ]
  %i.if = load i32, ptr %i.ay, align 4, !tbaa !114 ; 7 uses
  %i.ig = load i32, ptr %i.ck, align 8, !tbaa !115
  %i.ih = icmp eq i32 %i.if, %i.ig
  br i1 %i.ih, label %bb.af, label %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit118

bb.af:                                            ; preds = %bb.ae
  %.not.i.i.i102 = icmp eq i32 %i.if, 0
  %i.ii = shl nsw i32 %i.if, 1
  %i.ij = select i1 %.not.i.i.i102, i32 1, i32 %i.ii ; 4 uses
  %i.ik = icmp slt i32 %i.if, %i.ij
  br i1 %i.ik, label %bb.ag, label %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit118

bb.ag:                                            ; preds = %bb.af
  %.not.i.i.i.i103 = icmp eq i32 %i.ij, 0
  br i1 %.not.i.i.i.i103, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i105, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.il = sext i32 %i.ij to i64
  %i.im = mul nsw i64 %i.il, 72
  %i.in = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.im, i32 noundef 16)
  %.pre.i.i104 = load i32, ptr %i.ay, align 4, !tbaa !114
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i105

_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i105: ; preds = %bb.ah, %bb.ag
  %i.io = phi i32 [ %.pre.i.i104, %bb.ah ], [ %i.if, %bb.ag ] ; 4 uses
  %.0.i.i.i.i106 = phi ptr [ %i.in, %bb.ah ], [ null, %bb.ag ] ; 4 uses
  %i.ip = icmp sgt i32 %i.io, 0
  br i1 %i.ip, label %.lr.ph.i.i.i.i112, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i107

.lr.ph.i.i.i.i112:                                ; preds = %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i105
  %wide.trip.count.i.i.i.i113 = zext nneg i32 %i.io to i64 ; 2 uses
  %xtraiter165 = and i64 %wide.trip.count.i.i.i.i113, 1
  %i.iq = icmp eq i32 %i.io, 1
  br i1 %i.iq, label %.epil.preheader164, label %.lr.ph.i.i.i.i112.new

.lr.ph.i.i.i.i112.new:                            ; preds = %.lr.ph.i.i.i.i112
  %unroll_iter168 = and i64 %wide.trip.count.i.i.i.i113, 2147483646
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.lr.ph.i.i.i.i112.new
  %indvars.iv.i.i.i.i114 = phi i64 [ 0, %.lr.ph.i.i.i.i112.new ], [ %indvars.iv.next.i.i.i.i115.1, %bb.ai ] ; 4 uses
  %niter169 = phi i64 [ 0, %.lr.ph.i.i.i.i112.new ], [ %niter169.next.1, %bb.ai ]
  %i.ir = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i106, i64 %indvars.iv.i.i.i.i114
  %i.is = load ptr, ptr %i.ci, align 8, !tbaa !113
  %i.it = getelementptr inbounds nuw [72 x i8], ptr %i.is, i64 %indvars.iv.i.i.i.i114
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ir, ptr noundef nonnull align 8 dereferenceable(72) %i.it, i64 72, i1 false)
  %indvars.iv.next.i.i.i.i115 = or disjoint i64 %indvars.iv.i.i.i.i114, 1 ; 2 uses
  %i.iu = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i106, i64 %indvars.iv.next.i.i.i.i115
  %i.iv = load ptr, ptr %i.ci, align 8, !tbaa !113
  %i.iw = getelementptr inbounds nuw [72 x i8], ptr %i.iv, i64 %indvars.iv.next.i.i.i.i115
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.iu, ptr noundef nonnull align 8 dereferenceable(72) %i.iw, i64 72, i1 false)
  %indvars.iv.next.i.i.i.i115.1 = add nuw nsw i64 %indvars.iv.i.i.i.i114, 2 ; 2 uses
  %niter169.next.1 = add i64 %niter169, 2         ; 2 uses
  %niter169.ncmp.1 = icmp eq i64 %niter169.next.1, %unroll_iter168
  br i1 %niter169.ncmp.1, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i107.loopexit.unr-lcssa, label %bb.ai

_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i107.loopexit.unr-lcssa: ; preds = %bb.ai
  %lcmp.mod166.not = icmp eq i64 %xtraiter165, 0
  br i1 %lcmp.mod166.not, label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i107, label %.epil.preheader164

.epil.preheader164:                               ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i107.loopexit.unr-lcssa, %.lr.ph.i.i.i.i112
  %indvars.iv.i.i.i.i114.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i112 ], [ %indvars.iv.next.i.i.i.i115.1, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i107.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod167 = trunc i32 %i.io to i1
  tail call void @llvm.assume(i1 %lcmp.mod167)
  %i.ix = getelementptr inbounds nuw [72 x i8], ptr %.0.i.i.i.i106, i64 %indvars.iv.i.i.i.i114.epil.init
  %i.iy = load ptr, ptr %i.ci, align 8, !tbaa !113
  %i.iz = getelementptr inbounds nuw [72 x i8], ptr %i.iy, i64 %indvars.iv.i.i.i.i114.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.ix, ptr noundef nonnull align 8 dereferenceable(72) %i.iz, i64 72, i1 false)
  br label %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i107

_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i107: ; preds = %.epil.preheader164, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i107.loopexit.unr-lcssa, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE8allocateEi.exit.i.i.i105
  %i.ja = load ptr, ptr %i.ci, align 8, !tbaa !113 ; 2 uses
  %.not.i5.i.i.i108 = icmp ne ptr %i.ja, null
  %i.jb = load i8, ptr %i.cl, align 8, !range !179
  %i.jc = trunc nuw i8 %i.jb to i1
  %or.cond.i.i.i109 = select i1 %.not.i5.i.i.i108, i1 %i.jc, i1 false
  br i1 %or.cond.i.i.i109, label %bb.aj, label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i110

bb.aj:                                            ; preds = %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i107
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ja)
  br label %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i110

_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i110: ; preds = %bb.aj, %_ZNK20btAlignedObjectArrayIN10btSoftBody4LinkEE4copyEiiPS1_.exit.i.i.i107
  store i8 1, ptr %i.cl, align 8, !tbaa !112
  store ptr %.0.i.i.i.i106, ptr %i.ci, align 8, !tbaa !113
  store i32 %i.ij, ptr %i.ck, align 8, !tbaa !115
  %.pre2.i.i111 = load i32, ptr %i.ay, align 4, !tbaa !114
  br label %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit118

_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit118: ; preds = %bb.ae, %bb.af, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i110
  %i.jd = phi i32 [ %.pre2.i.i111, %_ZN20btAlignedObjectArrayIN10btSoftBody4LinkEE10deallocateEv.exit.i.i.i110 ], [ %i.if, %bb.af ], [ %i.if, %bb.ae ]
  %i.je = load ptr, ptr %i.ci, align 8, !tbaa !113
  %i.jf = sext i32 %i.jd to i64
  %i.jg = getelementptr inbounds [72 x i8], ptr %i.je, i64 %i.jf ; 3 uses
  store ptr %.sroa.0.0.copyload6.i97, ptr %i.jg, align 8
  %.sroa.6.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %i.jg, i64 8
  store ptr %.sroa.6.0.i99, ptr %.sroa.6.0..sroa_idx.i100, align 8
  %.sroa.7.0..sroa_idx.i101 = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.0..sroa_idx.i101, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.7.i97, i64 56, i1 false)
  %i.jh = load i32, ptr %i.ay, align 4, !tbaa !114
  %i.ji = add nsw i32 %i.jh, 1                    ; 2 uses
  store i32 %i.ji, ptr %i.ay, align 4, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i97)
  %i.jj = load ptr, ptr %i.ci, align 8, !tbaa !113
  %i.jk = sext i32 %i.ji to i64
  %i.jl = getelementptr [72 x i8], ptr %i.jj, i64 %i.jk ; 3 uses
  %i.jm = getelementptr i8, ptr %i.jl, i64 -56
  store ptr %i.av, ptr %i.jm, align 8, !tbaa !249
  %i.jn = getelementptr i8, ptr %i.jl, i64 -48
  store ptr %i.hu, ptr %i.jn, align 8, !tbaa !249
  %i.jo = getelementptr inbounds nuw i8, ptr %i.hu, i64 16
  %i.jp = load float, ptr %i.cq, align 8, !tbaa !159
  %i.jq = load float, ptr %i.jo, align 4, !tbaa !159
  %i.jr = fsub float %i.jp, %i.jq                 ; 2 uses
  %i.js = load float, ptr %i.cr, align 4, !tbaa !159
  %i.jt = getelementptr inbounds nuw i8, ptr %i.hu, i64 20
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !159
  %i.jv = fsub float %i.js, %i.ju                 ; 2 uses
  %i.jw = load float, ptr %i.cs, align 8, !tbaa !159
  %i.jx = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !159
  %i.jz = fsub float %i.jw, %i.jy                 ; 2 uses
  %i.ka = fmul float %i.jv, %i.jv
  %i.kb = tail call float @llvm.fmuladd.f32(float %i.jr, float %i.jr, float %i.ka)
  %i.kc = tail call noundef float @llvm.fmuladd.f32(float %i.jz, float %i.jz, float %i.kb)
  %sqrt.i.i72 = tail call noundef float @llvm.sqrt.f32(float %i.kc)
  %i.kd = getelementptr i8, ptr %i.jl, i64 -40
  store float %sqrt.i.i72, ptr %i.kd, align 8, !tbaa !269
  store i8 1, ptr %i.cp, align 4, !tbaa !166
  br label %_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit79

_ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit79: ; preds = %bb.aa, %bb.z, %._ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit79_crit_edge, %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit118
  %indvars.iv.next126.pre-phi = phi i64 [ %.pre136.a, %._ZN10btSoftBody10appendLinkEPNS_4NodeES1_PNS_8MaterialEb.exit79_crit_edge ], [ %i.ez, %_ZN10btSoftBody10appendLinkEiPNS_8MaterialE.exit118 ], [ %i.ez, %bb.z ], [ %i.ez, %bb.aa ] ; 2 uses
  %exitcond128.not = icmp eq i64 %indvars.iv.next126.pre-phi, 3
  br i1 %exitcond128.not, label %bb.e, label %bb.f

._crit_edge124:                                   ; preds = %bb.e, %._crit_edge
  br i1 %.0.lcssa, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge124
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 2 uses
  %i.kf = getelementptr i8, ptr %i.as, i64 -136
  %i.kg = load ptr, ptr %i.kf, align 8, !tbaa !207
  tail call void @_ZN6btDbvt6removeEP10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(64) %i.ke, ptr noundef %i.kg)
  %i.kh = getelementptr i8, ptr %i.as, i64 -16
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !207
  tail call void @_ZN6btDbvt6removeEP10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(64) %i.ke, ptr noundef %i.ki)
  %i.kj = load i32, ptr %i.ap, align 4, !tbaa !110
  %i.kk = add nsw i32 %i.kj, -2
  store i32 %i.kk, ptr %i.ap, align 4, !tbaa !110
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %._crit_edge124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret i1 %.0.lcssa
}

; Function Attrs: uwtable
define dso_local noundef zeroext i1 @_ZN10btSoftBody7rayTestERK9btVector3S2_RNS_8sRayCastE(ptr noundef nonnull align 8 dereferenceable(1496) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 20)) %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.b = load i32, ptr %i.a, align 4, !tbaa !118
  %.not = icmp ne i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = icmp eq ptr %i.d, null
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN10btSoftBody18initializeFaceTreeEv(ptr noundef nonnull align 8 dereferenceable(1496) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %0, ptr %3, align 8, !tbaa !464
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store float 1.000000e+00, ptr %i.f, align 8, !tbaa !467
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i32 0, ptr %i.g, align 8, !tbaa !468
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  store i32 -1, ptr %i.h, align 4, !tbaa !469
  %i.i = tail call noundef i32 @_ZNK10btSoftBody7rayTestERK9btVector3S2_RfRNS_8eFeature1_ERib(ptr noundef nonnull align 8 dereferenceable(1496) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 4 dereferenceable(4) %i.h, i1 noundef zeroext false)
  %i.j = icmp ne i32 %i.i, 0
  ret i1 %i.j
}

; Function Attrs: uwtable
define dso_local void @_ZN10btSoftBody18initializeFaceTreeEv(ptr noundef nonnull align 8 dereferenceable(1496) %0) local_unnamed_addr #3 align 2 {
bb.a:
  %1 = alloca %struct.btDbvtAabbMm, align 16      ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  tail call void @_ZN6btDbvt5clearEv(ptr noundef nonnull align 8 dereferenceable(64) %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 884 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !118
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 896
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !tbaa !117
  %i.h = getelementptr inbounds nuw [72 x i8], ptr %i.g, i64 %indvars.iv ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #34
  call void @llvm.experimental.noalias.scope.decl(metadata !470)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !249, !noalias !470
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !249, !noalias !470
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !249, !noalias !470
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.experimental.noalias.scope.decl(metadata !473)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !197
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false)
  %i.r = load <4 x float>, ptr %1, align 16, !alias.scope !476 ; 2 uses
  %i.s = load <4 x float>, ptr %i.n, align 4, !tbaa !159, !noalias !476 ; 4 uses
  %i.t = fcmp olt <4 x float> %i.s, %i.r
  %i.u = select <4 x i1> %i.t, <4 x float> %i.s, <4 x float> %i.r ; 2 uses
  %i.v = load <4 x float>, ptr %i.q, align 4, !tbaa !159, !noalias !476 ; 4 uses
  %i.w = fcmp olt <4 x float> %i.v, %i.u
  %i.x = select <4 x i1> %i.w, <4 x float> %i.v, <4 x float> %i.u
  store <4 x float> %i.x, ptr %1, align 16, !alias.scope !470
  %i.y = load <4 x float>, ptr %i.f, align 16, !alias.scope !476 ; 2 uses
  %i.z = fcmp olt <4 x float> %i.y, %i.s
  %i.aa = select <4 x i1> %i.z, <4 x float> %i.s, <4 x float> %i.y ; 2 uses
  %i.ab = fcmp olt <4 x float> %i.aa, %i.v
  %i.ac = select <4 x i1> %i.ab, <4 x float> %i.v, <4 x float> %i.aa
  %i.ad = fadd <4 x float> %i.ac, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -0.000000e+00>
  store <4 x float> %i.ad, ptr %i.f, align 16, !alias.scope !470
  %i.ae = call noundef ptr @_ZN6btDbvt6insertERK12btDbvtAabbMmPv(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(32) %1, ptr noundef nonnull %i.h)
  %i.af = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !257
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = load i32, ptr %i.b, align 4, !tbaa !118
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp slt i64 %indvars.iv.next, %i.ah
  br i1 %i.ai, label %bb.b, label %._crit_edge
}

; Function Attrs: uwtable
define dso_local noundef i32 @_ZNK10btSoftBody7rayTestERK9btVector3S2_RfRNS_8eFeature1_ERib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1496) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %5, i1 noundef zeroext %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %class.btVector3, align 8           ; 6 uses
  %8 = alloca %"struct.btSoftBody::RayFromToCaster", align 8 ; 11 uses
  br i1 %6, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1208
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !477  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !159
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load float, ptr %i.f, align 4, !tbaa !159
  %i.h = fsub float %i.e, %i.g                    ; 4 uses
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.h, i64 0
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.i, align 8
  %i.j = load <2 x float>, ptr %2, align 4, !tbaa !159
  %i.k = load <2 x float>, ptr %1, align 4, !tbaa !159
  %i.l = fsub <2 x float> %i.j, %i.k              ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.l, %i.l
  %i.m = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.n = extractelement <2 x float> %i.l, i64 0   ; 2 uses
  %i.o = tail call float @llvm.fmuladd.f32(float %i.n, float %i.n, float %i.m)
  %i.p = tail call noundef float @llvm.fmuladd.f32(float %i.h, float %i.h, float %i.o)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.p)
  %i.q = fdiv float 1.000000e+00, %sqrt.i.i       ; 2 uses
  %i.r = insertelement <2 x float> poison, float %i.q, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = fmul <2 x float> %i.l, %i.s
  store <2 x float> %i.t, ptr %7, align 8, !tbaa !159
  %i.u = fmul float %i.h, %i.q
  store float %i.u, ptr %i.i, align 8, !tbaa !159
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.w = load i32, ptr %i.v, align 4, !tbaa !118  ; 2 uses
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 2 uses
  %wide.trip.count41 = zext nneg i32 %i.w to i64  ; 2 uses
  br i1 %6, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.lr.ph.split.us
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %.lr.ph.split.us ], [ 0, %.lr.ph ] ; 2 uses
  %.035.us = phi i32 [ %.1.us, %.lr.ph.split.us ], [ 0, %.lr.ph ]
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !117
end_hunk_2
