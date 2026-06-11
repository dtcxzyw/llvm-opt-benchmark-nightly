inline.NumInlined: 1138
inline.NumDeleted: 495
begin_hunk_0_@_ZN6Assimp12X3DGeoHelper9make_meshERKSt6vectorIiSaIiEERKNSt7__cxx114listI10aiVector3tIfESaIS9_EEE:bb.a

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN6aiFaceaSERKS_.exit
  %.02541 = phi i64 [ %i.bg, %_ZN6aiFaceaSERKS_.exit ], [ 0, %.lr.ph.preheader ] ; 5 uses
  %i.ao = load ptr, ptr %i.b, align 8
  %i.ap = load ptr, ptr %2, align 8               ; 3 uses
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 4                 ; 2 uses
  %.not.i.i = icmp ult i64 %.02541, %i.at
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.32, i64 noundef %.02541, i64 noundef %i.at) #22
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %.lr.ph
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.ap, i64 %.02541 ; 2 uses
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %.02541 ; 2 uses
  %i.aw = icmp eq ptr %i.ap, %i.w
  br i1 %i.aw, label %_ZN6aiFaceaSERKS_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 3 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @_ZdaPv(ptr noundef nonnull %i.ay) #24
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ba = load i32, ptr %i.au, align 8            ; 3 uses
  store i32 %i.ba, ptr %i.av, align 8
  %.not.i = icmp eq i32 %i.ba, 0
  br i1 %.not.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bb = zext i32 %i.ba to i64
  %i.bc = shl nuw nsw i64 %i.bb, 2                ; 2 uses
  %i.bd = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bc) #23
          to label %.noexc35 unwind label %.loopexit37 ; 2 uses

.noexc35:                                         ; preds = %bb.r
  store ptr %i.bd, ptr %i.ax, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bd, ptr align 4 %i.bf, i64 %i.bc, i1 false)
  br label %_ZN6aiFaceaSERKS_.exit

bb.s:                                             ; preds = %bb.q
  store ptr null, ptr %i.ax, align 8
  br label %_ZN6aiFaceaSERKS_.exit

_ZN6aiFaceaSERKS_.exit:                           ; preds = %bb.s, %.noexc35, %bb.n
  %i.bg = add nuw i64 %.02541, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bg, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !75

.loopexit37:                                      ; preds = %bb.r
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp:                               ; preds = %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.t:                                             ; preds = %._crit_edge
  %i.bh = icmp eq i64 %.fr63, 0
  br i1 %i.bh, label %.loopexit.thread, label %.lr.ph45

.loopexit.thread:                                 ; preds = %bb.t
  store ptr %i.al, ptr %i.o, align 8
  store i32 0, ptr %i.m, align 4
  br label %._crit_edge46

.lr.ph45:                                         ; preds = %bb.t
  %i.bi = add i64 %i.aj, -12                      ; 2 uses
  %i.bj = urem i64 %i.bi, 12
  %i.bk = sub nuw i64 %i.bi, %i.bj
  %i.bl = add i64 %i.bk, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.al, i8 0, i64 %i.bl, i1 false)
  store ptr %i.al, ptr %i.o, align 8
  %i.bm = trunc i64 %.fr63 to i32
  store i32 %i.bm, ptr %i.m, align 4
  %xtraiter = and i64 %.fr63, 1
  %i.bn = icmp eq i64 %.fr63, 1
  br i1 %i.bn, label %.epil.preheader, label %.lr.ph45.new

.lr.ph45.new:                                     ; preds = %.lr.ph45
  %unroll_iter = and i64 %.fr63, -2
  br label %bb.x

._crit_edge46.loopexit.unr-lcssa:                 ; preds = %bb.x
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge46, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge46.loopexit.unr-lcssa, %.lr.ph45
  %.043.epil.init = phi i64 [ 0, %.lr.ph45 ], [ %i.cl, %._crit_edge46.loopexit.unr-lcssa ]
  %.sroa.036.042.epil.init = phi ptr [ %i.ae, %.lr.ph45 ], [ %i.ch, %._crit_edge46.loopexit.unr-lcssa ]
  %lcmp.mod76 = trunc i64 %.fr63 to i1
  call void @llvm.assume(i1 %lcmp.mod76)
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.036.042.epil.init, i64 16
  %i.bp = getelementptr inbounds nuw [12 x i8], ptr %i.al, i64 %.043.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bp, ptr noundef nonnull align 4 dereferenceable(12) %i.bo, i64 12, i1 false)
  br label %._crit_edge46

._crit_edge46:                                    ; preds = %.epil.preheader, %._crit_edge46.loopexit.unr-lcssa, %.loopexit.thread
  %i.bq = load i32, ptr %i.a, align 4
  store i32 %i.bq, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.br = load ptr, ptr %2, align 8               ; 3 uses
  %i.bs = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.br, %i.bs
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge46, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bw, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i ], [ %i.br, %._crit_edge46 ] ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.bu) #24
  br label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i

_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i:            ; preds = %bb.u, %.lr.ph.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bw, %i.bs
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !10

_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8
  br label %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i

_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i:  ; preds = %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, %._crit_edge46
  %i.bx = phi ptr [ %.pr.i, %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i ], [ %i.br, %._crit_edge46 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bx, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = ptrtoint ptr %i.bz to i64
  %i.cb = ptrtoint ptr %i.bx to i64
  %i.cc = sub i64 %i.ca, %i.cb
  call void @_ZdlPvm(ptr noundef nonnull %i.bx, i64 noundef %i.cc) #24
  br label %_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit

_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit:            ; preds = %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret ptr %i.l

bb.w:                                             ; preds = %._crit_edge
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %bb.x, %.lr.ph45.new
  %.043 = phi i64 [ 0, %.lr.ph45.new ], [ %i.cl, %bb.x ] ; 3 uses
  %.sroa.036.042 = phi ptr [ %i.ae, %.lr.ph45.new ], [ %i.ch, %bb.x ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph45.new ], [ %niter.next.1, %bb.x ]
  %i.ce = load ptr, ptr %.sroa.036.042, align 8   ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.036.042, i64 16
  %i.cg = getelementptr inbounds nuw [12 x i8], ptr %i.al, i64 %.043
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cg, ptr noundef nonnull align 4 dereferenceable(12) %i.cf, i64 12, i1 false)
  %i.ch = load ptr, ptr %i.ce, align 8            ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  %i.cj = getelementptr inbounds nuw [12 x i8], ptr %i.al, i64 %.043
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ck, ptr noundef nonnull align 4 dereferenceable(12) %i.ci, i64 12, i1 false)
  %i.cl = add nuw i64 %.043, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge46.loopexit.unr-lcssa, label %bb.x, !llvm.loop !76

bb.y:                                             ; preds = %.loopexit37, %.loopexit.split-lp, %bb.k, %bb.w, %bb.l, %bb.f, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.j, %bb.e ], [ %i.am, %bb.k ], [ %i.an, %bb.l ], [ %i.cd, %bb.w ], [ %lpad.loopexit, %.loopexit37 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  call void @_ZNSt6vectorI6aiFaceSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn.pn.pn

bb.z:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden noalias noundef nonnull ptr @_ZN6Assimp12X3DGeoHelper14make_line_meshERKSt6vectorIiSaIiEERKNSt7__cxx114listI10aiVector3tIfESaIS9_EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::vector.14", align 8    ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  invoke void @_ZN6Assimp12X3DGeoHelper22coordIdx_str2lines_arrERKSt6vectorIiSaIiEERS1_I6aiFaceSaIS6_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %2, align 8                ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 4 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.h = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull @.str.26)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %bb.y unwind label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.f:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.h) #21
  br label %bb.x

bb.g:                                             ; preds = %bb.b
  %i.k = invoke noalias noundef nonnull dereferenceable(1320) ptr @_Znwm(i64 noundef 1320) #23
          to label %bb.h unwind label %bb.k       ; 10 uses

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 3 uses
  store i32 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store i32 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 224
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 1272
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 1312
  store ptr null, ptr %i.q, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(204) %i.n, i8 0, i64 204, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1044) %i.o, i8 0, i64 1044, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.p, i8 0, i64 36, i1 false)
  %i.r = icmp ugt i64 %i.g, 1152921504606846975
  %i.s = or disjoint i64 %i.f, 8
  %i.t = select i1 %i.r, i64 -1, i64 %i.s
  %i.u = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.t) #23
          to label %bb.i unwind label %bb.l       ; 2 uses

bb.i:                                             ; preds = %bb.h
  store i64 %i.g, ptr %i.u, align 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 6 uses
  %i.w = getelementptr inbounds i8, ptr %i.v, i64 %i.f
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %i.x = phi ptr [ %i.v, %bb.i ], [ %i.z, %bb.j ] ; 3 uses
  store i32 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr null, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.w
  br i1 %i.aa, label %.lr.ph, label %bb.j

.lr.ph:                                           ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 208
  store ptr %i.v, ptr %i.ab, align 8
  %i.ac = trunc i64 %i.g to i32
  store i32 %i.ac, ptr %i.m, align 8
  %i.ad = icmp eq ptr %i.c, %i.v
  br i1 %i.ad, label %._crit_edge, label %.lr.ph.split

._crit_edge:                                      ; preds = %_ZN6aiFaceaSERKS_.exit, %.lr.ph
  %3 = phi ptr [ %i.c, %.lr.ph ], [ %6, %_ZN6aiFaceaSERKS_.exit ] ; 3 uses
  %i.ae = load ptr, ptr %1, align 8               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = load i64, ptr %i.af, align 8
  %.fr56 = freeze i64 %i.ag                       ; 7 uses
  %i.ah = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.fr56, i64 12) ; 2 uses
  %i.ai = extractvalue { i64, i1 } %i.ah, 1
  %i.aj = extractvalue { i64, i1 } %i.ah, 0       ; 2 uses
  %i.ak = select i1 %i.ai, i64 -1, i64 %i.aj
  %i.al = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ak) #23
          to label %bb.s unwind label %bb.v       ; 6 uses

bb.k:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.l:                                             ; preds = %bb.h
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

.lr.ph.split:                                     ; preds = %.lr.ph, %_ZN6aiFaceaSERKS_.exit
  %4 = phi ptr [ %6, %_ZN6aiFaceaSERKS_.exit ], [ %i.c, %.lr.ph ] ; 4 uses
  %.02536 = phi i64 [ %i.ba, %_ZN6aiFaceaSERKS_.exit ], [ 0, %.lr.ph ] ; 3 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %4, i64 %.02536 ; 2 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %.02536 ; 2 uses
  %i.aq = icmp eq ptr %4, %i.v
  br i1 %i.aq, label %_ZN6aiFaceaSERKS_.exit, label %bb.m

bb.m:                                             ; preds = %.lr.ph.split
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @_ZdaPv(ptr noundef nonnull %i.as) #24
  %.pre = load ptr, ptr %2, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %5 = phi ptr [ %.pre, %bb.n ], [ %4, %bb.m ]    ; 2 uses
  %i.au = load i32, ptr %i.ao, align 8            ; 3 uses
  store i32 %i.au, ptr %i.ap, align 8
  %.not.i = icmp eq i32 %i.au, 0
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = zext i32 %i.au to i64
  %i.aw = shl nuw nsw i64 %i.av, 2                ; 2 uses
  %i.ax = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.aw) #23
          to label %.noexc unwind label %bb.r     ; 2 uses

.noexc:                                           ; preds = %bb.p
  store ptr %i.ax, ptr %i.ar, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.az = load ptr, ptr %i.ay, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ax, ptr align 4 %i.az, i64 %i.aw, i1 false)
  br label %_ZN6aiFaceaSERKS_.exit

bb.q:                                             ; preds = %bb.o
  store ptr null, ptr %i.ar, align 8
  br label %_ZN6aiFaceaSERKS_.exit

_ZN6aiFaceaSERKS_.exit:                           ; preds = %bb.q, %.noexc, %.lr.ph.split
  %6 = phi ptr [ %5, %bb.q ], [ %5, %.noexc ], [ %4, %.lr.ph.split ] ; 2 uses
  %i.ba = add nuw i64 %.02536, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ba, %i.g
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !77

bb.r:                                             ; preds = %bb.p
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.s:                                             ; preds = %._crit_edge
  %i.bc = icmp eq i64 %.fr56, 0
  br i1 %i.bc, label %.loopexit.thread, label %.lr.ph40

.loopexit.thread:                                 ; preds = %bb.s
  store ptr %i.al, ptr %i.n, align 8
  store i32 0, ptr %i.l, align 4
  br label %._crit_edge41

.lr.ph40:                                         ; preds = %bb.s
  %i.bd = add i64 %i.aj, -12                      ; 2 uses
  %i.be = urem i64 %i.bd, 12
  %i.bf = sub nuw i64 %i.bd, %i.be
  %i.bg = add i64 %i.bf, 12
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.al, i8 0, i64 %i.bg, i1 false)
  store ptr %i.al, ptr %i.n, align 8
  %i.bh = trunc i64 %.fr56 to i32
  store i32 %i.bh, ptr %i.l, align 4
  %xtraiter = and i64 %.fr56, 1
  %i.bi = icmp eq i64 %.fr56, 1
  br i1 %i.bi, label %.epil.preheader, label %.lr.ph40.new

.lr.ph40.new:                                     ; preds = %.lr.ph40
  %unroll_iter = and i64 %.fr56, -2
  br label %bb.w

._crit_edge41.loopexit.unr-lcssa:                 ; preds = %bb.w
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge41, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge41.loopexit.unr-lcssa, %.lr.ph40
  %.038.epil.init = phi i64 [ 0, %.lr.ph40 ], [ %i.ce, %._crit_edge41.loopexit.unr-lcssa ]
  %.sroa.035.037.epil.init = phi ptr [ %i.ae, %.lr.ph40 ], [ %i.ca, %._crit_edge41.loopexit.unr-lcssa ]
  %lcmp.mod57 = trunc i64 %.fr56 to i1
  call void @llvm.assume(i1 %lcmp.mod57)
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.035.037.epil.init, i64 16
  %i.bk = getelementptr inbounds nuw [12 x i8], ptr %i.al, i64 %.038.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bk, ptr noundef nonnull align 4 dereferenceable(12) %i.bj, i64 12, i1 false)
  br label %._crit_edge41

._crit_edge41:                                    ; preds = %.epil.preheader, %._crit_edge41.loopexit.unr-lcssa, %.loopexit.thread
  store i32 2, ptr %i.k, align 8
  %i.bl = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not4.i.i.i = icmp eq ptr %3, %i.bl
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge41, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bp, %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i ], [ %3, %._crit_edge41 ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.bn) #24
  br label %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i

_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i:            ; preds = %bb.t, %.lr.ph.i.i.i
  %i.bp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bp, %i.bl
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !10

_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyI6aiFaceEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %2, align 8
  br label %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i

_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i:  ; preds = %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i, %._crit_edge41
  %i.bq = phi ptr [ %.pr.i, %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exitthread-pre-split.i ], [ %3, %._crit_edge41 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = ptrtoint ptr %i.bs to i64
  %i.bu = ptrtoint ptr %i.bq to i64
  %i.bv = sub i64 %i.bt, %i.bu
  call void @_ZdlPvm(ptr noundef nonnull %i.bq, i64 noundef %i.bv) #24
  br label %_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit

_ZNSt6vectorI6aiFaceSaIS0_EED2Ev.exit:            ; preds = %_ZSt8_DestroyIP6aiFaceS0_EvT_S2_RSaIT0_E.exit.i, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret ptr %i.k

bb.v:                                             ; preds = %._crit_edge
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.w:                                             ; preds = %bb.w, %.lr.ph40.new
  %.038 = phi i64 [ 0, %.lr.ph40.new ], [ %i.ce, %bb.w ] ; 3 uses
  %.sroa.035.037 = phi ptr [ %i.ae, %.lr.ph40.new ], [ %i.ca, %bb.w ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph40.new ], [ %niter.next.1, %bb.w ]
  %i.bx = load ptr, ptr %.sroa.035.037, align 8   ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.035.037, i64 16
  %i.bz = getelementptr inbounds nuw [12 x i8], ptr %i.al, i64 %.038
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.bz, ptr noundef nonnull align 4 dereferenceable(12) %i.by, i64 12, i1 false)
  %i.ca = load ptr, ptr %i.bx, align 8            ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cc = getelementptr inbounds nuw [12 x i8], ptr %i.al, i64 %.038
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.cd, ptr noundef nonnull align 4 dereferenceable(12) %i.cb, i64 12, i1 false)
  %i.ce = add nuw i64 %.038, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge41.loopexit.unr-lcssa, label %bb.w, !llvm.loop !79

bb.x:                                             ; preds = %bb.k, %bb.v, %bb.r, %bb.l, %bb.f, %bb.e
  %.pn.pn.pn = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.i, %bb.e ], [ %i.am, %bb.k ], [ %i.bb, %bb.r ], [ %i.bw, %bb.v ], [ %i.an, %bb.l ]
  call void @_ZNSt6vectorI6aiFaceSaIS0_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  resume { ptr, i32 } %.pn.pn.pn

bb.y:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJEPKcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8                ; 3 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load i32, ptr %i.f, align 8
  %i.h = or i32 %i.g, 1
  tail call void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264) %i.e, i32 noundef %i.h)
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

bb.c:                                             ; preds = %bb.a
  %i.i = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #21
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull %i.a, i64 noundef %i.i) ; 0 uses
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit: ; preds = %bb.b, %bb.c
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.k = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.k, ptr %3, align 8
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.m = getelementptr i8, ptr %i.k, i64 -24
  %i.n = load i64, ptr %i.m, align 8
  %i.o = getelementptr inbounds i8, ptr %3, i64 %i.n
  store ptr %i.l, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.d
  %i.u = load i64, ptr %i.s, align 8
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #24
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.w) #21
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.x) #21
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEElsIPKcTnPNSt9enable_ifIXntsr3std10is_base_ofISt9exceptionT_EE5valueEvE4typeELPv0EEERS5_RKSB_.exit
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #21
  resume { ptr, i32 } %i.y
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #24
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #21
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #21
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #12 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #24
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #3 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #4

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #13 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #14

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  tail call void @llvm.experimental.noalias.scope.decl(metadata !80)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !83)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !89
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !89
end_hunk_0
