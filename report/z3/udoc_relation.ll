Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/udoc_relation?download=true
inline.NumInlined: 1549
inline.NumDeleted: 521
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 32
begin_hunk_0_@_ZN7datalog11udoc_plugin7join_fnC2ERS0_RKNS_13udoc_relationES5_jPKjS7_:bb.a
_ZN7datalog11udoc_plugin2dmERKNS_18relation_signatureE.exit: ; preds = %_ZN7datalog11udoc_plugin18num_signature_bitsERKNS_18relation_signatureE.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.q, ptr %i.r, align 8, !tbaa !40
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !150, !nonnull !88, !align !89
  store ptr %i.u, ptr %i.s, align 8, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !150, !nonnull !88, !align !89
  store ptr %i.x, ptr %i.v, align 8, !tbaa !40
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZNK7datalog13udoc_relation20expand_column_vectorER7svectorIjjEPKS0_(ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.y, ptr noundef null)
          to label %bb.c unwind label %.loopexit.split-lp

bb.c:                                             ; preds = %_ZN7datalog11udoc_plugin2dmERKNS_18relation_signatureE.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZNK7datalog13udoc_relation20expand_column_vectorER7svectorIjjEPKS0_(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef null)
          to label %bb.d unwind label %.loopexit.split-lp

bb.d:                                             ; preds = %bb.c
  ret void

.loopexit:                                        ; preds = %bb.b
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp:                               ; preds = %_ZN7datalog11udoc_plugin2dmERKNS_18relation_signatureE.exit, %bb.c, %_ZN7datalog11udoc_plugin18num_signature_bitsERKNS_18relation_signatureE.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  tail call void @_ZN7datalog17tr_infrastructureINS_15relation_traitsEE18convenient_join_fnD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) #22
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN7datalog11udoc_plugin13mk_project_fnERKNS_13relation_baseEjPKj(ptr nofree noundef nonnull readnone align 8 captures(address) dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(28) %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165, !nonnull !88, !align !89
  %i.c = icmp eq ptr %i.b, %0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 40) ; 2 uses
  %i.e = tail call ptr @__dynamic_cast(ptr nonnull readonly align 8 dereferenceable(28) %1, ptr nonnull @_ZTIN7datalog13relation_baseE, ptr nonnull @_ZTIN7datalog13udoc_relationE, i64 0) #22 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %_ZN7datalog11udoc_plugin3getERKNS_13relation_baseE.exit

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_bad_cast() #23
  unreachable

_ZN7datalog11udoc_plugin3getERKNS_13relation_baseE.exit: ; preds = %bb.b
  tail call void @_ZN7datalog11udoc_plugin10project_fnC2ERKNS_13udoc_relationEjPKj(ptr noundef nonnull align 8 dereferenceable(40) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %i.e, i32 noundef %2, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN7datalog11udoc_plugin3getERKNS_13relation_baseE.exit
  %.0 = phi ptr [ %i.d, %_ZN7datalog11udoc_plugin3getERKNS_13relation_baseE.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7datalog11udoc_plugin10project_fnC2ERKNS_13udoc_relationEjPKj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7datalog17tr_infrastructureINS_15relation_traitsEE21convenient_project_fnE, i64 16), ptr %0, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr null, ptr %i.c, align 8, !tbaa !48
  %.not.i.i.i = icmp eq i32 %2, 0
  br i1 %.not.i.i.i, label %_ZN7svectorIjjEC2EjPKj.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.a
  %wide.trip.count.i.i.i = zext i32 %2 to i64
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %i.d = phi ptr [ null, %.lr.ph.preheader.i.i.i ], [ %i.l, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i.i ] ; 4 uses
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i.i ] ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i.i.i
  %i.f = icmp eq ptr %i.d, null
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !24   ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.d, i64 -8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !24
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i.i

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  invoke void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %.noexc.i unwind label %bb.d

.noexc.i:                                         ; preds = %bb.c
  %.pre.i.i.i.i = load ptr, ptr %i.c, align 8, !tbaa !48 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i.i, i64 -4
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !24
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i.i

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i.i:      ; preds = %.noexc.i, %bb.b
  %i.l = phi ptr [ %.pre.i.i.i.i, %.noexc.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.m = phi i32 [ %.pre2.i.i.i.i, %.noexc.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.o = zext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.o
  %i.q = load i32, ptr %i.e, align 4, !tbaa !24
  store i32 %i.q, ptr %i.p, align 4, !tbaa !24
  %i.r = add i32 %i.m, 1
  store i32 %i.r, ptr %i.n, align 4, !tbaa !24
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN7svectorIjjEC2EjPKj.exit.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZN7svectorIjjEC2EjPKj.exit.i:                    ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i.i, %bb.a
  invoke void @_ZN7datalog17tr_infrastructureINS_15relation_traitsEE14signature_base12from_projectERKNS_18relation_signatureEjPKjRS4_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN7datalog17tr_infrastructureINS_15relation_traitsEE21convenient_project_fnC2ERKNS_18relation_signatureEjPKj.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZN7svectorIjjEC2EjPKj.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6vectorIjLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #22
  br label %bb.f

common.resume:                                    ; preds = %bb.j, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.f ], [ %.pn.pn, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.t, %bb.e ], [ %i.s, %bb.d ]
  tail call void @_ZN7datalog17tr_infrastructureINS_15relation_traitsEE25convenient_transformer_fnD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %0) #22
  br label %common.resume

_ZN7datalog17tr_infrastructureINS_15relation_traitsEE21convenient_project_fnC2ERKNS_18relation_signatureEjPKj.exit: ; preds = %_ZN7svectorIjjEC2EjPKj.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7datalog11udoc_plugin10project_fnE, i64 16), ptr %0, align 8, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  invoke void @_ZNK7datalog13udoc_relation20expand_column_vectorER7svectorIjjEPKS0_(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef null)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN7datalog17tr_infrastructureINS_15relation_traitsEE21convenient_project_fnC2ERKNS_18relation_signatureEjPKj.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !150, !nonnull !88, !align !89
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 520
  %i.y = load i32, ptr %i.x, align 8, !tbaa !206
  %i.z = lshr i32 %i.y, 1
  invoke void @_ZN10bit_vector6resizeEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i32 noundef %i.z, i1 noundef zeroext false)
          to label %.preheader unwind label %bb.i

.preheader:                                       ; preds = %bb.g
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !48  ; 3 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.critedge, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph

_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph:            ; preds = %.preheader
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !24
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !230
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit

.critedge:                                        ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit, %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph, %.preheader
  ret void

bb.h:                                             ; preds = %_ZN7datalog17tr_infrastructureINS_15relation_traitsEE21convenient_project_fnC2ERKNS_18relation_signatureEjPKj.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

_ZNK6vectorIjLb0EjE4sizeEv.exit:                  ; preds = %.lr.ph, %_ZNK6vectorIjLb0EjE4sizeEv.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK6vectorIjLb0EjE4sizeEv.exit ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !24 ; 2 uses
  %i.ak = lshr i32 %i.aj, 5
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.al ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !24
  %i.ao = and i32 %i.aj, 31
  %i.ap = shl nuw i32 1, %i.ao
  %i.aq = or i32 %i.ap, %i.an
  store i32 %i.aq, ptr %i.am, align 4, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ar = load i32, ptr %i.ac, align 4, !tbaa !24
  %i.as = zext i32 %i.ar to i64
  %i.at = icmp samesign ult i64 %indvars.iv.next, %i.as
  br i1 %i.at, label %_ZNK6vectorIjLb0EjE4sizeEv.exit, label %.critedge

bb.j:                                             ; preds = %bb.i, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.h ], [ %i.ah, %bb.i ]
  tail call void @_ZN10bit_vectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.u) #22
  tail call void @_ZN7datalog17tr_infrastructureINS_15relation_traitsEE21convenient_project_fnD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #22
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN7datalog11udoc_plugin12mk_rename_fnERKNS_13relation_baseEjPKj(ptr nofree noundef nonnull readnone align 8 captures(address) dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(28) %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165, !nonnull !88, !align !89
  %i.c = icmp eq ptr %i.b, %0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 32) ; 2 uses
  %i.e = tail call ptr @__dynamic_cast(ptr nonnull readonly align 8 dereferenceable(28) %1, ptr nonnull @_ZTIN7datalog13relation_baseE, ptr nonnull @_ZTIN7datalog13udoc_relationE, i64 0) #22 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %_ZN7datalog11udoc_plugin3getERKNS_13relation_baseE.exit

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_bad_cast() #23
  unreachable

_ZN7datalog11udoc_plugin3getERKNS_13relation_baseE.exit: ; preds = %bb.b
  tail call void @_ZN7datalog11udoc_plugin9rename_fnC2ERKNS_13udoc_relationEjPKj(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(128) %i.e, i32 noundef %2, ptr noundef %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN7datalog11udoc_plugin3getERKNS_13relation_baseE.exit
  %.0 = phi ptr [ %i.d, %_ZN7datalog11udoc_plugin3getERKNS_13relation_baseE.exit ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7datalog11udoc_plugin9rename_fnC2ERKNS_13udoc_relationEjPKj(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %class.svector, align 8             ; 11 uses
  %5 = alloca %class.svector, align 8             ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  tail call void @_ZN7datalog17tr_infrastructureINS_15relation_traitsEE20convenient_rename_fnC2ERKNS_18relation_signatureEjPKj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %2, ptr noundef %3)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7datalog11udoc_plugin9rename_fnE, i64 16), ptr %0, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr null, ptr %i.b, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !165, !nonnull !88, !align !89
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr null, ptr %4, align 8, !tbaa !48
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  store ptr null, ptr %5, align 8, !tbaa !48
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %i.g = phi ptr [ null, %bb.a ], [ %i.z, %bb.i ] ; 4 uses
  %storemerge = phi i32 [ 0, %bb.a ], [ %i.af, %bb.i ] ; 3 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !48   ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !24
  %i.l = add i32 %i.k, -1
  %i.m = zext i32 %i.l to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0.i.i.i = phi i64 [ %i.m, %bb.c ], [ 4294967295, %bb.b ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.0.i.i.i
  %i.o = load i32, ptr %i.n, align 4, !tbaa !24
  %i.p = icmp ult i32 %storemerge, %i.o
  br i1 %i.p, label %bb.f, label %.preheader85

.preheader85:                                     ; preds = %bb.d
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.critedge.preheader, label %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit

bb.e:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.f:                                             ; preds = %bb.d
  %i.t = icmp eq ptr %i.g, null
  br i1 %i.t, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds i8, ptr %i.g, i64 -4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !24   ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.g, i64 -8
  %i.x = load i32, ptr %i.w, align 4, !tbaa !24
  %i.y = icmp eq i32 %i.v, %i.x
  br i1 %i.y, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  invoke void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !48 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !24
  br label %bb.i

bb.i:                                             ; preds = %.noexc, %bb.g
  %i.z = phi ptr [ %.pre.i, %.noexc ], [ %i.g, %bb.g ] ; 3 uses
  %i.aa = phi i32 [ %.pre2.i, %.noexc ], [ %i.v, %bb.g ] ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.z, i64 -4
  %i.ac = zext i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %i.ac
  store i32 %storemerge, ptr %i.ad, align 4, !tbaa !24
  %i.ae = add i32 %i.aa, 1
  store i32 %i.ae, ptr %i.ab, align 4, !tbaa !24
  %i.af = add nuw i32 %storemerge, 1
  br label %bb.b, !llvm.loop !517

.critedge.preheader:                              ; preds = %bb.n, %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit, %.preheader85
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.critedge.preheader
  %i.ag = load ptr, ptr %4, align 8, !tbaa !48    ; 2 uses
  %i.ah = zext i32 %2 to i64                      ; 2 uses
  %.not134 = icmp eq i32 %2, 1
  br i1 %.not134, label %.critedge.peel, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.ai = add nsw i64 %i.ah, -2
  br label %.critedge

_ZNK6vectorIP4sortLb0EjE4sizeEv.exit:             ; preds = %.preheader85, %bb.n
  %i.aj = phi ptr [ %i.av, %bb.n ], [ %i.q, %.preheader85 ] ; 2 uses
  %storemerge5088 = phi i32 [ %i.bc, %bb.n ], [ 0, %.preheader85 ] ; 3 uses
  %i.ak = getelementptr inbounds i8, ptr %i.aj, i64 -4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !24
  %i.am = icmp ult i32 %storemerge5088, %i.al
  br i1 %i.am, label %bb.k, label %.critedge.preheader

bb.j:                                             ; preds = %bb.m
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.k:                                             ; preds = %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit
  %i.ao = load ptr, ptr %4, align 8, !tbaa !48    ; 4 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !24 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ao, i64 -8
  %i.at = load i32, ptr %i.as, align 4, !tbaa !24
  %i.au = icmp eq i32 %i.ar, %i.at
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  invoke void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc58 unwind label %bb.j

.noexc58:                                         ; preds = %bb.m
  %.pre.i55 = load ptr, ptr %4, align 8, !tbaa !48 ; 2 uses
  %.phi.trans.insert.i56 = getelementptr inbounds i8, ptr %.pre.i55, i64 -4
  %.pre2.i57 = load i32, ptr %.phi.trans.insert.i56, align 4, !tbaa !24
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !23
  br label %bb.n

bb.n:                                             ; preds = %.noexc58, %bb.l
  %i.av = phi ptr [ %.pre, %.noexc58 ], [ %i.aj, %bb.l ] ; 2 uses
  %i.aw = phi i32 [ %.pre2.i57, %.noexc58 ], [ %i.ar, %bb.l ] ; 2 uses
  %i.ax = phi ptr [ %.pre.i55, %.noexc58 ], [ %i.ao, %bb.l ] ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -4
  %i.az = zext i32 %i.aw to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ax, i64 %i.az
  store i32 %storemerge5088, ptr %i.ba, align 4, !tbaa !24
  %i.bb = add i32 %i.aw, 1
  store i32 %i.bb, ptr %i.ay, align 4, !tbaa !24
  %i.bc = add nuw i32 %storemerge5088, 1
  %i.bd = icmp eq ptr %i.av, null
  br i1 %i.bd, label %.critedge.preheader, label %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit, !llvm.loop !518

.critedge.peel:                                   ; preds = %.lr.ph, %.critedge
  %i.be = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %indvars.iv.next.peel = add nuw nsw i64 %i.be, 1 ; 2 uses
  %i.bf = icmp eq i64 %indvars.iv.next.peel, %i.ah
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.be
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !24
  %i.bi = select i1 %i.bf, i64 0, i64 %indvars.iv.next.peel
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bi
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !24
end_hunk_0
begin_hunk_1_@_ZN7datalog11udoc_plugin18mk_join_project_fnERKNS_13relation_baseES3_jPKjS5_jS5_:bb.a
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  %i.z = load i32, ptr %i.y, align 4, !tbaa !24
  %.not31 = icmp eq i32 %i.x, %i.z
  br i1 %.not31, label %bb.g, label %.thread

._crit_edge:                                      ; preds = %bb.g, %.preheader
  %i.aa = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 8) ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7datalog11udoc_plugin19join_project_and_fnE, i64 16), ptr %i.aa, align 8, !tbaa !17
  br label %bb.k

.thread:                                          ; preds = %.lr.ph, %bb.h, %bb.b, %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit, %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit33
  %i.ab = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 56) ; 2 uses
  %i.ac = tail call ptr @__dynamic_cast(ptr nonnull readonly align 8 dereferenceable(28) %1, ptr nonnull @_ZTIN7datalog13relation_baseE, ptr nonnull @_ZTIN7datalog13udoc_relationE, i64 0) #22 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.i, label %_ZN7datalog11udoc_plugin3getERKNS_13relation_baseE.exit

bb.i:                                             ; preds = %.thread
  tail call void @__cxa_bad_cast() #23
  unreachable

_ZN7datalog11udoc_plugin3getERKNS_13relation_baseE.exit: ; preds = %.thread
  %i.ae = tail call ptr @__dynamic_cast(ptr nonnull readonly align 8 dereferenceable(28) %2, ptr nonnull @_ZTIN7datalog13relation_baseE, ptr nonnull @_ZTIN7datalog13udoc_relationE, i64 0) #22 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.j, label %_ZN7datalog11udoc_plugin3getERKNS_13relation_baseE.exit34

bb.j:                                             ; preds = %_ZN7datalog11udoc_plugin3getERKNS_13relation_baseE.exit
  tail call void @__cxa_bad_cast() #23
  unreachable

_ZN7datalog11udoc_plugin3getERKNS_13relation_baseE.exit34: ; preds = %_ZN7datalog11udoc_plugin3getERKNS_13relation_baseE.exit
  tail call void @_ZN7datalog11udoc_plugin15join_project_fnC2ERKNS_13udoc_relationES4_jPKjS6_jS6_(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef nonnull align 8 dereferenceable(128) %i.ac, ptr noundef nonnull align 8 dereferenceable(128) %i.ae, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZN7datalog11udoc_plugin3getERKNS_13relation_baseE.exit34, %._crit_edge
  %.028 = phi ptr [ %i.aa, %._crit_edge ], [ %i.ab, %_ZN7datalog11udoc_plugin3getERKNS_13relation_baseE.exit34 ], [ null, %bb.a ]
  ret ptr %.028
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7datalog11udoc_plugin15join_project_fnC2ERKNS_13udoc_relationES4_jPKjS6_jS6_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %class.svector, align 8             ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @_ZN7datalog17tr_infrastructureINS_15relation_traitsEE26convenient_join_project_fnC2ERKNS_18relation_signatureES6_jPKjS8_jS8_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7datalog11udoc_plugin15join_project_fnE, i64 16), ptr %0, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !48   ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !24
  %i.i = add i32 %i.h, -1
  %i.j = zext i32 %i.i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i.i.i = phi i64 [ %i.j, %bb.b ], [ 4294967295, %bb.a ]
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %.0.i.i.i
  %i.l = load i32, ptr %i.k, align 4, !tbaa !24
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !48   ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !24
  %i.r = add i32 %i.q, -1
  %i.s = zext i32 %i.r to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i.i31 = phi i64 [ %i.s, %bb.d ], [ 4294967295, %bb.c ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %.0.i.i.i31
  %i.u = load i32, ptr %i.t, align 4, !tbaa !24
  %i.v = add i32 %i.u, %i.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  store ptr null, ptr %8, align 8, !tbaa !48
  %.not.i.i = icmp eq i32 %6, 0
  br i1 %.not.i.i, label %_ZN7svectorIjjEC2EjPKj.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.e
  %wide.trip.count.i.i = zext i32 %6 to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i, %.lr.ph.preheader.i.i
  %i.w = phi ptr [ null, %.lr.ph.preheader.i.i ], [ %i.ae, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i ] ; 4 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %indvars.iv.i.i
  %i.y = icmp eq ptr %i.w, null
  br i1 %i.y, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.z = getelementptr inbounds i8, ptr %i.w, i64 -4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !24  ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !24
  %i.ad = icmp eq i32 %i.aa, %i.ac
  br i1 %i.ad, label %bb.g, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i
  invoke void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.g
  %.pre.i.i.i = load ptr, ptr %8, align 8, !tbaa !48 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !24
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i:        ; preds = %.noexc, %bb.f
  %i.ae = phi ptr [ %.pre.i.i.i, %.noexc ], [ %i.w, %bb.f ] ; 3 uses
  %i.af = phi i32 [ %.pre2.i.i.i, %.noexc ], [ %i.aa, %bb.f ] ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 -4
  %i.ah = zext i32 %i.af to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ae, i64 %i.ah
  %i.aj = load i32, ptr %i.x, align 4, !tbaa !24
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !24
  %i.ak = add i32 %i.af, 1
  store i32 %i.ak, ptr %i.ag, align 4, !tbaa !24
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN7svectorIjjEC2EjPKj.exit, label %.lr.ph.i.i, !llvm.loop !4

_ZN7svectorIjjEC2EjPKj.exit:                      ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i, %bb.e
  invoke void @_ZNK7datalog13udoc_relation20expand_column_vectorER7svectorIjjEPKS0_(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %2)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %_ZN7svectorIjjEC2EjPKj.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZNK7datalog13udoc_relation20expand_column_vectorER7svectorIjjEPKS0_(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef null)
          to label %bb.i unwind label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZNK7datalog13udoc_relation20expand_column_vectorER7svectorIjjEPKS0_(ptr noundef nonnull align 8 dereferenceable(128) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef null)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN10bit_vector6resizeEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i32 noundef %i.v, i1 noundef zeroext false)
          to label %.preheader unwind label %bb.m

.preheader:                                       ; preds = %bb.j
  %i.an = load ptr, ptr %8, align 8, !tbaa !48    ; 4 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %_ZN6vectorIjLb0EjED2Ev.exit, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.lr.ph

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.lr.ph:     ; preds = %.preheader
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 -4 ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !24
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %.split, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.lr.ph
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !230
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread

.split:                                           ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread.lr.ph
  %i.at = getelementptr inbounds i8, ptr %i.an, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.at)
          to label %_ZN6vectorIjLb0EjED2Ev.exit unwind label %bb.k

bb.k:                                             ; preds = %.split
  %i.au = landingpad { ptr, i32 }
          catch ptr null
  %i.av = extractvalue { ptr, i32 } %i.au, 0
  call void @__clang_call_terminate(ptr %i.av) #24
  unreachable

_ZN6vectorIjLb0EjED2Ev.exit:                      ; preds = %.preheader, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  ret void

bb.l:                                             ; preds = %bb.g
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.m:                                             ; preds = %bb.j, %bb.i, %bb.h, %_ZN7svectorIjjEC2EjPKj.exit
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6vectorIjLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #22
  br label %bb.n

_ZNK6vectorIjLb0EjE4sizeEv.exit.thread:           ; preds = %.lr.ph, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !24 ; 2 uses
  %i.ba = lshr i32 %i.az, 5
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !24
  %i.be = and i32 %i.az, 31
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = or i32 %i.bf, %i.bd
  store i32 %i.bg, ptr %i.bc, align 4, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bh = load i32, ptr %i.ap, align 4, !tbaa !24
  %i.bi = zext i32 %i.bh to i64
  %i.bj = icmp samesign ult i64 %indvars.iv.next, %i.bi
  br i1 %i.bj, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.thread, label %.split

bb.n:                                             ; preds = %bb.m, %bb.l
  %.pn.pn = phi { ptr, i32 } [ %i.ax, %bb.m ], [ %i.aw, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @_ZN10bit_vectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.c) #22
  call void @_ZN7datalog17tr_infrastructureINS_15relation_traitsEE26convenient_join_project_fnD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) #22
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN7datalog11udoc_plugin24mk_filter_by_negation_fnERKNS_13relation_baseES3_jPKjS5_(ptr nofree noundef nonnull readnone align 8 captures(address) dereferenceable(129) %0, ptr noundef nonnull align 8 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(28) %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165, !nonnull !88, !align !89
  %i.c = icmp eq ptr %i.b, %0
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !88, !align !89
  %i.f = icmp eq ptr %i.e, %0
  %or.cond = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 104) ; 2 uses
  %i.h = tail call ptr @__dynamic_cast(ptr nonnull readonly align 8 dereferenceable(28) %1, ptr nonnull @_ZTIN7datalog13relation_baseE, ptr nonnull @_ZTIN7datalog13udoc_relationE, i64 0) #22 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %_ZN7datalog11udoc_plugin3getERKNS_13relation_baseE.exit

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_bad_cast() #23
  unreachable

_ZN7datalog11udoc_plugin3getERKNS_13relation_baseE.exit: ; preds = %bb.b
  %i.j = tail call ptr @__dynamic_cast(ptr nonnull readonly align 8 dereferenceable(28) %2, ptr nonnull @_ZTIN7datalog13relation_baseE, ptr nonnull @_ZTIN7datalog13udoc_relationE, i64 0) #22 ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %_ZN7datalog11udoc_plugin3getERKNS_13relation_baseE.exit8

bb.d:                                             ; preds = %_ZN7datalog11udoc_plugin3getERKNS_13relation_baseE.exit
  tail call void @__cxa_bad_cast() #23
  unreachable

_ZN7datalog11udoc_plugin3getERKNS_13relation_baseE.exit8: ; preds = %_ZN7datalog11udoc_plugin3getERKNS_13relation_baseE.exit
  tail call void @_ZN7datalog11udoc_plugin18negation_filter_fnC2ERKNS_13udoc_relationES4_jPKjS6_(ptr noundef nonnull align 8 dereferenceable(97) %i.g, ptr noundef nonnull align 8 dereferenceable(128) %i.h, ptr noundef nonnull align 8 dereferenceable(128) %i.j, i32 noundef %3, ptr noundef %4, ptr noundef %5)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN7datalog11udoc_plugin3getERKNS_13relation_baseE.exit8
  %.0 = phi ptr [ %i.g, %_ZN7datalog11udoc_plugin3getERKNS_13relation_baseE.exit8 ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7datalog11udoc_plugin18negation_filter_fnC2ERKNS_13udoc_relationES4_jPKjS6_(ptr noundef nonnull align 8 dereferenceable(97) %0, ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(128) %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class.svector.99, align 8          ; 8 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7datalog11udoc_plugin18negation_filter_fnE, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  store ptr null, ptr %i.a, align 8, !tbaa !48
  %.not.i.i = icmp eq i32 %3, 0                   ; 2 uses
  br i1 %.not.i.i, label %_ZN7svectorIjjEC2EjPKj.exit.thread, label %.lr.ph.preheader.i.i

_ZN7svectorIjjEC2EjPKj.exit.thread:               ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !48
  br label %_ZN7svectorIjjEC2EjPKj.exit52

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %wide.trip.count.i.i = zext i32 %3 to i64       ; 2 uses
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i, %.lr.ph.preheader.i.i
  %i.c = phi ptr [ null, %.lr.ph.preheader.i.i ], [ %i.k, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i ] ; 4 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i ] ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i.i
  %i.e = icmp eq ptr %i.c, null
  br i1 %i.e, label %.noexc, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !24   ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 -8
  %i.i = load i32, ptr %i.h, align 4, !tbaa !24
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %.noexc, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i

.noexc:                                           ; preds = %bb.b, %.lr.ph.i.i
  tail call void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !48 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !24
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i:        ; preds = %.noexc, %bb.b
  %i.k = phi ptr [ %.pre.i.i.i, %.noexc ], [ %i.c, %bb.b ] ; 3 uses
  %i.l = phi i32 [ %.pre2.i.i.i, %.noexc ], [ %i.g, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.n = zext i32 %i.l to i64
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.n
  %i.p = load i32, ptr %i.d, align 4, !tbaa !24
  store i32 %i.p, ptr %i.o, align 4, !tbaa !24
  %i.q = add i32 %i.l, 1
  store i32 %i.q, ptr %i.m, align 4, !tbaa !24
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN7svectorIjjEC2EjPKj.exit, label %.lr.ph.i.i, !llvm.loop !4

_ZN7svectorIjjEC2EjPKj.exit:                      ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr null, ptr %i.r, align 8, !tbaa !48
  br label %.lr.ph.i.i43

.lr.ph.i.i43:                                     ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i45, %_ZN7svectorIjjEC2EjPKj.exit
  %i.s = phi ptr [ null, %_ZN7svectorIjjEC2EjPKj.exit ], [ %i.aa, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i45 ] ; 4 uses
  %indvars.iv.i.i44 = phi i64 [ 0, %_ZN7svectorIjjEC2EjPKj.exit ], [ %indvars.iv.next.i.i46, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i45 ] ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i.i44
  %i.u = icmp eq ptr %i.s, null
  br i1 %i.u, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i43
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 -4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !24   ; 2 uses
  %i.x = getelementptr inbounds i8, ptr %i.s, i64 -8
  %i.y = load i32, ptr %i.x, align 4, !tbaa !24
  %i.z = icmp eq i32 %i.w, %i.y
  br i1 %i.z, label %bb.d, label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i45

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.i43
  invoke void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %.noexc51 unwind label %bb.l

.noexc51:                                         ; preds = %bb.d
  %.pre.i.i.i48 = load ptr, ptr %i.r, align 8, !tbaa !48 ; 2 uses
  %.phi.trans.insert.i.i.i49 = getelementptr inbounds i8, ptr %.pre.i.i.i48, i64 -4
  %.pre2.i.i.i50 = load i32, ptr %.phi.trans.insert.i.i.i49, align 4, !tbaa !24
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i45

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i45:      ; preds = %.noexc51, %bb.c
  %i.aa = phi ptr [ %.pre.i.i.i48, %.noexc51 ], [ %i.s, %bb.c ] ; 3 uses
  %i.ab = phi i32 [ %.pre2.i.i.i50, %.noexc51 ], [ %i.w, %bb.c ] ; 2 uses
  %i.ac = getelementptr inbounds i8, ptr %i.aa, i64 -4
  %i.ad = zext i32 %i.ab to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.ad
  %i.af = load i32, ptr %i.t, align 4, !tbaa !24
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !24
  %i.ag = add i32 %i.ab, 1
  store i32 %i.ag, ptr %i.ac, align 4, !tbaa !24
  %indvars.iv.next.i.i46 = add nuw nsw i64 %indvars.iv.i.i44, 1 ; 2 uses
  %exitcond.not.i.i47 = icmp eq i64 %indvars.iv.next.i.i46, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i47, label %_ZN7svectorIjjEC2EjPKj.exit52, label %.lr.ph.i.i43, !llvm.loop !4

_ZN7svectorIjjEC2EjPKj.exit52:                    ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i45, %_ZN7svectorIjjEC2EjPKj.exit.thread
  %i.ah = phi ptr [ %i.b, %_ZN7svectorIjjEC2EjPKj.exit.thread ], [ %i.r, %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i45 ] ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr null, ptr %i.ai, align 8, !tbaa !48
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !23 ; 2 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZN7svectorIjjEC2EjPKj.exit52
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 -4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !24
  br label %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit.i

_ZNK6vectorIP4sortLb0EjE4sizeEv.exit.i:           ; preds = %bb.e, %_ZN7svectorIjjEC2EjPKj.exit52
  %.0.i.i = phi i32 [ %i.an, %bb.e ], [ 0, %_ZN7svectorIjjEC2EjPKj.exit52 ]
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !23 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  br i1 %i.aq, label %_ZNK6vectorIjLb0EjE4sizeEv.exit, label %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit8.i

_ZNK6vectorIP4sortLb0EjE4sizeEv.exit8.i:          ; preds = %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit.i
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 -4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !24 ; 2 uses
  %.not.i = icmp eq i32 %i.as, 0
  br i1 %.not.i, label %_ZNK6vectorIjLb0EjE4sizeEv.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit8.i, %_ZN6vectorIjLb0EjE9push_backEOj.exit.i
  %i.at = phi ptr [ %i.bb, %_ZN6vectorIjLb0EjE9push_backEOj.exit.i ], [ null, %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit8.i ] ; 4 uses
  %.09.i = phi i32 [ %i.bh, %_ZN6vectorIjLb0EjE9push_backEOj.exit.i ], [ 0, %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit8.i ] ; 2 uses
  %i.au = add i32 %.09.i, %.0.i.i
  %i.av = icmp eq ptr %i.at, null
  br i1 %i.av, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i
  %i.aw = getelementptr inbounds i8, ptr %i.at, i64 -4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !24 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.at, i64 -8
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !24
  %i.ba = icmp eq i32 %i.ax, %i.az
  br i1 %i.ba, label %bb.g, label %_ZN6vectorIjLb0EjE9push_backEOj.exit.i

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  invoke void @_ZN6vectorIjLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ai)
          to label %.noexc53 unwind label %.loopexit

end_hunk_1
begin_hunk_2_@_ZN7datalog11udoc_plugin14filter_proj_fnC2ERKNS_13udoc_relationER11ast_managerP3appjPKj:bb.a
  %.pre2.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i, align 4, !tbaa !24
  br label %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i.i

_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i.i:      ; preds = %.noexc.i, %bb.b
  %i.l = phi ptr [ %.pre.i.i.i.i, %.noexc.i ], [ %i.d, %bb.b ] ; 3 uses
  %i.m = phi i32 [ %.pre2.i.i.i.i, %.noexc.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -4
  %i.o = zext i32 %i.m to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.o
  %i.q = load i32, ptr %i.e, align 4, !tbaa !24
  store i32 %i.q, ptr %i.p, align 4, !tbaa !24
  %i.r = add i32 %i.m, 1
  store i32 %i.r, ptr %i.n, align 4, !tbaa !24
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZN7svectorIjjEC2EjPKj.exit.i, label %.lr.ph.i.i.i, !llvm.loop !4

_ZN7svectorIjjEC2EjPKj.exit.i:                    ; preds = %_ZN6vectorIjLb0EjE9push_backERKj.exit.i.i.i, %bb.a
  invoke void @_ZN7datalog17tr_infrastructureINS_15relation_traitsEE14signature_base12from_projectERKNS_18relation_signatureEjPKjRS4_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i32 noundef %4, ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZN7datalog17tr_infrastructureINS_15relation_traitsEE21convenient_project_fnC2ERKNS_18relation_signatureEjPKj.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %_ZN7svectorIjjEC2EjPKj.exit.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6vectorIjLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.c) #22
  br label %bb.f

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %.pn.i, %bb.f ], [ %.pn33.pn.pn.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.t, %bb.e ], [ %i.s, %bb.d ]
  tail call void @_ZN7datalog17tr_infrastructureINS_15relation_traitsEE25convenient_transformer_fnD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(24) %0) #22
  br label %common.resume

_ZN7datalog17tr_infrastructureINS_15relation_traitsEE21convenient_project_fnC2ERKNS_18relation_signatureEjPKj.exit: ; preds = %_ZN7svectorIjjEC2EjPKj.exit.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN7datalog11udoc_plugin14filter_proj_fnE, i64 16), ptr %0, align 8, !tbaa !17
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.u, i8 0, i64 16, i1 false)
  invoke void @_ZN6regionC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.v)
          to label %_ZN22union_find_default_ctxC2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZN7datalog17tr_infrastructureINS_15relation_traitsEE21convenient_project_fnC2ERKNS_18relation_signatureEjPKj.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN6vectorIjLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.x) #22
  tail call void @_ZN6vectorIP5trailLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(56) %i.u) #22
  br label %.body

_ZN22union_find_default_ctxC2Ev.exit:             ; preds = %_ZN7datalog17tr_infrastructureINS_15relation_traitsEE21convenient_project_fnC2ERKNS_18relation_signatureEjPKj.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !150, !nonnull !88, !align !89
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr %3, ptr %i.ab, align 8, !tbaa !193
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %2, ptr %i.ac, align 8, !tbaa !186
  %.not.i.i = icmp eq ptr %3, null                ; 2 uses
  br i1 %.not.i.i, label %bb.h, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i

_ZN11ast_manager7inc_refEP3ast.exit.i.i:          ; preds = %_ZN22union_find_default_ctxC2Ev.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !192
  %i.af = add i32 %i.ae, 1
  store i32 %i.af, ptr %i.ad, align 4, !tbaa !192
  br label %bb.h

bb.h:                                             ; preds = %_ZN22union_find_default_ctxC2Ev.exit, %_ZN11ast_manager7inc_refEP3ast.exit.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store ptr null, ptr %i.ag, align 8, !tbaa !193
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %2, ptr %i.ah, align 8, !tbaa !186
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr %i.aj, ptr %i.ai, align 8, !tbaa !43
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 0, ptr %i.ak, align 8, !tbaa !44
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i32 8, ptr %i.al, align 4, !tbaa !45
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %i.an, ptr %i.am, align 8, !tbaa !43
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 0, ptr %i.ao, align 8, !tbaa !44
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i32 8, ptr %i.ap, align 4, !tbaa !45
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i8 0, i64 16, i1 false)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 5 uses
  store ptr %i.u, ptr %i.ar, align 8, !tbaa !232
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 304
  store ptr %i.u, ptr %i.as, align 8, !tbaa !234
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN10union_findI22union_find_default_ctxE12mk_var_trailE, i64 16), ptr %i.au, align 8, !tbaa !17
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %i.ar, ptr %i.av, align 8, !tbaa !236
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 3 uses
  store ptr null, ptr %i.aw, align 8, !tbaa !48
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !48 ; 3 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 -4
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !24
  %i.bc = add i32 %i.bb, -1
  %i.bd = zext i32 %i.bc to i64
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi i64 [ %i.bd, %bb.i ], [ 4294967295, %bb.h ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %.0.i.i.i
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !24 ; 3 uses
  invoke void @_ZNK7datalog13udoc_relation20expand_column_vectorER7svectorIjjEPKS0_(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef null)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN10bit_vector6resizeEjb(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, i32 noundef %i.bf, i1 noundef zeroext false)
          to label %.preheader44 unwind label %bb.l

.preheader44:                                     ; preds = %bb.k
  %.not = icmp eq i32 %i.bf, 0
  br i1 %.not, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %bb.m, %.preheader44
  %i.bg = load ptr, ptr %i.c, align 8, !tbaa !48  ; 3 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %.critedge, label %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph

_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph:            ; preds = %.preheader
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -4 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !24
  %.not49 = icmp eq i32 %i.bj, 0
  br i1 %.not49, label %.critedge, label %.lr.ph48

.lr.ph48:                                         ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !230
  br label %_ZNK6vectorIjLb0EjE4sizeEv.exit

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.lr.ph:                                           ; preds = %.preheader44, %bb.m
  %.02545 = phi i32 [ %i.bo, %bb.m ], [ 0, %.preheader44 ]
  %i.bn = invoke noundef i32 @_ZN10union_findI22union_find_default_ctxE6mk_varEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ar)
          to label %bb.m unwind label %bb.n       ; 0 uses

bb.m:                                             ; preds = %.lr.ph
  %i.bo = add nuw i32 %.02545, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.bo, %i.bf
  br i1 %exitcond.not, label %.preheader, label %.lr.ph, !llvm.loop !581

bb.n:                                             ; preds = %.lr.ph
  %i.bp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.critedge:                                        ; preds = %_ZNK6vectorIjLb0EjE4sizeEv.exit, %_ZNK6vectorIjLb0EjE4sizeEv.exit.lr.ph, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  store ptr null, ptr %6, align 8, !tbaa !193
  %i.bq = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr %2, ptr %i.bq, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  store ptr %3, ptr %7, align 8, !tbaa !193
  %i.br = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %2, ptr %i.br, align 8, !tbaa !186
  br i1 %.not.i.i, label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit40, label %_ZN11ast_manager7inc_refEP3ast.exit.i.i39

_ZN11ast_manager7inc_refEP3ast.exit.i.i39:        ; preds = %.critedge
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !192
  %i.bu = add i32 %i.bt, 1
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !192
  br label %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit40

_ZNK6vectorIjLb0EjE4sizeEv.exit:                  ; preds = %.lr.ph48, %_ZNK6vectorIjLb0EjE4sizeEv.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph48 ], [ %indvars.iv.next, %_ZNK6vectorIjLb0EjE4sizeEv.exit ] ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !24 ; 2 uses
  %i.bx = lshr i32 %i.bw, 5
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.by ; 2 uses
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !24
  %i.cb = and i32 %i.bw, 31
  %i.cc = shl nuw i32 1, %i.cb
  %i.cd = or i32 %i.cc, %i.ca
  store i32 %i.cd, ptr %i.bz, align 4, !tbaa !24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ce = load i32, ptr %i.bi, align 4, !tbaa !24
  %i.cf = zext i32 %i.ce to i64
  %i.cg = icmp samesign ult i64 %indvars.iv.next, %i.cf
  br i1 %i.cg, label %_ZNK6vectorIjLb0EjE4sizeEv.exit, label %.critedge

_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit40: ; preds = %_ZN11ast_manager7inc_refEP3ast.exit.i.i39, %.critedge
  invoke void @_ZNK7datalog13udoc_relation18extract_equalitiesEP4exprR7obj_refIS1_11ast_managerER10union_findI22union_find_default_ctxER7svectorIjjE(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(56) %i.ar, ptr noundef nonnull align 8 dereferenceable(8) %i.aw)
          to label %bb.o unwind label %bb.x

bb.o:                                             ; preds = %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit40
  %i.ch = load ptr, ptr %7, align 8, !tbaa !193   ; 4 uses
  invoke void @_ZNK7datalog13udoc_relation13extract_guardEP4exprR7obj_refIS1_11ast_managerES6_(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef %i.ch, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %i.ag)
          to label %bb.p unwind label %bb.x

bb.p:                                             ; preds = %bb.o
  %i.ci = load ptr, ptr %6, align 8, !tbaa !193   ; 4 uses
  invoke void @_ZNK7datalog13udoc_relation13compile_guardEP4exprR10union_bvecI11doc_manager3docERK10bit_vector(ptr noundef nonnull align 8 dereferenceable(128) %1, ptr noundef %i.ci, ptr noundef nonnull align 8 dereferenceable(80) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.aq)
          to label %bb.q unwind label %bb.x

bb.q:                                             ; preds = %bb.p
  %.not.i.i41 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i41, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cj = load ptr, ptr %i.br, align 8, !tbaa !185, !nonnull !88, !align !89
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !192
  %i.cm = add i32 %i.cl, -1                       ; 2 uses
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !192
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.s, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.cj, ptr noundef nonnull %i.ch)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.co = landingpad { ptr, i32 }
          catch ptr null
  %i.cp = extractvalue { ptr, i32 } %i.co, 0
  tail call void @__clang_call_terminate(ptr %i.cp) #24
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit:         ; preds = %bb.q, %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %.not.i.i42 = icmp eq ptr %i.ci, null
  br i1 %.not.i.i42, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit43, label %bb.u

bb.u:                                             ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit
  %i.cq = load ptr, ptr %i.bq, align 8, !tbaa !185, !nonnull !88, !align !89
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 8 ; 2 uses
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !192
  %i.ct = add i32 %i.cs, -1                       ; 2 uses
  store i32 %i.ct, ptr %i.cr, align 4, !tbaa !192
  %i.cu = icmp eq i32 %i.ct, 0
  br i1 %i.cu, label %bb.v, label %_ZN7obj_refI4expr11ast_managerED2Ev.exit43

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN11ast_manager11delete_nodeEP3ast(ptr noundef nonnull align 8 dereferenceable(952) %i.cq, ptr noundef nonnull %i.ci)
          to label %_ZN7obj_refI4expr11ast_managerED2Ev.exit43 unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cv = landingpad { ptr, i32 }
          catch ptr null
  %i.cw = extractvalue { ptr, i32 } %i.cv, 0
  tail call void @__clang_call_terminate(ptr %i.cw) #24
  unreachable

_ZN7obj_refI4expr11ast_managerED2Ev.exit43:       ; preds = %_ZN7obj_refI4expr11ast_managerED2Ev.exit, %bb.u, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  ret void

bb.x:                                             ; preds = %bb.p, %bb.o, %_ZN7obj_refI4expr11ast_managerEC2EPS0_RS1_.exit40
  %i.cx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %7) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.n, %bb.l
  %.pn33 = phi { ptr, i32 } [ %i.bp, %bb.n ], [ %i.bm, %bb.l ], [ %i.cx, %bb.x ]
  call void @_ZN6vectorIjLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.aw) #22
  call void @_ZN10union_findI22union_find_default_ctxED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.ar) #22
  call void @_ZN10bit_vectorD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.aq) #22
  call void @_ZN10union_bvecI11doc_manager3docED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.am) #22
  call void @_ZN10union_bvecI11doc_manager3docED2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %i.ai) #22
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ag) #22
  call void @_ZN7obj_refI4expr11ast_managerED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.ab) #22
  call void @_ZN22union_find_default_ctxD2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %i.u) #22
  br label %.body

.body:                                            ; preds = %bb.g, %bb.y
  %.pn33.pn.pn.pn = phi { ptr, i32 } [ %.pn33, %bb.y ], [ %i.w, %bb.g ]
  call void @_ZN7datalog17tr_infrastructureINS_15relation_traitsEE21convenient_project_fnD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #22
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN7datalog17tr_infrastructureINS_15relation_traitsEE13base_ancestor10deallocateEv(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17
  %i.b = load ptr, ptr %i.a, align 8
  tail call void %i.b(ptr noundef nonnull align 8 dead_on_return(28) dereferenceable(28) %0) #22, !inline_history !582
  tail call void @_ZN6memory10deallocateEPv(ptr noundef nonnull align 8 dereferenceable(28) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK7datalog13udoc_relation10fast_emptyEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44
  %i.c = icmp eq i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK7datalog17tr_infrastructureINS_15relation_traitsEE13base_ancestor8can_swapERKNS_13relation_baseE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7datalog17tr_infrastructureINS_15relation_traitsEE13base_ancestor4swapERNS_13relation_baseE(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(28) %1) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.c = load i32, ptr %i.a, align 8, !tbaa !24
  %i.d = load i32, ptr %i.b, align 8, !tbaa !24
  store i32 %i.d, ptr %i.a, align 8, !tbaa !24
  store i32 %i.c, ptr %i.b, align 8, !tbaa !24
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK7datalog13udoc_relation22get_size_estimate_rowsEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !44
  ret i32 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK7datalog17tr_infrastructureINS_15relation_traitsEE13base_ancestor16knows_exact_sizeEv(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNK7datalog13relation_base14display_tuplesER9func_declRSo(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.25, i64 noundef 10) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.0.copyload = load ptr, ptr %i.b, align 8, !tbaa !207 ; 4 uses
  %i.c = ptrtoint ptr %.sroa.0.0.copyload to i64  ; 2 uses
  %i.d = and i64 %i.c, 7
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not.i, label %bb.c, label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.b
  %i.f = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %.sroa.0.0.copyload) #22
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %.sroa.0.0.copyload, i64 noundef %i.f) ; 0 uses
  br label %_ZlsRSo6symbol.exit

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.27, i64 noundef 4) ; 0 uses
  br label %_ZlsRSo6symbol.exit

bb.d:                                             ; preds = %bb.a
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.28, i64 noundef 2) ; 0 uses
  %i.j = lshr i64 %i.c, 3
  %i.k = trunc i64 %i.j to i32
  %i.l = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %i.k) ; 0 uses
  br label %_ZlsRSo6symbol.exit

_ZlsRSo6symbol.exit:                              ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %bb.c, %bb.d
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull @.str.26, i64 noundef 3) ; 0 uses
  %i.n = load ptr, ptr %0, align 8, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(28) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK7datalog13udoc_relation10is_preciseEv(ptr noundef nonnull align 8 dereferenceable(128) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN7datalog17tr_infrastructureINS_15relation_traitsEE13plugin_object10initializeEi(ptr noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 {
end_hunk_2
