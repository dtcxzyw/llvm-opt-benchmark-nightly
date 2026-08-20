inline.NumInlined: 1167
inline.NumDeleted: 509
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK5faiss3NSG6searchERNS_16DistanceComputerEiPlPfRNS_12VisitedTableE:bb.a
  br i1 %.not, label %bb.k, label %bb.s

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr %i.v, ptr %7, align 8, !tbaa !46
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.w, align 8, !tbaa !49
  store i8 0, ptr %i.v, align 8, !tbaa !42
  %i.x = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #17 ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.z = zext nneg i32 %i.x to i64                ; 2 uses
  %i.aa = add nuw nsw i64 %i.z, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.aa)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ab = load ptr, ptr %7, align 8, !tbaa !51
  %i.ac = load i64, ptr %i.w, align 8, !tbaa !49
  %i.ad = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ab, i64 noundef %i.ac, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3) #17 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %i.z)
          to label %bb.o unwind label %bb.n

bb.n:                                             ; preds = %bb.p, %bb.m, %bb.l
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.o:                                             ; preds = %bb.m, %bb.k
  %i.af = call ptr @__cxa_allocate_exception(i64 40) #17 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK5faiss3NSG6searchERNS_16DistanceComputerEiPlPfRNS_12VisitedTableE, ptr noundef nonnull @.str.2, i32 noundef 126)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #26
          to label %bb.aa unwind label %bb.n

bb.q:                                             ; preds = %bb.o
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.af) #17
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  %.pn26 = phi { ptr, i32 } [ %i.ae, %bb.n ], [ %i.ag, %bb.q ]
  %i.ah = load ptr, ptr %7, align 8, !tbaa !51    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.v
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %bb.r
  %i.aj = load i64, ptr %i.v, align 8, !tbaa !42
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  br label %bb.z

bb.s:                                             ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load i32, ptr %i.al, align 8, !tbaa !40
  %.sroa.speculated = tail call i32 @llvm.smax.i32(i32 %i.am, i32 %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !53
  invoke void @_ZNK5faiss3NSG15search_on_graphILb0EiEEvRKNS_3nsg5GraphIT0_EERNS_16DistanceComputerERNS_12VisitedTableEiiRSt6vectorINS2_8NeighborESaISD_EERSC_INS2_4NodeESaISH_EE(ptr noundef nonnull align 8 dereferenceable(5056) %0, ptr noundef nonnull align 8 dereferenceable(25) %i.u, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef %i.ao, i32 noundef %.sroa.speculated, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %.preheader unwind label %bb.v

.preheader:                                       ; preds = %bb.s
  %i.ap = icmp sgt i32 %2, 0
  br i1 %i.ap, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.aq = load ptr, ptr %8, align 8, !tbaa !54    ; 3 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ar = icmp eq i32 %2, 1
  br i1 %i.ar, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.y

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.y
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod54 = trunc i32 %2 to i1
  call void @llvm.assume(i1 %lcmp.mod54)
  %i.as = getelementptr inbounds nuw [12 x i8], ptr %i.aq, i64 %indvars.iv.epil.init ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !57
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.epil.init
  store i64 %i.au, ptr %i.av, align 8, !tbaa !59
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.ax = load float, ptr %i.aw, align 4, !tbaa !60
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.epil.init
  store float %i.ax, ptr %i.ay, align 4, !tbaa !22
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %i.az = load ptr, ptr %9, align 8, !tbaa !61    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.az, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !64
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %i.az to i64
  %i.be = sub i64 %i.bc, %i.bd
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.be) #24
  br label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EED2Ev.exit

_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EED2Ev.exit:  ; preds = %._crit_edge, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.bf = load ptr, ptr %8, align 8, !tbaa !54    ; 3 uses
  %.not.i.i.i33 = icmp eq ptr %i.bf, null
  br i1 %.not.i.i.i33, label %_ZNSt6vectorIN5faiss3nsg8NeighborESaIS2_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EED2Ev.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !65
  %i.bi = ptrtoint ptr %i.bh to i64
  %i.bj = ptrtoint ptr %i.bf to i64
  %i.bk = sub i64 %i.bi, %i.bj
  call void @_ZdlPvm(ptr noundef nonnull %i.bf, i64 noundef %i.bk) #24
  br label %_ZNSt6vectorIN5faiss3nsg8NeighborESaIS2_EED2Ev.exit

_ZNSt6vectorIN5faiss3nsg8NeighborESaIS2_EED2Ev.exit: ; preds = %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EED2Ev.exit, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  ret void

bb.v:                                             ; preds = %bb.s
  %i.bl = landingpad { ptr, i32 }
          cleanup
  %i.bm = load ptr, ptr %9, align 8, !tbaa !61    ; 3 uses
  %.not.i.i.i34 = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i34, label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EED2Ev.exit35, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bn = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !64
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = ptrtoint ptr %i.bm to i64
  %i.br = sub i64 %i.bp, %i.bq
  call void @_ZdlPvm(ptr noundef nonnull %i.bm, i64 noundef %i.br) #24
  br label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EED2Ev.exit35

_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EED2Ev.exit35: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  %i.bs = load ptr, ptr %8, align 8, !tbaa !54    ; 3 uses
  %.not.i.i.i36 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i.i36, label %_ZNSt6vectorIN5faiss3nsg8NeighborESaIS2_EED2Ev.exit37, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EED2Ev.exit35
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !65
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw
  call void @_ZdlPvm(ptr noundef nonnull %i.bs, i64 noundef %i.bx) #24
  br label %_ZNSt6vectorIN5faiss3nsg8NeighborESaIS2_EED2Ev.exit37

_ZNSt6vectorIN5faiss3nsg8NeighborESaIS2_EED2Ev.exit37: ; preds = %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EED2Ev.exit35, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  br label %bb.z

bb.y:                                             ; preds = %bb.y, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.y ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.y ]
  %i.by = getelementptr inbounds nuw [12 x i8], ptr %i.aq, i64 %indvars.iv ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !57
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !59
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 4
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !60
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv
  store float %i.cd, ptr %i.ce, align 4, !tbaa !22
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.cf = getelementptr inbounds nuw [12 x i8], ptr %i.aq, i64 %indvars.iv.next ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !57
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next
  store i64 %i.ch, ptr %i.ci, align 8, !tbaa !59
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !60
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next
  store float %i.ck, ptr %i.cl, align 4, !tbaa !22
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.y, !llvm.loop !66

bb.z:                                             ; preds = %_ZNSt6vectorIN5faiss3nsg8NeighborESaIS2_EED2Ev.exit37, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn28 = phi { ptr, i32 } [ %i.bl, %_ZNSt6vectorIN5faiss3nsg8NeighborESaIS2_EED2Ev.exit37 ], [ %.pn26, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn28

bb.aa:                                            ; preds = %bb.p, %bb.g
  unreachable
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !49   ; 7 uses
  %i.c = icmp ult i64 %i.b, %1
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %1, %i.b                     ; 4 uses
  %i.e = sub i64 9223372036854775807, %i.b
  %i.f = icmp ult i64 %i.e, %i.d
  br i1 %i.f, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #26
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !51     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.j = icmp ult i64 %i.b, 16
  tail call void @llvm.assume(i1 %i.j)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.k = load i64, ptr %i.h, align 8, !tbaa !42
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i
  %i.l = phi i64 [ %i.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i ]
  %.not.i.i.i = icmp ugt i64 %1, %i.l
  br i1 %.not.i.i.i, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.b, i64 noundef 0, ptr noundef null, i64 noundef %i.d)
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i
  %i.m = phi ptr [ %i.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i.i.i ], [ %.pre.i, %bb.d ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.b ; 2 uses
  %cond.i.i.i = icmp eq i64 %i.d, 1
  br i1 %cond.i.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i
  store i8 0, ptr %i.n, align 1, !tbaa !42
  br label %.sink.split.i

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_moveEPcPKcm.exit.i.i.i
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.n, i8 0, i64 %i.d, i1 false)
  br label %.sink.split.i

bb.g:                                             ; preds = %bb.a
  %i.o = icmp ult i64 %1, %i.b
  br i1 %i.o, label %.sink.split.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit

.sink.split.i:                                    ; preds = %bb.g, %bb.f, %bb.e
  store i64 %1, ptr %i.a, align 8, !tbaa !49
  %i.p = load ptr, ptr %0, align 8, !tbaa !51
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %1
  store i8 0, ptr %i.q, align 1, !tbaa !42
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc.exit: ; preds = %bb.g, %.sink.split.i
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i32 noundef) unnamed_addr #5

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5faiss14FaissExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5faiss14FaissExceptionE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !42
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #17
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5faiss3NSG15search_on_graphILb0EiEEvRKNS_3nsg5GraphIT0_EERNS_16DistanceComputerERNS_12VisitedTableEiiRSt6vectorINS2_8NeighborESaISD_EERSC_INS2_4NodeESaISH_EE(ptr noundef nonnull align 8 dereferenceable(5056) %0, ptr noundef nonnull align 8 dereferenceable(25) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %7) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.faiss::RandomGenerator", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  call void @_ZN5faiss15RandomGeneratorC1El(ptr noundef nonnull align 8 dereferenceable(5000) %8, i64 noundef 4660)
  %i.a = add nsw i32 %5, 1                        ; 4 uses
  %i.b = sext i32 %i.a to i64                     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68   ; 2 uses
  %i.e = load ptr, ptr %6, align 8, !tbaa !54     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 12                  ; 3 uses
  %i.j = icmp ult i64 %i.i, %i.b
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = sub nuw nsw i64 %i.b, %i.i
  call void @_ZNSt6vectorIN5faiss3nsg8NeighborESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.k)
  br label %_ZNSt6vectorIN5faiss3nsg8NeighborESaIS2_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.i, %i.b
  br i1 %i.l, label %bb.d, label %_ZNSt6vectorIN5faiss3nsg8NeighborESaIS2_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %i.e, i64 %i.b ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.m
  br i1 %.not.i.i, label %_ZNSt6vectorIN5faiss3nsg8NeighborESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN5faiss3nsg8NeighborES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN5faiss3nsg8NeighborES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.d
  store ptr %i.m, ptr %i.c, align 8, !tbaa !68
  br label %_ZNSt6vectorIN5faiss3nsg8NeighborESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN5faiss3nsg8NeighborESaIS2_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN5faiss3nsg8NeighborES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.n = sext i32 %5 to i64                       ; 6 uses
  %i.o = icmp slt i32 %5, 0
  br i1 %i.o, label %.noexc, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

.noexc:                                           ; preds = %_ZNSt6vectorIN5faiss3nsg8NeighborESaIS2_EE6resizeEm.exit
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #26
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %_ZNSt6vectorIN5faiss3nsg8NeighborESaIS2_EE6resizeEm.exit
  %.not.i.i.i.i = icmp eq i32 %5, 0               ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %.noexc104

.noexc104:                                        ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.p = shl nuw nsw i64 %i.n, 2
  %i.q = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #23 ; 5 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.n ; 2 uses
  store i32 0, ptr %i.q, align 4, !tbaa !40
  %i.s = getelementptr i8, ptr %i.q, i64 4        ; 3 uses
  %i.t = add nsw i64 %i.n, -1                     ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit, label %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc104
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.t, 2   ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 4 %i.s, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit

_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc104, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.16.0 = phi ptr [ %i.r, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.r, %.noexc104 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %.sroa.0137.0 = phi ptr [ %i.q, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.q, %.noexc104 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 10 uses
  %.0.i.i.i.i.i = phi ptr [ %i.v, %_ZSt6fill_nIPimiET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.s, %.noexc104 ], [ null, %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i ] ; 2 uses
  %i.w = load ptr, ptr %3, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.n)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %_ZNSt6vectorIiSaIiEEC2EmRKS0_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !69  ; 3 uses
  %i.ab = sext i32 %i.aa to i64                   ; 3 uses
  %i.ac = icmp slt i32 %i.aa, 0
  br i1 %i.ac, label %bb.f, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i105

bb.f:                                             ; preds = %bb.e
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #26
end_hunk_0
begin_hunk_1_@_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_:bb.a

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %6, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !83
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %0, ptr noundef nonnull align 4 dereferenceable(9) %i.e, i64 9, i1 false), !tbaa.struct !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.e, ptr noundef nonnull align 4 dereferenceable(9) %6, i64 9, i1 false), !tbaa.struct !83
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.s:                                             ; preds = %bb.q
  %i.cr = fcmp olt float %i.ck, %i.cn
  br i1 %i.cr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %5, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !83
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %0, ptr noundef nonnull align 4 dereferenceable(9) %i.ch, i64 9, i1 false), !tbaa.struct !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.ch, ptr noundef nonnull align 4 dereferenceable(9) %5, i64 9, i1 false), !tbaa.struct !83
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.u:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %4, ptr noundef nonnull align 4 dereferenceable(12) %0, i64 12, i1 false), !tbaa.struct !83
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %0, ptr noundef nonnull align 4 dereferenceable(9) %i.cg, i64 9, i1 false), !tbaa.struct !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.cg, ptr noundef nonnull align 4 dereferenceable(9) %4, i64 9, i1 false), !tbaa.struct !83
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader: ; preds = %bb.u, %bb.t, %bb.r, %bb.p, %bb.o, %bb.m
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader, %bb.x
  %.sroa.012.0.i.i = phi ptr [ %i.cw, %bb.x ], [ %i.e, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.x ], [ %storemerge2040, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i.preheader ]
  %i.cs = load float, ptr %i.g, align 4, !tbaa !60 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i ], [ %i.cw, %bb.v ] ; 9 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 4
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !60
  %i.cv = fcmp olt float %i.cu, %i.cs
  %i.cw = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 12 ; 2 uses
  br i1 %i.cv, label %bb.v, label %.preheader.i.i, !llvm.loop !90

.preheader.i.i:                                   ; preds = %bb.v, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.v ] ; 2 uses
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -12 ; 5 uses
  %i.cx = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8
  %i.cy = load float, ptr %i.cx, align 4, !tbaa !60
  %i.cz = fcmp olt float %i.cs, %i.cy
  br i1 %i.cz, label %.preheader.i.i, label %bb.w, !llvm.loop !91

bb.w:                                             ; preds = %.preheader.i.i
  %.not.i.i = icmp ult ptr %.sroa.012.1.i.i, %.sroa.0.1.i.i
  br i1 %.not.i.i, label %bb.x, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.012.1.i.i, i64 12, i1 false), !tbaa.struct !83
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.012.1.i.i, ptr noundef nonnull align 4 dereferenceable(9) %.sroa.0.1.i.i, i64 9, i1 false), !tbaa.struct !83
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.0.1.i.i, ptr noundef nonnull align 4 dereferenceable(9) %3, i64 9, i1 false), !tbaa.struct !83
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_SC_T0_.exit.i, !llvm.loop !92

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit: ; preds = %bb.w
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2040, i64 noundef %i.ce)
  %i.da = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.db = sub i64 %i.da, %i.a
  %.fr52.i = freeze i64 %i.db                     ; 3 uses
  %i.dc = icmp sgt i64 %.fr52.i, 192
  br i1 %i.dc, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit, !llvm.loop !85

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEET_SC_SC_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_SC_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"struct.faiss::nsg::Neighbor", align 4 ; 4 uses
  %3 = alloca %"struct.faiss::nsg::Neighbor", align 4 ; 4 uses
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 192
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %scevgep = getelementptr i8, ptr %0, i64 12
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.017.i.idx = phi i64 [ 12, %.lr.ph.i ], [ %.sroa.0.017.i.add, %bb.g ] ; 4 uses
  %.pn16.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.017.i.ptr, %bb.g ] ; 4 uses
  %.sroa.0.017.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.017.i.idx ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.pn16.i, i64 16
  %i.g = load float, ptr %i.f, align 4, !tbaa !60 ; 4 uses
  %i.h = load float, ptr %i.e, align 4, !tbaa !60
  %i.i = fcmp olt float %i.g, %i.h
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %3, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.017.i.ptr, i64 12, i1 false), !tbaa.struct !83
  %i.j = icmp samesign ugt i64 %.sroa.0.017.i.idx, 12
  br i1 %i.j, label %bb.d, label %bb.e, !prof !93

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.017.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.pn16.i, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.k, ptr noundef nonnull align 4 dereferenceable(9) %0, i64 9, i1 false), !tbaa.struct !83
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i: ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %0, ptr noundef nonnull align 4 dereferenceable(9) %3, i64 9, i1 false), !tbaa.struct !83
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  %.sroa.03.0.copyload.i.i = load i32, ptr %.sroa.0.017.i.ptr, align 4, !tbaa !40
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.pn16.i, i64 20
  %i.l = load i32, ptr %.sroa.5.0..sroa_idx.i.i, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %.pn16.i, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !60
  %i.o = fcmp olt float %i.g, %i.n
  br i1 %i.o, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.08.011.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.sroa.0.017.i.ptr, %bb.f ] ; 3 uses
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.08.011.i.i, i64 -12 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.08.011.i.i, ptr noundef nonnull align 4 dereferenceable(9) %.sroa.0.0.i.i, i64 9, i1 false), !tbaa.struct !83
  %i.p = getelementptr inbounds i8, ptr %.sroa.08.011.i.i, i64 -20
  %i.q = load float, ptr %i.p, align 4, !tbaa !60
  %i.r = fcmp olt float %i.g, %i.q
  br i1 %i.r, label %.lr.ph.i.i, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, !llvm.loop !94

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i, %bb.f
  %.sroa.08.0.lcssa.i.i = phi ptr [ %.sroa.0.017.i.ptr, %bb.f ], [ %.sroa.0.0.i.i, %.lr.ph.i.i ] ; 3 uses
  %.sroa.5.sroa.0.0.extract.trunc.i.i = trunc i32 %i.l to i8
  store i32 %.sroa.03.0.copyload.i.i, ptr %.sroa.08.0.lcssa.i.i, align 4, !tbaa !40
  %.sroa.4.0..sroa_idx5.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i, i64 4
  store float %i.g, ptr %.sroa.4.0..sroa_idx5.i.i, align 4, !tbaa !22
  %.sroa.5.0..sroa_idx7.i.i = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i, i64 8
  store i8 %.sroa.5.sroa.0.0.extract.trunc.i.i, ptr %.sroa.5.0..sroa_idx7.i.i, align 4, !tbaa !75
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i
  %.sroa.0.017.i.add = add nuw nsw i64 %.sroa.0.017.i.idx, 12 ; 2 uses
  %i.s = icmp eq i64 %.sroa.0.017.i.add, 192
  br i1 %i.s, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %bb.b, !llvm.loop !95

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit: ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.u = icmp eq ptr %i.t, %1
  br i1 %i.u, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %.lr.ph.i6

.lr.ph.i6:                                        ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i9
  %.sroa.0.04.i = phi ptr [ %i.ac, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i9 ], [ %i.t, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit ] ; 7 uses
  %.sroa.03.0.copyload.i.i7 = load i32, ptr %.sroa.0.04.i, align 4, !tbaa !40
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i, i64 4
  %.sroa.4.0.copyload.i.i = load float, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !22 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i8 = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i, i64 8
  %i.v = load i32, ptr %.sroa.5.0..sroa_idx.i.i8, align 4
  %i.w = getelementptr inbounds i8, ptr %.sroa.0.04.i, i64 -8
  %i.x = load float, ptr %i.w, align 4, !tbaa !60
  %i.y = fcmp olt float %.sroa.4.0.copyload.i.i, %i.x
  br i1 %i.y, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i9

.lr.ph.i.i14:                                     ; preds = %.lr.ph.i6, %.lr.ph.i.i14
  %.sroa.08.011.i.i15 = phi ptr [ %.sroa.0.0.i.i16, %.lr.ph.i.i14 ], [ %.sroa.0.04.i, %.lr.ph.i6 ] ; 3 uses
  %.sroa.0.0.i.i16 = getelementptr inbounds i8, ptr %.sroa.08.011.i.i15, i64 -12 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.08.011.i.i15, ptr noundef nonnull align 4 dereferenceable(9) %.sroa.0.0.i.i16, i64 9, i1 false), !tbaa.struct !83
  %i.z = getelementptr inbounds i8, ptr %.sroa.08.011.i.i15, i64 -20
  %i.aa = load float, ptr %i.z, align 4, !tbaa !60
  %i.ab = fcmp olt float %.sroa.4.0.copyload.i.i, %i.aa
  br i1 %i.ab, label %.lr.ph.i.i14, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i9, !llvm.loop !94

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i9: ; preds = %.lr.ph.i.i14, %.lr.ph.i6
  %.sroa.08.0.lcssa.i.i10 = phi ptr [ %.sroa.0.04.i, %.lr.ph.i6 ], [ %.sroa.0.0.i.i16, %.lr.ph.i.i14 ] ; 3 uses
  %.sroa.5.sroa.0.0.extract.trunc.i.i11 = trunc i32 %i.v to i8
  store i32 %.sroa.03.0.copyload.i.i7, ptr %.sroa.08.0.lcssa.i.i10, align 4, !tbaa !40
  %.sroa.4.0..sroa_idx5.i.i12 = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i10, i64 4
  store float %.sroa.4.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx5.i.i12, align 4, !tbaa !22
  %.sroa.5.0..sroa_idx7.i.i13 = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i10, i64 8
  store i8 %.sroa.5.sroa.0.0.extract.trunc.i.i11, ptr %.sroa.5.0..sroa_idx7.i.i13, align 4, !tbaa !75
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i, i64 12 ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %1
  br i1 %i.ad, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %.lr.ph.i6, !llvm.loop !96

bb.h:                                             ; preds = %bb.a
  %i.ae = icmp eq ptr %0, %1
  br i1 %i.ae, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %.preheader.i17

.preheader.i17:                                   ; preds = %bb.h
  %.sroa.0.015.i18 = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.af = icmp eq ptr %.sroa.0.015.i18, %1
  br i1 %i.af, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.preheader.i17
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 4
  br label %bb.i

bb.i:                                             ; preds = %bb.o, %.lr.ph.i19
  %.sroa.0.017.i20 = phi ptr [ %.sroa.0.015.i18, %.lr.ph.i19 ], [ %.sroa.0.0.i29, %bb.o ] ; 7 uses
  %.pn16.i21 = phi ptr [ %0, %.lr.ph.i19 ], [ %.sroa.0.017.i20, %bb.o ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.pn16.i21, i64 16
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !60 ; 4 uses
  %i.aj = load float, ptr %i.ag, align 4, !tbaa !60
  %i.ak = fcmp olt float %i.ai, %i.aj
  br i1 %i.ak, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.0.017.i20, i64 12, i1 false), !tbaa.struct !83
  %i.al = ptrtoint ptr %.sroa.0.017.i20 to i64
  %i.am = sub i64 %i.al, %i.b                     ; 3 uses
  %i.an = icmp sgt i64 %i.am, 12
  br i1 %i.an, label %bb.k, label %bb.l, !prof !93

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %.sroa.0.015.i18, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.am, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i33

bb.l:                                             ; preds = %bb.j
  %i.ao = icmp eq i64 %i.am, 12
  br i1 %i.ao, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i33

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %.pn16.i21, i64 12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %i.ap, ptr noundef nonnull align 4 dereferenceable(9) %0, i64 9, i1 false), !tbaa.struct !83
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i33

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i33: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %0, ptr noundef nonnull align 4 dereferenceable(9) %2, i64 9, i1 false), !tbaa.struct !83
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.o

bb.n:                                             ; preds = %bb.i
  %.sroa.03.0.copyload.i.i22 = load i32, ptr %.sroa.0.017.i20, align 4, !tbaa !40
  %.sroa.5.0..sroa_idx.i.i23 = getelementptr inbounds nuw i8, ptr %.pn16.i21, i64 20
  %i.aq = load i32, ptr %.sroa.5.0..sroa_idx.i.i23, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %.pn16.i21, i64 4
  %i.as = load float, ptr %i.ar, align 4, !tbaa !60
  %i.at = fcmp olt float %i.ai, %i.as
  br i1 %i.at, label %.lr.ph.i.i30, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i24

.lr.ph.i.i30:                                     ; preds = %bb.n, %.lr.ph.i.i30
  %.sroa.08.011.i.i31 = phi ptr [ %.sroa.0.0.i.i32, %.lr.ph.i.i30 ], [ %.sroa.0.017.i20, %bb.n ] ; 3 uses
  %.sroa.0.0.i.i32 = getelementptr inbounds i8, ptr %.sroa.08.011.i.i31, i64 -12 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(9) %.sroa.08.011.i.i31, ptr noundef nonnull align 4 dereferenceable(9) %.sroa.0.0.i.i32, i64 9, i1 false), !tbaa.struct !83
  %i.au = getelementptr inbounds i8, ptr %.sroa.08.011.i.i31, i64 -20
  %i.av = load float, ptr %i.au, align 4, !tbaa !60
  %i.aw = fcmp olt float %i.ai, %i.av
  br i1 %i.aw, label %.lr.ph.i.i30, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i24, !llvm.loop !94

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i24: ; preds = %.lr.ph.i.i30, %bb.n
  %.sroa.08.0.lcssa.i.i25 = phi ptr [ %.sroa.0.017.i20, %bb.n ], [ %.sroa.0.0.i.i32, %.lr.ph.i.i30 ] ; 3 uses
  %.sroa.5.sroa.0.0.extract.trunc.i.i26 = trunc i32 %i.aq to i8
  store i32 %.sroa.03.0.copyload.i.i22, ptr %.sroa.08.0.lcssa.i.i25, align 4, !tbaa !40
  %.sroa.4.0..sroa_idx5.i.i27 = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i25, i64 4
  store float %i.ai, ptr %.sroa.4.0..sroa_idx5.i.i27, align 4, !tbaa !22
  %.sroa.5.0..sroa_idx7.i.i28 = getelementptr inbounds nuw i8, ptr %.sroa.08.0.lcssa.i.i25, i64 8
  store i8 %.sroa.5.sroa.0.0.extract.trunc.i.i26, ptr %.sroa.5.0..sroa_idx7.i.i28, align 4, !tbaa !75
  br label %bb.o

bb.o:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i24, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEES9_ET0_T_SB_SA_.exit.i33
  %.sroa.0.0.i29 = getelementptr inbounds nuw i8, ptr %.sroa.0.017.i20, i64 12 ; 2 uses
  %i.ax = icmp eq ptr %.sroa.0.0.i29, %1
  br i1 %i.ax, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit, label %bb.i, !llvm.loop !95

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit: ; preds = %bb.o, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops14_Val_less_iterEEvT_T0_.exit.i9, %.preheader.i17, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg8NeighborESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #15

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss3NSG5buildEPNS_5IndexElRKNS_3nsg5GraphIlEEb(ptr noundef nonnull align 8 dereferenceable(5056) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(25) %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::vector.8", align 8     ; 13 uses
  %7 = alloca %"struct.faiss::nsg::Graph.15", align 8 ; 12 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !59
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !43, !range !44, !noundef !45
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = load i32, ptr %0, align 8
  %.not = icmp ne i32 %i.e, 0
  %or.cond.not = select i1 %i.d, i1 true, i1 %.not
  br i1 %or.cond.not, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.f, ptr %5, align 8, !tbaa !46
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.g, align 8, !tbaa !49
  store i8 0, ptr %i.f, align 8, !tbaa !42
  %i.h = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #17 ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.j = zext nneg i32 %i.h to i64                ; 2 uses
  %i.k = add nuw nsw i64 %i.j, 1
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.k)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %5, align 8, !tbaa !51
  %i.m = load i64, ptr %i.g, align 8, !tbaa !49
  %i.n = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.l, i64 noundef %i.m, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) #17 ; 0 uses
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.j)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.g, %bb.d, %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.p = call ptr @__cxa_allocate_exception(i64 40) #17 ; 3 uses
  invoke void @_ZN5faiss14FaissExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSA_i(ptr noundef nonnull align 8 dereferenceable(40) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5faiss3NSG5buildEPNS_5IndexElRKNS_3nsg5GraphIlEEb, ptr noundef nonnull @.str.2, i32 noundef 147)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTIN5faiss14FaissExceptionE, ptr nonnull @_ZN5faiss14FaissExceptionD2Ev) #26
          to label %bb.ao unwind label %bb.e

bb.h:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.p) #17
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %.pn36 = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.q, %bb.h ]
  %i.r = load ptr, ptr %5, align 8, !tbaa !51     ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.f
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  %i.t = load i64, ptr %i.f, align 8, !tbaa !42
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.u) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  br label %bb.an

bb.j:                                             ; preds = %bb.a
  br i1 %4, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = load i32, ptr %i.v, align 4, !tbaa !37
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !97
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !98
  %i.ab = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %i.w, i32 noundef %i.y, i32 noundef %i.aa) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ac = trunc i64 %2 to i32                     ; 3 uses
  store i32 %i.ac, ptr %0, align 8, !tbaa !24
  tail call void @_ZN5faiss3NSG10init_graphEPNS_5IndexERKNS_3nsg5GraphIlEE(ptr noundef nonnull align 8 dereferenceable(5056) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(25) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.ad = icmp ugt i64 %2, 2305843009213693951
  br i1 %i.ad, label %bb.m, label %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #26
          to label %.noexc unwind label %bb.ac

.noexc:                                           ; preds = %bb.m
  unreachable

_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %bb.l
  %.not.i.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i, label %bb.n

_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  br label %.loopexit

bb.n:                                             ; preds = %_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_.exit.i
  %i.ae = shl nuw nsw i64 %2, 2                   ; 3 uses
  %i.af = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #23
          to label %.noexc40 unwind label %bb.ac  ; 5 uses

.noexc40:                                         ; preds = %bb.n
  store ptr %i.af, ptr %6, align 8, !tbaa !99
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %2
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !101
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.af, i8 0, i64 %i.ae, i1 false), !tbaa !40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ae
  br label %.loopexit

.loopexit:                                        ; preds = %.noexc40, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i
  %i.aj = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %i.af, %.noexc40 ]
  %.0.i.i.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIiSaIiEEC2EmRKS0_.exit.thread.i ], [ %i.ai, %.noexc40 ]
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.ak, align 8, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !37 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5faiss3nsg5GraphINS0_4NodeEEE, i64 16), ptr %7, align 8, !tbaa !15
  %i.an = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 %i.am, ptr %i.an, align 8, !tbaa !103
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 %i.ac, ptr %i.ao, align 4, !tbaa !105
  %i.ap = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 3 uses
  store i8 1, ptr %i.ap, align 8, !tbaa !106
  %sext = shl i64 %2, 32
  %i.aq = ashr exact i64 %sext, 32                ; 2 uses
  %i.ar = sext i32 %i.am to i64
end_hunk_1
begin_hunk_2_@_ZNK5faiss3NSG15search_on_graphILb1ElEEvRKNS_3nsg5GraphIT0_EERNS_16DistanceComputerERNS_12VisitedTableEiiRSt6vectorINS2_8NeighborESaISD_EERSC_INS2_4NodeESaISH_EE:bb.a
  %i.hr = ptrtoint ptr %.sroa.16.0 to i64
  %i.hs = ptrtoint ptr %.sroa.0154.0 to i64
  %i.ht = sub i64 %i.hr, %i.hs
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0154.0, i64 noundef %i.ht) #24
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit131

_ZNSt6vectorIiSaIiEED2Ev.exit131:                 ; preds = %bb.bc, %_ZNSt6vectorIlSaIlEED2Ev.exit129
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  resume { ptr, i32 } %.pn101.pn.pn
}

; Function Attrs: mustprogress uwtable
define void @_ZN5faiss3NSG10sync_pruneEiRSt6vectorINS_3nsg4NodeESaIS3_EERNS_16DistanceComputerERNS_12VisitedTableERKNS2_5GraphIlEERNSB_IS3_EE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(5056) %0, i32 noundef %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(25) %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !160  ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.e = sext i32 %1 to i64                       ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit, %bb.a
  %i.h = load ptr, ptr %2, align 8, !tbaa !178    ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !178  ; 4 uses
  %i.k = icmp eq ptr %i.h, %i.j
  br i1 %i.k, label %.preheader, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg4NodeESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg4NodeESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit: ; preds = %._crit_edge
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.h to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 3
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.q = shl nuw nsw i64 %i.p, 1
  %i.r = xor i64 %i.q, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg4NodeESt6vectorIS4_SaIS4_EEEElNS0_5__ops15_Iter_less_iterEEvT_SC_T0_T1_(ptr %i.h, ptr %i.j, i64 noundef %i.r)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg4NodeESt6vectorIS4_SaIS4_EEEENS0_5__ops15_Iter_less_iterEEvT_SC_T0_(ptr %i.h, ptr %i.j)
  %.pre = load ptr, ptr %2, align 8, !tbaa !178   ; 4 uses
  %.pre222 = load ptr, ptr %i.i, align 8, !tbaa !178 ; 2 uses
  %i.s = icmp eq ptr %.pre, %.pre222
  br i1 %i.s, label %.preheader, label %bb.l

.preheader:                                       ; preds = %._crit_edge, %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg4NodeESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !37   ; 3 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph191, label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EED2Ev.exit

.lr.ph191:                                        ; preds = %.preheader
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !107
  %i.y = sext i32 %1 to i64
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !103
  %i.ab = sext i32 %i.aa to i64
  %i.ac = mul nsw i64 %i.ab, %i.y
  %i.ad = getelementptr [8 x i8], ptr %i.x, i64 %i.ac ; 9 uses
  %wide.trip.count220 = zext nneg i32 %i.u to i64 ; 2 uses
  %xtraiter295 = and i64 %wide.trip.count220, 7   ; 3 uses
  %i.ae = icmp ult i32 %i.u, 8
  br i1 %i.ae, label %.epil.preheader294, label %.lr.ph191.new

.lr.ph191.new:                                    ; preds = %.lr.ph191
  %unroll_iter299 = and i64 %wide.trip.count220, 2147483640
  br label %bb.k

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit ] ; 2 uses
  %i.af = phi i32 [ %i.b, %.lr.ph ], [ %i.bt, %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit ]
  %i.ag = load ptr, ptr %i.d, align 8, !tbaa !179
  %i.ah = sext i32 %i.af to i64
  %i.ai = mul nsw i64 %i.ah, %i.e
  %i.aj = getelementptr [8 x i8], ptr %i.ag, i64 %i.ai
  %i.ak = getelementptr [8 x i8], ptr %i.aj, i64 %indvars.iv
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !59 ; 2 uses
  %i.am = trunc i64 %i.al to i32                  ; 4 uses
  %i.an = icmp slt i32 %i.am, 0
  br i1 %i.an, label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ao = load i32, ptr %0, align 8, !tbaa !24
  %.not82 = icmp sgt i32 %i.ao, %i.am
  br i1 %.not82, label %bb.d, label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit

bb.d:                                             ; preds = %bb.c
  %i.ap = and i64 %i.al, 2147483647               ; 2 uses
  %i.aq = load ptr, ptr %4, align 8, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef zeroext i1 %i.as(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %i.ap)
  br i1 %i.at, label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = load ptr, ptr %3, align 8, !tbaa !15
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef float %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.e, i64 noundef %i.ap) ; 2 uses
  %i.ay = load ptr, ptr %i.f, align 8, !tbaa !169 ; 5 uses
  %i.az = load ptr, ptr %i.g, align 8, !tbaa !64
  %.not.i = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.am, ptr %i.ay, align 4, !tbaa !146
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 4
  store float %i.ax, ptr %i.ba, align 4, !tbaa !174
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr %i.bb, ptr %i.f, align 8, !tbaa !169
  br label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit

bb.g:                                             ; preds = %bb.e
  %i.bc = load ptr, ptr %2, align 8, !tbaa !61    ; 4 uses
  %i.bd = ptrtoint ptr %i.ay to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be                    ; 6 uses
  %i.bg = icmp eq i64 %i.bf, 9223372036854775800
  br i1 %i.bg, label %bb.h, label %_ZNKSt6vectorIN5faiss3nsg4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #26
  unreachable

_ZNKSt6vectorIN5faiss3nsg4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.g
  %i.bh = ashr exact i64 %i.bf, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bh, i64 1)
  %i.bi = add nsw i64 %.sroa.speculated.i.i.i, %i.bh ; 2 uses
  %i.bj = icmp ult i64 %i.bi, %i.bh
  %i.bk = tail call i64 @llvm.umin.i64(i64 %i.bi, i64 1152921504606846975)
  %i.bl = select i1 %i.bj, i64 1152921504606846975, i64 %i.bk ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bl, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.bm = shl nuw nsw i64 %i.bl, 3
  %i.bn = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bm) #23 ; 4 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 %i.bf ; 3 uses
  store i32 %i.am, ptr %i.bo, align 4, !tbaa !146
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  store float %i.ax, ptr %i.bp, align 4, !tbaa !174
  %i.bq = icmp sgt i64 %i.bf, 0
  br i1 %i.bq, label %bb.i, label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27.i.i

bb.i:                                             ; preds = %_ZNKSt6vectorIN5faiss3nsg4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bn, ptr align 4 %i.bc, i64 %i.bf, i1 false)
  br label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27.i.i

_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27.i.i: ; preds = %bb.i, %_ZNKSt6vectorIN5faiss3nsg4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %.not.i28.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i28.i.i, label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.bf) #24
  br label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.j, %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit27.i.i
  store ptr %i.bn, ptr %2, align 8, !tbaa !61
  store ptr %i.br, ptr %i.f, align 8, !tbaa !169
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bl
  store ptr %i.bs, ptr %i.g, align 8, !tbaa !64
  br label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit

_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE12emplace_backIJRiRfEEERS2_DpOT_.exit: ; preds = %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE17_M_realloc_insertIJRiRfEEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, %bb.f, %bb.b, %bb.c, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bt = load i32, ptr %i.a, align 8, !tbaa !160 ; 2 uses
  %i.bu = sext i32 %i.bt to i64
  %i.bv = icmp slt i64 %indvars.iv.next, %i.bu
  br i1 %i.bv, label %bb.b, label %._crit_edge, !llvm.loop !180

bb.k:                                             ; preds = %bb.k, %.lr.ph191.new
  %indvars.iv217 = phi i64 [ 0, %.lr.ph191.new ], [ %indvars.iv.next218.7, %bb.k ] ; 9 uses
  %niter300 = phi i64 [ 0, %.lr.ph191.new ], [ %niter300.next.7, %bb.k ]
  %i.bw = getelementptr [8 x i8], ptr %i.ad, i64 %indvars.iv217
  store i32 -1, ptr %i.bw, align 4, !tbaa !146
  %i.bx = getelementptr [8 x i8], ptr %i.ad, i64 %indvars.iv217
  %i.by = getelementptr i8, ptr %i.bx, i64 8
  store i32 -1, ptr %i.by, align 4, !tbaa !146
  %i.bz = getelementptr [8 x i8], ptr %i.ad, i64 %indvars.iv217
  %i.ca = getelementptr i8, ptr %i.bz, i64 16
  store i32 -1, ptr %i.ca, align 4, !tbaa !146
  %i.cb = getelementptr [8 x i8], ptr %i.ad, i64 %indvars.iv217
  %i.cc = getelementptr i8, ptr %i.cb, i64 24
  store i32 -1, ptr %i.cc, align 4, !tbaa !146
  %i.cd = getelementptr [8 x i8], ptr %i.ad, i64 %indvars.iv217
  %i.ce = getelementptr i8, ptr %i.cd, i64 32
  store i32 -1, ptr %i.ce, align 4, !tbaa !146
  %i.cf = getelementptr [8 x i8], ptr %i.ad, i64 %indvars.iv217
  %i.cg = getelementptr i8, ptr %i.cf, i64 40
  store i32 -1, ptr %i.cg, align 4, !tbaa !146
  %i.ch = getelementptr [8 x i8], ptr %i.ad, i64 %indvars.iv217
  %i.ci = getelementptr i8, ptr %i.ch, i64 48
  store i32 -1, ptr %i.ci, align 4, !tbaa !146
  %i.cj = getelementptr [8 x i8], ptr %i.ad, i64 %indvars.iv217
  %i.ck = getelementptr i8, ptr %i.cj, i64 56
  store i32 -1, ptr %i.ck, align 4, !tbaa !146
  %indvars.iv.next218.7 = add nuw nsw i64 %indvars.iv217, 8 ; 2 uses
  %niter300.next.7 = add nuw i64 %niter300, 8     ; 2 uses
  %niter300.ncmp.7 = icmp eq i64 %niter300.next.7, %unroll_iter299
  br i1 %niter300.ncmp.7, label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EED2Ev.exit.loopexit.unr-lcssa, label %bb.k, !llvm.loop !181

bb.l:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN5faiss3nsg4NodeESt6vectorIS4_SaIS4_EEEEEvT_SA_.exit
  %i.cl = load i32, ptr %.pre, align 4, !tbaa !146
  %i.cm = icmp eq i32 %i.cl, %1                   ; 3 uses
  %spec.select = zext i1 %i.cm to i32
  %i.cn = ptrtoint ptr %.pre222 to i64
  %i.co = ptrtoint ptr %.pre to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = lshr exact i64 %i.cp, 3
  %i.cr = trunc i64 %i.cq to i32
  %.not = icmp slt i32 %spec.select, %i.cr
  br i1 %.not, label %_ZNKSt6vectorIN5faiss3nsg4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i84, label %.preheader144

.preheader144:                                    ; preds = %bb.l
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !37 ; 3 uses
  %i.cu = icmp sgt i32 %i.ct, 0
  br i1 %i.cu, label %.lr.ph165, label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EED2Ev.exit

.lr.ph165:                                        ; preds = %.preheader144
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !107
  %i.cx = sext i32 %1 to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !103
  %i.da = sext i32 %i.cz to i64
  %i.db = mul nsw i64 %i.da, %i.cx
  %i.dc = getelementptr [8 x i8], ptr %i.cw, i64 %i.db ; 9 uses
  %wide.trip.count = zext nneg i32 %i.ct to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.dd = icmp ult i32 %i.ct, 8
  br i1 %i.dd, label %.epil.preheader, label %.lr.ph165.new

.lr.ph165.new:                                    ; preds = %.lr.ph165
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph165.new
  %indvars.iv205 = phi i64 [ 0, %.lr.ph165.new ], [ %indvars.iv.next206.7, %bb.m ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph165.new ], [ %niter.next.7, %bb.m ]
  %i.de = getelementptr [8 x i8], ptr %i.dc, i64 %indvars.iv205
  store i32 -1, ptr %i.de, align 4, !tbaa !146
  %i.df = getelementptr [8 x i8], ptr %i.dc, i64 %indvars.iv205
  %i.dg = getelementptr i8, ptr %i.df, i64 8
  store i32 -1, ptr %i.dg, align 4, !tbaa !146
  %i.dh = getelementptr [8 x i8], ptr %i.dc, i64 %indvars.iv205
  %i.di = getelementptr i8, ptr %i.dh, i64 16
  store i32 -1, ptr %i.di, align 4, !tbaa !146
  %i.dj = getelementptr [8 x i8], ptr %i.dc, i64 %indvars.iv205
  %i.dk = getelementptr i8, ptr %i.dj, i64 24
  store i32 -1, ptr %i.dk, align 4, !tbaa !146
  %i.dl = getelementptr [8 x i8], ptr %i.dc, i64 %indvars.iv205
  %i.dm = getelementptr i8, ptr %i.dl, i64 32
  store i32 -1, ptr %i.dm, align 4, !tbaa !146
  %i.dn = getelementptr [8 x i8], ptr %i.dc, i64 %indvars.iv205
  %i.do = getelementptr i8, ptr %i.dn, i64 40
  store i32 -1, ptr %i.do, align 4, !tbaa !146
  %i.dp = getelementptr [8 x i8], ptr %i.dc, i64 %indvars.iv205
  %i.dq = getelementptr i8, ptr %i.dp, i64 48
  store i32 -1, ptr %i.dq, align 4, !tbaa !146
  %i.dr = getelementptr [8 x i8], ptr %i.dc, i64 %indvars.iv205
  %i.ds = getelementptr i8, ptr %i.dr, i64 56
  store i32 -1, ptr %i.ds, align 4, !tbaa !146
  %indvars.iv.next206.7 = add nuw nsw i64 %indvars.iv205, 8 ; 2 uses
  %niter.next.7 = add nuw i64 %niter, 8           ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EED2Ev.exit.loopexit292.unr-lcssa, label %bb.m, !llvm.loop !182

_ZNKSt6vectorIN5faiss3nsg4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i84: ; preds = %bb.l
  %i.dt = zext i1 %i.cm to i64
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %i.dt
  %i.dv = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #23 ; 5 uses
  %i.dw = load i64, ptr %i.du, align 4
  store i64 %i.dw, ptr %i.dv, align 4
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !37 ; 4 uses
  %i.ea = icmp ugt i32 %i.dz, 1
  br i1 %i.ea, label %.lr.ph173, label %.critedge

.lr.ph173:                                        ; preds = %_ZNKSt6vectorIN5faiss3nsg4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i84
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 12
  %indvars.iv.next210261 = select i1 %i.cm, i64 2, i64 1 ; 2 uses
  %i.ec = load ptr, ptr %i.i, align 8, !tbaa !169
  %i.ed = load ptr, ptr %2, align 8, !tbaa !61    ; 2 uses
  %i.ee = ptrtoint ptr %i.ec to i64
  %i.ef = ptrtoint ptr %i.ed to i64
  %i.eg = sub i64 %i.ee, %i.ef
  %sext262 = shl i64 %i.eg, 29
  %i.eh = ashr i64 %sext262, 32
  %i.ei = icmp slt i64 %indvars.iv.next210261, %i.eh
  br i1 %i.ei, label %.lr.ph267, label %.critedge

bb.n:                                             ; preds = %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE9push_backERKS2_.exit97
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv.next210266, 1 ; 2 uses
  %i.ej = load ptr, ptr %i.i, align 8, !tbaa !169
  %i.ek = load ptr, ptr %2, align 8, !tbaa !61    ; 2 uses
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.el, %i.em
  %sext = shl i64 %i.en, 29
  %i.eo = ashr i64 %sext, 32
  %i.ep = icmp slt i64 %indvars.iv.next210, %i.eo
  br i1 %i.ep, label %.lr.ph267, label %.critedge, !llvm.loop !183

.lr.ph267:                                        ; preds = %.lr.ph173, %bb.n
  %i.eq = phi ptr [ %i.ek, %bb.n ], [ %i.ed, %.lr.ph173 ]
  %indvars.iv.next210266 = phi i64 [ %indvars.iv.next210, %bb.n ], [ %indvars.iv.next210261, %.lr.ph173 ] ; 3 uses
  %.sroa.0.0169265 = phi ptr [ %.sroa.0.1, %bb.n ], [ %i.dv, %.lr.ph173 ] ; 9 uses
  %.sroa.17.0170264 = phi ptr [ %.sroa.17.1, %bb.n ], [ %i.dx, %.lr.ph173 ] ; 5 uses
  %.sroa.28.0171263 = phi ptr [ %.sroa.28.1, %bb.n ], [ %i.dx, %.lr.ph173 ] ; 6 uses
  %i.er = phi i64 [ %i.gd, %bb.n ], [ 8, %.lr.ph173 ] ; 5 uses
  %i.es = phi i64 [ %i.ge, %bb.n ], [ 1, %.lr.ph173 ] ; 6 uses
  %i.et = phi i32 [ %i.gf, %bb.n ], [ %i.dz, %.lr.ph173 ]
  %i.eu = load i32, ptr %i.eb, align 4, !tbaa !98
  %i.ev = sext i32 %i.eu to i64
  %i.ew = icmp slt i64 %indvars.iv.next210266, %i.ev
  br i1 %i.ew, label %bb.o, label %.critedge

bb.o:                                             ; preds = %.lr.ph267
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %indvars.iv.next210266 ; 4 uses
  %.not192 = icmp eq i64 %i.es, 0
  br i1 %.not192, label %.critedge143.loopexit, label %.lr.ph168

.lr.ph168:                                        ; preds = %bb.o
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 4
  br label %bb.q

bb.p:                                             ; preds = %bb.s
  %i.ez = add nuw i64 %.065166, 1                 ; 2 uses
  %exitcond208.not = icmp eq i64 %i.ez, %i.es
  br i1 %exitcond208.not, label %.critedge143.loopexit, label %bb.q, !llvm.loop !184

bb.q:                                             ; preds = %.lr.ph168, %bb.p
  %.065166 = phi i64 [ 0, %.lr.ph168 ], [ %i.ez, %bb.p ] ; 2 uses
  %i.fa = load i32, ptr %i.ex, align 4, !tbaa !146 ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0169265, i64 %.065166
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !146 ; 2 uses
  %i.fd = icmp eq i32 %i.fa, %i.fc
  br i1 %i.fd, label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE9push_backERKS2_.exit97, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fe = sext i32 %i.fc to i64
  %i.ff = sext i32 %i.fa to i64
  %i.fg = load ptr, ptr %3, align 8, !tbaa !15
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = invoke noundef float %i.fi(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %i.fe, i64 noundef %i.ff)
          to label %bb.s unwind label %.thread134

bb.s:                                             ; preds = %bb.r
  %i.fk = load float, ptr %i.ey, align 4, !tbaa !174
  %i.fl = fcmp uge float %i.fj, %i.fk
  br i1 %i.fl, label %bb.p, label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE9push_backERKS2_.exit97

.thread134:                                       ; preds = %bb.r
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EED2Ev.exit100

.critedge143.loopexit:                            ; preds = %bb.p, %bb.o
  %.not.i88 = icmp eq ptr %.sroa.17.0170264, %.sroa.28.0171263
  br i1 %.not.i88, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.critedge143.loopexit
  %i.fn = load i64, ptr %i.ex, align 4
  store i64 %i.fn, ptr %.sroa.17.0170264, align 4
  %i.fo = getelementptr inbounds nuw i8, ptr %.sroa.17.0170264, i64 8
  br label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE9push_backERKS2_.exit97

bb.u:                                             ; preds = %.critedge143.loopexit
  %i.fp = icmp eq i64 %i.er, 9223372036854775800
  br i1 %i.fp, label %bb.v, label %_ZNKSt6vectorIN5faiss3nsg4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i89

bb.v:                                             ; preds = %bb.u
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.17) #26
          to label %.noexc95 unwind label %.loopexit.split-lp

.noexc95:                                         ; preds = %bb.v
  unreachable

_ZNKSt6vectorIN5faiss3nsg4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i89: ; preds = %bb.u
  %.sroa.speculated.i.i.i90 = tail call i64 @llvm.umax.i64(i64 %i.es, i64 1)
  %i.fq = add nsw i64 %.sroa.speculated.i.i.i90, %i.es ; 2 uses
  %i.fr = icmp ult i64 %i.fq, %i.es
  %i.fs = tail call i64 @llvm.umin.i64(i64 %i.fq, i64 1152921504606846975)
  %i.ft = select i1 %i.fr, i64 1152921504606846975, i64 %i.fs ; 3 uses
  %.not.i.i.i91 = icmp ne i64 %i.ft, 0
  tail call void @llvm.assume(i1 %.not.i.i.i91)
  %i.fu = shl nuw nsw i64 %i.ft, 3
  %i.fv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fu) #23
          to label %.noexc96 unwind label %.loopexit ; 4 uses

.noexc96:                                         ; preds = %_ZNKSt6vectorIN5faiss3nsg4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i89
  %i.fw = getelementptr inbounds i8, ptr %i.fv, i64 %i.er ; 2 uses
  %i.fx = load i64, ptr %i.ex, align 4
  store i64 %i.fx, ptr %i.fw, align 4
  %i.fy = icmp sgt i64 %i.er, 0
  br i1 %i.fy, label %bb.w, label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i94

bb.w:                                             ; preds = %.noexc96
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fv, ptr align 4 %.sroa.0.0169265, i64 %i.er, i1 false)
  br label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i94

_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i94: ; preds = %bb.w, %.noexc96
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 8
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0169265, i64 noundef %i.er) #24
  %i.ga = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.ft
  br label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE9push_backERKS2_.exit97

_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE9push_backERKS2_.exit97: ; preds = %bb.q, %bb.s, %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i94, %bb.t
  %.sroa.0.1 = phi ptr [ %i.fv, %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i94 ], [ %.sroa.0.0169265, %bb.t ], [ %.sroa.0.0169265, %bb.s ], [ %.sroa.0.0169265, %bb.q ] ; 4 uses
  %.sroa.17.1 = phi ptr [ %i.fz, %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i94 ], [ %i.fo, %bb.t ], [ %.sroa.17.0170264, %bb.s ], [ %.sroa.17.0170264, %bb.q ] ; 2 uses
  %.sroa.28.1 = phi ptr [ %i.ga, %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i94 ], [ %.sroa.28.0171263, %bb.t ], [ %.sroa.28.0171263, %bb.s ], [ %.sroa.28.0171263, %bb.q ] ; 3 uses
  %i.gb = ptrtoint ptr %.sroa.17.1 to i64
  %i.gc = ptrtoint ptr %.sroa.0.1 to i64
  %i.gd = sub i64 %i.gb, %i.gc                    ; 2 uses
  %i.ge = ashr exact i64 %i.gd, 3                 ; 4 uses
  %i.gf = load i32, ptr %i.dy, align 4, !tbaa !37 ; 4 uses
  %i.gg = sext i32 %i.gf to i64
  %i.gh = icmp ult i64 %i.ge, %i.gg
  br i1 %i.gh, label %bb.n, label %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE9push_backERKS2_.exit97..critedge.loopexit_crit_edge, !llvm.loop !183

_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE9push_backERKS2_.exit97..critedge.loopexit_crit_edge: ; preds = %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE9push_backERKS2_.exit97
  br label %.critedge, !llvm.loop !183

.critedge:                                        ; preds = %bb.n, %.lr.ph267, %.lr.ph173, %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE9push_backERKS2_.exit97..critedge.loopexit_crit_edge, %_ZNKSt6vectorIN5faiss3nsg4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i84
  %.sroa.0.0.lcssa = phi ptr [ %i.dv, %_ZNKSt6vectorIN5faiss3nsg4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i84 ], [ %i.dv, %.lr.ph173 ], [ %.sroa.0.1, %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE9push_backERKS2_.exit97..critedge.loopexit_crit_edge ], [ %.sroa.0.0169265, %.lr.ph267 ], [ %.sroa.0.1, %bb.n ] ; 3 uses
  %.sroa.28.0.lcssa = phi ptr [ %i.dx, %_ZNKSt6vectorIN5faiss3nsg4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i84 ], [ %i.dx, %.lr.ph173 ], [ %.sroa.28.1, %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE9push_backERKS2_.exit97..critedge.loopexit_crit_edge ], [ %.sroa.28.0171263, %.lr.ph267 ], [ %.sroa.28.1, %bb.n ]
  %.lcssa149 = phi i64 [ 1, %_ZNKSt6vectorIN5faiss3nsg4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i84 ], [ 1, %.lr.ph173 ], [ %i.ge, %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE9push_backERKS2_.exit97..critedge.loopexit_crit_edge ], [ %i.es, %.lr.ph267 ], [ %i.ge, %bb.n ]
  %.lcssa = phi i32 [ %i.dz, %_ZNKSt6vectorIN5faiss3nsg4NodeESaIS2_EE12_M_check_lenEmPKc.exit.i.i84 ], [ %i.dz, %.lr.ph173 ], [ %i.gf, %_ZNSt6vectorIN5faiss3nsg4NodeESaIS2_EE9push_backERKS2_.exit97..critedge.loopexit_crit_edge ], [ %i.et, %.lr.ph267 ], [ %i.gf, %bb.n ] ; 2 uses
  %i.gi = icmp sgt i32 %.lcssa, 0
  br i1 %i.gi, label %.lr.ph188, label %._crit_edge189

.lr.ph188:                                        ; preds = %.critedge
  %i.gj = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.gk = sext i32 %1 to i64                      ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %wide.trip.count215 = zext nneg i32 %.lcssa to i64
  br label %bb.x

bb.x:                                             ; preds = %.lr.ph188, %bb.aa
  %indvars.iv212 = phi i64 [ 0, %.lr.ph188 ], [ %indvars.iv.next213, %bb.aa ] ; 5 uses
  %i.gm = icmp ugt i64 %.lcssa149, %indvars.iv212
  br i1 %i.gm, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.lcssa, i64 %indvars.iv212 ; 2 uses
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !146
  %i.gp = load ptr, ptr %i.gj, align 8, !tbaa !107
  %i.gq = load i32, ptr %i.gl, align 8, !tbaa !103
  %i.gr = sext i32 %i.gq to i64
  %i.gs = mul nsw i64 %i.gr, %i.gk
  %i.gt = getelementptr [8 x i8], ptr %i.gp, i64 %i.gs
  %i.gu = getelementptr [8 x i8], ptr %i.gt, i64 %indvars.iv212 ; 2 uses
  store i32 %i.go, ptr %i.gu, align 4, !tbaa !146
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gn, i64 4
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !174
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  store float %i.gw, ptr %i.gx, align 4, !tbaa !174
  br label %bb.aa

bb.z:                                             ; preds = %bb.x
  %i.gy = load ptr, ptr %i.gj, align 8, !tbaa !107
  %i.gz = load i32, ptr %i.gl, align 8, !tbaa !103
end_hunk_2
