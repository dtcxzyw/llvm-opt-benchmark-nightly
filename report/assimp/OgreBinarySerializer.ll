inline.NumInlined: 1874
inline.NumDeleted: 793
begin_hunk_0_@_ZN6Assimp4Ogre20OgreBinarySerializer11ReadSubMeshEPNS0_4MeshE:bb.a
bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8              ; 3 uses
  %i.n = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.n)
  switch i64 %i.m, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.o = load i8, ptr %i.i, align 1
  store i8 %i.o, ptr %i.f, align 1
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.f, ptr align 1 %i.i, i64 %i.m, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.p = load i64, ptr %i.l, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store i64 %i.p, ptr %i.q, align 8
  %i.r = load ptr, ptr %i.e, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1
  %.pre.i = load ptr, ptr %2, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  store ptr %i.i, ptr %i.e, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.v = load <2 x i64>, ptr %i.u, align 8
  store <2 x i64> %i.v, ptr %i.t, align 8
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.w = load i64, ptr %i.g, align 8
  store ptr %i.i, ptr %i.e, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.z = load <2 x i64>, ptr %i.x, align 8
  store <2 x i64> %i.z, ptr %i.y, align 8
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.f, ptr %2, align 8
  store i64 %i.w, ptr %i.j, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.j, ptr %2, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.aa = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.f, %bb.f ], [ %i.j, %bb.g ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ab, align 8
  store i8 0, ptr %i.aa, align 1
  %i.ac = load ptr, ptr %2, align 8               ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.af = load i64, ptr %i.ad, align 8
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = icmp ugt ptr %i.al, %i.an
  br i1 %i.ao, label %bb.h, label %_ZN6Assimp4Ogre20OgreBinarySerializer4ReadIbEET_v.exit

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ap = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull @.str.66)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @__cxa_throw(ptr nonnull %i.ap, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
  unreachable

common.resume:                                    ; preds = %bb.ae, %bb.aj, %bb.am, %bb.v, %bb.bb, %bb.at, %bb.t, %bb.p, %bb.m, %bb.j
  %common.resume.op = phi { ptr, i32 } [ %i.aq, %bb.j ], [ %i.bd, %bb.m ], [ %i.bt, %bb.p ], [ %i.dh, %bb.t ], [ %i.dw, %bb.v ], [ %i.gq, %bb.at ], [ %i.hp, %bb.bb ], [ %i.fh, %bb.aj ], [ %i.fk, %bb.am ], [ %i.fc, %bb.ae ]
  resume { ptr, i32 } %common.resume.op

bb.j:                                             ; preds = %bb.h
  %i.aq = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ap) #21
  br label %common.resume

_ZN6Assimp4Ogre20OgreBinarySerializer4ReadIbEET_v.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ar = load i8, ptr %i.ak, align 1
  store ptr %i.al, ptr %i.aj, align 8
  %i.as = icmp ne i8 %i.ar, 0
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 140 ; 3 uses
  %i.au = zext i1 %i.as to i8
  store i8 %i.au, ptr %i.at, align 4
  %i.av = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = icmp ugt ptr %i.ay, %i.ba
  br i1 %i.bb, label %bb.k, label %_ZN6Assimp4Ogre20OgreBinarySerializer4ReadIjEET_v.exit

bb.k:                                             ; preds = %_ZN6Assimp4Ogre20OgreBinarySerializer4ReadIbEET_v.exit
  %i.bc = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull @.str.66)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @__cxa_throw(ptr nonnull %i.bc, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bc) #21
  br label %common.resume

_ZN6Assimp4Ogre20OgreBinarySerializer4ReadIjEET_v.exit: ; preds = %_ZN6Assimp4Ogre20OgreBinarySerializer4ReadIbEET_v.exit
  %i.be = load i32, ptr %i.ax, align 1
  store ptr %i.ay, ptr %i.aw, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 160 ; 6 uses
  %i.bg = load ptr, ptr %i.bf, align 8
  store i32 %i.be, ptr %i.bg, align 8
  %i.bh = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8
  %i.bj = udiv i32 %i.bi, 3
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 %i.bj, ptr %i.bk, align 4
  %i.bl = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = icmp ugt ptr %i.bo, %i.bq
  br i1 %i.br, label %bb.n, label %_ZN6Assimp4Ogre20OgreBinarySerializer4ReadIbEET_v.exit22

bb.n:                                             ; preds = %_ZN6Assimp4Ogre20OgreBinarySerializer4ReadIjEET_v.exit
  %i.bs = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull @.str.66)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @__cxa_throw(ptr nonnull %i.bs, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.bs) #21
  br label %common.resume

_ZN6Assimp4Ogre20OgreBinarySerializer4ReadIbEET_v.exit22: ; preds = %_ZN6Assimp4Ogre20OgreBinarySerializer4ReadIjEET_v.exit
  %i.bu = load i8, ptr %i.bn, align 1
  store ptr %i.bo, ptr %i.bm, align 8
  %i.bv = icmp ne i8 %i.bu, 0
  %i.bw = load ptr, ptr %i.bf, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = zext i1 %i.bv to i8
  store i8 %i.by, ptr %i.bx, align 8
  %i.bz = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 5 uses
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = load ptr, ptr %i.ca, align 8
  %i.ce = ptrtoint ptr %i.cc to i64
  %i.cf = ptrtoint ptr %i.cd to i64
  %i.cg = sub i64 %i.ce, %i.cf
  %i.ch = ashr exact i64 %i.cg, 3
  store i64 %i.ch, ptr %i.a, align 8
  call void @_ZN6Assimp6Logger12verboseDebugIJRA17_KcmEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.bz, ptr noundef nonnull align 1 dereferenceable(17) @.str.13, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ci = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @_ZN6Assimp6Logger12verboseDebugIJRA16_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA2_S2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ci, ptr noundef nonnull align 1 dereferenceable(16) @.str.14, ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 1 dereferenceable(2) @.str.15)
  %i.cj = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  %i.ck = load i8, ptr %i.at, align 4, !range !5, !noundef !6
  %i.cl = trunc nuw i8 %i.ck to i1
  %i.cm = select i1 %i.cl, ptr @.str.7, ptr @.str.8
  store ptr %i.cm, ptr %i.b, align 8
  call void @_ZN6Assimp6Logger12verboseDebugIJRA27_KcPS2_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.cj, ptr noundef nonnull align 1 dereferenceable(27) @.str.16, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.cn = load ptr, ptr %i.bf, align 8            ; 3 uses
  %i.co = load i32, ptr %i.cn, align 8
  %.not = icmp eq i32 %i.co, 0
  br i1 %.not, label %bb.af, label %bb.q

bb.q:                                             ; preds = %_ZN6Assimp4Ogre20OgreBinarySerializer4ReadIbEET_v.exit22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  %3 = load i32, ptr %i.cn, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cq = load i8, ptr %i.cp, align 8, !range !5, !noundef !6
  %i.cr = trunc nuw i8 %i.cq to i1
  %i.cs = select i1 %i.cr, i32 2, i32 1
  %i.ct = shl i32 %3, %i.cs                       ; 2 uses
  store i32 %i.ct, ptr %i.c, align 4
  %i.cu = zext i32 %i.ct to i64                   ; 3 uses
  %i.cv = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.cu) #23 ; 2 uses
  %i.cw = load ptr, ptr %i.ah, align 8            ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8            ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cu ; 3 uses
  store ptr %i.cz, ptr %i.cx, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = icmp ugt ptr %i.cz, %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = icmp ult ptr %i.cz, %i.de
  %or.cond.i.i.i.i.i = select i1 %i.dc, i1 true, i1 %i.df
  br i1 %or.cond.i.i.i.i.i, label %bb.r, label %_ZN6Assimp4Ogre20OgreBinarySerializer9ReadBytesEm.exit

bb.r:                                             ; preds = %bb.q
  %i.dg = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, ptr noundef nonnull @.str.72)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @__cxa_throw(ptr nonnull %i.dg, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.dg) #21
  br label %common.resume

_ZN6Assimp4Ogre20OgreBinarySerializer9ReadBytesEm.exit: ; preds = %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cv, ptr align 1 %i.cy, i64 %i.cu, i1 false)
  %i.di = call noundef ptr @_ZN6Assimp6Intern22AllocateFromAssimpHeapnwEm(i64 noundef 40) ; 9 uses
  %i.dj = load i32, ptr %i.c, align 4
  %i.dk = zext i32 %i.dj to i64
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6Assimp14MemoryIOStreamE, i64 16), ptr %i.di, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 8
  store ptr %i.cv, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  store i64 %i.dk, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.di, i64 24
  store i64 0, ptr %i.dn, align 8
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  store i8 1, ptr %i.do, align 8
  %i.dp = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #23
          to label %_ZNSt10shared_ptrIN6Assimp14MemoryIOStreamEEC2IS1_vEEPT_.exit unwind label %bb.u ; 5 uses

bb.u:                                             ; preds = %_ZN6Assimp4Ogre20OgreBinarySerializer9ReadBytesEm.exit
  %i.dq = landingpad { ptr, i32 }
          catch ptr null
  %i.dr = extractvalue { ptr, i32 } %i.dq, 0
  %i.ds = call ptr @__cxa_begin_catch(ptr %i.dr) #21 ; 0 uses
  %i.dt = load ptr, ptr %i.di, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dv = load ptr, ptr %i.du, align 8
  call void %i.dv(ptr noundef nonnull align 8 dereferenceable(33) %i.di) #21, !inline_history !9
  invoke void @__cxa_rethrow() #22
          to label %bb.x unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dx = landingpad { ptr, i32 }
          catch ptr null
  %i.dy = extractvalue { ptr, i32 } %i.dx, 0
  call void @__clang_call_terminate(ptr %i.dy) #25
  unreachable

bb.x:                                             ; preds = %bb.u
  unreachable

_ZNSt10shared_ptrIN6Assimp14MemoryIOStreamEEC2IS1_vEEPT_.exit: ; preds = %_ZN6Assimp4Ogre20OgreBinarySerializer9ReadBytesEm.exit
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store i32 1, ptr %i.dz, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  store i32 1, ptr %i.ea, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN6Assimp14MemoryIOStreamELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.dp, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store ptr %i.di, ptr %i.eb, align 8
  %i.ec = load ptr, ptr %i.bf, align 8            ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store ptr %i.di, ptr %i.ed, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 24 ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8            ; 8 uses
  store ptr %i.dp, ptr %i.ee, align 8
  %.not.i.i.i.i = icmp eq ptr %i.ef, null
  br i1 %.not.i.i.i.i, label %_ZNSt12__shared_ptrIN6Assimp14MemoryIOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp14MemoryIOStreamEEC2IS1_vEEPT_.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 4 uses
  %i.eh = load atomic i64, ptr %i.eg acquire, align 8 ; 2 uses
  %i.ei = icmp eq i64 %i.eh, 4294967297
  %i.ej = trunc i64 %i.eh to i32                  ; 2 uses
  br i1 %i.ei, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store i32 0, ptr %i.eg, align 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  store i32 0, ptr %i.ek, align 4
  %i.el = load ptr, ptr %i.ef, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.en = load ptr, ptr %i.em, align 8
  call void %i.en(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #21, !inline_history !10
  %i.eo = load ptr, ptr %i.ef, align 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8
  call void %i.eq(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #21, !inline_history !10
  br label %_ZNSt12__shared_ptrIN6Assimp14MemoryIOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.aa:                                            ; preds = %bb.y
  %i.er = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i.i = icmp eq i8 %i.er, 0
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.es = add nsw i32 %i.ej, -1
  store i32 %i.es, ptr %i.eg, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.et = atomicrmw volatile add ptr %i.eg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.ac, %bb.ab
  %.0.i.i.i.i.i.i = phi i32 [ %i.ej, %bb.ab ], [ %i.et, %bb.ac ]
  %i.eu = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.eu, label %bb.ad, label %_ZNSt12__shared_ptrIN6Assimp14MemoryIOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !11

bb.ad:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ef) #21
  br label %_ZNSt12__shared_ptrIN6Assimp14MemoryIOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp14MemoryIOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.ad, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.z, %_ZNSt10shared_ptrIN6Assimp14MemoryIOStreamEEC2IS1_vEEPT_.exit
  %i.ev = call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  %i.ew = load ptr, ptr %i.bf, align 8            ; 3 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 4
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ez = load i8, ptr %i.ey, align 8, !range !5, !noundef !6
  %i.fa = trunc nuw i8 %i.ez to i1
  %i.fb = select i1 %i.fa, ptr @.str.19, ptr @.str.20
  call void @_ZN6Assimp6Logger12verboseDebugIJRA5_KcRjRA13_S2_S5_RA7_S2_S7_S5_S9_EEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ev, ptr noundef nonnull align 1 dereferenceable(5) @.str.17, ptr noundef nonnull align 4 dereferenceable(4) %i.ex, ptr noundef nonnull align 1 dereferenceable(13) @.str.18, ptr noundef nonnull align 4 dereferenceable(4) %i.ew, ptr noundef nonnull align 1 dereferenceable(7) %i.fb, ptr noundef nonnull align 1 dereferenceable(13) @.str.21, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 1 dereferenceable(7) @.str.22)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  br label %bb.af

bb.ae:                                            ; preds = %bb.a
  %i.fc = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 168) #24
  br label %common.resume

bb.af:                                            ; preds = %_ZNSt12__shared_ptrIN6Assimp14MemoryIOStreamELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %_ZN6Assimp4Ogre20OgreBinarySerializer4ReadIbEET_v.exit22
  %i.fd = load i8, ptr %i.at, align 4, !range !5, !noundef !6
  %i.fe = trunc nuw i8 %i.fd to i1
  br i1 %i.fe, label %bb.an, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ff = call noundef zeroext i16 @_ZN6Assimp4Ogre20OgreBinarySerializer10ReadHeaderEb(ptr noundef nonnull align 8 dereferenceable(20) %0, i1 noundef zeroext true)
  %.not20 = icmp eq i16 %i.ff, 20480
  br i1 %.not20, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fg = call ptr @__cxa_allocate_exception(i64 16) #21 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.fg, ptr noundef nonnull @.str.23)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @__cxa_throw(ptr nonnull %i.fg, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #22
  unreachable

bb.aj:                                            ; preds = %bb.ah
  %i.fh = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.fg) #21
  br label %common.resume

bb.ak:                                            ; preds = %bb.ag
  %i.fi = call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #23 ; 4 uses
  invoke void @_ZN6Assimp4Ogre10VertexDataC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.fi)
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.fj = getelementptr inbounds nuw i8, ptr %i.d, i64 152
  store ptr %i.fi, ptr %i.fj, align 8
  call void @_ZN6Assimp4Ogre20OgreBinarySerializer12ReadGeometryEPNS0_10VertexDataE(ptr noundef nonnull align 8 dereferenceable(20) %0, ptr noundef nonnull %i.fi)
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.fk = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fi, i64 noundef 200) #24
  br label %common.resume

bb.an:                                            ; preds = %bb.al, %bb.af
  %i.fl = load ptr, ptr %i.ah, align 8            ; 2 uses
end_hunk_0
