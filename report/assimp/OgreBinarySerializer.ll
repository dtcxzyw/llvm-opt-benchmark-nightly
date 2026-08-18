inline.NumInlined: 1874
inline.NumDeleted: 793
begin_hunk_0_@_ZN6Assimp4Ogre20OgreBinarySerializer13ReadAnimationEPNS0_9AnimationE:bb.a

.cont:                                            ; preds = %.invoke
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.ca = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.by) #21
  br label %.body

bb.q:                                             ; preds = %bb.n
  %i.cb = load i16, ptr %i.bt, align 1
  store ptr %i.bu, ptr %i.bs, align 8
  %i.cc = zext i16 %i.cb to i32
  store i32 %i.cc, ptr %3, align 8
  %i.cd = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 2 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = icmp ugt ptr %i.cg, %i.ci
  br i1 %i.cj, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ck = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, ptr noundef nonnull @.str.66)
          to label %.invoke unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cl = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ck) #21
  br label %.body

bb.t:                                             ; preds = %bb.q
  %i.cm = load i16, ptr %i.cf, align 1
  store ptr %i.cg, ptr %i.ce, align 8
  store i16 %i.cm, ptr %i.bn, align 4
  invoke void @_ZN6Assimp4Ogre20OgreBinarySerializer22ReadAnimationKeyFramesEPNS0_9AnimationEPNS0_20VertexAnimationTrackE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef %1, ptr noundef nonnull %3)
          to label %bb.u unwind label %.loopexit

bb.u:                                             ; preds = %bb.t
  %i.cn = load ptr, ptr %i.bo, align 8            ; 3 uses
  %i.co = load ptr, ptr %i.bp, align 8
  %.not.i13 = icmp eq ptr %i.cn, %i.co
  br i1 %.not.i13, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6Assimp4Ogre20VertexAnimationTrackC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(112) %i.cn, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %.noexc14 unwind label %.loopexit

.noexc14:                                         ; preds = %bb.v
  %i.cp = load ptr, ptr %i.bo, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 112
  store ptr %i.cq, ptr %i.bo, align 8
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  invoke void @_ZNSt6vectorIN6Assimp4Ogre20VertexAnimationTrackESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, ptr %i.cn, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %bb.x unwind label %.loopexit

bb.x:                                             ; preds = %bb.w, %.noexc14
  %i.cr = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = ptrtoint ptr %i.ct to i64
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = and i64 %i.cy, 4294967295
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.db = invoke noundef zeroext i16 @_ZN6Assimp4Ogre20OgreBinarySerializer10ReadHeaderEb(ptr noundef nonnull align 8 dereferenceable(20) %0, i1 noundef zeroext true)
          to label %bb.z unwind label %.loopexit

.loopexit:                                        ; preds = %bb.t, %bb.y, %bb.v, %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.s, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.ca, %bb.p ], [ %i.cl, %bb.s ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6Assimp4Ogre20VertexAnimationTrackD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %common.resume

bb.z:                                             ; preds = %bb.y, %bb.x
  %.2 = phi i16 [ -12016, %bb.x ], [ %i.db, %bb.y ]
  call void @_ZN6Assimp4Ogre20VertexAnimationTrackD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  %i.dc = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 32
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.dg = load ptr, ptr %i.df, align 8            ; 2 uses
  %i.dh = ptrtoint ptr %i.de to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = and i64 %i.dj, 4294967295
  %i.dl = icmp eq i64 %i.dk, 0                    ; 2 uses
  %i.dm = icmp ne i16 %.2, -12016
  %.not8 = or i1 %i.dm, %i.dl
  br i1 %.not8, label %._crit_edge, label %bb.n, !llvm.loop !34

._crit_edge:                                      ; preds = %bb.z, %bb.m
  %.lcssa31 = phi ptr [ %i.bc, %bb.m ], [ %i.dc, %bb.z ] ; 2 uses
  %.lcssa19 = phi ptr [ %i.bg, %bb.m ], [ %i.dg, %bb.z ]
  %.lcssa = phi i1 [ %i.bl, %bb.m ], [ %i.dl, %bb.z ]
  br i1 %.lcssa, label %_ZN6Assimp4Ogre20OgreBinarySerializer14RollbackHeaderEv.exit, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge
  %i.dn = getelementptr inbounds nuw i8, ptr %.lcssa31, i64 24
  %i.do = getelementptr inbounds i8, ptr %.lcssa19, i64 -6 ; 2 uses
  store ptr %i.do, ptr %i.dn, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %.lcssa31, i64 40
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = icmp ugt ptr %i.do, %i.dq
  br i1 %i.dr, label %bb.ab, label %_ZN6Assimp4Ogre20OgreBinarySerializer14RollbackHeaderEv.exit

bb.ab:                                            ; preds = %bb.aa
  %i.ds = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ds, ptr noundef nonnull @.str.72)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @__cxa_throw(ptr nonnull %i.ds, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.dt = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ds) #21
  br label %common.resume

_ZN6Assimp4Ogre20OgreBinarySerializer14RollbackHeaderEv.exit: ; preds = %bb.aa, %._crit_edge, %bb.a
  ret void
}

declare void @_ZN6Assimp4Ogre20VertexAnimationTrackC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp4Ogre20OgreBinarySerializer22ReadAnimationKeyFramesEPNS0_9AnimationEPNS0_20VertexAnimationTrackE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(20) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Assimp::Ogre::MorphKeyFrame", align 8 ; 9 uses
  %4 = alloca %"struct.Assimp::Ogre::PoseKeyFrame", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = ptrtoint ptr %i.d to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = and i64 %i.i, 4294967295
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZN6Assimp4Ogre20OgreBinarySerializer14RollbackHeaderEv.exit76, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i16 @_ZN6Assimp4Ogre20OgreBinarySerializer10ReadHeaderEb(ptr noundef nonnull align 8 dereferenceable(20) %0, i1 noundef zeroext true)
  %i.m = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s
  %i.u = and i64 %i.t, 4294967295
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_ZN6Assimp4Ogre20OgreBinarySerializer14RollbackHeaderEv.exit76, label %.lr.ph192

.lr.ph192:                                        ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph192, %bb.bz
  %i.ah = phi ptr [ %i.q, %.lr.ph192 ], [ %i.jv, %bb.bz ] ; 3 uses
  %i.ai = phi ptr [ %i.p, %.lr.ph192 ], [ %i.jx, %bb.bz ] ; 4 uses
  %i.aj = phi ptr [ %i.m, %.lr.ph192 ], [ %i.jw, %bb.bz ] ; 3 uses
  %.0190 = phi i16 [ %i.l, %.lr.ph192 ], [ %.5, %bb.bz ] ; 2 uses
  %i.ak = add i16 %.0190, 12015
  %i.al = icmp ult i16 %i.ak, 2
  br i1 %i.al, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.am = icmp eq i16 %.0190, -12015
  br i1 %i.am, label %bb.e, label %bb.at

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i8 0, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = icmp ugt ptr %i.an, %i.ap
  br i1 %i.aq, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ar = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ar, ptr noundef nonnull @.str.66)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_throw(ptr nonnull %i.ar, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %.noexc unwind label %bb.ap

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ar) #21
  br label %.body

bb.i:                                             ; preds = %bb.e
  %i.at = load float, ptr %i.ah, align 1
  store ptr %i.an, ptr %i.ai, align 8
  store float %i.at, ptr %3, align 8
  %i.au = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.au, i64 40
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = icmp ugt ptr %i.ax, %i.az
  br i1 %i.ba, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bb = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull @.str.66)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.bb, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %.noexc37 unwind label %bb.aq

.noexc37:                                         ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bc = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bb) #21
  br label %.body

bb.m:                                             ; preds = %bb.i
  %i.bd = load i8, ptr %i.aw, align 1
  store ptr %i.ax, ptr %i.av, align 8
  %i.be = invoke noundef ptr @_ZNK6Assimp4Ogre9Animation20AssociatedVertexDataEPNS0_20VertexAnimationTrackE(ptr noundef nonnull align 8 dereferenceable(112) %1, ptr noundef %2)
          to label %bb.n unwind label %bb.ar

bb.n:                                             ; preds = %bb.m
  %.not = icmp eq i8 %i.bd, 0
  %i.bf = load i32, ptr %i.be, align 8
  %i.bg = zext i32 %i.bf to i64
  %i.bh = select i1 %.not, i64 12, i64 24
  %i.bi = mul nuw nsw i64 %i.bh, %i.bg            ; 4 uses
  %i.bj = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bi) #23
          to label %.noexc40 unwind label %.loopexit90 ; 2 uses

.noexc40:                                         ; preds = %bb.n
  %i.bk = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.bi ; 3 uses
  store ptr %i.bn, ptr %i.bl, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = icmp ugt ptr %i.bn, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = icmp ult ptr %i.bn, %i.bs
  %or.cond.i.i.i.i.i = select i1 %i.bq, i1 true, i1 %i.bt
  br i1 %or.cond.i.i.i.i.i, label %bb.o, label %bb.r

bb.o:                                             ; preds = %.noexc40
  %i.bu = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull @.str.72)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  invoke void @__cxa_throw(ptr nonnull %i.bu, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %.noexc41 unwind label %.loopexit.split-lp91

.noexc41:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.bv = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bu) #21
  br label %.body

bb.r:                                             ; preds = %.noexc40
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bj, ptr align 1 %i.bm, i64 %i.bi, i1 false)
  %i.bw = invoke noundef ptr @_ZN6Assimp6Intern22AllocateFromAssimpHeapnwEm(i64 noundef 40)
          to label %bb.s unwind label %bb.as      ; 9 uses

bb.s:                                             ; preds = %bb.r
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6Assimp14MemoryIOStreamE, i64 16), ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr %i.bj, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store i64 %i.bi, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store i64 0, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  store i8 1, ptr %i.ca, align 8
  %i.cb = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23
          to label %bb.x unwind label %bb.t       ; 5 uses

bb.t:                                             ; preds = %bb.s
  %i.cc = landingpad { ptr, i32 }
          catch ptr null
  %i.cd = extractvalue { ptr, i32 } %i.cc, 0
  %i.ce = call ptr @__cxa_begin_catch(ptr %i.cd) #21 ; 0 uses
  %i.cf = load ptr, ptr %i.bw, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8
  call void %i.ch(ptr noundef nonnull align 8 dereferenceable(33) %i.bw) #21, !inline_history !9
  invoke void @__cxa_rethrow() #22
          to label %bb.w unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ci = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cj = landingpad { ptr, i32 }
          catch ptr null
  %i.ck = extractvalue { ptr, i32 } %i.cj, 0
  call void @__clang_call_terminate(ptr %i.ck) #25
  unreachable

bb.w:                                             ; preds = %bb.t
  unreachable

bb.x:                                             ; preds = %bb.s
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  store i32 1, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cb, i64 12
  store i32 1, ptr %i.cm, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN6Assimp14MemoryIOStreamELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.cb, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store ptr %i.bw, ptr %i.cn, align 8
  store ptr %i.bw, ptr %i.ac, align 8
  %i.co = load ptr, ptr %i.ad, align 8            ; 8 uses
  store ptr %i.cb, ptr %i.ad, align 8
  %.not.i.i.i.i = icmp eq ptr %i.co, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN6Assimp14MemoryIOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 4 uses
  %i.cq = load atomic i64, ptr %i.cp acquire, align 8 ; 2 uses
  %i.cr = icmp eq i64 %i.cq, 4294967297
  %i.cs = trunc i64 %i.cq to i32                  ; 2 uses
  br i1 %i.cr, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.cp, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  store i32 0, ptr %i.ct, align 4
  %i.cu = load ptr, ptr %i.co, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = load ptr, ptr %i.cv, align 8
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #21, !inline_history !10
  %i.cx = load ptr, ptr %i.co, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(16) %i.co) #21, !inline_history !10
  br label %_ZNSt12__shared_ptrIN6Assimp14MemoryIOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.da = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i = icmp eq i8 %i.da, 0
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

end_hunk_0
begin_hunk_1_@_ZN6Assimp4Ogre20OgreBinarySerializer22ReadAnimationKeyFramesEPNS0_9AnimationEPNS0_20VertexAnimationTrackE:bb.a
  %i.de = load ptr, ptr %i.ae, align 8            ; 5 uses
  %i.df = load ptr, ptr %i.af, align 8
  %.not.i = icmp eq ptr %i.de, %i.df
  br i1 %.not.i, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt12__shared_ptrIN6Assimp14MemoryIOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.dg = load float, ptr %3, align 8
  store float %i.dg, ptr %i.de, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.di = load ptr, ptr %i.ac, align 8
  store ptr %i.di, ptr %i.dh, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dk = load ptr, ptr %i.ad, align 8            ; 3 uses
  store ptr %i.dk, ptr %i.dj, align 8
  %.not.i.i.i.i.i46 = icmp eq ptr %i.dk, null
  br i1 %.not.i.i.i.i.i46, label %_ZN6Assimp4Ogre13MorphKeyFrameC2ERKS1_.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 3 uses
  %i.dm = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dm, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dn = load i32, ptr %i.dl, align 4
  %i.do = add nsw i32 %i.dn, 1
  store i32 %i.do, ptr %i.dl, align 4
  br label %_ZN6Assimp4Ogre13MorphKeyFrameC2ERKS1_.exit.i

bb.ah:                                            ; preds = %bb.af
  %i.dp = atomicrmw volatile add ptr %i.dl, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6Assimp4Ogre13MorphKeyFrameC2ERKS1_.exit.i

_ZN6Assimp4Ogre13MorphKeyFrameC2ERKS1_.exit.i:    ; preds = %bb.ah, %bb.ag, %bb.ae
  %i.dq = load ptr, ptr %i.ae, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  store ptr %i.dr, ptr %i.ae, align 8
  br label %_ZNSt6vectorIN6Assimp4Ogre13MorphKeyFrameESaIS2_EE9push_backERKS2_.exit

bb.ai:                                            ; preds = %_ZNSt12__shared_ptrIN6Assimp14MemoryIOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  invoke void @_ZNSt6vectorIN6Assimp4Ogre13MorphKeyFrameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, ptr %i.de, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %_ZNSt6vectorIN6Assimp4Ogre13MorphKeyFrameESaIS2_EE9push_backERKS2_.exit unwind label %.loopexit90

_ZNSt6vectorIN6Assimp4Ogre13MorphKeyFrameESaIS2_EE9push_backERKS2_.exit: ; preds = %_ZN6Assimp4Ogre13MorphKeyFrameC2ERKS1_.exit.i, %bb.ai
  %i.ds = load ptr, ptr %i.ad, align 8            ; 8 uses
  %.not.i.i.i48 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i48, label %_ZN6Assimp4Ogre13MorphKeyFrameD2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %_ZNSt6vectorIN6Assimp4Ogre13MorphKeyFrameESaIS2_EE9push_backERKS2_.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8 ; 4 uses
  %i.du = load atomic i64, ptr %i.dt acquire, align 8 ; 2 uses
  %i.dv = icmp eq i64 %i.du, 4294967297
  %i.dw = trunc i64 %i.du to i32                  ; 2 uses
  br i1 %i.dv, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 0, ptr %i.dt, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 12
  store i32 0, ptr %i.dx, align 4
  %i.dy = load ptr, ptr %i.ds, align 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.ea = load ptr, ptr %i.dz, align 8
  call void %i.ea(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #21, !inline_history !35
  %i.eb = load ptr, ptr %i.ds, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 24
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #21, !inline_history !35
  br label %_ZN6Assimp4Ogre13MorphKeyFrameD2Ev.exit

bb.al:                                            ; preds = %bb.aj
  %i.ee = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i49 = icmp eq i8 %i.ee, 0
  br i1 %.not.i.i.i.i49, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ef = add nsw i32 %i.dw, -1
  store i32 %i.ef, ptr %i.dt, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.an:                                            ; preds = %bb.al
  %i.eg = atomicrmw volatile add ptr %i.dt, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.an, %bb.am
  %.0.i.i.i.i.i = phi i32 [ %i.dw, %bb.am ], [ %i.eg, %bb.an ]
  %i.eh = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.eh, label %bb.ao, label %_ZN6Assimp4Ogre13MorphKeyFrameD2Ev.exit, !prof !11

bb.ao:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ds) #21
  br label %_ZN6Assimp4Ogre13MorphKeyFrameD2Ev.exit

_ZN6Assimp4Ogre13MorphKeyFrameD2Ev.exit:          ; preds = %_ZNSt6vectorIN6Assimp4Ogre13MorphKeyFrameESaIS2_EE9push_backERKS2_.exit, %bb.ak, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.bx

bb.ap:                                            ; preds = %bb.g
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aq:                                            ; preds = %bb.k
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ar:                                            ; preds = %bb.m
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit90:                                      ; preds = %bb.n, %bb.ai
  %lpad.loopexit92 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp91:                             ; preds = %bb.p
  %lpad.loopexit.split-lp93 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.as:                                            ; preds = %bb.r
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit90, %.loopexit.split-lp91, %bb.as, %bb.u, %bb.q, %bb.aq, %bb.l, %bb.ap, %bb.h, %bb.ar
  %.pn31.pn.pn.pn = phi { ptr, i32 } [ %i.bv, %bb.q ], [ %i.as, %bb.h ], [ %i.ek, %bb.ar ], [ %i.bc, %bb.l ], [ %i.ei, %bb.ap ], [ %i.ej, %bb.aq ], [ %i.ci, %bb.u ], [ %i.el, %bb.as ], [ %lpad.loopexit92, %.loopexit90 ], [ %lpad.loopexit.split-lp93, %.loopexit.split-lp91 ]
  call void @_ZN6Assimp4Ogre13MorphKeyFrameD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %common.resume

bb.at:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.w, i8 0, i64 24, i1 false)
  %i.em = load ptr, ptr %i.ai, align 8            ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 4 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = icmp ugt ptr %i.en, %i.ep
  br i1 %i.eq, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.er = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.er, ptr noundef nonnull @.str.66)
          to label %.invoke unwind label %bb.av

.invoke:                                          ; preds = %bb.au, %bb.bn
  %i.es = phi ptr [ %i.hy, %bb.bn ], [ %i.er, %bb.au ]
  invoke void @__cxa_throw(ptr nonnull %i.es, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %.cont unwind label %.loopexit.split-lp86

.cont:                                            ; preds = %.invoke
  unreachable

bb.av:                                            ; preds = %bb.au
  %i.et = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.er) #21
  br label %.body51

bb.aw:                                            ; preds = %bb.at
  %i.eu = load float, ptr %i.em, align 1
  store ptr %i.en, ptr %i.ai, align 8
  store float %i.eu, ptr %4, align 8
  %i.ev = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8
  %i.fa = ptrtoint ptr %i.ex to i64
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = and i64 %i.fc, 4294967295
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %_ZN6Assimp4Ogre20OgreBinarySerializer14RollbackHeaderEv.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ff = invoke noundef zeroext i16 @_ZN6Assimp4Ogre20OgreBinarySerializer10ReadHeaderEb(ptr noundef nonnull align 8 dereferenceable(20) %0, i1 noundef zeroext true)
          to label %.preheader unwind label %.loopexit85 ; 2 uses

.preheader:                                       ; preds = %bb.ax
  %i.fg = load ptr, ptr %i.a, align 8             ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 32
  %i.fi = load ptr, ptr %i.fh, align 8
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fg, i64 24 ; 3 uses
  %i.fk = load ptr, ptr %i.fj, align 8            ; 3 uses
  %i.fl = ptrtoint ptr %i.fi to i64
  %i.fm = ptrtoint ptr %i.fk to i64
  %i.fn = sub i64 %i.fl, %i.fm
  %i.fo = and i64 %i.fn, 4294967295
  %i.fp = icmp eq i64 %i.fo, 0                    ; 2 uses
  %i.fq = icmp ne i16 %i.ff, -12013
  %.not29182 = or i1 %i.fq, %i.fp
  br i1 %.not29182, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %bb.bl
  %i.fr = phi ptr [ %.pre255.a, %bb.bl ], [ %i.fk, %.preheader ] ; 2 uses
  %i.fs = phi ptr [ %i.hs, %bb.bl ], [ %i.fj, %.preheader ]
  %i.ft = phi ptr [ %.pre, %bb.bl ], [ %i.fg, %.preheader ]
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fr, i64 2 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.ft, i64 40
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = icmp ugt ptr %i.fu, %i.fw
  br i1 %i.fx, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %.lr.ph
  %i.fy = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fy, ptr noundef nonnull @.str.66)
          to label %.invoke365 unwind label %bb.az

.invoke365:                                       ; preds = %bb.bb, %bb.ay
  %i.fz = phi ptr [ %i.fy, %bb.ay ], [ %i.gj, %bb.bb ]
  invoke void @__cxa_throw(ptr nonnull %i.fz, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
          to label %.cont366 unwind label %.loopexit.split-lp

.cont366:                                         ; preds = %.invoke365
  unreachable

bb.az:                                            ; preds = %bb.ay
  %i.ga = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fy) #21
  br label %.body51

bb.ba:                                            ; preds = %.lr.ph
  %i.gb = load i16, ptr %i.fr, align 1
  store ptr %i.fu, ptr %i.fs, align 8
  %.sroa.0.0.insert.ext = zext i16 %i.gb to i32   ; 2 uses
  %i.gc = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 24 ; 2 uses
  %i.ge = load ptr, ptr %i.gd, align 8            ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 4 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 40
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = icmp ugt ptr %i.gf, %i.gh
  br i1 %i.gi, label %bb.bb, label %bb.bd

bb.bb:                                            ; preds = %bb.ba
  %i.gj = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.gj, ptr noundef nonnull @.str.66)
          to label %.invoke365 unwind label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gk = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.gj) #21
  br label %.body51

bb.bd:                                            ; preds = %bb.ba
  %i.gl = load float, ptr %i.ge, align 1          ; 2 uses
  store ptr %i.gf, ptr %i.gd, align 8
  %i.gm = load ptr, ptr %i.x, align 8             ; 4 uses
  %i.gn = load ptr, ptr %i.y, align 8
  %.not.i61 = icmp eq ptr %i.gm, %i.gn
  br i1 %.not.i61, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  store i32 %.sroa.0.0.insert.ext, ptr %i.gm, align 4
  %.sroa_idx77 = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  store float %i.gl, ptr %.sroa_idx77, align 4
  %i.go = load ptr, ptr %i.x, align 8
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  store ptr %i.gp, ptr %i.x, align 8
  br label %bb.bj

bb.bf:                                            ; preds = %bb.bd
  %i.gq = load ptr, ptr %i.w, align 8             ; 4 uses
  %i.gr = ptrtoint ptr %i.gm to i64
  %i.gs = ptrtoint ptr %i.gq to i64
  %i.gt = sub i64 %i.gr, %i.gs                    ; 6 uses
  %i.gu = icmp eq i64 %i.gt, 9223372036854775800
  br i1 %i.gu, label %bb.bg, label %_ZNKSt6vectorIN6Assimp4Ogre7PoseRefESaIS2_EE12_M_check_lenEmPKc.exit.i.i

bb.bg:                                            ; preds = %bb.bf
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.73) #22
          to label %.noexc63 unwind label %.loopexit.split-lp

.noexc63:                                         ; preds = %bb.bg
  unreachable

_ZNKSt6vectorIN6Assimp4Ogre7PoseRefESaIS2_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bf
  %i.gv = ashr exact i64 %i.gt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.gv, i64 1)
  %i.gw = add nsw i64 %.sroa.speculated.i.i.i, %i.gv ; 2 uses
  %i.gx = icmp ult i64 %i.gw, %i.gv
  %i.gy = call i64 @llvm.umin.i64(i64 %i.gw, i64 1152921504606846975)
  %i.gz = select i1 %i.gx, i64 1152921504606846975, i64 %i.gy ; 3 uses
  %.not.i.i.i62 = icmp ne i64 %i.gz, 0
  call void @llvm.assume(i1 %.not.i.i.i62)
  %i.ha = shl nuw nsw i64 %i.gz, 3
  %i.hb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ha) #23
          to label %.noexc64 unwind label %.loopexit ; 4 uses

.noexc64:                                         ; preds = %_ZNKSt6vectorIN6Assimp4Ogre7PoseRefESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.hc = getelementptr inbounds i8, ptr %i.hb, i64 %i.gt ; 3 uses
  store i32 %.sroa.0.0.insert.ext, ptr %i.hc, align 4
  %.sroa_idx79 = getelementptr inbounds nuw i8, ptr %i.hc, i64 4
  store float %i.gl, ptr %.sroa_idx79, align 4
  %i.hd = icmp sgt i64 %i.gt, 0
  br i1 %i.hd, label %bb.bh, label %_ZNSt6vectorIN6Assimp4Ogre7PoseRefESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

bb.bh:                                            ; preds = %.noexc64
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.hb, ptr align 4 %i.gq, i64 %i.gt, i1 false)
  br label %_ZNSt6vectorIN6Assimp4Ogre7PoseRefESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i

_ZNSt6vectorIN6Assimp4Ogre7PoseRefESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i: ; preds = %bb.bh, %.noexc64
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 8
  %.not.i17.i.i = icmp eq ptr %i.gq, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN6Assimp4Ogre7PoseRefESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i, label %bb.bi

bb.bi:                                            ; preds = %_ZNSt6vectorIN6Assimp4Ogre7PoseRefESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.gq, i64 noundef %i.gt) #24
  br label %_ZNSt6vectorIN6Assimp4Ogre7PoseRefESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i

_ZNSt6vectorIN6Assimp4Ogre7PoseRefESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i: ; preds = %bb.bi, %_ZNSt6vectorIN6Assimp4Ogre7PoseRefESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit16.i.i
  store ptr %i.hb, ptr %i.w, align 8
  store ptr %i.he, ptr %i.x, align 8
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.hb, i64 %i.gz
  store ptr %i.hf, ptr %i.y, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.be, %_ZNSt6vectorIN6Assimp4Ogre7PoseRefESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i
  %i.hg = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = ptrtoint ptr %i.hi to i64
  %i.hm = ptrtoint ptr %i.hk to i64
  %i.hn = sub i64 %i.hl, %i.hm
  %i.ho = and i64 %i.hn, 4294967295
  %i.hp = icmp eq i64 %i.ho, 0
  br i1 %i.hp, label %_ZN6Assimp4Ogre20OgreBinarySerializer14RollbackHeaderEv.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.hq = invoke noundef zeroext i16 @_ZN6Assimp4Ogre20OgreBinarySerializer10ReadHeaderEb(ptr noundef nonnull align 8 dereferenceable(20) %0, i1 noundef zeroext true)
          to label %bb.bl unwind label %.loopexit ; 2 uses

.loopexit85:                                      ; preds = %bb.ax, %_ZNSt15__new_allocatorIN6Assimp4Ogre7PoseRefEE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.bu
  %lpad.loopexit87 = landingpad { ptr, i32 }
          cleanup
  br label %.body51

.loopexit.split-lp86:                             ; preds = %.invoke, %.noexc.i.i.i.i
  %lpad.loopexit.split-lp88 = landingpad { ptr, i32 }
          cleanup
  br label %.body51

.loopexit:                                        ; preds = %bb.bk, %_ZNKSt6vectorIN6Assimp4Ogre7PoseRefESaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body51

.loopexit.split-lp:                               ; preds = %.invoke365, %bb.bg
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body51

bb.bl:                                            ; preds = %bb.bk
  %.pre = load ptr, ptr %i.a, align 8             ; 5 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 32
  %.pre253.a = load ptr, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert254 = getelementptr inbounds nuw i8, ptr %.pre, i64 24
  %.pre255.a = load ptr, ptr %.phi.trans.insert254, align 8 ; 3 uses
  %.pre267 = ptrtoint ptr %.pre253.a to i64
  %.pre269 = ptrtoint ptr %.pre255.a to i64
  %.pre271 = sub i64 %.pre267, %.pre269
  %.pre273 = and i64 %.pre271, 4294967295
  %i.hr = icmp eq i64 %.pre273, 0                 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.pre, i64 24 ; 2 uses
  %i.ht = icmp ne i16 %i.hq, -12013
  %.not29 = or i1 %i.ht, %i.hr
  br i1 %.not29, label %._crit_edge, label %.lr.ph, !llvm.loop !36

._crit_edge:                                      ; preds = %bb.bl, %.preheader
  %.1.lcssa = phi i16 [ %i.ff, %.preheader ], [ %i.hq, %bb.bl ] ; 2 uses
  %.lcssa109 = phi ptr [ %i.fg, %.preheader ], [ %.pre, %bb.bl ]
  %.lcssa104 = phi ptr [ %i.fj, %.preheader ], [ %i.hs, %bb.bl ]
  %.lcssa99 = phi ptr [ %i.fk, %.preheader ], [ %.pre255.a, %bb.bl ]
  %.lcssa = phi i1 [ %i.fp, %.preheader ], [ %i.hr, %bb.bl ]
  br i1 %.lcssa, label %_ZN6Assimp4Ogre20OgreBinarySerializer14RollbackHeaderEv.exit, label %bb.bm

bb.bm:                                            ; preds = %._crit_edge
  %i.hu = getelementptr inbounds i8, ptr %.lcssa99, i64 -6 ; 2 uses
  store ptr %i.hu, ptr %.lcssa104, align 8
  %i.hv = getelementptr inbounds nuw i8, ptr %.lcssa109, i64 40
  %i.hw = load ptr, ptr %i.hv, align 8
  %i.hx = icmp ugt ptr %i.hu, %i.hw
  br i1 %i.hx, label %bb.bn, label %_ZN6Assimp4Ogre20OgreBinarySerializer14RollbackHeaderEv.exit

bb.bn:                                            ; preds = %bb.bm
  %i.hy = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.hy, ptr noundef nonnull @.str.72)
          to label %.invoke unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.hz = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.hy) #21
  br label %.body51

_ZN6Assimp4Ogre20OgreBinarySerializer14RollbackHeaderEv.exit: ; preds = %bb.bj, %bb.bm, %._crit_edge, %bb.aw
  %.3 = phi i16 [ -12014, %bb.aw ], [ %.1.lcssa, %._crit_edge ], [ %.1.lcssa, %bb.bm ], [ -12013, %bb.bj ]
  %i.ia = load ptr, ptr %i.z, align 8             ; 6 uses
  %i.ib = load ptr, ptr %i.aa, align 8
  %.not.i68 = icmp eq ptr %i.ia, %i.ib
  br i1 %.not.i68, label %bb.bu, label %bb.bp

bb.bp:                                            ; preds = %_ZN6Assimp4Ogre20OgreBinarySerializer14RollbackHeaderEv.exit
  %i.ic = load float, ptr %4, align 8
  store float %i.ic, ptr %i.ia, align 8
  %i.id = getelementptr inbounds nuw i8, ptr %i.ia, i64 8 ; 2 uses
  %i.ie = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.if = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = sub i64 %i.ig, %i.ih                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.id, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i69 = icmp eq ptr %i.ie, %i.if
  br i1 %.not.i.i.i.i.i.i69, label %.noexc71, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ij = icmp ugt i64 %i.ii, 9223372036854775800
  br i1 %i.ij, label %.noexc.i.i.i.i, label %_ZNSt15__new_allocatorIN6Assimp4Ogre7PoseRefEE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !11

.noexc.i.i.i.i:                                   ; preds = %bb.bq
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #22
          to label %.noexc70 unwind label %.loopexit.split-lp86

.noexc70:                                         ; preds = %.noexc.i.i.i.i
  unreachable

_ZNSt15__new_allocatorIN6Assimp4Ogre7PoseRefEE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.bq
  %i.ik = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ii) #23
          to label %.noexc71 unwind label %.loopexit85

.noexc71:                                         ; preds = %_ZNSt15__new_allocatorIN6Assimp4Ogre7PoseRefEE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.bp
  %i.il = phi ptr [ null, %bb.bp ], [ %i.ik, %_ZNSt15__new_allocatorIN6Assimp4Ogre7PoseRefEE8allocateEmPKv.exit.i.i.i.i.i.i ] ; 6 uses
  store ptr %i.il, ptr %i.id, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %i.ia, i64 16 ; 2 uses
  store ptr %i.il, ptr %i.im, align 8
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.ii
  %i.io = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  store ptr %i.in, ptr %i.io, align 8
  %i.ip = load ptr, ptr %i.w, align 8             ; 4 uses
  %i.iq = load ptr, ptr %i.x, align 8
  %i.ir = ptrtoint ptr %i.iq to i64
  %i.is = ptrtoint ptr %i.ip to i64
  %i.it = sub i64 %i.ir, %i.is                    ; 4 uses
  %i.iu = icmp sgt i64 %i.it, 8
  br i1 %i.iu, label %bb.br, label %bb.bs, !prof !37

bb.br:                                            ; preds = %.noexc71
  call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.il, ptr align 4 %i.ip, i64 %i.it, i1 false)
  br label %_ZN6Assimp4Ogre12PoseKeyFrameC2ERKS1_.exit.i

bb.bs:                                            ; preds = %.noexc71
  %i.iv = icmp eq i64 %i.it, 8
  br i1 %i.iv, label %bb.bt, label %_ZN6Assimp4Ogre12PoseKeyFrameC2ERKS1_.exit.i

bb.bt:                                            ; preds = %bb.bs
  %i.iw = load i64, ptr %i.ip, align 4
  store i64 %i.iw, ptr %i.il, align 4
  br label %_ZN6Assimp4Ogre12PoseKeyFrameC2ERKS1_.exit.i

_ZN6Assimp4Ogre12PoseKeyFrameC2ERKS1_.exit.i:     ; preds = %bb.bt, %bb.bs, %bb.br
  %i.ix = getelementptr inbounds i8, ptr %i.il, i64 %i.it
  store ptr %i.ix, ptr %i.im, align 8
  %i.iy = load ptr, ptr %i.z, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 32
  store ptr %i.iz, ptr %i.z, align 8
  br label %_ZNSt6vectorIN6Assimp4Ogre12PoseKeyFrameESaIS2_EE9push_backERKS2_.exit

bb.bu:                                            ; preds = %_ZN6Assimp4Ogre20OgreBinarySerializer14RollbackHeaderEv.exit
  invoke void @_ZNSt6vectorIN6Assimp4Ogre12PoseKeyFrameESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr %i.ia, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %._ZNSt6vectorIN6Assimp4Ogre12PoseKeyFrameESaIS2_EE9push_backERKS2_.exit_crit_edge unwind label %.loopexit85

._ZNSt6vectorIN6Assimp4Ogre12PoseKeyFrameESaIS2_EE9push_backERKS2_.exit_crit_edge: ; preds = %bb.bu
  %.pre256 = load ptr, ptr %i.w, align 8
  br label %_ZNSt6vectorIN6Assimp4Ogre12PoseKeyFrameESaIS2_EE9push_backERKS2_.exit

_ZNSt6vectorIN6Assimp4Ogre12PoseKeyFrameESaIS2_EE9push_backERKS2_.exit: ; preds = %._ZNSt6vectorIN6Assimp4Ogre12PoseKeyFrameESaIS2_EE9push_backERKS2_.exit_crit_edge, %_ZN6Assimp4Ogre12PoseKeyFrameC2ERKS1_.exit.i
  %i.ja = phi ptr [ %.pre256, %._ZNSt6vectorIN6Assimp4Ogre12PoseKeyFrameESaIS2_EE9push_backERKS2_.exit_crit_edge ], [ %i.ip, %_ZN6Assimp4Ogre12PoseKeyFrameC2ERKS1_.exit.i ] ; 3 uses
  %.not.i.i.i.i73 = icmp eq ptr %i.ja, null
  br i1 %.not.i.i.i.i73, label %_ZN6Assimp4Ogre12PoseKeyFrameD2Ev.exit, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt6vectorIN6Assimp4Ogre12PoseKeyFrameESaIS2_EE9push_backERKS2_.exit
  %i.jb = load ptr, ptr %i.y, align 8
  %i.jc = ptrtoint ptr %i.jb to i64
  %i.jd = ptrtoint ptr %i.ja to i64
  %i.je = sub i64 %i.jc, %i.jd
  call void @_ZdlPvm(ptr noundef nonnull %i.ja, i64 noundef %i.je) #24
  br label %_ZN6Assimp4Ogre12PoseKeyFrameD2Ev.exit

_ZN6Assimp4Ogre12PoseKeyFrameD2Ev.exit:           ; preds = %_ZNSt6vectorIN6Assimp4Ogre12PoseKeyFrameESaIS2_EE9push_backERKS2_.exit, %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.bx

.body51:                                          ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit85, %.loopexit.split-lp86, %bb.az, %bb.bc, %bb.av, %bb.bo
  %.pn = phi { ptr, i32 } [ %i.hz, %bb.bo ], [ %i.et, %bb.av ], [ %i.gk, %bb.bc ], [ %i.ga, %bb.az ], [ %lpad.loopexit.split-lp88, %.loopexit.split-lp86 ], [ %lpad.loopexit87, %.loopexit85 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.jf = load ptr, ptr %i.w, align 8             ; 3 uses
  %.not.i.i.i.i74 = icmp eq ptr %i.jf, null
  br i1 %.not.i.i.i.i74, label %_ZN6Assimp4Ogre12PoseKeyFrameD2Ev.exit75, label %bb.bw

bb.bw:                                            ; preds = %.body51
  %i.jg = load ptr, ptr %i.y, align 8
  %i.jh = ptrtoint ptr %i.jg to i64
  %i.ji = ptrtoint ptr %i.jf to i64
  %i.jj = sub i64 %i.jh, %i.ji
  call void @_ZdlPvm(ptr noundef nonnull %i.jf, i64 noundef %i.jj) #24
  br label %_ZN6Assimp4Ogre12PoseKeyFrameD2Ev.exit75

_ZN6Assimp4Ogre12PoseKeyFrameD2Ev.exit75:         ; preds = %.body51, %bb.bw
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %common.resume

bb.bx:                                            ; preds = %_ZN6Assimp4Ogre12PoseKeyFrameD2Ev.exit, %_ZN6Assimp4Ogre13MorphKeyFrameD2Ev.exit
  %.4 = phi i16 [ -12015, %_ZN6Assimp4Ogre13MorphKeyFrameD2Ev.exit ], [ %.3, %_ZN6Assimp4Ogre12PoseKeyFrameD2Ev.exit ]
  %i.jk = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 32
  %i.jm = load ptr, ptr %i.jl, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 24
  %i.jo = load ptr, ptr %i.jn, align 8            ; 2 uses
  %i.jp = ptrtoint ptr %i.jm to i64
  %i.jq = ptrtoint ptr %i.jo to i64
  %i.jr = sub i64 %i.jp, %i.jq                    ; 2 uses
  %i.js = and i64 %i.jr, 4294967295
  %i.jt = icmp eq i64 %i.js, 0
  br i1 %i.jt, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ju = call noundef zeroext i16 @_ZN6Assimp4Ogre20OgreBinarySerializer10ReadHeaderEb(ptr noundef nonnull align 8 dereferenceable(20) %0, i1 noundef zeroext true)
  %.pre257 = load ptr, ptr %i.a, align 8          ; 3 uses
  %.phi.trans.insert258 = getelementptr inbounds nuw i8, ptr %.pre257, i64 32
  %.pre259 = load ptr, ptr %.phi.trans.insert258, align 8
  %.phi.trans.insert260 = getelementptr inbounds nuw i8, ptr %.pre257, i64 24
  %.pre261 = load ptr, ptr %.phi.trans.insert260, align 8 ; 2 uses
  %.pre262 = ptrtoint ptr %.pre259 to i64
  %.pre263 = ptrtoint ptr %.pre261 to i64
  %.pre265 = sub i64 %.pre262, %.pre263
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.pre-phi266 = phi i64 [ %.pre265, %bb.by ], [ %i.jr, %bb.bx ]
  %i.jv = phi ptr [ %.pre261, %bb.by ], [ %i.jo, %bb.bx ]
  %i.jw = phi ptr [ %.pre257, %bb.by ], [ %i.jk, %bb.bx ] ; 2 uses
  %.5 = phi i16 [ %i.ju, %bb.by ], [ %.4, %bb.bx ]
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  %i.jy = and i64 %.pre-phi266, 4294967295
  %i.jz = icmp eq i64 %i.jy, 0
  br i1 %i.jz, label %_ZN6Assimp4Ogre20OgreBinarySerializer14RollbackHeaderEv.exit76, label %bb.c, !llvm.loop !38

.critedge:                                        ; preds = %bb.c
  %i.ka = getelementptr inbounds i8, ptr %i.ah, i64 -6 ; 2 uses
  store ptr %i.ka, ptr %i.ai, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %i.kc = load ptr, ptr %i.kb, align 8
  %i.kd = icmp ugt ptr %i.ka, %i.kc
  br i1 %i.kd, label %bb.ca, label %_ZN6Assimp4Ogre20OgreBinarySerializer14RollbackHeaderEv.exit76

bb.ca:                                            ; preds = %.critedge
  %i.ke = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ke, ptr noundef nonnull @.str.72)
          to label %bb.cb unwind label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  call void @__cxa_throw(ptr nonnull %i.ke, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
  unreachable

common.resume:                                    ; preds = %.body, %_ZN6Assimp4Ogre12PoseKeyFrameD2Ev.exit75, %bb.cc
  %common.resume.op = phi { ptr, i32 } [ %i.kf, %bb.cc ], [ %.pn31.pn.pn.pn, %.body ], [ %.pn, %_ZN6Assimp4Ogre12PoseKeyFrameD2Ev.exit75 ]
  resume { ptr, i32 } %common.resume.op

bb.cc:                                            ; preds = %bb.ca
  %i.kf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ke) #21
  br label %common.resume

_ZN6Assimp4Ogre20OgreBinarySerializer14RollbackHeaderEv.exit76: ; preds = %bb.bz, %bb.b, %.critedge, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp4Ogre20VertexAnimationTrackD2Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #24
  br label %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.i, %i.k
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6Assimp4Ogre13MorphKeyFrameES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN6Assimp4Ogre13MorphKeyFrameEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ac, %_ZSt8_DestroyIN6Assimp4Ogre13MorphKeyFrameEEvPT_.exit.i.i.i ], [ %i.i, %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EED2Ev.exit ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.m = load ptr, ptr %i.l, align 8              ; 8 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp4Ogre13MorphKeyFrameEEvPT_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %i.o = load atomic i64, ptr %i.n acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 0, ptr %i.n, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  store i32 0, ptr %i.r, align 4
  %i.s = load ptr, ptr %i.m, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #21, !inline_history !39
  %i.v = load ptr, ptr %i.m, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #21, !inline_history !39
  br label %_ZSt8_DestroyIN6Assimp4Ogre13MorphKeyFrameEEvPT_.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.y = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.n, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.aa = atomicrmw volatile add ptr %i.n, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i = phi i32 [ %i.q, %bb.f ], [ %i.aa, %bb.g ]
  %i.ab = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i, 1
  br i1 %i.ab, label %bb.h, label %_ZSt8_DestroyIN6Assimp4Ogre13MorphKeyFrameEEvPT_.exit.i.i.i, !prof !11

bb.h:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.m) #21
  br label %_ZSt8_DestroyIN6Assimp4Ogre13MorphKeyFrameEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6Assimp4Ogre13MorphKeyFrameEEvPT_.exit.i.i.i: ; preds = %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i, %bb.d, %.lr.ph.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i1 = icmp eq ptr %i.ac, %i.k
  br i1 %.not.i.i.i1, label %_ZSt8_DestroyIPN6Assimp4Ogre13MorphKeyFrameES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !40

_ZSt8_DestroyIPN6Assimp4Ogre13MorphKeyFrameES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6Assimp4Ogre13MorphKeyFrameEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %i.h, align 8
  br label %_ZSt8_DestroyIPN6Assimp4Ogre13MorphKeyFrameES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6Assimp4Ogre13MorphKeyFrameES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp4Ogre13MorphKeyFrameES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EED2Ev.exit
  %i.ad = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6Assimp4Ogre13MorphKeyFrameES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.i, %_ZNSt6vectorIN6Assimp4Ogre17TransformKeyFrameESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6Assimp4Ogre13MorphKeyFrameESaIS2_EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZSt8_DestroyIPN6Assimp4Ogre13MorphKeyFrameES2_EvT_S4_RSaIT0_E.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = ptrtoint ptr %i.af to i64
  %i.ah = ptrtoint ptr %i.ad to i64
  %i.ai = sub i64 %i.ag, %i.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ai) #24
  br label %_ZNSt6vectorIN6Assimp4Ogre13MorphKeyFrameESaIS2_EED2Ev.exit

_ZNSt6vectorIN6Assimp4Ogre13MorphKeyFrameESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6Assimp4Ogre13MorphKeyFrameES2_EvT_S4_RSaIT0_E.exit.i, %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not4.i.i.i2 = icmp eq ptr %i.ak, %i.am
  br i1 %.not4.i.i.i2, label %_ZSt8_DestroyIPN6Assimp4Ogre12PoseKeyFrameES2_EvT_S4_RSaIT0_E.exit.i, label %.lr.ph.i.i.i3

.lr.ph.i.i.i3:                                    ; preds = %_ZNSt6vectorIN6Assimp4Ogre13MorphKeyFrameESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN6Assimp4Ogre12PoseKeyFrameEEvPT_.exit.i.i.i
  %.05.i.i.i4 = phi ptr [ %i.au, %_ZSt8_DestroyIN6Assimp4Ogre12PoseKeyFrameEEvPT_.exit.i.i.i ], [ %i.ak, %_ZNSt6vectorIN6Assimp4Ogre13MorphKeyFrameESaIS2_EED2Ev.exit ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.05.i.i.i4, i64 8
  %i.ao = load ptr, ptr %i.an, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i.i5 = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i.i.i.i5, label %_ZSt8_DestroyIN6Assimp4Ogre12PoseKeyFrameEEvPT_.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i.i3
  %i.ap = getelementptr inbounds nuw i8, ptr %.05.i.i.i4, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.ao to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ao, i64 noundef %i.at) #24
  br label %_ZSt8_DestroyIN6Assimp4Ogre12PoseKeyFrameEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6Assimp4Ogre12PoseKeyFrameEEvPT_.exit.i.i.i: ; preds = %bb.j, %.lr.ph.i.i.i3
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i.i4, i64 32 ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.au, %i.am
  br i1 %.not.i.i.i6, label %_ZSt8_DestroyIPN6Assimp4Ogre12PoseKeyFrameES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i3, !llvm.loop !41

_ZSt8_DestroyIPN6Assimp4Ogre12PoseKeyFrameES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6Assimp4Ogre12PoseKeyFrameEEvPT_.exit.i.i.i
  %.pr.i7 = load ptr, ptr %i.aj, align 8
  br label %_ZSt8_DestroyIPN6Assimp4Ogre12PoseKeyFrameES2_EvT_S4_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6Assimp4Ogre12PoseKeyFrameES2_EvT_S4_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6Assimp4Ogre12PoseKeyFrameES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6Assimp4Ogre13MorphKeyFrameESaIS2_EED2Ev.exit
  %i.av = phi ptr [ %.pr.i7, %_ZSt8_DestroyIPN6Assimp4Ogre12PoseKeyFrameES2_EvT_S4_RSaIT0_E.exitthread-pre-split.i ], [ %i.ak, %_ZNSt6vectorIN6Assimp4Ogre13MorphKeyFrameESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i8 = icmp eq ptr %i.av, null
end_hunk_1
begin_hunk_2_@_ZN6Assimp4OgreL8EndsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_b:bb.a

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_Z10ai_tolowerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  invoke void @_Z10ai_tolowerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZN6Assimp4OgreL8EndsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_b.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.l = load i64, ptr %i.k, align 8              ; 3 uses
  %i.m = add i64 %i.l, -1
  %or.cond42.not = icmp ult i64 %i.m, %i.i
  br i1 %or.cond42.not, label %bb.g, label %_ZN6Assimp4OgreL8EndsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_b.exit

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.n = sub i64 %i.i, %i.l
  invoke void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.n, i64 noundef %i.l)
          to label %.noexc unwind label %bb.k, !inline_history !43

.noexc:                                           ; preds = %bb.g
  %i.o = invoke noundef i32 @_ZN6Assimp14ASSIMP_stricmpERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.h unwind label %bb.i, !inline_history !43

bb.h:                                             ; preds = %.noexc
  %i.p = icmp eq i32 %i.o, 0
  %i.q = load ptr, ptr %3, align 8                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.h
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZN6Assimp4OgreL8EndsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_b.exit

bb.i:                                             ; preds = %.noexc
  %i.v = landingpad { ptr, i32 }
          cleanup
  %i.w = load ptr, ptr %3, align 8                ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36: ; preds = %bb.i
  %i.z = load i64, ptr %i.x, align 8
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i36
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %.body

_ZN6Assimp4OgreL8EndsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_b.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %bb.f, %bb.e
  %.0.i = phi i1 [ false, %bb.f ], [ false, %bb.e ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ]
  %i.ab = load ptr, ptr %5, align 8               ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN6Assimp4OgreL8EndsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_b.exit
  %i.ae = load i64, ptr %i.ac, align 8
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN6Assimp4OgreL8EndsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_b.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.ag = load ptr, ptr %4, align 8               ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.aj = load i64, ptr %i.ah, align 8
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ag, i64 noundef %i.ak) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.r

bb.j:                                             ; preds = %bb.d
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.k:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.am, %bb.k ], [ %i.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit38 ] ; 2 uses
  %i.an = load ptr, ptr %5, align 8               ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %.body
  %i.aq = load i64, ptr %i.ao, align 8
  %i.ar = add i64 %i.aq, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.ar) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.j
  %.pn = phi { ptr, i32 } [ %i.al, %bb.j ], [ %eh.lpad-body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %eh.lpad-body, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  %i.as = load ptr, ptr %4, align 8               ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  %i.av = load i64, ptr %i.at, align 8
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn

bb.l:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  %i.ax = sub i64 %i.c, %i.f                      ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44)
  %i.ay = icmp ugt i64 %i.f, %i.c
  br i1 %i.ay, label %bb.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, i64 noundef %i.ax, i64 noundef %i.c) #22, !noalias !44
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.l
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.az, ptr %6, align 8, !alias.scope !44
  %i.ba = load ptr, ptr %0, align 8, !noalias !44
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ax ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21, !noalias !44
  store i64 %i.f, ptr %i.a, align 8, !noalias !44
  %i.bc = icmp ugt i64 %i.f, 15
  br i1 %i.bc, label %._crit_edge.i.i.i.thread, label %._crit_edge.i.i.i

._crit_edge.i.i.i.thread:                         ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.bd = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.bd, ptr %6, align 8, !alias.scope !44
  %i.be = load i64, ptr %i.a, align 8, !noalias !44
  store i64 %i.be, ptr %i.az, align 8, !alias.scope !44
  br label %bb.o

._crit_edge.i.i.i:                                ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %cond = icmp eq i64 %i.f, 1
  br i1 %cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i
  %i.bf = load i8, ptr %i.bb, align 1
  store i8 %i.bf, ptr %i.az, align 8
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.o:                                             ; preds = %._crit_edge.i.i.i.thread, %._crit_edge.i.i.i
  %i.bg = phi ptr [ %i.bd, %._crit_edge.i.i.i.thread ], [ %i.az, %._crit_edge.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bg, ptr align 1 %i.bb, i64 %i.f, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %bb.n, %bb.o
  %i.bh = load i64, ptr %i.a, align 8, !noalias !44 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 %i.bh, ptr %i.bi, align 8, !alias.scope !44
  %i.bj = load ptr, ptr %6, align 8, !alias.scope !44
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bh
  store i8 0, ptr %i.bk, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21, !noalias !44
  %i.bl = load i64, ptr %i.e, align 8
  %i.bm = trunc i64 %i.bl to i32
  %i.bn = load i64, ptr %i.bi, align 8            ; 2 uses
  %i.bo = trunc i64 %i.bn to i32
  %.not.i = icmp eq i32 %i.bm, %i.bo
  %.pre = load ptr, ptr %6, align 8               ; 3 uses
  br i1 %.not.i, label %bb.p, label %_ZN6Assimp14ASSIMP_stricmpERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.bp = load ptr, ptr %1, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %.06.i.i = phi ptr [ %.pre, %bb.p ], [ %i.bq, %bb.q ] ; 2 uses
  %.0.i.i = phi ptr [ %i.bp, %bb.p ], [ %i.bu, %bb.q ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 1
  %i.br = load i8, ptr %.06.i.i, align 1
  %i.bs = zext i8 %i.br to i32
  %i.bt = call i32 @tolower(i32 noundef %i.bs) #26 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  %i.bv = load i8, ptr %.0.i.i, align 1
  %i.bw = zext i8 %i.bv to i32
  %i.bx = call i32 @tolower(i32 noundef %i.bw) #26
  %i.by = and i32 %i.bt, 255
  %i.bz = icmp ne i32 %i.by, 0
  %.unshifted = xor i32 %i.bt, %i.bx
  %.mask = and i32 %.unshifted, 255
  %i.ca = icmp eq i32 %.mask, 0                   ; 2 uses
  %i.cb = select i1 %i.bz, i1 %i.ca, i1 false
  br i1 %i.cb, label %bb.q, label %_ZN6Assimp14ASSIMP_stricmpERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit, !llvm.loop !47

_ZN6Assimp14ASSIMP_stricmpERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.cc = phi i1 [ false, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit ], [ %i.ca, %bb.q ]
  %i.cd = icmp eq ptr %.pre, %i.az
  br i1 %i.cd, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31: ; preds = %_ZN6Assimp14ASSIMP_stricmpERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit
  %i.ce = icmp ult i64 %i.bn, 16
  call void @llvm.assume(i1 %i.ce)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZN6Assimp14ASSIMP_stricmpERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_.exit
  %i.cf = load i64, ptr %i.az, align 8
  %i.cg = add i64 %i.cf, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.cg) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  br label %bb.r

bb.r:                                             ; preds = %bb.a, %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23
  %.0 = phi i1 [ %.0.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23 ], [ false, %bb.a ], [ %i.cc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32 ], [ false, %bb.b ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZN6Assimp4Ogre17OgreXmlSerializer14ImportSkeletonEPNS_8IOSystemEPNS0_4MeshE(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp4Ogre20OgreBinarySerializer10OpenReaderEPNS_8IOSystemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::shared_ptr.76") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.a, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.a, ptr noundef nonnull align 1 dereferenceable(9) @.str.40, i64 9, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 9, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 25
  store i8 0, ptr %i.c, align 1
  %i.d = invoke fastcc noundef zeroext i1 @_ZN6Assimp4OgreL8EndsWithERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_b(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext false)
          to label %bb.a unwind label %bb.c

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.e = load ptr, ptr %3, align 8                ; 2 uses
  %i.f = icmp eq ptr %i.e, %i.a
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.g = load i64, ptr %i.a, align 8
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.h) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.i = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorIJRA46_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA17_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.i, ptr noundef nonnull align 1 dereferenceable(46) @.str.41, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(17) @.str.42)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.m

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %3, align 8                ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.a
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.c
  %i.m = load i64, ptr %i.a, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.n

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = load ptr, ptr %2, align 8
  %i.p = load ptr, ptr %1, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.o), !inline_history !48
  br i1 %i.s, label %._crit_edge.i.i25, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger5errorIJRA31_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA39_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.t, ptr noundef nonnull align 1 dereferenceable(31) @.str.43, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(39) @.str.44)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.m

._crit_edge.i.i25:                                ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.u, ptr %4, align 8
  store i16 25202, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 2, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 18
  store i8 0, ptr %i.w, align 2
  %i.x = load ptr, ptr %2, align 8
  %i.y = load ptr, ptr %1, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = invoke noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %i.x, ptr noundef nonnull %i.u)
          to label %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit unwind label %bb.h, !inline_history !49 ; 2 uses

_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit: ; preds = %._crit_edge.i.i25
  %i.ac = load ptr, ptr %4, align 8               ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.u
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit
  %i.ae = load i64, ptr %i.u, align 8
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.af) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZN6Assimp8IOSystem4OpenERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %i.ag = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2IJRA30_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 1 dereferenceable(30) @.str.46, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  call void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
  unreachable

bb.h:                                             ; preds = %._crit_edge.i.i25
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %4, align 8               ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.u
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %bb.h
  %i.ak = load i64, ptr %i.u, align 8
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  br label %bb.n

bb.i:                                             ; preds = %bb.f
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ag) #21
  br label %bb.n

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  %i.an = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #23 ; 4 uses
  invoke void @_ZN6Assimp12StreamReaderILb0ELb0EEC2EPNS_8IOStreamEb(ptr noundef nonnull align 8 dereferenceable(49) %i.an, ptr noundef nonnull %i.ab, i1 noundef zeroext false)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr %i.an, ptr %0, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZNSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EEC2IPN6Assimp12StreamReaderILb0ELb0EEEEET_(ptr noundef nonnull align 8 dereferenceable(8) %i.ao, ptr noundef nonnull %i.an)
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.an, i64 noundef 56) #24
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.e, %bb.b
  ret void

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, %bb.i, %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  %.pn19.pn = phi { ptr, i32 } [ %i.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24 ], [ %i.ap, %bb.l ], [ %i.am, %bb.i ], [ %i.ah, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35 ]
  resume { ptr, i32 } %.pn19.pn
}

declare void @_ZN6Assimp4Ogre8SkeletonC1Ev(ptr noundef nonnull align 8 dereferenceable(52)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp4Ogre20OgreBinarySerializer12ReadSkeletonEPNS0_8SkeletonE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(20) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
end_hunk_2
begin_hunk_3_@_Z10ai_tolowerRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
bb.b:                                             ; preds = %._crit_edge.i.i
  %i.j = load i8, ptr %i.c, align 1
  store i8 %i.j, ptr %i.i, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.i, ptr align 1 %i.c, i64 %i.e, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.k = load i64, ptr %i.a, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  store i64 %i.k, ptr %i.l, align 8
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.k
  store i8 0, ptr %i.n, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.o = load ptr, ptr %0, align 8                ; 3 uses
  %i.p = load i64, ptr %i.l, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.p
  %i.r = invoke ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZ12ai_trim_leftRS8_EUlhE_EEET_SF_SF_T0_St26random_access_iterator_tag(ptr %i.o, ptr %i.q)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.s = load ptr, ptr %0, align 8                ; 3 uses
  %i.t = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u                       ; 3 uses
  %i.w = load i64, ptr %i.l, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.w
  %i.y = icmp eq ptr %i.r, %i.x
  br i1 %i.y, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc
  store i64 %i.v, ptr %i.l, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v
  store i8 0, ptr %i.z, align 1
  br label %_Z12ai_trim_leftRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.e:                                             ; preds = %.noexc
  %i.aa = ptrtoint ptr %i.r to i64
  %i.ab = sub i64 %i.aa, %i.t
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v, i64 noundef %i.ab)
          to label %_Z12ai_trim_leftRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.g

_Z12ai_trim_leftRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.ac = load ptr, ptr %0, align 8, !noalias !75 ; 2 uses
  %i.ad = load i64, ptr %i.l, align 8, !noalias !75
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.ad
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = ptrtoint ptr %i.ac to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %2), !noalias !78
  call void @llvm.lifetime.start.p0(ptr nonnull %3), !noalias !78
  store i64 %i.af, ptr %2, align 8, !noalias !81
  store i64 %i.ag, ptr %3, align 8, !noalias !81
  invoke void @_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIZ13ai_trim_rightRS9_EUlhE_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr dead_on_unwind nonnull writable sret(%"class.std::reverse_iterator") align 8 %4, ptr noundef nonnull dead_on_return %2, ptr noundef nonnull dead_on_return %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %_Z12ai_trim_leftRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %2), !noalias !78
  call void @llvm.lifetime.end.p0(ptr nonnull %3), !noalias !78
  %.sroa.0.0.copyload.i.i = load ptr, ptr %4, align 8
  %i.ah = load ptr, ptr %0, align 8               ; 2 uses
  %i.ai = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj                    ; 2 uses
  store i64 %i.ak, ptr %i.l, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ak
  store i8 0, ptr %i.al, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  %i.am = load ptr, ptr %0, align 8               ; 6 uses
  %i.an = load i64, ptr %i.l, align 8             ; 9 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  %.not6.i = icmp samesign eq i64 %i.an, 0
  br i1 %.not6.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_Z10ai_tolowerRKS8_EUlhE_ET0_T_SE_SD_T1_.exit, label %iter.check

iter.check:                                       ; preds = %bb.f
  %min.iters.check = icmp ult i64 %i.an, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check10 = icmp ult i64 %i.an, 32
  br i1 %min.iters.check10, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ap = and i64 %i.an, 24
  %n.vec = and i64 %i.an, -32                     ; 4 uses
  %i.aq = getelementptr i8, ptr %i.am, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %next.gep = getelementptr i8, ptr %i.am, i64 %index ; 3 uses
  %i.ar = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %next.gep, align 1 ; 3 uses
  %wide.load11 = load <16 x i8>, ptr %i.ar, align 1 ; 3 uses
  %i.as = add <16 x i8> %wide.load, splat (i8 -65)
  %i.at = add <16 x i8> %wide.load11, splat (i8 -65)
  %i.au = icmp ult <16 x i8> %i.as, splat (i8 26)
  %i.av = icmp ult <16 x i8> %i.at, splat (i8 26)
  %i.aw = add nuw nsw <16 x i8> %wide.load, splat (i8 32)
  %i.ax = add nuw nsw <16 x i8> %wide.load11, splat (i8 32)
  %i.ay = select <16 x i1> %i.au, <16 x i8> %i.aw, <16 x i8> %wide.load
  %i.az = select <16 x i1> %i.av, <16 x i8> %i.ax, <16 x i8> %wide.load11
  store <16 x i8> %i.ay, ptr %next.gep, align 1
  store <16 x i8> %i.az, ptr %i.ar, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_Z10ai_tolowerRKS8_EUlhE_ET0_T_SE_SD_T1_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ap, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !87

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %i.an, -8                    ; 3 uses
  %i.bb = getelementptr i8, ptr %i.am, i64 %n.vec12
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ] ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.am, i64 %index13 ; 2 uses
  %wide.load15 = load <8 x i8>, ptr %next.gep14, align 1 ; 3 uses
  %i.bc = add <8 x i8> %wide.load15, splat (i8 -65)
  %i.bd = icmp ult <8 x i8> %i.bc, splat (i8 26)
  %i.be = add nuw nsw <8 x i8> %wide.load15, splat (i8 32)
  %i.bf = select <8 x i1> %i.bd, <8 x i8> %i.be, <8 x i8> %wide.load15
  store <8 x i8> %i.bf, ptr %next.gep14, align 1
  %index.next16 = add nuw i64 %index13, 8         ; 2 uses
  %i.bg = icmp eq i64 %index.next16, %n.vec12
  br i1 %i.bg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !88

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %i.an, %n.vec12
  br i1 %cmp.n17, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_Z10ai_tolowerRKS8_EUlhE_ET0_T_SE_SD_T1_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.0.08.i.ph = phi ptr [ %i.am, %iter.check ], [ %i.aq, %vec.epilog.iter.check ], [ %i.bb, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.sroa.0.08.i = phi ptr [ %i.bl, %.lr.ph.i ], [ %.sroa.0.08.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.bh = load i8, ptr %.sroa.0.08.i, align 1     ; 3 uses
  %i.bi = add i8 %i.bh, -65
  %or.cond.i.i.i = icmp ult i8 %i.bi, 26
  %i.bj = add nuw nsw i8 %i.bh, 32
  %i.bk = select i1 %or.cond.i.i.i, i8 %i.bj, i8 %i.bh
  store i8 %i.bk, ptr %.sroa.0.08.i, align 1
  %i.bl = getelementptr i8, ptr %.sroa.0.08.i, i64 1 ; 2 uses
  %.not.i = icmp eq ptr %i.bl, %i.ao
  br i1 %.not.i, label %_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_Z10ai_tolowerRKS8_EUlhE_ET0_T_SE_SD_T1_.exit, label %.lr.ph.i, !llvm.loop !89

bb.g:                                             ; preds = %_Z12ai_trim_leftRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  %i.bn = load ptr, ptr %0, align 8               ; 2 uses
  %i.bo = icmp eq ptr %i.bn, %i.b
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.bp = load i64, ptr %i.b, align 8
  %i.bq = add i64 %i.bp, 1
  call void @_ZdlPvm(ptr noundef %i.bn, i64 noundef %i.bq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.bm

_ZSt9transformIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES9_Z10ai_tolowerRKS8_EUlhE_ET0_T_SE_SD_T1_.exit: ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #0 align 2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN6Assimp14ASSIMP_stricmpERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = trunc i64 %i.e to i32
  %i.g = sub nsw i32 %i.c, %i.f                   ; 2 uses
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8
  %i.i = load ptr, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.06.i = phi ptr [ %i.h, %bb.b ], [ %i.j, %bb.c ] ; 2 uses
  %.0.i = phi ptr [ %i.i, %bb.b ], [ %i.n, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.06.i, i64 1
  %i.k = load i8, ptr %.06.i, align 1
  %i.l = zext i8 %i.k to i32
  %i.m = tail call i32 @tolower(i32 noundef %i.l) #26 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  %i.o = load i8, ptr %.0.i, align 1
  %i.p = zext i8 %i.o to i32
  %i.q = tail call i32 @tolower(i32 noundef %i.p) #26
  %i.r = and i32 %i.m, 255
  %i.s = icmp ne i32 %i.r, 0
  %sext.i = shl i32 %i.m, 24
  %i.t = ashr exact i32 %sext.i, 24               ; 2 uses
  %sext7.i = shl i32 %i.q, 24
  %i.u = ashr exact i32 %sext7.i, 24              ; 2 uses
  %i.v = icmp eq i32 %i.t, %i.u
  %i.w = select i1 %i.s, i1 %i.v, i1 false
  br i1 %i.w, label %bb.c, label %_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit, !llvm.loop !47

_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit:           ; preds = %bb.c
  %i.x = sub nsw i32 %i.t, %i.u
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit
  %i.y = phi i32 [ %i.x, %_ZN6Assimp14ASSIMP_stricmpEPKcS1_.exit ], [ %i.g, %bb.a ]
  ret i32 %i.y
}

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #6

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_eraseEmm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZSt9__find_ifIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEENS0_5__ops10_Iter_predIZ12ai_trim_leftRS8_EUlhE_EEET_SF_SF_T0_St26random_access_iterator_tag(ptr %0, ptr %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr i64 %i.c, 2                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = and i64 %i.c, -4
  %scevgep = getelementptr i8, ptr %0, i64 %i.f   ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.051 = phi i64 [ %i.w, %bb.e ], [ %i.d, %.lr.ph.preheader ] ; 2 uses
  %.sroa.031.050 = phi ptr [ %i.v, %bb.e ], [ %0, %.lr.ph.preheader ] ; 9 uses
  %i.g = load i8, ptr %.sroa.031.050, align 1
  %i.h = zext i8 %i.g to i32
  %i.i = tail call i32 @isspace(i32 noundef %i.h) #26
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.031.050, i64 1
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i32
  %i.m = tail call i32 @isspace(i32 noundef %i.l) #26
  %.not.i.i16 = icmp eq i32 %i.m, 0
  br i1 %.not.i.i16, label %.loopexit.loopexit.split.loop.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.031.050, i64 2
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i32
  %i.q = tail call i32 @isspace(i32 noundef %i.p) #26
  %.not.i.i17 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i17, label %.loopexit.loopexit.split.loop.exit56, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.031.050, i64 3
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i32
  %i.u = tail call i32 @isspace(i32 noundef %i.t) #26
  %.not.i.i18 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i18, label %.loopexit.loopexit.split.loop.exit58, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.031.050, i64 4
  %i.w = add nsw i64 %.051, -1
  %i.x = icmp sgt i64 %.051, 1
  br i1 %i.x, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !90

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre = ptrtoint ptr %scevgep to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.b, %bb.a ]
  %.sroa.031.0.lcssa = phi ptr [ %scevgep, %._crit_edge.loopexit ], [ %0, %bb.a ] ; 5 uses
  %i.y = sub i64 %i.a, %.pre-phi
  switch i64 %i.y, label %.loopexit [
    i64 3, label %bb.f
    i64 2, label %bb.h
    i64 1, label %bb.j
  ]

bb.f:                                             ; preds = %._crit_edge
  %i.z = load i8, ptr %.sroa.031.0.lcssa, align 1
  %i.aa = zext i8 %i.z to i32
  %i.ab = tail call i32 @isspace(i32 noundef %i.aa) #26
  %.not.i.i19 = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i19, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.031.0.lcssa, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %.sroa.031.1 = phi ptr [ %i.ac, %bb.g ], [ %.sroa.031.0.lcssa, %._crit_edge ] ; 3 uses
  %i.ad = load i8, ptr %.sroa.031.1, align 1
  %i.ae = zext i8 %i.ad to i32
  %i.af = tail call i32 @isspace(i32 noundef %i.ae) #26
  %.not.i.i20 = icmp eq i32 %i.af, 0
  br i1 %.not.i.i20, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.031.1, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  %.sroa.031.2 = phi ptr [ %i.ag, %bb.i ], [ %.sroa.031.0.lcssa, %._crit_edge ] ; 2 uses
  %i.ah = load i8, ptr %.sroa.031.2, align 1
  %i.ai = zext i8 %i.ah to i32
  %i.aj = tail call i32 @isspace(i32 noundef %i.ai) #26
  %.not.i.i21 = icmp eq i32 %i.aj, 0
  %spec.select = select i1 %.not.i.i21, ptr %.sroa.031.2, ptr %1
  br label %.loopexit

.loopexit.loopexit.split.loop.exit:               ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.031.050, i64 1
  br label %.loopexit

.loopexit.loopexit.split.loop.exit56:             ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.031.050, i64 2
  br label %.loopexit

.loopexit.loopexit.split.loop.exit58:             ; preds = %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.031.050, i64 3
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.loopexit.loopexit.split.loop.exit, %.loopexit.loopexit.split.loop.exit56, %.loopexit.loopexit.split.loop.exit58, %bb.j, %._crit_edge, %bb.h, %bb.f
  %.sroa.08.0.in.sroa.speculated = phi ptr [ %.sroa.031.1, %bb.h ], [ %spec.select, %bb.j ], [ %1, %._crit_edge ], [ %.sroa.031.0.lcssa, %bb.f ], [ %i.am, %.loopexit.loopexit.split.loop.exit58 ], [ %i.ak, %.loopexit.loopexit.split.loop.exit ], [ %i.al, %.loopexit.loopexit.split.loop.exit56 ], [ %.sroa.031.050, %.lr.ph ]
  ret ptr %.sroa.08.0.in.sroa.speculated
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @isspace(i32 noundef) local_unnamed_addr #16

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZSt9__find_ifISt16reverse_iteratorIN9__gnu_cxx17__normal_iteratorIPcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEENS1_5__ops10_Iter_predIZ13ai_trim_rightRS9_EUlhE_EEET_SH_SH_T0_St26random_access_iterator_tag(ptr dead_on_unwind noalias writable sret(%"class.std::reverse_iterator") align 8 %0, ptr noundef dead_on_return %1, ptr noundef dead_on_return %2) local_unnamed_addr #0 comdat {
bb.a:
  %.sroa.0.0.copyload.i.i = load ptr, ptr %1, align 8 ; 3 uses
  %.sroa.0.0.copyload.i2.i = load ptr, ptr %2, align 8
  %i.a = ptrtoint ptr %.sroa.0.0.copyload.i.i to i64 ; 3 uses
  %i.b = ptrtoint ptr %.sroa.0.0.copyload.i2.i to i64 ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr i64 %i.c, 2                         ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %i.f = phi ptr [ %i.ae, %bb.h ], [ %.sroa.0.0.copyload.i.i, %bb.a ] ; 10 uses
  %i.g = phi i64 [ %i.ah, %bb.h ], [ %i.a, %bb.a ] ; 2 uses
  %.030 = phi i64 [ %i.af, %bb.h ], [ %i.d, %bb.a ] ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -1
  %i.j = load i8, ptr %i.i, align 1
  %i.k = zext i8 %i.j to i32
  %i.l = tail call i32 @isspace(i32 noundef %i.k) #26
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 -1
  store ptr %i.m, ptr %1, align 8
  %i.n = getelementptr inbounds i8, ptr %i.f, i64 -2
  %i.o = load i8, ptr %i.n, align 1
  %i.p = zext i8 %i.o to i32
  %i.q = tail call i32 @isspace(i32 noundef %i.p) #26
  %.not.i.i2 = icmp eq i32 %i.q, 0
  br i1 %.not.i.i2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.r = getelementptr inbounds i8, ptr %i.f, i64 -1
  %.cast = ptrtoint ptr %i.r to i64
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds i8, ptr %i.f, i64 -2
  store ptr %i.s, ptr %1, align 8
  %i.t = getelementptr inbounds i8, ptr %i.f, i64 -3
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i32
  %i.w = tail call i32 @isspace(i32 noundef %i.v) #26
  %.not.i.i3 = icmp eq i32 %i.w, 0
  br i1 %.not.i.i3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds i8, ptr %i.f, i64 -2
  %.cast16 = ptrtoint ptr %i.x to i64
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
end_hunk_3
