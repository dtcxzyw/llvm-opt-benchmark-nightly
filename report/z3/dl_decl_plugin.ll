Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/dl_decl_plugin?download=true
inline.NumInlined: 1962
inline.NumDeleted: 864
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN7datalog14dl_decl_plugin9mk_renameEjPK9parameterP4sort:bb.a
  %.046.i.i.i.i.i.i = phi ptr [ %i.bx, %.lr.ph.i.i.i.i.i.i ], [ %i.bu, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i ] ; 2 uses
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.046.i.i.i.i.i.i) #24
  %i.bx = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i.i, i64 40
  %i.by = add i32 %.07.i.i.i.i.i.i, -1            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.by, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %5, align 8, !tbaa !72
  br label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i: ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i
  %i.bz = phi ptr [ %.pre.i.i, %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i ], [ %i.bu, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i ]
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ca)
          to label %_ZN6vectorI9parameterLb1EjED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #27
  unreachable

_ZN6vectorI9parameterLb1EjED2Ev.exit:             ; preds = %_ZN9decl_infoD2Ev.exit, %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.cd = load ptr, ptr %4, align 8, !tbaa !82    ; 2 uses
  %.not.i.i48 = icmp eq ptr %i.cd, null
  br i1 %.not.i.i48, label %_ZN6vectorIP4sortLb0EjED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN6vectorI9parameterLb1EjED2Ev.exit
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ce)
          to label %_ZN6vectorIP4sortLb0EjED2Ev.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cf = landingpad { ptr, i32 }
          catch ptr null
  %i.cg = extractvalue { ptr, i32 } %i.cf, 0
  call void @__clang_call_terminate(ptr %i.cg) #27
  unreachable

_ZN6vectorIP4sortLb0EjED2Ev.exit:                 ; preds = %_ZN6vectorI9parameterLb1EjED2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret ptr %i.bj

bb.u:                                             ; preds = %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit
  %i.ch = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.v:                                             ; preds = %bb.m
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.p
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9decl_infoD2Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19) %7) #24
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.pn = phi { ptr, i32 } [ %i.cj, %bb.w ], [ %i.ci, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %bb.x, %bb.l
  %.pn37 = phi { ptr, i32 } [ %i.ba, %bb.l ], [ %.pn, %bb.x ], [ %i.ch, %bb.u ]
  call void @_ZN6vectorI9parameterLb1EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.g, %bb.e, %bb.c
  %.pn39.pn.pn = phi { ptr, i32 } [ %i.p, %bb.c ], [ %.pn37, %bb.y ], [ %i.ae, %bb.g ], [ %i.aa, %bb.e ]
  call void @_ZN6vectorIP4sortLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %4) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  resume { ptr, i32 } %.pn39.pn.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN7datalog14dl_decl_plugin7mk_joinEjPK9parameterP4sortS5_(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.vector.35, align 8           ; 10 uses
  %6 = alloca %class.ptr_vector.36, align 8       ; 10 uses
  %7 = alloca %class.ptr_vector.36, align 8       ; 9 uses
  %8 = alloca %class.parameter, align 8           ; 8 uses
  %9 = alloca %class.parameter, align 8           ; 8 uses
  %i.a = alloca [2 x ptr], align 16               ; 6 uses
  %10 = alloca %struct.func_decl_info, align 8    ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr null, ptr %5, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr null, ptr %6, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  store ptr null, ptr %7, align 8, !tbaa !82
  %i.b = invoke noundef zeroext i1 @_ZN7datalog14dl_decl_plugin11is_rel_sortEP4sortR10ptr_vectorIS1_E(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.c unwind label %bb.b       ; 0 uses

bb.b:                                             ; preds = %bb.k, %bb.c, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.c:                                             ; preds = %bb.a
  %i.d = invoke noundef zeroext i1 @_ZN7datalog14dl_decl_plugin11is_rel_sortEP4sortR10ptr_vectorIS1_E(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %.preheader76 unwind label %bb.b ; 0 uses

.preheader76:                                     ; preds = %bb.c
  %i.e = load ptr, ptr %6, align 8, !tbaa !82     ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.critedge.preheader, label %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit.lr.ph

_ZNK6vectorIP4sortLb0EjE4sizeEv.exit.lr.ph:       ; preds = %.preheader76
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 32
  br label %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit

.critedge.preheader:                              ; preds = %bb.e, %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit, %.preheader76
  %i.h = load ptr, ptr %7, align 8, !tbaa !82     ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.critedge75, label %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit56.lr.ph

_ZNK6vectorIP4sortLb0EjE4sizeEv.exit56.lr.ph:     ; preds = %.critedge.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 32
  br label %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit56

_ZNK6vectorIP4sortLb0EjE4sizeEv.exit:             ; preds = %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.k = phi ptr [ %i.e, %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit.lr.ph ], [ %i.s, %bb.e ] ; 2 uses
  %i.l = getelementptr inbounds i8, ptr %i.k, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !73
  %i.n = zext i32 %i.m to i64
  %i.o = icmp samesign ult i64 %indvars.iv, %i.n
  br i1 %i.o, label %bb.d, label %.critedge.preheader

bb.d:                                             ; preds = %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !85
  store ptr %i.q, ptr %8, align 8, !tbaa !87
  store i8 1, ptr %i.g, align 8, !tbaa !55
  %i.r = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6vectorI9parameterLb1EjE9push_backEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(40) %8)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %bb.d
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %i.s = load ptr, ptr %6, align 8, !tbaa !82     ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.critedge.preheader, label %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit, !llvm.loop !306

bb.f:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  br label %bb.ai

_ZNK6vectorIP4sortLb0EjE4sizeEv.exit56:           ; preds = %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit56.lr.ph, %.critedge
  %indvars.iv89 = phi i64 [ 0, %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit56.lr.ph ], [ %indvars.iv.next90, %.critedge ] ; 3 uses
  %i.v = phi ptr [ %i.h, %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit56.lr.ph ], [ %i.av, %.critedge ] ; 3 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 -4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !73
  %i.y = zext i32 %i.x to i64
  %i.z = icmp samesign ult i64 %indvars.iv89, %i.y ; 3 uses
  br i1 %i.z, label %bb.i, label %.critedge75

.critedge75:                                      ; preds = %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit56, %.critedge, %.critedge.preheader
  %.lcssa78 = phi ptr [ null, %.critedge.preheader ], [ null, %.critedge ], [ %i.v, %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit56 ] ; 2 uses
  %.lcssa = phi i1 [ true, %.critedge.preheader ], [ %i.z, %.critedge ], [ %i.z, %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit56 ]
  %i.aa = and i32 %1, 1
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %.preheader, label %bb.k

.preheader:                                       ; preds = %.critedge75
  %i.ab = icmp ugt i32 %1, 1
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ac = load ptr, ptr %6, align 8
  %.fr87 = freeze ptr %i.ac                       ; 3 uses
  %i.ad = icmp eq ptr %.fr87, null
  %i.ae = getelementptr inbounds i8, ptr %.fr87, i64 -4
  %i.af = getelementptr inbounds i8, ptr %.lcssa78, i64 -4
  br i1 %i.ad, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !55
  %i.ai = icmp eq i8 %i.ah, 0
  br i1 %i.ai, label %bb.g, label %.split.us

bb.g:                                             ; preds = %.lr.ph.split.us
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ak = load i8, ptr %i.aj, align 8, !tbaa !55
  %i.al = icmp eq i8 %i.ak, 0
  br i1 %i.al, label %.invoke, label %.split.us

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.lcssa, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %11 = zext i32 %1 to i64
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.an = load i8, ptr %i.am, align 8, !tbaa !55
  %i.ao = icmp eq i8 %i.an, 0
  br i1 %i.ao, label %bb.h, label %.split.us

bb.h:                                             ; preds = %.lr.ph.split.split.us
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.aq = load i8, ptr %i.ap, align 8, !tbaa !55
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %.invoke, label %.split.us

bb.i:                                             ; preds = %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit56
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv89
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !85
  store ptr %i.at, ptr %9, align 8, !tbaa !87
  store i8 1, ptr %i.j, align 8, !tbaa !55
  %i.au = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6vectorI9parameterLb1EjE9push_backEOS0_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(40) %9)
          to label %.critedge unwind label %bb.j  ; 0 uses

.critedge:                                        ; preds = %bb.i
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1
  %i.av = load ptr, ptr %7, align 8, !tbaa !82    ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %.critedge75, label %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit56, !llvm.loop !307

bb.j:                                             ; preds = %bb.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %9) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.ai

bb.k:                                             ; preds = %.critedge75
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !38
  invoke void @_ZN11ast_manager15raise_exceptionEPKc(ptr noundef nonnull align 8 dereferenceable(952) %i.az, ptr noundef nonnull @.str.45) #25
          to label %bb.l unwind label %bb.b

bb.l:                                             ; preds = %bb.k
  unreachable

bb.m:                                             ; preds = %bb.s
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 2 ; 2 uses
  %12 = or disjoint i64 %indvars.iv.next93, 1
  %i.ba = icmp samesign ult i64 %12, %11
  br i1 %i.ba, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !308

._crit_edge:                                      ; preds = %bb.m, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %3, ptr %i.a, align 16, !tbaa !85
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.bb, align 8, !tbaa !85
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !38
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !tbaa !39
  %i.bg = load ptr, ptr %5, align 8, !tbaa !72    ; 3 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !73
  br label %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit

_ZNK6vectorI9parameterLb1EjE4sizeEv.exit:         ; preds = %._crit_edge, %bb.n
  %.0.i57 = phi i32 [ %i.bj, %bb.n ], [ 0, %._crit_edge ]
  %i.bk = invoke noundef ptr @_ZN11ast_manager7mk_sortEiijPK9parameter(ptr noundef nonnull align 8 dereferenceable(952) %i.bd, i32 noundef %i.bf, i32 noundef 0, i32 noundef %.0.i57, ptr noundef %i.bg)
          to label %bb.t unwind label %bb.ad

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.m
  %indvars.iv92 = phi i64 [ 0, %.lr.ph.split.split.preheader ], [ %indvars.iv.next93, %bb.m ] ; 3 uses
  %i.bl = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %indvars.iv92 ; 2 uses
  %13 = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %indvars.iv92 ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !55
  %i.bo = icmp eq i8 %i.bn, 0
  br i1 %i.bo, label %bb.o, label %.split.us

bb.o:                                             ; preds = %.lr.ph.split.split
  %i.bp = getelementptr inbounds nuw i8, ptr %13, i64 72
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !55
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit64, label %.split.us

.split.us:                                        ; preds = %bb.o, %.lr.ph.split.split, %bb.h, %.lr.ph.split.split.us, %.lr.ph.split.us, %bb.g
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !38
  invoke void @_ZN11ast_manager15raise_exceptionEPKc(ptr noundef nonnull align 8 dereferenceable(952) %i.bt, ptr noundef nonnull @.str.46) #25
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %.split.us
  unreachable

bb.q:                                             ; preds = %.split.us
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

_ZNK6vectorIP4sortLb0EjE4sizeEv.exit64:           ; preds = %bb.o
  %i.bv = load i32, ptr %i.bl, align 8, !tbaa !73 ; 2 uses
  %i.bw = load i32, ptr %14, align 8, !tbaa !73   ; 2 uses
  %i.bx = load i32, ptr %i.ae, align 4, !tbaa !73
  %.not47.not = icmp ult i32 %i.bv, %i.bx
  br i1 %.not47.not, label %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit66, label %.invoke

_ZNK6vectorIP4sortLb0EjE4sizeEv.exit66:           ; preds = %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit64
  %i.by = load i32, ptr %i.af, align 4, !tbaa !73
  %.not48 = icmp ult i32 %i.bw, %i.by
  br i1 %.not48, label %bb.s, label %.invoke

bb.r:                                             ; preds = %.invoke
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.s:                                             ; preds = %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit66
  %i.ca = zext i32 %i.bv to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %.fr87, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !85
  %i.cd = zext i32 %i.bw to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %.lcssa78, i64 %i.cd
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !85
  %.not49 = icmp eq ptr %i.cc, %i.cf
  br i1 %.not49, label %bb.m, label %.invoke

.invoke:                                          ; preds = %bb.s, %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit66, %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit64, %bb.g, %bb.h
  %i.cg = phi ptr [ @.str.47, %bb.g ], [ @.str.47, %bb.h ], [ @.str.47, %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit64 ], [ @.str.47, %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit66 ], [ @.str.48, %bb.s ]
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !38
  invoke void @_ZN11ast_manager15raise_exceptionEPKc(ptr noundef nonnull align 8 dereferenceable(952) %i.ci, ptr noundef nonnull %i.cg) #25
          to label %.cont unwind label %bb.r

.cont:                                            ; preds = %.invoke
  unreachable

bb.t:                                             ; preds = %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.cj = load i32, ptr %i.be, align 8, !tbaa !39
  invoke void @_ZN14func_decl_infoC1EiijPK9parameter(ptr noundef nonnull align 8 dereferenceable(19) %10, i32 noundef %i.cj, i32 noundef 3, i32 noundef %1, ptr noundef %2)
          to label %bb.u unwind label %bb.ae

bb.u:                                             ; preds = %bb.t
  %i.ck = load ptr, ptr %i.bc, align 8, !tbaa !38
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cm = load i32, ptr %10, align 8, !tbaa !71
  %i.cn = icmp eq i32 %i.cm, -1
  br i1 %i.cn, label %bb.v, label %_ZNK14func_decl_info7is_nullEv.exit.thread.i

bb.v:                                             ; preds = %bb.u
  %i.co = getelementptr inbounds nuw i8, ptr %10, i64 17
  %i.cp = load i16, ptr %i.co, align 1
  %i.cq = and i16 %i.cp, 507
  %or.cond.i = icmp eq i16 %i.cq, 0
  br i1 %or.cond.i, label %bb.w, label %_ZNK14func_decl_info7is_nullEv.exit.thread.i

_ZNK14func_decl_info7is_nullEv.exit.thread.i:     ; preds = %bb.v, %bb.u
  br label %bb.w

bb.w:                                             ; preds = %_ZNK14func_decl_info7is_nullEv.exit.thread.i, %bb.v
  %.sink.i = phi ptr [ %10, %_ZNK14func_decl_info7is_nullEv.exit.thread.i ], [ null, %bb.v ]
  %i.cr = invoke noundef ptr @_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_P14func_decl_info(ptr noundef nonnull align 8 dereferenceable(952) %i.ck, ptr noundef nonnull align 8 dereferenceable(8) %i.cl, i32 noundef 2, ptr noundef nonnull %i.a, ptr noundef %i.bk, ptr noundef %.sink.i)
          to label %_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_RK14func_decl_info.exit unwind label %bb.af

_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_RK14func_decl_info.exit: ; preds = %bb.w
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !72 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i, label %_ZN9decl_infoD2Ev.exit, label %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i

_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i: ; preds = %_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_RK14func_decl_info.exit
  %i.cu = getelementptr inbounds i8, ptr %i.ct, i64 -4
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !73 ; 2 uses
  %.not5.i.i.i.i.i.i.i = icmp eq i32 %i.cv, 0
  br i1 %.not5.i.i.i.i.i.i.i, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi i32 [ %i.cx, %.lr.ph.i.i.i.i.i.i.i ], [ %i.cv, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i ]
  %.046.i.i.i.i.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i.i.i ], [ %i.ct, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i ] ; 2 uses
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.046.i.i.i.i.i.i.i) #24
  %i.cw = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i.i.i, i64 40
  %i.cx = add i32 %.07.i.i.i.i.i.i.i, -1          ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.cx, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.cs, align 8, !tbaa !72
  br label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i: ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i
  %i.cy = phi ptr [ %.pre.i.i.i, %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i ], [ %i.ct, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i ]
  %i.cz = getelementptr inbounds i8, ptr %i.cy, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.cz)
          to label %_ZN9decl_infoD2Ev.exit unwind label %bb.x

bb.x:                                             ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i
  %i.da = landingpad { ptr, i32 }
          catch ptr null
  %i.db = extractvalue { ptr, i32 } %i.da, 0
  call void @__clang_call_terminate(ptr %i.db) #27
  unreachable

_ZN9decl_infoD2Ev.exit:                           ; preds = %_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_RK14func_decl_info.exit, %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.dc = load ptr, ptr %7, align 8, !tbaa !82    ; 2 uses
  %.not.i.i = icmp eq ptr %i.dc, null
  br i1 %.not.i.i, label %_ZN6vectorIP4sortLb0EjED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZN9decl_infoD2Ev.exit
  %i.dd = getelementptr inbounds i8, ptr %i.dc, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.dd)
          to label %_ZN6vectorIP4sortLb0EjED2Ev.exit unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #27
  unreachable

_ZN6vectorIP4sortLb0EjED2Ev.exit:                 ; preds = %_ZN9decl_infoD2Ev.exit, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %i.dg = load ptr, ptr %6, align 8, !tbaa !82    ; 2 uses
  %.not.i.i68 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i68, label %_ZN6vectorIP4sortLb0EjED2Ev.exit69, label %bb.aa

bb.aa:                                            ; preds = %_ZN6vectorIP4sortLb0EjED2Ev.exit
  %i.dh = getelementptr inbounds i8, ptr %i.dg, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.dh)
          to label %_ZN6vectorIP4sortLb0EjED2Ev.exit69 unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.di = landingpad { ptr, i32 }
          catch ptr null
  %i.dj = extractvalue { ptr, i32 } %i.di, 0
  call void @__clang_call_terminate(ptr %i.dj) #27
  unreachable

_ZN6vectorIP4sortLb0EjED2Ev.exit69:               ; preds = %_ZN6vectorIP4sortLb0EjED2Ev.exit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.dk = load ptr, ptr %5, align 8, !tbaa !72    ; 4 uses
  %.not.i.i70 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i70, label %_ZN6vectorI9parameterLb1EjED2Ev.exit, label %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i

_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i:   ; preds = %_ZN6vectorIP4sortLb0EjED2Ev.exit69
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 -4
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !73 ; 2 uses
  %.not5.i.i.i.i.i.i = icmp eq i32 %i.dm, 0
  br i1 %.not5.i.i.i.i.i.i, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.07.i.i.i.i.i.i = phi i32 [ %i.do, %.lr.ph.i.i.i.i.i.i ], [ %i.dm, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i ]
  %.046.i.i.i.i.i.i = phi ptr [ %i.dn, %.lr.ph.i.i.i.i.i.i ], [ %i.dk, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i ] ; 2 uses
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.046.i.i.i.i.i.i) #24
  %i.dn = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i.i, i64 40
  %i.do = add i32 %.07.i.i.i.i.i.i, -1            ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.do, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !0

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %.pre.i.i = load ptr, ptr %5, align 8, !tbaa !72
  br label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i: ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i
  %i.dp = phi ptr [ %.pre.i.i, %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i ], [ %i.dk, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i ]
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.dq)
          to label %_ZN6vectorI9parameterLb1EjED2Ev.exit unwind label %bb.ac

bb.ac:                                            ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i
  %i.dr = landingpad { ptr, i32 }
          catch ptr null
  %i.ds = extractvalue { ptr, i32 } %i.dr, 0
  call void @__clang_call_terminate(ptr %i.ds) #27
  unreachable

_ZN6vectorI9parameterLb1EjED2Ev.exit:             ; preds = %_ZN6vectorIP4sortLb0EjED2Ev.exit69, %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret ptr %i.cr

bb.ad:                                            ; preds = %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ae:                                            ; preds = %bb.t
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.af:                                            ; preds = %bb.w
  %i.dv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9decl_infoD2Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19) %10) #24
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.pn = phi { ptr, i32 } [ %i.dv, %bb.af ], [ %i.du, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ad
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ag ], [ %i.dt, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.ai

bb.ai:                                            ; preds = %bb.q, %bb.r, %bb.ah, %bb.j, %bb.f, %bb.b
  %.pn53 = phi { ptr, i32 } [ %i.u, %bb.f ], [ %i.ax, %bb.j ], [ %i.c, %bb.b ], [ %.pn.pn, %bb.ah ], [ %i.bu, %bb.q ], [ %i.bz, %bb.r ]
  call void @_ZN6vectorIP4sortLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @_ZN6vectorIP4sortLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @_ZN6vectorI9parameterLb1EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %.pn53
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN7datalog14dl_decl_plugin13mk_complementEP4sort(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.ptr_vector.36, align 8       ; 7 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %3 = alloca %struct.func_decl_info, align 8     ; 9 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr null, ptr %2, align 8, !tbaa !82
  %i.b = invoke noundef zeroext i1 @_ZN7datalog14dl_decl_plugin11is_rel_sortEP4sortR10ptr_vectorIS1_E(ptr noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef readonly %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.e       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !82     ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN7datalog14dl_decl_plugin11is_rel_sortEP4sort.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.d)
          to label %_ZN7datalog14dl_decl_plugin11is_rel_sortEP4sort.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #27
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.ac, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6vectorIP4sortLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  br label %common.resume

_ZN7datalog14dl_decl_plugin11is_rel_sortEP4sort.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !39
  call void @_ZN14func_decl_infoC1EiijPK9parameter(ptr noundef nonnull align 8 dereferenceable(19) %3, i32 noundef %i.i, i32 noundef 10, i32 noundef 0, ptr noundef null)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !38
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load i32, ptr %3, align 8, !tbaa !71
  %i.n = icmp eq i32 %i.m, -1
  br i1 %i.n, label %bb.f, label %_ZNK14func_decl_info7is_nullEv.exit.thread.i

bb.f:                                             ; preds = %_ZN7datalog14dl_decl_plugin11is_rel_sortEP4sort.exit
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 17
  %i.p = load i16, ptr %i.o, align 1
  %i.q = and i16 %i.p, 507
  %or.cond.i = icmp eq i16 %i.q, 0
  br i1 %or.cond.i, label %bb.g, label %_ZNK14func_decl_info7is_nullEv.exit.thread.i

_ZNK14func_decl_info7is_nullEv.exit.thread.i:     ; preds = %bb.f, %_ZN7datalog14dl_decl_plugin11is_rel_sortEP4sort.exit
  br label %bb.g

bb.g:                                             ; preds = %_ZNK14func_decl_info7is_nullEv.exit.thread.i, %bb.f
  %.sink.i = phi ptr [ %3, %_ZNK14func_decl_info7is_nullEv.exit.thread.i ], [ null, %bb.f ]
  %i.r = invoke noundef ptr @_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_P14func_decl_info(ptr noundef nonnull align 8 dereferenceable(952) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l, i32 noundef 1, ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef %.sink.i)
          to label %_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_RK14func_decl_info.exit unwind label %bb.i

_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_RK14func_decl_info.exit: ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !72   ; 4 uses
  %.not.i.i.i3 = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i3, label %_ZN9decl_infoD2Ev.exit, label %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i

_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i: ; preds = %_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_RK14func_decl_info.exit
  %i.u = getelementptr inbounds i8, ptr %i.t, i64 -4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !73   ; 2 uses
  %.not5.i.i.i.i.i.i.i = icmp eq i32 %i.v, 0
  br i1 %.not5.i.i.i.i.i.i.i, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi i32 [ %i.x, %.lr.ph.i.i.i.i.i.i.i ], [ %i.v, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i ]
  %.046.i.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i ], [ %i.t, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i ] ; 2 uses
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.046.i.i.i.i.i.i.i) #24
  %i.w = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i.i.i, i64 40
  %i.x = add i32 %.07.i.i.i.i.i.i.i, -1           ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !72
  br label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i: ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i
  %i.y = phi ptr [ %.pre.i.i.i, %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i ], [ %i.t, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i ]
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.z)
          to label %_ZN9decl_infoD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #27
  unreachable

_ZN9decl_infoD2Ev.exit:                           ; preds = %_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_RK14func_decl_info.exit, %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  ret ptr %i.r

bb.i:                                             ; preds = %bb.g
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9decl_infoD2Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19) %3) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN7datalog14dl_decl_plugin18mk_negation_filterEjPK9parameterP4sortS5_(ptr noundef nonnull align 8 dereferenceable(160) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.ptr_vector.36, align 8       ; 8 uses
  %6 = alloca %class.ptr_vector.36, align 8       ; 8 uses
  %i.a = alloca [2 x ptr], align 16               ; 6 uses
  %7 = alloca %struct.func_decl_info, align 8     ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store ptr null, ptr %5, align 8, !tbaa !82
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store ptr null, ptr %6, align 8, !tbaa !82
  %i.b = invoke noundef zeroext i1 @_ZN7datalog14dl_decl_plugin11is_rel_sortEP4sortR10ptr_vectorIS1_E(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.c unwind label %bb.b       ; 0 uses

bb.b:                                             ; preds = %bb.g, %bb.c, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %i.d = invoke noundef zeroext i1 @_ZN7datalog14dl_decl_plugin11is_rel_sortEP4sortR10ptr_vectorIS1_E(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.d unwind label %bb.b       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.e = and i32 %1, 1
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %.preheader, label %bb.g

.preheader:                                       ; preds = %bb.d
  %i.f = icmp ugt i32 %1, 1
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.g = load ptr, ptr %5, align 8
  %.fr62 = freeze ptr %i.g                        ; 3 uses
  %i.h = icmp eq ptr %.fr62, null
  %i.i = getelementptr inbounds i8, ptr %.fr62, i64 -4
  %i.j = load ptr, ptr %6, align 8
  %.fr = freeze ptr %i.j                          ; 3 uses
  %i.k = getelementptr inbounds i8, ptr %.fr, i64 -4
  br i1 %i.h, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.m = load i8, ptr %i.l, align 8, !tbaa !55
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.e, label %.split.us

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.p = load i8, ptr %i.o, align 8, !tbaa !55
  %i.q = icmp eq i8 %i.p, 0
  br i1 %i.q, label %.invoke, label %.split.us

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.r = icmp eq ptr %.fr, null
  br i1 %i.r, label %.lr.ph.split.split.us, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %8 = zext i32 %1 to i64
  br label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = load i8, ptr %i.s, align 8, !tbaa !55
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %bb.f, label %.split.us

bb.f:                                             ; preds = %.lr.ph.split.split.us
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.w = load i8, ptr %i.v, align 8, !tbaa !55
  %i.x = icmp eq i8 %i.w, 0
  br i1 %i.x, label %.invoke, label %.split.us

bb.g:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !38
  invoke void @_ZN11ast_manager15raise_exceptionEPKc(ptr noundef nonnull align 8 dereferenceable(952) %i.z, ptr noundef nonnull @.str.49) #25
          to label %bb.h unwind label %bb.b

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %9 = or disjoint i64 %indvars.iv.next, 1
  %i.aa = icmp samesign ult i64 %9, %8
  br i1 %i.aa, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !309

._crit_edge:                                      ; preds = %bb.i, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store ptr %3, ptr %i.a, align 16, !tbaa !85
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %4, ptr %i.ab, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !39
  invoke void @_ZN14func_decl_infoC1EiijPK9parameter(ptr noundef nonnull align 8 dereferenceable(19) %7, i32 noundef %i.ad, i32 noundef 8, i32 noundef %1, ptr noundef %2)
          to label %bb.o unwind label %bb.w

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.preheader, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.split.preheader ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %10 = getelementptr inbounds nuw [40 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %10, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.ag = load i8, ptr %i.af, align 8, !tbaa !55
  %i.ah = icmp eq i8 %i.ag, 0
  br i1 %i.ah, label %bb.j, label %.split.us

bb.j:                                             ; preds = %.lr.ph.split.split
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !55
  %i.ak = icmp eq i8 %i.aj, 0
  br i1 %i.ak, label %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit, label %.split.us

.split.us:                                        ; preds = %bb.j, %.lr.ph.split.split, %bb.f, %.lr.ph.split.split.us, %.lr.ph.split.us, %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !38
  invoke void @_ZN11ast_manager15raise_exceptionEPKc(ptr noundef nonnull align 8 dereferenceable(952) %i.am, ptr noundef nonnull @.str.46) #25
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %.split.us
  unreachable

bb.l:                                             ; preds = %.split.us
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

_ZNK6vectorIP4sortLb0EjE4sizeEv.exit:             ; preds = %bb.j
  %i.ao = load i32, ptr %i.ae, align 8, !tbaa !73 ; 2 uses
  %i.ap = load i32, ptr %11, align 8, !tbaa !73   ; 2 uses
  %i.aq = load i32, ptr %i.i, align 4, !tbaa !73
  %.not37 = icmp ult i32 %i.ao, %i.aq
  br i1 %.not37, label %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit51, label %.invoke

_ZNK6vectorIP4sortLb0EjE4sizeEv.exit51:           ; preds = %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit
  %i.ar = load i32, ptr %i.k, align 4, !tbaa !73
  %.not38 = icmp ult i32 %i.ap, %i.ar
  br i1 %.not38, label %bb.n, label %.invoke

bb.m:                                             ; preds = %.invoke
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.n:                                             ; preds = %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit51
  %i.at = zext i32 %i.ao to i64
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.fr62, i64 %i.at
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !85
  %i.aw = zext i32 %i.ap to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %.fr, i64 %i.aw
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !85
  %.not39 = icmp eq ptr %i.av, %i.ay
  br i1 %.not39, label %bb.i, label %.invoke

.invoke:                                          ; preds = %bb.n, %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit, %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit51, %bb.e, %bb.f
  %i.az = phi ptr [ @.str.47, %bb.e ], [ @.str.47, %bb.f ], [ @.str.47, %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit51 ], [ @.str.47, %_ZNK6vectorIP4sortLb0EjE4sizeEv.exit ], [ @.str.48, %bb.n ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !38
  invoke void @_ZN11ast_manager15raise_exceptionEPKc(ptr noundef nonnull align 8 dereferenceable(952) %i.bb, ptr noundef nonnull %i.az) #25
          to label %.cont unwind label %bb.m

.cont:                                            ; preds = %.invoke
  unreachable

bb.o:                                             ; preds = %._crit_edge
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !38
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bf = load i32, ptr %7, align 8, !tbaa !71
  %i.bg = icmp eq i32 %i.bf, -1
  br i1 %i.bg, label %bb.p, label %_ZNK14func_decl_info7is_nullEv.exit.thread.i

bb.p:                                             ; preds = %bb.o
  %i.bh = getelementptr inbounds nuw i8, ptr %7, i64 17
  %i.bi = load i16, ptr %i.bh, align 1
  %i.bj = and i16 %i.bi, 507
  %or.cond.i = icmp eq i16 %i.bj, 0
  br i1 %or.cond.i, label %bb.q, label %_ZNK14func_decl_info7is_nullEv.exit.thread.i

_ZNK14func_decl_info7is_nullEv.exit.thread.i:     ; preds = %bb.p, %bb.o
  br label %bb.q

bb.q:                                             ; preds = %_ZNK14func_decl_info7is_nullEv.exit.thread.i, %bb.p
  %.sink.i = phi ptr [ %7, %_ZNK14func_decl_info7is_nullEv.exit.thread.i ], [ null, %bb.p ]
  %i.bk = invoke noundef ptr @_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_P14func_decl_info(ptr noundef nonnull align 8 dereferenceable(952) %i.bd, ptr noundef nonnull align 8 dereferenceable(8) %i.be, i32 noundef 2, ptr noundef nonnull %i.a, ptr noundef %3, ptr noundef %.sink.i)
          to label %_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_RK14func_decl_info.exit unwind label %bb.x

_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_RK14func_decl_info.exit: ; preds = %bb.q
  %i.bl = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !72 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i, label %_ZN9decl_infoD2Ev.exit, label %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i

_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i: ; preds = %_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_RK14func_decl_info.exit
  %i.bn = getelementptr inbounds i8, ptr %i.bm, i64 -4
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !73 ; 2 uses
  %.not5.i.i.i.i.i.i.i = icmp eq i32 %i.bo, 0
  br i1 %.not5.i.i.i.i.i.i.i, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.07.i.i.i.i.i.i.i = phi i32 [ %i.bq, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bo, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i ]
  %.046.i.i.i.i.i.i.i = phi ptr [ %i.bp, %.lr.ph.i.i.i.i.i.i.i ], [ %i.bm, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i ] ; 2 uses
  call void @_ZN9parameterD1Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %.046.i.i.i.i.i.i.i) #24
  %i.bp = getelementptr inbounds nuw i8, ptr %.046.i.i.i.i.i.i.i, i64 40
  %i.bq = add i32 %.07.i.i.i.i.i.i.i, -1          ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !0

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.bl, align 8, !tbaa !72
  br label %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i

_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i: ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i
  %i.br = phi ptr [ %.pre.i.i.i, %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.loopexit.i.i.i ], [ %i.bm, %_ZNK6vectorI9parameterLb1EjE4sizeEv.exit.i.i.i.i ]
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bs)
          to label %_ZN9decl_infoD2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i
  %i.bt = landingpad { ptr, i32 }
          catch ptr null
  %i.bu = extractvalue { ptr, i32 } %i.bt, 0
  call void @__clang_call_terminate(ptr %i.bu) #27
  unreachable

_ZN9decl_infoD2Ev.exit:                           ; preds = %_ZN11ast_manager12mk_func_declERK6symboljPKP4sortS4_RK14func_decl_info.exit, %_ZN6vectorI9parameterLb1EjE16destroy_elementsEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  %i.bv = load ptr, ptr %6, align 8, !tbaa !82    ; 2 uses
  %.not.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i, label %_ZN6vectorIP4sortLb0EjED2Ev.exit, label %bb.s

bb.s:                                             ; preds = %_ZN9decl_infoD2Ev.exit
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.bw)
          to label %_ZN6vectorIP4sortLb0EjED2Ev.exit unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = landingpad { ptr, i32 }
          catch ptr null
  %i.by = extractvalue { ptr, i32 } %i.bx, 0
  call void @__clang_call_terminate(ptr %i.by) #27
  unreachable

_ZN6vectorIP4sortLb0EjED2Ev.exit:                 ; preds = %_ZN9decl_infoD2Ev.exit, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %i.bz = load ptr, ptr %5, align 8, !tbaa !82    ; 2 uses
  %.not.i.i53 = icmp eq ptr %i.bz, null
  br i1 %.not.i.i53, label %_ZN6vectorIP4sortLb0EjED2Ev.exit54, label %bb.u

bb.u:                                             ; preds = %_ZN6vectorIP4sortLb0EjED2Ev.exit
  %i.ca = getelementptr inbounds i8, ptr %i.bz, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ca)
          to label %_ZN6vectorIP4sortLb0EjED2Ev.exit54 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = landingpad { ptr, i32 }
          catch ptr null
  %i.cc = extractvalue { ptr, i32 } %i.cb, 0
  call void @__clang_call_terminate(ptr %i.cc) #27
  unreachable

_ZN6vectorIP4sortLb0EjED2Ev.exit54:               ; preds = %_ZN6vectorIP4sortLb0EjED2Ev.exit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret ptr %i.bk

bb.w:                                             ; preds = %._crit_edge
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.q
  %i.ce = landingpad { ptr, i32 }
          cleanup
  call void @_ZN9decl_infoD2Ev(ptr noundef nonnull align 8 dead_on_return(19) dereferenceable(19) %7) #24
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.pn = phi { ptr, i32 } [ %i.ce, %bb.x ], [ %i.cd, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  br label %bb.z

bb.z:                                             ; preds = %bb.l, %bb.m, %bb.y, %bb.b
  %.pn43 = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn, %bb.y ], [ %i.an, %bb.l ], [ %i.as, %bb.m ]
  call void @_ZN6vectorIP4sortLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %6) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  call void @_ZN6vectorIP4sortLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  resume { ptr, i32 } %.pn43
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN7datalog14dl_decl_plugin11mk_is_emptyEP4sort(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.ptr_vector.36, align 8       ; 7 uses
  %i.a = alloca ptr, align 8                      ; 2 uses
  %3 = alloca %struct.func_decl_info, align 8     ; 9 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  store ptr null, ptr %2, align 8, !tbaa !82
  %i.b = invoke noundef zeroext i1 @_ZN7datalog14dl_decl_plugin11is_rel_sortEP4sortR10ptr_vectorIS1_E(ptr noundef nonnull readonly align 8 dereferenceable(160) %0, ptr noundef readonly %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.e       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !82     ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN7datalog14dl_decl_plugin11is_rel_sortEP4sort.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 -8
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.d)
          to label %_ZN7datalog14dl_decl_plugin11is_rel_sortEP4sort.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          catch ptr null
  %i.f = extractvalue { ptr, i32 } %i.e, 0
  call void @__clang_call_terminate(ptr %i.f) #27
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.e ], [ %i.ae, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6vectorIP4sortLb0EjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %2) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
end_hunk_0
