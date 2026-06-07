inline.NumInlined: 428
inline.NumDeleted: 148
begin_hunk_0_@_ZN6Assimp16AssbinFileWriter15WriteBinaryDumpEPKcS2_PNS_8IOSystemEPK7aiScene:bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.t = load ptr, ptr %5, align 8                ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.w = load i64, ptr %i.u, align 8
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.g
  %.121 = phi i1 [ true, %bb.g ], [ %.020, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.020, %bb.h ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.s, %bb.h ] ; 4 uses
  %i.y = load ptr, ptr %6, align 8                ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = load i64, ptr %i.z, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ac) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  %i.ad = load ptr, ptr %7, align 8               ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33.thread: ; preds = %bb.c
  %i.ag = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ah = load ptr, ptr %7, align 8               ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %.sink.split, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33.thread
  %i.ak = load i64, ptr %i.ai, align 8
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #22
  br label %.sink.split

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  %i.am = load i64, ptr %i.ae, align 8
  %i.an = add i64 %i.am, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.an) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.121, label %bb.i, label %bb.be

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br i1 %.121, label %bb.i, label %bb.be

.sink.split:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.thread
  %.pn.pn.pn70.ph = phi { ptr, i32 } [ %i.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34.thread ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36.thread ], [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36
  %.pn.pn.pn70 = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %.pn.pn.pn70.ph, %.sink.split ]
  call void @__cxa_free_exception(ptr %i.p) #20
  br label %bb.be

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.ao = tail call i64 @time(ptr noundef null) #20
  store i64 %i.ao, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  %i.ap = call ptr @gmtime_r(ptr noundef nonnull %i.e, ptr noundef nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.f, i8 0, i64 64, i1 false)
  %i.aq = call ptr @asctime(ptr noundef %i.ap) #20
  %i.ar = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.f, i64 noundef 64, ptr noundef nonnull @.str.2, ptr noundef %i.aq) #20 ; 0 uses
  %i.as = load ptr, ptr %i.o, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = invoke noundef i64 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.f, i64 noundef 44, i64 noundef 1)
          to label %bb.k unwind label %bb.ab      ; 0 uses

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 1, ptr %i.d, align 4
  %i.aw = load ptr, ptr %i.o, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = invoke noundef i64 %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.d, i64 noundef 4, i64 noundef 1)
          to label %bb.l unwind label %bb.ac, !inline_history !3 ; 0 uses

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 0, ptr %i.c, align 4
  %i.ba = load ptr, ptr %i.o, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = invoke noundef i64 %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.c, i64 noundef 4, i64 noundef 1)
          to label %bb.m unwind label %bb.ad, !inline_history !3 ; 0 uses

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.be = invoke i32 @aiGetVersionRevision()
          to label %bb.n unwind label %bb.ae

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 %i.be, ptr %i.b, align 4
  %i.bf = load ptr, ptr %i.o, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = invoke noundef i64 %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.b, i64 noundef 4, i64 noundef 1)
          to label %bb.o unwind label %bb.ae, !inline_history !3 ; 0 uses

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.bj = invoke i32 @aiGetCompileFlags()
          to label %bb.p unwind label %bb.af

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 %i.bj, ptr %i.a, align 4
  %i.bk = load ptr, ptr %i.o, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = invoke noundef i64 %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1)
          to label %bb.q unwind label %bb.af, !inline_history !3 ; 0 uses

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  %i.bo = load i8, ptr %0, align 1, !range !4, !noundef !5
  %i.bp = zext nneg i8 %i.bo to i16
  store i16 %i.bp, ptr %i.g, align 2
  %i.bq = load ptr, ptr %i.o, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  %i.bt = invoke noundef i64 %i.bs(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 2 dereferenceable(2) %i.g, i64 noundef 2, i64 noundef 1)
          to label %_ZN6Assimp5WriteItEEmPNS_8IOStreamERKT_.exit unwind label %bb.ag, !inline_history !6 ; 0 uses

_ZN6Assimp5WriteItEEmPNS_8IOStreamERKT_.exit:     ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #20
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 1, !range !4, !noundef !5
  %i.bw = zext nneg i8 %i.bv to i16
  store i16 %i.bw, ptr %i.h, align 2
  %i.bx = load ptr, ptr %i.o, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = invoke noundef i64 %i.bz(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull align 2 dereferenceable(2) %i.h, i64 noundef 2, i64 noundef 1)
          to label %_ZN6Assimp5WriteItEEmPNS_8IOStreamERKT_.exit40 unwind label %bb.ah, !inline_history !6 ; 0 uses

_ZN6Assimp5WriteItEEmPNS_8IOStreamERKT_.exit40:   ; preds = %_ZN6Assimp5WriteItEEmPNS_8IOStreamERKT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.i, i8 0, i64 256, i1 false)
  %i.cb = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 256, ptr noundef nonnull @.str.3, ptr noundef %1) #20 ; 0 uses
  %i.cc = load ptr, ptr %i.o, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = invoke noundef i64 %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.i, i64 noundef 1, i64 noundef 256)
          to label %bb.r unwind label %bb.ai      ; 0 uses

bb.r:                                             ; preds = %_ZN6Assimp5WriteItEEmPNS_8IOStreamERKT_.exit40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.i, i8 0, i64 256, i1 false)
  %i.cg = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.i, i64 noundef 128, ptr noundef nonnull @.str.3, ptr noundef %2) #20 ; 0 uses
  %i.ch = load ptr, ptr %i.o, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8
  %i.ck = invoke noundef i64 %i.cj(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.i, i64 noundef 1, i64 noundef 128)
          to label %bb.s unwind label %bb.ai      ; 0 uses

bb.s:                                             ; preds = %bb.r
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.i, i8 -51, i64 64, i1 false)
  %i.cl = load ptr, ptr %i.o, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = invoke noundef i64 %i.cn(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.i, i64 noundef 1, i64 noundef 64)
          to label %bb.t unwind label %bb.ai      ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.cp = load i8, ptr %i.bu, align 1, !range !4, !noundef !5
  %i.cq = trunc nuw i8 %i.cp to i1
  br i1 %i.cq, label %bb.u, label %bb.az

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6Assimp17AssbinChunkWriterE, i64 16), ptr %10, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store ptr null, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  store i32 0, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %10, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i8 0, i64 24, i1 false)
  store i64 4096, ptr %i.cu, align 8
  invoke void @_ZN6Assimp16AssbinFileWriter16WriteBinarySceneEPNS_8IOStreamEPK7aiScene(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull %10, ptr noundef %4)
          to label %bb.v unwind label %bb.aj

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #20
  %i.cv = getelementptr inbounds nuw i8, ptr %10, i64 40 ; 3 uses
  %i.cw = load i64, ptr %i.cv, align 8            ; 3 uses
  store i64 %i.cw, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #20
  %i.cx = invoke i64 @compressBound(i64 noundef %i.cw)
          to label %bb.w unwind label %bb.ak      ; 2 uses

bb.w:                                             ; preds = %bb.v
  store i64 %i.cx, ptr %i.k, align 8
  %i.cy = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cx) #23
          to label %bb.x unwind label %bb.al      ; 4 uses

bb.x:                                             ; preds = %bb.w
  %i.cz = load ptr, ptr %i.cr, align 8
  %i.da = invoke i32 @compress2(ptr noundef nonnull %i.cy, ptr noundef nonnull %i.k, ptr noundef %i.cz, i64 noundef %i.cw, i32 noundef 9)
          to label %bb.y unwind label %bb.am

bb.y:                                             ; preds = %bb.x
  %.not27 = icmp eq i32 %i.da, 0
  br i1 %.not27, label %bb.ao, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZdaPv(ptr noundef nonnull %i.cy) #22
  %i.db = call ptr @__cxa_allocate_exception(i64 16) #20 ; 3 uses
  invoke void @_ZN17DeadlyExportErrorC2IJRA20_KcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.db, ptr noundef nonnull align 1 dereferenceable(20) @.str.4)
          to label %bb.aa unwind label %bb.an

bb.aa:                                            ; preds = %bb.z
  invoke void @__cxa_throw(ptr nonnull %i.db, ptr nonnull @_ZTI17DeadlyExportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #21
          to label %bb.bg unwind label %bb.am

bb.ab:                                            ; preds = %bb.j
  %i.dc = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bc

bb.ac:                                            ; preds = %bb.k
  %i.dd = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bc

bb.ad:                                            ; preds = %bb.l
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bc

bb.ae:                                            ; preds = %bb.n, %bb.m
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bc

bb.af:                                            ; preds = %bb.p, %bb.o
  %i.dg = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bc

bb.ag:                                            ; preds = %bb.q
  %i.dh = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  br label %bb.bc

bb.ah:                                            ; preds = %_ZN6Assimp5WriteItEEmPNS_8IOStreamERKT_.exit
  %i.di = landingpad { ptr, i32 }
          catch ptr null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #20
  br label %bb.bc

bb.ai:                                            ; preds = %bb.ba, %bb.az, %bb.s, %bb.r, %_ZN6Assimp5WriteItEEmPNS_8IOStreamERKT_.exit40
  %i.dj = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.bb

bb.aj:                                            ; preds = %bb.u
  %i.dk = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ay

bb.ak:                                            ; preds = %bb.v
  %i.dl = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ax

bb.al:                                            ; preds = %bb.w
  %i.dm = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ax

bb.am:                                            ; preds = %bb.ap, %bb.ao, %bb.aa, %bb.x
  %i.dn = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.ax

bb.an:                                            ; preds = %bb.z
  %i.do = landingpad { ptr, i32 }
          catch ptr null
  call void @__cxa_free_exception(ptr nonnull %i.db) #20
  br label %bb.ax

bb.ao:                                            ; preds = %bb.y
  %i.dp = load ptr, ptr %i.o, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = invoke noundef i64 %i.dr(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.j, i64 noundef 4, i64 noundef 1)
          to label %bb.ap unwind label %bb.am     ; 0 uses

bb.ap:                                            ; preds = %bb.ao
  %i.dt = load i64, ptr %i.k, align 8
  %i.du = load ptr, ptr %i.o, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = invoke noundef i64 %i.dw(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.cy, i64 noundef 1, i64 noundef %i.dt)
          to label %bb.aq unwind label %bb.am     ; 0 uses

bb.aq:                                            ; preds = %bb.ap
  call void @_ZdaPv(ptr noundef nonnull %i.cy) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  %i.dy = load ptr, ptr %i.ct, align 8            ; 3 uses
  %.not.i = icmp eq ptr %i.dy, null
  br i1 %.not.i, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dz = load ptr, ptr %i.dy, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = invoke noundef i64 %i.eb(ptr noundef nonnull align 8 dereferenceable(8) %i.dy, ptr noundef nonnull %i.cs, i64 noundef 4, i64 noundef 1)
          to label %bb.as unwind label %bb.aw     ; 0 uses

bb.as:                                            ; preds = %bb.ar
  %i.ed = load ptr, ptr %i.ct, align 8            ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = invoke noundef i64 %i.eg(ptr noundef nonnull align 8 dereferenceable(8) %i.ed, ptr noundef nonnull %i.cv, i64 noundef 4, i64 noundef 1)
          to label %bb.at unwind label %bb.aw     ; 0 uses

bb.at:                                            ; preds = %bb.as
  %i.ei = load ptr, ptr %i.ct, align 8            ; 2 uses
  %i.ej = load ptr, ptr %i.cr, align 8
  %i.ek = load i64, ptr %i.cv, align 8
  %i.el = load ptr, ptr %i.ei, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = invoke noundef i64 %i.en(ptr noundef nonnull align 8 dereferenceable(8) %i.ei, ptr noundef %i.ej, i64 noundef 1, i64 noundef %i.ek)
          to label %bb.au unwind label %bb.aw     ; 0 uses

bb.au:                                            ; preds = %bb.at, %bb.aq
  %i.ep = load ptr, ptr %i.cr, align 8            ; 2 uses
  %.not2.i = icmp eq ptr %i.ep, null
  br i1 %.not2.i, label %_ZN6Assimp17AssbinChunkWriterD2Ev.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  call void @_ZdaPv(ptr noundef nonnull %i.ep) #22
  br label %_ZN6Assimp17AssbinChunkWriterD2Ev.exit

bb.aw:                                            ; preds = %bb.at, %bb.as, %bb.ar
  %i.eq = landingpad { ptr, i32 }
          catch ptr null
  %i.er = extractvalue { ptr, i32 } %i.eq, 0
  call void @__clang_call_terminate(ptr %i.er) #24
  unreachable

_ZN6Assimp17AssbinChunkWriterD2Ev.exit:           ; preds = %bb.au, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.ba

bb.ax:                                            ; preds = %bb.al, %bb.an, %bb.am, %bb.ak
  %.pn28.pn.pn = phi { ptr, i32 } [ %i.dl, %bb.ak ], [ %i.dm, %bb.al ], [ %i.dn, %bb.am ], [ %i.do, %bb.an ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #20
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aj
  %.pn28.pn.pn.pn = phi { ptr, i32 } [ %.pn28.pn.pn, %bb.ax ], [ %i.dk, %bb.aj ]
  call void @_ZN6Assimp17AssbinChunkWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.bb

bb.az:                                            ; preds = %bb.t
  invoke void @_ZN6Assimp16AssbinFileWriter16WriteBinarySceneEPNS_8IOStreamEPK7aiScene(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull %i.o, ptr noundef %4)
          to label %bb.ba unwind label %bb.ai

bb.ba:                                            ; preds = %_ZN6Assimp17AssbinChunkWriterD2Ev.exit, %bb.az
  %i.es = load ptr, ptr %3, align 8
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 40
  %i.eu = load ptr, ptr %i.et, align 8
end_hunk_0
begin_hunk_1_@_ZN6Assimp16AssbinFileWriter15WriteBinaryDumpEPKcS2_PNS_8IOSystemEPK7aiScene:bb.a
bb.bd:                                            ; preds = %bb.bc, %_ZZN6Assimp16AssbinFileWriter15WriteBinaryDumpEPKcS2_PNS_8IOSystemEPK7aiSceneENKUlvE_clEv.exit44
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36, %bb.i
  %.pn29 = phi { ptr, i32 } [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i34 ], [ %.pn.pn.pn70, %bb.i ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit36 ], [ %i.ez, %bb.bd ]
  resume { ptr, i32 } %.pn29

bb.bf:                                            ; preds = %bb.bd
  %i.fa = landingpad { ptr, i32 }
          catch ptr null
  %i.fb = extractvalue { ptr, i32 } %i.fa, 0
  call void @__clang_call_terminate(ptr %i.fb) #24
  unreachable

bb.bg:                                            ; preds = %_ZZN6Assimp16AssbinFileWriter15WriteBinaryDumpEPKcS2_PNS_8IOSystemEPK7aiSceneENKUlvE_clEv.exit44, %bb.aa, %bb.f
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S5_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef signext %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8
  %i.c = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.b, i64 noundef 0, i64 noundef 1, i8 noundef signext %2) ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.d, ptr %0, align 8
  %i.e = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 5 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 3 uses
  %i.j = icmp ult i64 %i.i, 16
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add nuw nsw i64 %i.i, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.f, i64 %i.k, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.e, ptr %0, align 8
  %i.l = load i64, ptr %i.f, align 8
  store i64 %i.l, ptr %i.d, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.m = phi i64 [ %i.i, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.m, ptr %i.o, align 8
  store ptr %i.f, ptr %i.c, align 8
  store i64 0, ptr %i.n, align 8
  store i8 0, ptr %i.f, align 8
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20
  %i.b = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef nonnull %1, i64 noundef %i.a) ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8
  %i.d = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 5 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8              ; 3 uses
  %i.i = icmp ult i64 %i.h, 16
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nuw nsw i64 %i.h, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.c, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.d, ptr %0, align 8
  %i.k = load i64, ptr %i.e, align 8
  store i64 %i.k, ptr %i.c, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.l = phi i64 [ %i.h, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.n, align 8
  store ptr %i.e, ptr %i.b, align 8
  store i64 0, ptr %i.m, align 8
  store i8 0, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.7) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i64 %i.d, ptr %i.a, align 8
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8
  %i.g = load i64, ptr %i.a, align 8
  store i64 %i.g, ptr %i.b, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1
  store i8 %i.i, ptr %i.h, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

declare i32 @__gxx_personality_v0(...)

declare void @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #5

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @gmtime_r(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: nounwind
declare ptr @asctime(ptr noundef) local_unnamed_addr #4

declare i32 @aiGetVersionRevision() local_unnamed_addr #3

declare i32 @aiGetCompileFlags() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp16AssbinFileWriter16WriteBinarySceneEPNS_8IOStreamEPK7aiScene(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.Assimp::AssbinChunkWriter", align 8 ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6Assimp17AssbinChunkWriterE, i64 16), ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i32 4665, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store i64 4096, ptr %i.h, align 8
  %i.i = load i32, ptr %2, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.k = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #23
          to label %bb.b unwind label %bb.f       ; 5 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.k, ptr %i.d, align 8
  store i64 4096, ptr %i.g, align 8
  store i32 %i.i, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %i.m, ptr %i.n, align 1
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i32 %i.p, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 3 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  store i32 %i.s, ptr %i.t, align 1
  store i64 16, ptr %i.j, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.v = load i32, ptr %i.u, align 4
  store i32 %i.v, ptr %i.c, align 4
  %i.w = invoke noundef i64 @_ZN6Assimp17AssbinChunkWriter5WriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.c, i64 noundef 4, i64 noundef 1)
          to label %bb.c unwind label %bb.f, !inline_history !3 ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 80 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.y = load i32, ptr %i.x, align 4
  store i32 %i.y, ptr %i.b, align 4
  %i.z = load ptr, ptr %3, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = invoke noundef i64 %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.b, i64 noundef 4, i64 noundef 1)
          to label %bb.d unwind label %bb.f, !inline_history !3 ; 0 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.ae = load i32, ptr %i.ad, align 4
  store i32 %i.ae, ptr %i.a, align 4
  %i.af = load ptr, ptr %3, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = invoke noundef i64 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1)
          to label %bb.e unwind label %bb.f, !inline_history !3 ; 0 uses

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke void @_ZN6Assimp16AssbinFileWriter15WriteBinaryNodeEPNS_8IOStreamEPK6aiNode(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull %3, ptr noundef %i.ak)
          to label %.preheader65 unwind label %bb.f

.preheader65:                                     ; preds = %bb.e
  %i.al = load i32, ptr %i.l, align 8
  %.not = icmp eq i32 %i.al, 0
  br i1 %.not, label %.preheader64, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader65
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.g

.preheader64:                                     ; preds = %bb.h, %.preheader65
  %i.an = load i32, ptr %i.o, align 8
  %.not77 = icmp eq i32 %i.an, 0
  br i1 %.not77, label %.preheader63, label %.lr.ph68

.lr.ph68:                                         ; preds = %.preheader64
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 40
  br label %bb.j

bb.f:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b, %bb.e
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.g:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.aq = load ptr, ptr %i.am, align 8
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void @_ZN6Assimp16AssbinFileWriter15WriteBinaryMeshEPNS_8IOStreamEPK6aiMesh(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull %3, ptr noundef %i.as)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.at = load i32, ptr %i.l, align 8
  %i.au = zext i32 %i.at to i64
  %i.av = icmp samesign ult i64 %indvars.iv.next, %i.au
  br i1 %i.av, label %bb.g, label %.preheader64, !llvm.loop !8

bb.i:                                             ; preds = %bb.g
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.preheader63:                                     ; preds = %bb.k, %.preheader64
  %i.ax = load i32, ptr %i.r, align 8
  %.not78 = icmp eq i32 %i.ax, 0
  br i1 %.not78, label %.preheader62, label %.lr.ph70

.lr.ph70:                                         ; preds = %.preheader63
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 56
  br label %bb.m

bb.j:                                             ; preds = %.lr.ph68, %bb.k
  %indvars.iv83 = phi i64 [ 0, %.lr.ph68 ], [ %indvars.iv.next84, %bb.k ] ; 2 uses
  %i.az = load ptr, ptr %i.ao, align 8
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv83
  %i.bb = load ptr, ptr %i.ba, align 8
  invoke void @_ZN6Assimp16AssbinFileWriter19WriteBinaryMaterialEPNS_8IOStreamEPK10aiMaterial(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull %3, ptr noundef %i.bb)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  %indvars.iv.next84 = add nuw nsw i64 %indvars.iv83, 1 ; 2 uses
  %i.bc = load i32, ptr %i.o, align 8
  %i.bd = zext i32 %i.bc to i64
  %i.be = icmp samesign ult i64 %indvars.iv.next84, %i.bd
  br i1 %i.be, label %bb.j, label %.preheader63, !llvm.loop !10

bb.l:                                             ; preds = %bb.j
  %i.bf = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.preheader62:                                     ; preds = %bb.n, %.preheader63
  %i.bg = load i32, ptr %i.u, align 8
  %.not79 = icmp eq i32 %i.bg, 0
  br i1 %.not79, label %.preheader61, label %.lr.ph72

.lr.ph72:                                         ; preds = %.preheader62
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 72
  br label %bb.p

bb.m:                                             ; preds = %.lr.ph70, %bb.n
  %indvars.iv86 = phi i64 [ 0, %.lr.ph70 ], [ %indvars.iv.next87, %bb.n ] ; 2 uses
  %i.bi = load ptr, ptr %i.ay, align 8
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %indvars.iv86
  %i.bk = load ptr, ptr %i.bj, align 8
  invoke void @_ZN6Assimp16AssbinFileWriter15WriteBinaryAnimEPNS_8IOStreamEPK11aiAnimation(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull %3, ptr noundef %i.bk)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %i.bl = load i32, ptr %i.r, align 8
  %i.bm = zext i32 %i.bl to i64
  %i.bn = icmp samesign ult i64 %indvars.iv.next87, %i.bm
  br i1 %i.bn, label %bb.m, label %.preheader62, !llvm.loop !11

bb.o:                                             ; preds = %bb.m
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.preheader61:                                     ; preds = %bb.q, %.preheader62
  %i.bp = load i32, ptr %i.x, align 8
  %.not80 = icmp eq i32 %i.bp, 0
  br i1 %.not80, label %.preheader, label %.lr.ph74

.lr.ph74:                                         ; preds = %.preheader61
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 88
  br label %bb.s

bb.p:                                             ; preds = %.lr.ph72, %bb.q
  %indvars.iv89 = phi i64 [ 0, %.lr.ph72 ], [ %indvars.iv.next90, %bb.q ] ; 2 uses
  %i.br = load ptr, ptr %i.bh, align 8
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv89
  %i.bt = load ptr, ptr %i.bs, align 8
  invoke void @_ZN6Assimp16AssbinFileWriter18WriteBinaryTextureEPNS_8IOStreamEPK9aiTexture(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull %3, ptr noundef %i.bt)
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next90 = add nuw nsw i64 %indvars.iv89, 1 ; 2 uses
  %i.bu = load i32, ptr %i.u, align 8
  %i.bv = zext i32 %i.bu to i64
  %i.bw = icmp samesign ult i64 %indvars.iv.next90, %i.bv
  br i1 %i.bw, label %bb.p, label %.preheader61, !llvm.loop !12

bb.r:                                             ; preds = %bb.p
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

.preheader:                                       ; preds = %bb.t, %.preheader61
  %i.by = load i32, ptr %i.ad, align 8
  %.not81 = icmp eq i32 %i.by, 0
  br i1 %.not81, label %._crit_edge, label %.lr.ph76

.lr.ph76:                                         ; preds = %.preheader
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 104
  br label %bb.ab

bb.s:                                             ; preds = %.lr.ph74, %bb.t
  %indvars.iv92 = phi i64 [ 0, %.lr.ph74 ], [ %indvars.iv.next93, %bb.t ] ; 2 uses
  %i.ca = load ptr, ptr %i.bq, align 8
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv92
  %i.cc = load ptr, ptr %i.cb, align 8
  invoke void @_ZN6Assimp16AssbinFileWriter16WriteBinaryLightEPNS_8IOStreamEPK7aiLight(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull %3, ptr noundef %i.cc)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %i.cd = load i32, ptr %i.x, align 8
  %i.ce = zext i32 %i.cd to i64
  %i.cf = icmp samesign ult i64 %indvars.iv.next93, %i.ce
  br i1 %i.cf, label %bb.s, label %.preheader, !llvm.loop !13

bb.u:                                             ; preds = %bb.s
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

._crit_edge:                                      ; preds = %bb.ac, %.preheader
  %i.ch = load ptr, ptr %i.f, align 8             ; 3 uses
  %.not.i = icmp eq ptr %i.ch, null
  br i1 %.not.i, label %bb.y, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = invoke noundef i64 %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull %i.e, i64 noundef 4, i64 noundef 1)
          to label %bb.w unwind label %bb.aa      ; 0 uses

bb.w:                                             ; preds = %bb.v
  %i.cm = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = invoke noundef i64 %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull %i.j, i64 noundef 4, i64 noundef 1)
          to label %bb.x unwind label %bb.aa      ; 0 uses

bb.x:                                             ; preds = %bb.w
  %i.cr = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.cs = load ptr, ptr %i.d, align 8
  %i.ct = load i64, ptr %i.j, align 8
  %i.cu = load ptr, ptr %i.cr, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = invoke noundef i64 %i.cw(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef %i.cs, i64 noundef 1, i64 noundef %i.ct)
          to label %bb.y unwind label %bb.aa      ; 0 uses

bb.y:                                             ; preds = %bb.x, %._crit_edge
  %i.cy = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not2.i = icmp eq ptr %i.cy, null
  br i1 %.not2.i, label %_ZN6Assimp17AssbinChunkWriterD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @_ZdaPv(ptr noundef nonnull %i.cy) #22
  br label %_ZN6Assimp17AssbinChunkWriterD2Ev.exit

bb.aa:                                            ; preds = %bb.x, %bb.w, %bb.v
  %i.cz = landingpad { ptr, i32 }
          catch ptr null
  %i.da = extractvalue { ptr, i32 } %i.cz, 0
  call void @__clang_call_terminate(ptr %i.da) #24
  unreachable

_ZN6Assimp17AssbinChunkWriterD2Ev.exit:           ; preds = %bb.y, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.ab:                                            ; preds = %.lr.ph76, %bb.ac
  %indvars.iv95 = phi i64 [ 0, %.lr.ph76 ], [ %indvars.iv.next96, %bb.ac ] ; 2 uses
  %i.db = load ptr, ptr %i.bz, align 8
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %indvars.iv95
  %i.dd = load ptr, ptr %i.dc, align 8
  invoke void @_ZN6Assimp16AssbinFileWriter17WriteBinaryCameraEPNS_8IOStreamEPK8aiCamera(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull %3, ptr noundef %i.dd)
          to label %bb.ac unwind label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %i.de = load i32, ptr %i.ad, align 8
  %i.df = zext i32 %i.de to i64
  %i.dg = icmp samesign ult i64 %indvars.iv.next96, %i.df
  br i1 %i.dg, label %bb.ab, label %._crit_edge, !llvm.loop !14

bb.ad:                                            ; preds = %bb.ab
  %i.dh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.u, %bb.r, %bb.o, %bb.l, %bb.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.aw, %bb.i ], [ %i.bf, %bb.l ], [ %i.bo, %bb.o ], [ %i.bx, %bb.r ], [ %i.cg, %bb.u ], [ %i.dh, %bb.ad ], [ %i.ap, %bb.f ]
  call void @_ZN6Assimp17AssbinChunkWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK6Assimp17AssbinChunkWriter4TellEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

declare i64 @compressBound(i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #9

declare i32 @compress2(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyExportErrorC2IJRA20_KcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(20) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %2)
  invoke void @_ZN15DeadlyErrorBaseC2IJERA20_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %2, ptr noundef nonnull align 1 dereferenceable(20) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %2, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %2, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #22
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #20
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #20
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyExportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %2) #20
  resume { ptr, i32 } %i.o
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp17AssbinChunkWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef i64 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.c, i64 noundef 4, i64 noundef 1)
          to label %bb.c unwind label %bb.h       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef i64 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %i.i, i64 noundef 4, i64 noundef 1)
          to label %bb.d unwind label %bb.h       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load i64, ptr %i.i, align 8
  %i.r = load ptr, ptr %i.n, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = invoke noundef i64 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef %i.p, i64 noundef 1, i64 noundef %i.q)
          to label %bb.e unwind label %bb.h       ; 0 uses

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not2 = icmp eq ptr %i.w, null
  br i1 %.not2, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.w) #22
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void

bb.h:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE14_M_replace_auxEmmmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #14

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #15 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #22
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #20
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN17DeadlyExportErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #15 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #22
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !24
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !24
  store i8 0, ptr %i.a, align 8, !alias.scope !24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !24 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !24 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !24 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.i, i64 noundef %i.l)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !alias.scope !24 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c

_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit: ; preds = %bb.d, %bb.b
  %i.r = load ptr, ptr %2, align 8
  %i.s = load i64, ptr %i.b, align 8
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.r, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.u = load ptr, ptr %2, align 8                ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.w = load i64, ptr %i.a, align 8
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void

bb.e:                                             ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %2, align 8                ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.e, %bb.c
  %.sink = phi ptr [ %i.o, %bb.c ], [ %i.z, %bb.e ]
  %.pn.ph = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ]
  %i.ab = load i64, ptr %i.a, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ac) #22
  br label %.body

.body:                                            ; preds = %.body.sink.split, %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ], [ %.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #20
  resume { ptr, i32 } %.pn
}

declare void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #8 align 2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp17AssbinChunkWriterD0Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = invoke noundef i64 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull %i.c, i64 noundef 4, i64 noundef 1)
          to label %bb.c unwind label %bb.g       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.j = load ptr, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = invoke noundef i64 %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull %i.i, i64 noundef 4, i64 noundef 1)
          to label %bb.d unwind label %bb.g       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = load i64, ptr %i.i, align 8
  %i.r = load ptr, ptr %i.n, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = invoke noundef i64 %i.t(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef %i.p, i64 noundef 1, i64 noundef %i.q)
          to label %bb.e unwind label %bb.g       ; 0 uses

bb.e:                                             ; preds = %bb.d, %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not2.i = icmp eq ptr %i.w, null
  br i1 %.not2.i, label %_ZN6Assimp17AssbinChunkWriterD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @_ZdaPv(ptr noundef nonnull %i.w) #22
  br label %_ZN6Assimp17AssbinChunkWriterD2Ev.exit

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #24
  unreachable

_ZN6Assimp17AssbinChunkWriterD2Ev.exit:           ; preds = %bb.e, %bb.f
  tail call void @_ZN6Assimp6Intern22AllocateFromAssimpHeapdlEPv(ptr noundef nonnull %0) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZN6Assimp17AssbinChunkWriter4ReadEPvmm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #8 comdat align 2 {
bb.a:
  ret i64 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN6Assimp17AssbinChunkWriter5WriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = mul i64 %3, %2                           ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8              ; 3 uses
  %i.d = add i64 %i.c, %i.a                       ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8              ; 4 uses
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = lshr i64 %i.f, 1
  %i.j = add i64 %i.i, %i.f
  %i.k = load i64, ptr %i.h, align 8
  %i.l = tail call i64 @llvm.umax.i64(i64 %i.d, i64 %i.j)
  %i.m = tail call i64 @llvm.umax.i64(i64 %i.k, i64 %i.l) ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #23 ; 2 uses
  store ptr %i.p, ptr %i.n, align 8
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.p, ptr nonnull align 1 %i.o, i64 %i.f, i1 false)
  tail call void @_ZdaPv(ptr noundef nonnull %i.o) #22
  %.pre.pre = load i64, ptr %i.b, align 8
  br label %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit

_ZN6Assimp17AssbinChunkWriter4GrowEm.exit:        ; preds = %bb.b, %bb.c
  %.pre = phi i64 [ %i.c, %bb.b ], [ %.pre.pre, %bb.c ]
  store i64 %i.m, ptr %i.e, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit, %bb.a
  %i.q = phi i64 [ %.pre, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit ], [ %i.c, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.t, ptr align 1 %1, i64 %i.a, i1 false)
  %i.u = load i64, ptr %i.b, align 8
  %i.v = add i64 %i.u, %i.a
  store i64 %i.v, ptr %i.b, align 8
  ret i64 %3
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZN6Assimp17AssbinChunkWriter4SeekEm8aiOrigin(ptr noundef nonnull align 8 dereferenceable(56) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #8 comdat align 2 {
bb.a:
  ret i32 -1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i64 @_ZNK6Assimp17AssbinChunkWriter8FileSizeEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp17AssbinChunkWriter5FlushEv(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6Assimp6Intern22AllocateFromAssimpHeapdlEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp16AssbinFileWriter15WriteBinaryNodeEPNS_8IOStreamEPK6aiNode(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.Assimp::AssbinChunkWriter", align 8 ; 49 uses
  %i.e = alloca i16, align 2                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6Assimp17AssbinChunkWriterE, i64 16), ptr %3, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i32 4668, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  store ptr %1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i64 4096, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 1136 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %i.l, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = phi i32 [ %i.m, %bb.b ], [ 0, %bb.a ]    ; 3 uses
  %i.o = load i32, ptr %2, align 8                ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.q = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #23
          to label %.noexc unwind label %.loopexit.split-lp ; 5 uses

.noexc:                                           ; preds = %bb.c
  store ptr %i.q, ptr %i.f, align 8
  store i64 4096, ptr %i.i, align 8
  store i32 %i.o, ptr %i.q, align 1
  store i64 4, ptr %i.p, align 8
  %i.r = zext i32 %i.o to i64                     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.t = icmp ugt i32 %i.o, 4092
  br i1 %i.t, label %bb.d, label %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit

bb.d:                                             ; preds = %.noexc
  %i.u = tail call i64 @llvm.umax.i64(i64 %i.r, i64 6140)
  %i.v = add nuw nsw i64 %i.u, 4                  ; 2 uses
  %i.w = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.v) #23
          to label %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i unwind label %.loopexit.split-lp ; 3 uses

_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i:      ; preds = %bb.d
  store ptr %i.w, ptr %i.f, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(4096) %i.w, ptr noundef nonnull align 1 dereferenceable(4096) %i.q, i64 4096, i1 false)
  tail call void @_ZdaPv(ptr noundef nonnull %i.q) #22
  store i64 %i.v, ptr %i.i, align 8
  br label %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit

_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit: ; preds = %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i, %.noexc
  %i.x = phi ptr [ %i.w, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i ], [ %i.q, %.noexc ]
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %i.s, i64 %i.r, i1 false)
  %i.z = add nuw nsw i64 %i.r, 4
  store i64 %i.z, ptr %i.p, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 1028
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 1060
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 1044
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 1064
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 1068
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 1072
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 1048
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 1052
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 1056
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 1032
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 1036
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 1040
  br label %.preheader.i

.preheader.i:                                     ; preds = %.noexc54, %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit
  %i.am = phi ptr [ getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6Assimp17AssbinChunkWriterE, i64 16), %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit ], [ %.pre, %.noexc54 ]
  %.0721.i = phi i32 [ 0, %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit ], [ %i.bt, %.noexc54 ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  switch i32 %.0721.i, label %default.unreachable5.i.i [
    i32 0, label %_ZNK12aiMatrix4x4tIfEixEj.exit.us.preheader.i
    i32 1, label %_ZNK12aiMatrix4x4tIfEixEj.exit.us11.preheader.i
    i32 2, label %.split.us.i
    i32 3, label %bb.e
  ]

_ZNK12aiMatrix4x4tIfEixEj.exit.us11.preheader.i:  ; preds = %.preheader.i
  br label %.split.us.i

_ZNK12aiMatrix4x4tIfEixEj.exit.us.preheader.i:    ; preds = %.preheader.i
  br label %.split.us.i

bb.e:                                             ; preds = %.preheader.i
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 1076
  %i.aq = invoke noundef i64 %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.ap, i64 noundef 4, i64 noundef 1)
          to label %.noexc47 unwind label %.loopexit.split-lp, !inline_history !25 ; 0 uses

.noexc47:                                         ; preds = %bb.e
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 1080
  %i.as = load ptr, ptr %3, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = invoke noundef i64 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.ar, i64 noundef 4, i64 noundef 1)
          to label %.noexc48 unwind label %.loopexit.split-lp, !inline_history !25 ; 0 uses

.noexc48:                                         ; preds = %.noexc47
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 1084
  %i.ax = load ptr, ptr %3, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = invoke noundef i64 %i.az(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.aw, i64 noundef 4, i64 noundef 1)
          to label %.noexc49 unwind label %.loopexit.split-lp, !inline_history !25 ; 0 uses

.noexc49:                                         ; preds = %.noexc48
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 1088
  %i.bc = load ptr, ptr %3, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = invoke noundef i64 %i.be(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.bb, i64 noundef 4, i64 noundef 1)
          to label %_ZN6Assimp5WriteI12aiMatrix4x4tIfEEEmPNS_8IOStreamERKT_.exit unwind label %.loopexit.split-lp, !inline_history !25 ; 0 uses

.split.us.i:                                      ; preds = %_ZNK12aiMatrix4x4tIfEixEj.exit.us.preheader.i, %_ZNK12aiMatrix4x4tIfEixEj.exit.us11.preheader.i, %.preheader.i
  %.sink41.i = phi ptr [ %i.aa, %_ZNK12aiMatrix4x4tIfEixEj.exit.us.preheader.i ], [ %i.ac, %_ZNK12aiMatrix4x4tIfEixEj.exit.us11.preheader.i ], [ %i.ab, %.preheader.i ]
  %.sink37.i = phi ptr [ %i.aj, %_ZNK12aiMatrix4x4tIfEixEj.exit.us.preheader.i ], [ %i.ag, %_ZNK12aiMatrix4x4tIfEixEj.exit.us11.preheader.i ], [ %i.ad, %.preheader.i ]
  %.sink33.i = phi ptr [ %i.ak, %_ZNK12aiMatrix4x4tIfEixEj.exit.us.preheader.i ], [ %i.ah, %_ZNK12aiMatrix4x4tIfEixEj.exit.us11.preheader.i ], [ %i.ae, %.preheader.i ]
  %.sink.i = phi ptr [ %i.al, %_ZNK12aiMatrix4x4tIfEixEj.exit.us.preheader.i ], [ %i.ai, %_ZNK12aiMatrix4x4tIfEixEj.exit.us11.preheader.i ], [ %i.af, %.preheader.i ]
  %i.bg = invoke noundef i64 %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %.sink41.i, i64 noundef 4, i64 noundef 1)
          to label %.noexc51 unwind label %.loopexit, !inline_history !25 ; 0 uses

.noexc51:                                         ; preds = %.split.us.i
  %i.bh = load ptr, ptr %3, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = invoke noundef i64 %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %.sink37.i, i64 noundef 4, i64 noundef 1)
          to label %.noexc52 unwind label %.loopexit, !inline_history !25 ; 0 uses

.noexc52:                                         ; preds = %.noexc51
  %i.bl = load ptr, ptr %3, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = invoke noundef i64 %i.bn(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %.sink33.i, i64 noundef 4, i64 noundef 1)
          to label %.noexc53 unwind label %.loopexit, !inline_history !25 ; 0 uses

.noexc53:                                         ; preds = %.noexc52
  %i.bp = load ptr, ptr %3, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = invoke noundef i64 %i.br(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %.sink.i, i64 noundef 4, i64 noundef 1)
          to label %.noexc54 unwind label %.loopexit, !inline_history !25 ; 0 uses

.noexc54:                                         ; preds = %.noexc53
  %i.bt = add nuw nsw i32 %.0721.i, 1
  %.pre = load ptr, ptr %3, align 8
  br label %.preheader.i

default.unreachable5.i.i:                         ; preds = %.preheader.i
  unreachable

_ZN6Assimp5WriteI12aiMatrix4x4tIfEEEmPNS_8IOStreamERKT_.exit: ; preds = %.noexc49
  %i.bu = getelementptr inbounds nuw i8, ptr %2, i64 1104 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.bv = load i32, ptr %i.bu, align 8
  store i32 %i.bv, ptr %i.d, align 4
  %i.bw = load ptr, ptr %3, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = invoke noundef i64 %i.by(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.d, i64 noundef 4, i64 noundef 1)
          to label %bb.f unwind label %.loopexit.split-lp, !inline_history !3 ; 0 uses

bb.f:                                             ; preds = %_ZN6Assimp5WriteI12aiMatrix4x4tIfEEEmPNS_8IOStreamERKT_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 1120 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.cb = load i32, ptr %i.ca, align 8
  store i32 %i.cb, ptr %i.c, align 4
  %i.cc = load ptr, ptr %3, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = invoke noundef i64 %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.c, i64 noundef 4, i64 noundef 1)
          to label %bb.g unwind label %.loopexit.split-lp, !inline_history !3 ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 %i.n, ptr %i.b, align 4
  %i.cg = load ptr, ptr %3, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = invoke noundef i64 %i.ci(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.b, i64 noundef 4, i64 noundef 1)
          to label %_ZN6Assimp5WriteIjEEmPNS_8IOStreamERKT_.exit59 unwind label %.loopexit.split-lp, !inline_history !3 ; 0 uses

_ZN6Assimp5WriteIjEEmPNS_8IOStreamERKT_.exit59:   ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.ck = load i32, ptr %i.ca, align 8
  %.not86 = icmp eq i32 %i.ck, 0
  br i1 %.not86, label %.preheader78, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6Assimp5WriteIjEEmPNS_8IOStreamERKT_.exit59
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 1128
  br label %bb.h

.preheader78:                                     ; preds = %bb.i, %_ZN6Assimp5WriteIjEEmPNS_8IOStreamERKT_.exit59
  %i.cm = load i32, ptr %i.bu, align 8
  %.not87 = icmp eq i32 %i.cm, 0
  br i1 %.not87, label %.preheader, label %.lr.ph83

.lr.ph83:                                         ; preds = %.preheader78
  %i.cn = getelementptr inbounds nuw i8, ptr %2, i64 1112
  br label %bb.k

.loopexit:                                        ; preds = %.split.us.i, %.noexc51, %.noexc52, %.noexc53
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.loopexit.split-lp:                               ; preds = %bb.d, %bb.c, %bb.e, %.noexc47, %.noexc48, %.noexc49, %_ZN6Assimp5WriteI12aiMatrix4x4tIfEEEmPNS_8IOStreamERKT_.exit, %bb.f, %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.h:                                             ; preds = %.lr.ph, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.co = load ptr, ptr %i.cl, align 8
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.cq = load i32, ptr %i.cp, align 4
  store i32 %i.cq, ptr %i.a, align 4
  %i.cr = load ptr, ptr %3, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = invoke noundef i64 %i.ct(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1)
          to label %bb.i unwind label %bb.j, !inline_history !3 ; 0 uses

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cv = load i32, ptr %i.ca, align 8
  %i.cw = zext i32 %i.cv to i64
  %i.cx = icmp samesign ult i64 %indvars.iv.next, %i.cw
  br i1 %i.cx, label %bb.h, label %.preheader78, !llvm.loop !26

bb.j:                                             ; preds = %bb.h
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.preheader:                                       ; preds = %bb.l, %.preheader78
  %.not88 = icmp eq i32 %i.n, 0
  br i1 %.not88, label %._crit_edge, label %.lr.ph85.preheader

.lr.ph85.preheader:                               ; preds = %.preheader
  %wide.trip.count = zext i32 %i.n to i64
  br label %.lr.ph85

bb.k:                                             ; preds = %.lr.ph83, %bb.l
  %indvars.iv92 = phi i64 [ 0, %.lr.ph83 ], [ %indvars.iv.next93, %bb.l ] ; 2 uses
  %i.cz = load ptr, ptr %i.cn, align 8
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %indvars.iv92
  %i.db = load ptr, ptr %i.da, align 8
  invoke void @_ZN6Assimp16AssbinFileWriter15WriteBinaryNodeEPNS_8IOStreamEPK6aiNode(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull %3, ptr noundef %i.db)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %i.dc = load i32, ptr %i.bu, align 8
  %i.dd = zext i32 %i.dc to i64
  %i.de = icmp samesign ult i64 %indvars.iv.next93, %i.dd
  br i1 %i.de, label %bb.k, label %.preheader, !llvm.loop !27

bb.m:                                             ; preds = %bb.k
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

._crit_edge:                                      ; preds = %_ZN6Assimp5WriteIbEEmPNS_8IOStreamERKT_.exit, %.preheader
  %i.dg = load ptr, ptr %i.h, align 8             ; 3 uses
  %.not.i = icmp eq ptr %i.dg, null
  br i1 %.not.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %._crit_edge
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = invoke noundef i64 %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %i.dg, ptr noundef nonnull %i.g, i64 noundef 4, i64 noundef 1)
          to label %bb.o unwind label %bb.s       ; 0 uses

bb.o:                                             ; preds = %bb.n
  %i.dl = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  %i.do = load ptr, ptr %i.dn, align 8
  %i.dp = invoke noundef i64 %i.do(ptr noundef nonnull align 8 dereferenceable(8) %i.dl, ptr noundef nonnull %i.p, i64 noundef 4, i64 noundef 1)
          to label %bb.p unwind label %bb.s       ; 0 uses

bb.p:                                             ; preds = %bb.o
  %i.dq = load ptr, ptr %i.h, align 8             ; 2 uses
  %i.dr = load ptr, ptr %i.f, align 8
  %i.ds = load i64, ptr %i.p, align 8
  %i.dt = load ptr, ptr %i.dq, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8
  %i.dw = invoke noundef i64 %i.dv(ptr noundef nonnull align 8 dereferenceable(8) %i.dq, ptr noundef %i.dr, i64 noundef 1, i64 noundef %i.ds)
          to label %bb.q unwind label %bb.s       ; 0 uses

bb.q:                                             ; preds = %bb.p, %._crit_edge
  %i.dx = load ptr, ptr %i.f, align 8             ; 2 uses
  %.not2.i = icmp eq ptr %i.dx, null
  br i1 %.not2.i, label %_ZN6Assimp17AssbinChunkWriterD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @_ZdaPv(ptr noundef nonnull %i.dx) #22
  br label %_ZN6Assimp17AssbinChunkWriterD2Ev.exit

bb.s:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.dy = landingpad { ptr, i32 }
          catch ptr null
  %i.dz = extractvalue { ptr, i32 } %i.dy, 0
  call void @__clang_call_terminate(ptr %i.dz) #24
  unreachable

_ZN6Assimp17AssbinChunkWriterD2Ev.exit:           ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

.lr.ph85:                                         ; preds = %.lr.ph85.preheader, %_ZN6Assimp5WriteIbEEmPNS_8IOStreamERKT_.exit
  %indvars.iv95 = phi i64 [ 0, %.lr.ph85.preheader ], [ %indvars.iv.next96, %_ZN6Assimp5WriteIbEEmPNS_8IOStreamERKT_.exit ] ; 3 uses
  %i.ea = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = getelementptr inbounds nuw [1028 x i8], ptr %i.ec, i64 %indvars.iv95 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = getelementptr inbounds nuw [16 x i8], ptr %i.ef, i64 %indvars.iv95 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 8            ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8            ; 9 uses
  %i.ek = load i32, ptr %i.ed, align 4
  %i.el = load ptr, ptr %3, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = invoke noundef i64 %i.en(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(1028) %i.ed, i64 noundef 4, i64 noundef 1)
          to label %.noexc62 unwind label %bb.t, !inline_history !28 ; 0 uses

.noexc62:                                         ; preds = %.lr.ph85
  %i.ep = zext i32 %i.ek to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ed, i64 4
  %i.er = load ptr, ptr %3, align 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8
  %i.eu = invoke noundef i64 %i.et(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.eq, i64 noundef %i.ep, i64 noundef 1)
          to label %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit64 unwind label %bb.t, !inline_history !28 ; 0 uses

_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit64: ; preds = %.noexc62
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.ev = trunc i32 %i.eh to i16
  store i16 %i.ev, ptr %i.e, align 2
  %i.ew = load ptr, ptr %3, align 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.ey = load ptr, ptr %i.ex, align 8
  %i.ez = invoke noundef i64 %i.ey(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 2 dereferenceable(2) %i.e, i64 noundef 2, i64 noundef 1)
          to label %_ZN6Assimp5WriteItEEmPNS_8IOStreamERKT_.exit unwind label %bb.u, !inline_history !6 ; 0 uses

_ZN6Assimp5WriteItEEmPNS_8IOStreamERKT_.exit:     ; preds = %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  switch i32 %i.eh, label %_ZN6Assimp5WriteIbEEmPNS_8IOStreamERKT_.exit [
    i32 0, label %.noexc75.invoke
    i32 1, label %bb.v
    i32 2, label %bb.w
    i32 3, label %bb.v
    i32 4, label %bb.w
    i32 5, label %bb.x
    i32 6, label %bb.y
  ]

bb.t:                                             ; preds = %.noexc75.invoke, %.noexc74, %bb.y, %bb.x, %.noexc62, %.lr.ph85
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.u:                                             ; preds = %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit64
  %i.fb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  br label %bb.z

bb.v:                                             ; preds = %_ZN6Assimp5WriteItEEmPNS_8IOStreamERKT_.exit, %_ZN6Assimp5WriteItEEmPNS_8IOStreamERKT_.exit
  br label %.noexc75.invoke

bb.w:                                             ; preds = %_ZN6Assimp5WriteItEEmPNS_8IOStreamERKT_.exit, %_ZN6Assimp5WriteItEEmPNS_8IOStreamERKT_.exit
  br label %.noexc75.invoke

bb.x:                                             ; preds = %_ZN6Assimp5WriteItEEmPNS_8IOStreamERKT_.exit
  %i.fc = load i32, ptr %i.ej, align 4
  %i.fd = load ptr, ptr %3, align 8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8
  %i.fg = invoke noundef i64 %i.ff(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(1028) %i.ej, i64 noundef 4, i64 noundef 1)
          to label %.noexc71 unwind label %bb.t, !inline_history !28 ; 0 uses

.noexc71:                                         ; preds = %bb.x
  %i.fh = zext i32 %i.fc to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  br label %.noexc75.invoke

bb.y:                                             ; preds = %_ZN6Assimp5WriteItEEmPNS_8IOStreamERKT_.exit
  %i.fj = load ptr, ptr %3, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 24
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = invoke noundef i64 %i.fl(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.ej, i64 noundef 4, i64 noundef 1)
          to label %.noexc74 unwind label %bb.t, !inline_history !29 ; 0 uses

.noexc74:                                         ; preds = %bb.y
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  %i.fo = load ptr, ptr %3, align 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = invoke noundef i64 %i.fq(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.fn, i64 noundef 4, i64 noundef 1)
          to label %.noexc75 unwind label %bb.t, !inline_history !29 ; 0 uses

.noexc75:                                         ; preds = %.noexc74
  %i.fs = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  br label %.noexc75.invoke

.noexc75.invoke:                                  ; preds = %_ZN6Assimp5WriteItEEmPNS_8IOStreamERKT_.exit, %bb.v, %bb.w, %.noexc71, %.noexc75
  %i.ft = phi ptr [ %i.fs, %.noexc75 ], [ %i.fi, %.noexc71 ], [ %i.ej, %bb.v ], [ %i.ej, %_ZN6Assimp5WriteItEEmPNS_8IOStreamERKT_.exit ], [ %i.ej, %bb.w ]
  %i.fu = phi i64 [ 4, %.noexc75 ], [ %i.fh, %.noexc71 ], [ 4, %bb.v ], [ 1, %_ZN6Assimp5WriteItEEmPNS_8IOStreamERKT_.exit ], [ 8, %bb.w ]
  %i.fv = load ptr, ptr %3, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = invoke noundef i64 %i.fx(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.ft, i64 noundef %i.fu, i64 noundef 1)
          to label %_ZN6Assimp5WriteIbEEmPNS_8IOStreamERKT_.exit unwind label %bb.t, !inline_history !29 ; 0 uses

_ZN6Assimp5WriteIbEEmPNS_8IOStreamERKT_.exit:     ; preds = %.noexc75.invoke, %_ZN6Assimp5WriteItEEmPNS_8IOStreamERKT_.exit
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph85, !llvm.loop !30

bb.z:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.t, %bb.u, %bb.m, %bb.j
  %.pn44 = phi { ptr, i32 } [ %i.cy, %bb.j ], [ %i.df, %bb.m ], [ %i.fb, %bb.u ], [ %i.fa, %bb.t ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6Assimp17AssbinChunkWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn44
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp16AssbinFileWriter15WriteBinaryMeshEPNS_8IOStreamEPK6aiMesh(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.Assimp::AssbinChunkWriter", align 8 ; 69 uses
  %i.f = alloca i16, align 2                      ; 5 uses
  %i.g = alloca i16, align 2                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6Assimp17AssbinChunkWriterE, i64 16), ptr %3, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store ptr null, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i32 4663, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  store ptr %1, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  store i64 4096, ptr %i.l, align 8
  %i.m = load i32, ptr %2, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.o = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #23
          to label %bb.b unwind label %bb.d       ; 4 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.o, ptr %i.h, align 8
  store i64 4096, ptr %i.k, align 8
  store i32 %i.m, ptr %i.o, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.s = load <2 x i32>, ptr %i.p, align 4
  store <2 x i32> %i.s, ptr %i.q, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 3 uses
  %i.u = load i32, ptr %i.t, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  store i32 %i.u, ptr %i.v, align 1
  store i64 16, ptr %i.n, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 232
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #20
  %i.x = load i32, ptr %i.w, align 4
  store i32 %i.x, ptr %i.e, align 4
  %i.y = invoke noundef i64 @_ZN6Assimp17AssbinChunkWriter5WriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.e, i64 noundef 4, i64 noundef 1)
          to label %bb.c unwind label %bb.d, !inline_history !3 ; 0 uses

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #20
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %.not = icmp ne ptr %i.aa, null
  %spec.store.select = zext i1 %.not to i32       ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %.not121 = icmp eq ptr %i.ac, null
  %i.ad = or disjoint i32 %spec.store.select, 2
  %spec.select = select i1 %.not121, i32 %spec.store.select, i32 %i.ad ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %.not122 = icmp eq ptr %i.af, null
  br i1 %.not122, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp263

bb.e:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not123 = icmp eq ptr %i.ai, null
  %i.aj = or disjoint i32 %spec.select, 4
  %spec.select250 = select i1 %.not123, i32 %spec.select, i32 %i.aj
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.1248 = phi i32 [ %spec.select, %bb.c ], [ %spec.select250, %bb.e ] ; 8 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 112 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8
  %.not124 = icmp eq ptr %i.al, null
  br i1 %.not124, label %bb.n, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = or i32 %.1248, 256
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.ao = load ptr, ptr %i.an, align 8
  %.not124.1 = icmp eq ptr %i.ao, null
  br i1 %.not124.1, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = or i32 %.1248, 768
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ar = load ptr, ptr %i.aq, align 8
  %.not124.2 = icmp eq ptr %i.ar, null
  br i1 %.not124.2, label %bb.n, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = or i32 %.1248, 1792
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.au = load ptr, ptr %i.at, align 8
  %.not124.3 = icmp eq ptr %i.au, null
  br i1 %.not124.3, label %bb.n, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = or i32 %.1248, 3840
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.ax = load ptr, ptr %i.aw, align 8
  %.not124.4 = icmp eq ptr %i.ax, null
  br i1 %.not124.4, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = or i32 %.1248, 7936
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 152
  %i.ba = load ptr, ptr %i.az, align 8
  %.not124.5 = icmp eq ptr %i.ba, null
  br i1 %.not124.5, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = or i32 %.1248, 16128
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 160
  %i.bd = load ptr, ptr %i.bc, align 8
  %.not124.6 = icmp eq ptr %i.bd, null
  br i1 %.not124.6, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 168
  %i.bf = load ptr, ptr %i.be, align 8
  %.not124.7 = icmp eq ptr %i.bf, null
  %spec.select353.v = select i1 %.not124.7, i32 32512, i32 65280
  %spec.select353 = or i32 %spec.select353.v, %.1248
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.2.lcssa = phi i32 [ %.1248, %bb.f ], [ %i.av, %bb.j ], [ %i.am, %bb.g ], [ %spec.select353, %bb.m ], [ %i.ap, %bb.h ], [ %i.ay, %bb.k ], [ %i.as, %bb.i ], [ %i.bb, %bb.l ] ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8
  %.not125 = icmp eq ptr %i.bh, null
  br i1 %.not125, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bi = or i32 %.2.lcssa, 65536
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bk = load ptr, ptr %i.bj, align 8
  %.not125.1 = icmp eq ptr %i.bk, null
  br i1 %.not125.1, label %bb.v, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = or i32 %.2.lcssa, 196608
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.bn = load ptr, ptr %i.bm, align 8
  %.not125.2 = icmp eq ptr %i.bn, null
  br i1 %.not125.2, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bo = or i32 %.2.lcssa, 458752
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.bq = load ptr, ptr %i.bp, align 8
  %.not125.3 = icmp eq ptr %i.bq, null
  br i1 %.not125.3, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = or i32 %.2.lcssa, 983040
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.bt = load ptr, ptr %i.bs, align 8
  %.not125.4 = icmp eq ptr %i.bt, null
  br i1 %.not125.4, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bu = or i32 %.2.lcssa, 2031616
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 88
  %i.bw = load ptr, ptr %i.bv, align 8
  %.not125.5 = icmp eq ptr %i.bw, null
  br i1 %.not125.5, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = or i32 %.2.lcssa, 4128768
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.bz = load ptr, ptr %i.by, align 8
  %.not125.6 = icmp eq ptr %i.bz, null
  br i1 %.not125.6, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.cb = load ptr, ptr %i.ca, align 8
  %.not125.7 = icmp eq ptr %i.cb, null
  %spec.select354.v = select i1 %.not125.7, i32 8323072, i32 16711680
  %spec.select354 = or i32 %spec.select354.v, %.2.lcssa
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %.3.lcssa = phi i32 [ %.2.lcssa, %bb.n ], [ %i.br, %bb.r ], [ %i.bi, %bb.o ], [ %spec.select354, %bb.u ], [ %i.bl, %bb.p ], [ %i.bu, %bb.s ], [ %i.bo, %bb.q ], [ %i.bx, %bb.t ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  store i32 %.3.lcssa, ptr %i.d, align 4
  %i.cc = load ptr, ptr %3, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = invoke noundef i64 %i.ce(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.d, i64 noundef 4, i64 noundef 1)
          to label %bb.w unwind label %bb.z, !inline_history !3 ; 0 uses

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.cg = load ptr, ptr %i.z, align 8             ; 3 uses
  %.not126 = icmp eq ptr %i.cg, null
  br i1 %.not126, label %_ZN6Assimp10WriteArrayI10aiVector3tIfEEEmPNS_8IOStreamEPKT_j.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ch = load i8, ptr %0, align 1, !range !4, !noundef !5
  %i.ci = trunc nuw i8 %i.ch to i1
  %i.cj = load i32, ptr %i.p, align 4             ; 3 uses
  br i1 %i.ci, label %bb.y, label %bb.aa
end_hunk_1
begin_hunk_2_@_ZN6Assimp16AssbinFileWriter15WriteBinaryMeshEPNS_8IOStreamEPK6aiMesh:bb.a

bb.at:                                            ; preds = %._crit_edge293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.jw = add i32 %.0112297, %.sroa.speculated298 ; 3 uses
  %i.jx = load i32, ptr %i.r, align 8             ; 2 uses
  %i.jy = sub i32 %i.jx, %i.jw
  %.sroa.speculated = call i32 @llvm.umin.i32(i32 %i.jy, i32 512)
  %.not134 = icmp eq i32 %i.jx, %i.jw
  br i1 %.not134, label %.loopexit253, label %.preheader251, !llvm.loop !39

bb.au:                                            ; preds = %._crit_edge293
  %i.jz = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp263

bb.av:                                            ; preds = %.lr.ph285, %._crit_edge
  %indvars.iv319 = phi i64 [ 0, %.lr.ph285 ], [ %indvars.iv.next320, %._crit_edge ] ; 2 uses
  %i.ka = load ptr, ptr %i.hq, align 8
  %i.kb = getelementptr inbounds nuw [16 x i8], ptr %i.ka, i64 %indvars.iv319 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #20
  %i.kc = load i32, ptr %i.kb, align 8
  %i.kd = trunc i32 %i.kc to i16
  store i16 %i.kd, ptr %i.f, align 2
  %i.ke = load ptr, ptr %3, align 8
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 24
  %i.kg = load ptr, ptr %i.kf, align 8
  %i.kh = invoke noundef i64 %i.kg(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 2 dereferenceable(2) %i.f, i64 noundef 2, i64 noundef 1)
          to label %_ZN6Assimp5WriteItEEmPNS_8IOStreamERKT_.exit unwind label %bb.aw, !inline_history !6 ; 0 uses

_ZN6Assimp5WriteItEEmPNS_8IOStreamERKT_.exit:     ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  %i.ki = load i32, ptr %i.kb, align 8
  %.not302 = icmp eq i32 %i.ki, 0
  br i1 %.not302, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6Assimp5WriteItEEmPNS_8IOStreamERKT_.exit
  %i.kj = getelementptr inbounds nuw i8, ptr %i.kb, i64 8 ; 2 uses
  br label %bb.ax

._crit_edge:                                      ; preds = %bb.bc, %_ZN6Assimp5WriteItEEmPNS_8IOStreamERKT_.exit
  %indvars.iv.next320 = add nuw nsw i64 %indvars.iv319, 1 ; 2 uses
  %i.kk = load i32, ptr %i.r, align 8
  %i.kl = zext i32 %i.kk to i64
  %i.km = icmp samesign ult i64 %indvars.iv.next320, %i.kl
  br i1 %i.km, label %bb.av, label %.loopexit253, !llvm.loop !40

bb.aw:                                            ; preds = %bb.av
  %i.kn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #20
  br label %.loopexit.split-lp263

bb.ax:                                            ; preds = %.lr.ph, %bb.bc
  %indvars.iv316 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next317, %bb.bc ] ; 3 uses
  %i.ko = load i32, ptr %i.p, align 4
  %i.kp = icmp ult i32 %i.ko, 65536
  br i1 %i.kp, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #20
  %i.kq = load ptr, ptr %i.kj, align 8
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %i.kq, i64 %indvars.iv316
  %i.ks = load i32, ptr %i.kr, align 4
  %i.kt = trunc i32 %i.ks to i16
  store i16 %i.kt, ptr %i.g, align 2
  %i.ku = load ptr, ptr %3, align 8
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 24
  %i.kw = load ptr, ptr %i.kv, align 8
  %i.kx = invoke noundef i64 %i.kw(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 2 dereferenceable(2) %i.g, i64 noundef 2, i64 noundef 1)
          to label %_ZN6Assimp5WriteItEEmPNS_8IOStreamERKT_.exit229 unwind label %bb.az, !inline_history !6 ; 0 uses

_ZN6Assimp5WriteItEEmPNS_8IOStreamERKT_.exit229:  ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  br label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.ky = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #20
  br label %.loopexit.split-lp263

bb.ba:                                            ; preds = %bb.ax
  %i.kz = load ptr, ptr %i.kj, align 8
  %i.la = getelementptr inbounds nuw [4 x i8], ptr %i.kz, i64 %indvars.iv316
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.lb = load i32, ptr %i.la, align 4
  store i32 %i.lb, ptr %i.a, align 4
  %i.lc = load ptr, ptr %3, align 8
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  %i.le = load ptr, ptr %i.ld, align 8
  %i.lf = invoke noundef i64 %i.le(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1)
          to label %_ZN6Assimp5WriteIjEEmPNS_8IOStreamERKT_.exit231 unwind label %bb.bb, !inline_history !3 ; 0 uses

_ZN6Assimp5WriteIjEEmPNS_8IOStreamERKT_.exit231:  ; preds = %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp263

bb.bc:                                            ; preds = %_ZN6Assimp5WriteIjEEmPNS_8IOStreamERKT_.exit231, %_ZN6Assimp5WriteItEEmPNS_8IOStreamERKT_.exit229
  %indvars.iv.next317 = add nuw nsw i64 %indvars.iv316, 1 ; 2 uses
  %i.lh = load i32, ptr %i.kb, align 8
  %i.li = zext i32 %i.lh to i64
  %i.lj = icmp samesign ult i64 %indvars.iv.next317, %i.li
  br i1 %i.lj, label %bb.ax, label %._crit_edge, !llvm.loop !41

.loopexit253:                                     ; preds = %._crit_edge, %bb.at, %.preheader254, %.preheader252
  %i.lk = load i32, ptr %i.t, align 8
  %.not135 = icmp eq i32 %i.lk, 0
  br i1 %.not135, label %.loopexit, label %.lr.ph300

.lr.ph300:                                        ; preds = %.loopexit253
  %i.ll = getelementptr inbounds nuw i8, ptr %2, i64 224
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph300, %bb.be
  %indvars.iv331 = phi i64 [ 0, %.lr.ph300 ], [ %indvars.iv.next332, %bb.be ] ; 2 uses
  %i.lm = load ptr, ptr %i.ll, align 8
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %indvars.iv331
  %i.lo = load ptr, ptr %i.ln, align 8
  invoke void @_ZN6Assimp16AssbinFileWriter15WriteBinaryBoneEPNS_8IOStreamEPK6aiBone(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull %3, ptr noundef %i.lo)
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %indvars.iv.next332 = add nuw nsw i64 %indvars.iv331, 1 ; 2 uses
  %i.lp = load i32, ptr %i.t, align 8
  %i.lq = zext i32 %i.lp to i64
  %i.lr = icmp samesign ult i64 %indvars.iv.next332, %i.lq
  br i1 %i.lr, label %bb.bd, label %.loopexit, !llvm.loop !42

bb.bf:                                            ; preds = %bb.bd
  %i.ls = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp263

.loopexit:                                        ; preds = %bb.be, %.loopexit253
  %i.lt = load ptr, ptr %i.j, align 8             ; 3 uses
  %.not.i232 = icmp eq ptr %i.lt, null
  br i1 %.not.i232, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %.loopexit
  %i.lu = load ptr, ptr %i.lt, align 8
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  %i.lw = load ptr, ptr %i.lv, align 8
  %i.lx = invoke noundef i64 %i.lw(ptr noundef nonnull align 8 dereferenceable(8) %i.lt, ptr noundef nonnull %i.i, i64 noundef 4, i64 noundef 1)
          to label %bb.bh unwind label %bb.bl     ; 0 uses

bb.bh:                                            ; preds = %bb.bg
  %i.ly = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.lz = load ptr, ptr %i.ly, align 8
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 24
  %i.mb = load ptr, ptr %i.ma, align 8
  %i.mc = invoke noundef i64 %i.mb(ptr noundef nonnull align 8 dereferenceable(8) %i.ly, ptr noundef nonnull %i.n, i64 noundef 4, i64 noundef 1)
          to label %bb.bi unwind label %bb.bl     ; 0 uses

bb.bi:                                            ; preds = %bb.bh
  %i.md = load ptr, ptr %i.j, align 8             ; 2 uses
  %i.me = load ptr, ptr %i.h, align 8
  %i.mf = load i64, ptr %i.n, align 8
  %i.mg = load ptr, ptr %i.md, align 8
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 24
  %i.mi = load ptr, ptr %i.mh, align 8
  %i.mj = invoke noundef i64 %i.mi(ptr noundef nonnull align 8 dereferenceable(8) %i.md, ptr noundef %i.me, i64 noundef 1, i64 noundef %i.mf)
          to label %bb.bj unwind label %bb.bl     ; 0 uses

bb.bj:                                            ; preds = %bb.bi, %.loopexit
  %i.mk = load ptr, ptr %i.h, align 8             ; 2 uses
  %.not2.i = icmp eq ptr %i.mk, null
  br i1 %.not2.i, label %_ZN6Assimp17AssbinChunkWriterD2Ev.exit, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @_ZdaPv(ptr noundef nonnull %i.mk) #22
  br label %_ZN6Assimp17AssbinChunkWriterD2Ev.exit

bb.bl:                                            ; preds = %bb.bi, %bb.bh, %bb.bg
  %i.ml = landingpad { ptr, i32 }
          catch ptr null
  %i.mm = extractvalue { ptr, i32 } %i.ml, 0
  call void @__clang_call_terminate(ptr %i.mm) #24
  unreachable

_ZN6Assimp17AssbinChunkWriterD2Ev.exit:           ; preds = %bb.bj, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

.loopexit.split-lp263:                            ; preds = %.loopexit256, %.loopexit.split-lp, %.loopexit257, %.loopexit.split-lp258, %.loopexit262, %.loopexit.split-lp263.loopexit.split-lp.loopexit, %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp263.loopexit, %bb.z, %bb.aw, %bb.bb, %bb.az, %bb.bf, %bb.au, %bb.d
  %.pn136.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.d ], [ %i.cl, %bb.z ], [ %lpad.loopexit.split-lp274, %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp260, %.loopexit.split-lp258 ], [ %i.jz, %bb.au ], [ %i.ls, %bb.bf ], [ %i.lg, %bb.bb ], [ %i.kn, %bb.aw ], [ %i.ky, %bb.az ], [ %lpad.loopexit264, %.loopexit262 ], [ %lpad.loopexit267, %.loopexit.split-lp263.loopexit ], [ %lpad.loopexit270, %.loopexit.split-lp263.loopexit.split-lp.loopexit ], [ %lpad.loopexit273, %.loopexit.split-lp263.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit259, %.loopexit257 ], [ %lpad.loopexit, %.loopexit256 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN6Assimp17AssbinChunkWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn136.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp16AssbinFileWriter19WriteBinaryMaterialEPNS_8IOStreamEPK10aiMaterial(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::AssbinChunkWriter", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6Assimp17AssbinChunkWriterE, i64 16), ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i32 4669, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store i64 4096, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.i = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #23
          to label %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i unwind label %bb.h ; 2 uses

_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i:      ; preds = %bb.a
  store ptr %i.i, ptr %i.a, align 8
  store i64 4096, ptr %i.d, align 8
  store i32 %i.g, ptr %i.i, align 1
  store i64 4, ptr %i.h, align 8
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.i
  %.pre = load ptr, ptr %i.c, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i
  %i.j = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %1, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i ] ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = invoke noundef i64 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull %i.b, i64 noundef 4, i64 noundef 1)
          to label %bb.c unwind label %bb.g       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = invoke noundef i64 %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %i.h, i64 noundef 4, i64 noundef 1)
          to label %bb.d unwind label %bb.g       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.t = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = load i64, ptr %i.h, align 8
  %i.w = load ptr, ptr %i.t, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = invoke noundef i64 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef %i.u, i64 noundef 1, i64 noundef %i.v)
          to label %bb.e unwind label %bb.g       ; 0 uses

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.aa = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not2.i = icmp eq ptr %i.aa, null
  br i1 %.not2.i, label %_ZN6Assimp17AssbinChunkWriterD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.aa) #22
  br label %_ZN6Assimp17AssbinChunkWriterD2Ev.exit

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  call void @__clang_call_terminate(ptr %i.ac) #24
  unreachable

_ZN6Assimp17AssbinChunkWriterD2Ev.exit:           ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.h:                                             ; preds = %bb.a
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.lr.ph:                                           ; preds = %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i, %bb.i
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.i ], [ 0, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i ] ; 2 uses
  %i.ae = load ptr, ptr %2, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ag = load ptr, ptr %i.af, align 8
  invoke void @_ZN6Assimp16AssbinFileWriter27WriteBinaryMaterialPropertyEPNS_8IOStreamEPK18aiMaterialProperty(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull %3, ptr noundef %i.ag)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = load i32, ptr %i.f, align 8
  %i.ai = zext i32 %i.ah to i64
  %i.aj = icmp samesign ult i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !43

bb.j:                                             ; preds = %.lr.ph
  %i.ak = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.j ], [ %i.ad, %bb.h ]
  call void @_ZN6Assimp17AssbinChunkWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp16AssbinFileWriter15WriteBinaryAnimEPNS_8IOStreamEPK11aiAnimation(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.Assimp::AssbinChunkWriter", align 8 ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6Assimp17AssbinChunkWriterE, i64 16), ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i32 4667, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  store i64 4096, ptr %i.f, align 8
  %i.g = load i32, ptr %2, align 4                ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 6 uses
  %i.i = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #23
          to label %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i unwind label %bb.j ; 5 uses

_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i:      ; preds = %bb.a
  store ptr %i.i, ptr %i.b, align 8
  store i64 4096, ptr %i.e, align 8
  store i32 %i.g, ptr %i.i, align 1
  store i64 4, ptr %i.h, align 8
  %i.j = zext i32 %i.g to i64                     ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.l = icmp ugt i32 %i.g, 4092
  br i1 %i.l, label %bb.b, label %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit

bb.b:                                             ; preds = %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i
  %i.m = tail call i64 @llvm.umax.i64(i64 %i.j, i64 6140)
  %i.n = add nuw nsw i64 %i.m, 4                  ; 3 uses
  %i.o = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.n) #23
          to label %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i26 unwind label %bb.j ; 3 uses

_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i26:    ; preds = %bb.b
  store ptr %i.o, ptr %i.b, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(4096) %i.o, ptr noundef nonnull align 1 dereferenceable(4096) %i.i, i64 4096, i1 false)
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #22
  store i64 %i.n, ptr %i.e, align 8
  br label %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit

_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit: ; preds = %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i26, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i
  %i.p = phi i64 [ %i.n, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i26 ], [ 4096, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i ] ; 4 uses
  %i.q = phi ptr [ %i.o, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i26 ], [ %i.i, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 1 %i.k, i64 %i.j, i1 false)
  %i.s = add nuw nsw i64 %i.j, 4                  ; 2 uses
  store i64 %i.s, ptr %i.h, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 1032
  %i.u = add nuw nsw i64 %i.j, 12                 ; 2 uses
  %i.v = icmp samesign ugt i64 %i.u, %i.p
  br i1 %i.v, label %bb.c, label %_ZN6Assimp5WriteIdEEmPNS_8IOStreamERKT_.exit

bb.c:                                             ; preds = %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit
  %i.w = lshr i64 %i.p, 1
  %i.x = add nuw nsw i64 %i.w, %i.p
  %i.y = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.x) ; 2 uses
  %i.z = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.y) #23
          to label %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i28 unwind label %bb.j ; 3 uses

_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i28:    ; preds = %bb.c
  store ptr %i.z, ptr %i.b, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.z, ptr noundef nonnull align 1 dereferenceable(1) %i.q, i64 %i.p, i1 false)
  tail call void @_ZdaPv(ptr noundef nonnull %i.q) #22
  store i64 %i.y, ptr %i.e, align 8
  br label %_ZN6Assimp5WriteIdEEmPNS_8IOStreamERKT_.exit

_ZN6Assimp5WriteIdEEmPNS_8IOStreamERKT_.exit:     ; preds = %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i28, %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit
  %i.aa = phi ptr [ %i.z, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i28 ], [ %i.q, %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.s
  %i.ac = load i64, ptr %i.t, align 8
  store i64 %i.ac, ptr %i.ab, align 1
  %i.ad = load i64, ptr %i.h, align 8
  %i.ae = add i64 %i.ad, 8
  store i64 %i.ae, ptr %i.h, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 1040
  %i.ag = load ptr, ptr %3, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = invoke noundef i64 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.af, i64 noundef 8, i64 noundef 1)
          to label %_ZN6Assimp5WriteIdEEmPNS_8IOStreamERKT_.exit19 unwind label %bb.j, !inline_history !44 ; 0 uses

_ZN6Assimp5WriteIdEEmPNS_8IOStreamERKT_.exit19:   ; preds = %_ZN6Assimp5WriteIdEEmPNS_8IOStreamERKT_.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 1048 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.al = load i32, ptr %i.ak, align 8
  store i32 %i.al, ptr %i.a, align 4
  %i.am = load ptr, ptr %3, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = invoke noundef i64 %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1)
          to label %_ZN6Assimp5WriteIjEEmPNS_8IOStreamERKT_.exit unwind label %bb.j, !inline_history !3 ; 0 uses

_ZN6Assimp5WriteIjEEmPNS_8IOStreamERKT_.exit:     ; preds = %_ZN6Assimp5WriteIdEEmPNS_8IOStreamERKT_.exit19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.aq = load i32, ptr %i.ak, align 8
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN6Assimp5WriteIjEEmPNS_8IOStreamERKT_.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 1056
  br label %bb.k

._crit_edge:                                      ; preds = %bb.l, %_ZN6Assimp5WriteIjEEmPNS_8IOStreamERKT_.exit
  %i.as = load ptr, ptr %i.d, align 8             ; 3 uses
  %.not.i = icmp eq ptr %i.as, null
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = invoke noundef i64 %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.as, ptr noundef nonnull %i.c, i64 noundef 4, i64 noundef 1)
          to label %bb.e unwind label %bb.i       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.ax = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef i64 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %i.ax, ptr noundef nonnull %i.h, i64 noundef 4, i64 noundef 1)
          to label %bb.f unwind label %bb.i       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.bc = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.bd = load ptr, ptr %i.b, align 8
  %i.be = load i64, ptr %i.h, align 8
  %i.bf = load ptr, ptr %i.bc, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = invoke noundef i64 %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %i.bc, ptr noundef %i.bd, i64 noundef 1, i64 noundef %i.be)
          to label %bb.g unwind label %bb.i       ; 0 uses

bb.g:                                             ; preds = %bb.f, %._crit_edge
  %i.bj = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not2.i = icmp eq ptr %i.bj, null
  br i1 %.not2.i, label %_ZN6Assimp17AssbinChunkWriterD2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.bj) #22
  br label %_ZN6Assimp17AssbinChunkWriterD2Ev.exit

bb.i:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.bk = landingpad { ptr, i32 }
          catch ptr null
  %i.bl = extractvalue { ptr, i32 } %i.bk, 0
  call void @__clang_call_terminate(ptr %i.bl) #24
  unreachable

_ZN6Assimp17AssbinChunkWriterD2Ev.exit:           ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.j:                                             ; preds = %bb.c, %bb.b, %bb.a, %_ZN6Assimp5WriteIdEEmPNS_8IOStreamERKT_.exit19, %_ZN6Assimp5WriteIdEEmPNS_8IOStreamERKT_.exit
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 2 uses
  %i.bn = load ptr, ptr %i.ar, align 8
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %indvars.iv
  %i.bp = load ptr, ptr %i.bo, align 8
  invoke void @_ZN6Assimp16AssbinFileWriter19WriteBinaryNodeAnimEPNS_8IOStreamEPK10aiNodeAnim(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef nonnull %3, ptr noundef %i.bp)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bq = load i32, ptr %i.ak, align 8
  %i.br = zext i32 %i.bq to i64
  %i.bs = icmp samesign ult i64 %indvars.iv.next, %i.br
  br i1 %i.bs, label %bb.k, label %._crit_edge, !llvm.loop !45

bb.m:                                             ; preds = %bb.k
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bt, %bb.m ], [ %i.bm, %bb.j ]
  call void @_ZN6Assimp17AssbinChunkWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp16AssbinFileWriter18WriteBinaryTextureEPNS_8IOStreamEPK9aiTexture(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::AssbinChunkWriter", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6Assimp17AssbinChunkWriterE, i64 16), ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i32 4662, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store i64 4096, ptr %i.e, align 8
  %i.f = load i32, ptr %2, align 4                ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 4 uses
  %i.h = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #23
          to label %bb.b unwind label %bb.f       ; 9 uses

bb.b:                                             ; preds = %bb.a
  store ptr %i.h, ptr %i.a, align 8
  store i64 4096, ptr %i.d, align 8
  store i32 %i.f, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.j = load i32, ptr %i.i, align 4              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.j, ptr %i.k, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.n = load i64, ptr %i.l, align 4
  store i64 %i.n, ptr %i.m, align 1
  store i64 16, ptr %i.g, align 8
  %i.o = load i8, ptr %0, align 1, !range !4, !noundef !5
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not = icmp eq i32 %i.j, 0
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.s = zext i32 %i.f to i64                     ; 3 uses
  %i.t = add nuw nsw i64 %i.s, 16                 ; 3 uses
  %i.u = icmp ugt i32 %i.f, 4080
  br i1 %i.u, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %bb.d
  %i.v = tail call i64 @llvm.umax.i64(i64 %i.t, i64 6144) ; 2 uses
  %i.w = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.v) #23
          to label %.sink.split.sink.split unwind label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.h, %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp17AssbinChunkWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %i.x

bb.g:                                             ; preds = %bb.c
  %i.y = shl i32 %i.j, 2
  %i.z = mul i32 %i.y, %i.f                       ; 2 uses
  %i.aa = zext i32 %i.z to i64                    ; 3 uses
  %i.ab = add nuw nsw i64 %i.aa, 16               ; 3 uses
  %i.ac = icmp ugt i32 %i.z, 4080
  br i1 %i.ac, label %bb.h, label %.sink.split

bb.h:                                             ; preds = %bb.g
  %i.ad = tail call i64 @llvm.umax.i64(i64 %i.ab, i64 6144) ; 2 uses
  %i.ae = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ad) #23
          to label %.sink.split.sink.split unwind label %bb.f

.sink.split.sink.split:                           ; preds = %bb.h, %bb.e
  %.sink71 = phi ptr [ %i.w, %bb.e ], [ %i.ae, %bb.h ] ; 3 uses
  %.sink = phi i64 [ %i.v, %bb.e ], [ %i.ad, %bb.h ]
  %.sink68.ph = phi i64 [ %i.s, %bb.e ], [ %i.aa, %bb.h ]
  %.pre-phi.ph = phi i64 [ %i.t, %bb.e ], [ %i.ab, %bb.h ]
  store ptr %.sink71, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(4096) %.sink71, ptr noundef nonnull align 1 dereferenceable(4096) %i.h, i64 4096, i1 false)
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #22
  store i64 %.sink, ptr %i.d, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %.sink.split.sink.split, %bb.g, %bb.d
  %.sink69 = phi ptr [ %i.h, %bb.d ], [ %i.h, %bb.g ], [ %.sink71, %.sink.split.sink.split ] ; 2 uses
  %.sink68 = phi i64 [ %i.s, %bb.d ], [ %i.aa, %bb.g ], [ %.sink68.ph, %.sink.split.sink.split ]
  %.pre-phi = phi i64 [ %i.t, %bb.d ], [ %i.ab, %bb.g ], [ %.pre-phi.ph, %.sink.split.sink.split ]
  %i.af = getelementptr inbounds nuw i8, ptr %.sink69, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr align 1 %i.r, i64 %.sink68, i1 false)
  store i64 %.pre-phi, ptr %i.g, align 8
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.b
  %i.ag = phi ptr [ %.sink69, %.sink.split ], [ %i.h, %bb.b ]
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ah = load ptr, ptr %1, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = invoke noundef i64 %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.b, i64 noundef 4, i64 noundef 1)
          to label %bb.k unwind label %bb.n       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.al = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = invoke noundef i64 %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %i.al, ptr noundef nonnull %i.g, i64 noundef 4, i64 noundef 1)
          to label %bb.l unwind label %bb.n       ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.aq = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ar = load ptr, ptr %i.a, align 8
  %i.as = load i64, ptr %i.g, align 8
  %i.at = load ptr, ptr %i.aq, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = invoke noundef i64 %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.aq, ptr noundef %i.ar, i64 noundef 1, i64 noundef %i.as)
          to label %bb.m unwind label %bb.n       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %.pre61 = load ptr, ptr %i.a, align 8           ; 2 uses
  %.not2.i = icmp eq ptr %.pre61, null
  br i1 %.not2.i, label %_ZN6Assimp17AssbinChunkWriterD2Ev.exit, label %.thread

.thread:                                          ; preds = %bb.i, %bb.m
  %i.ax = phi ptr [ %.pre61, %bb.m ], [ %i.ag, %bb.i ]
  call void @_ZdaPv(ptr noundef nonnull %i.ax) #22
  br label %_ZN6Assimp17AssbinChunkWriterD2Ev.exit

bb.n:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  call void @__clang_call_terminate(ptr %i.az) #24
  unreachable

_ZN6Assimp17AssbinChunkWriterD2Ev.exit:           ; preds = %bb.m, %.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp16AssbinFileWriter16WriteBinaryLightEPNS_8IOStreamEPK7aiLight(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::AssbinChunkWriter", align 8 ; 57 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6Assimp17AssbinChunkWriterE, i64 16), ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i32 4661, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store i64 4096, ptr %i.e, align 8
  %i.f = load i32, ptr %2, align 4                ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 6 uses
  %i.h = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #23
          to label %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i unwind label %bb.f ; 5 uses

_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i:      ; preds = %bb.a
  store ptr %i.h, ptr %i.a, align 8
  store i64 4096, ptr %i.d, align 8
  store i32 %i.f, ptr %i.h, align 1
  store i64 4, ptr %i.g, align 8
  %i.i = zext i32 %i.f to i64                     ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = icmp ugt i32 %i.f, 4092
  br i1 %i.k, label %bb.b, label %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit

bb.b:                                             ; preds = %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i
  %i.l = tail call i64 @llvm.umax.i64(i64 %i.i, i64 6140)
  %i.m = add nuw nsw i64 %i.l, 4                  ; 3 uses
  %i.n = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #23
          to label %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i55 unwind label %bb.f ; 3 uses

_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i55:    ; preds = %bb.b
  store ptr %i.n, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(4096) %i.n, ptr noundef nonnull align 1 dereferenceable(4096) %i.h, i64 4096, i1 false)
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #22
  store i64 %i.m, ptr %i.d, align 8
  br label %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit

_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit: ; preds = %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i55, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i
  %i.o = phi i64 [ %i.m, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i55 ], [ 4096, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i ] ; 4 uses
  %i.p = phi ptr [ %i.n, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i55 ], [ %i.h, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 1 %i.j, i64 %i.i, i1 false)
  %i.r = add nuw nsw i64 %i.i, 4                  ; 2 uses
  store i64 %i.r, ptr %i.g, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 1028 ; 3 uses
  %i.t = load i32, ptr %i.s, align 4
  %i.u = add nuw nsw i64 %i.i, 8                  ; 2 uses
  %i.v = icmp samesign ugt i64 %i.u, %i.o
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit
  %i.w = lshr i64 %i.o, 1
  %i.x = add nuw nsw i64 %i.w, %i.o
  %i.y = tail call i64 @llvm.umax.i64(i64 %i.u, i64 %i.x) ; 2 uses
  %i.z = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.y) #23
          to label %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i57 unwind label %bb.g ; 3 uses

_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i57:    ; preds = %bb.c
  store ptr %i.z, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.z, ptr noundef nonnull align 1 dereferenceable(1) %i.p, i64 %i.o, i1 false)
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #22
  store i64 %i.y, ptr %i.d, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i57, %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit
  %i.aa = phi ptr [ %i.z, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i57 ], [ %i.p, %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit ]
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.r
  store i32 %i.t, ptr %i.ab, align 1
  %i.ac = load i64, ptr %i.g, align 8
  %i.ad = add i64 %i.ac, 4
  store i64 %i.ad, ptr %i.g, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 1032
  %i.af = load ptr, ptr %3, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = invoke noundef i64 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.ae, i64 noundef 4, i64 noundef 1)
          to label %.noexc21 unwind label %bb.f, !inline_history !29 ; 0 uses

.noexc21:                                         ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 1036
  %i.ak = load ptr, ptr %3, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = invoke noundef i64 %i.am(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.aj, i64 noundef 4, i64 noundef 1)
          to label %.noexc22 unwind label %bb.f, !inline_history !29 ; 0 uses

.noexc22:                                         ; preds = %.noexc21
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 1040
  %i.ap = load ptr, ptr %3, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = invoke noundef i64 %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.ao, i64 noundef 4, i64 noundef 1)
          to label %_ZN6Assimp5WriteI10aiVector3tIfEEEmPNS_8IOStreamERKT_.exit unwind label %bb.f, !inline_history !29 ; 0 uses

_ZN6Assimp5WriteI10aiVector3tIfEEEmPNS_8IOStreamERKT_.exit: ; preds = %.noexc22
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 1044
  %i.au = load ptr, ptr %3, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = invoke noundef i64 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.at, i64 noundef 4, i64 noundef 1)
          to label %.noexc24 unwind label %bb.f, !inline_history !29 ; 0 uses

.noexc24:                                         ; preds = %_ZN6Assimp5WriteI10aiVector3tIfEEEmPNS_8IOStreamERKT_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 1048
  %i.az = load ptr, ptr %3, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = invoke noundef i64 %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.ay, i64 noundef 4, i64 noundef 1)
          to label %.noexc25 unwind label %bb.f, !inline_history !29 ; 0 uses

.noexc25:                                         ; preds = %.noexc24
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 1052
  %i.be = load ptr, ptr %3, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = invoke noundef i64 %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.bd, i64 noundef 4, i64 noundef 1)
          to label %_ZN6Assimp5WriteI10aiVector3tIfEEEmPNS_8IOStreamERKT_.exit27 unwind label %bb.f, !inline_history !29 ; 0 uses

_ZN6Assimp5WriteI10aiVector3tIfEEEmPNS_8IOStreamERKT_.exit27: ; preds = %.noexc25
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 1056
  %i.bj = load ptr, ptr %3, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = invoke noundef i64 %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.bi, i64 noundef 4, i64 noundef 1)
          to label %.noexc28 unwind label %bb.f, !inline_history !29 ; 0 uses

.noexc28:                                         ; preds = %_ZN6Assimp5WriteI10aiVector3tIfEEEmPNS_8IOStreamERKT_.exit27
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 1060
  %i.bo = load ptr, ptr %3, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = invoke noundef i64 %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.bn, i64 noundef 4, i64 noundef 1)
          to label %.noexc29 unwind label %bb.f, !inline_history !29 ; 0 uses

.noexc29:                                         ; preds = %.noexc28
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 1064
  %i.bt = load ptr, ptr %3, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = invoke noundef i64 %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.bs, i64 noundef 4, i64 noundef 1)
          to label %_ZN6Assimp5WriteI10aiVector3tIfEEEmPNS_8IOStreamERKT_.exit31 unwind label %bb.f, !inline_history !29 ; 0 uses

_ZN6Assimp5WriteI10aiVector3tIfEEEmPNS_8IOStreamERKT_.exit31: ; preds = %.noexc29
  %i.bx = load i32, ptr %i.s, align 4
  %.not = icmp eq i32 %i.bx, 1
  br i1 %.not, label %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit36, label %bb.e

bb.e:                                             ; preds = %_ZN6Assimp5WriteI10aiVector3tIfEEEmPNS_8IOStreamERKT_.exit31
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 1068
  %i.bz = load ptr, ptr %3, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = invoke noundef i64 %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.by, i64 noundef 4, i64 noundef 1)
          to label %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit unwind label %bb.f, !inline_history !46 ; 0 uses

_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit:     ; preds = %bb.e
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 1072
  %i.ce = load ptr, ptr %3, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = invoke noundef i64 %i.cg(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.cd, i64 noundef 4, i64 noundef 1)
          to label %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit34 unwind label %bb.f, !inline_history !46 ; 0 uses

_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit34:   ; preds = %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 1076
  %i.cj = load ptr, ptr %3, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = invoke noundef i64 %i.cl(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.ci, i64 noundef 4, i64 noundef 1)
          to label %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit36 unwind label %bb.f, !inline_history !46 ; 0 uses

bb.f:                                             ; preds = %bb.b, %bb.a, %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit49, %bb.h, %.noexc45, %.noexc44, %_ZN6Assimp5WriteI9aiColor3DEEmPNS_8IOStreamERKT_.exit43, %.noexc41, %.noexc40, %_ZN6Assimp5WriteI9aiColor3DEEmPNS_8IOStreamERKT_.exit, %.noexc38, %.noexc37, %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit36, %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit34, %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit, %bb.e, %.noexc29, %.noexc28, %_ZN6Assimp5WriteI10aiVector3tIfEEEmPNS_8IOStreamERKT_.exit27, %.noexc25, %.noexc24, %_ZN6Assimp5WriteI10aiVector3tIfEEEmPNS_8IOStreamERKT_.exit, %.noexc22, %.noexc21, %bb.d
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.g:                                             ; preds = %bb.c
  %i.co = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit36:   ; preds = %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit34, %_ZN6Assimp5WriteI10aiVector3tIfEEEmPNS_8IOStreamERKT_.exit31
  %i.cp = getelementptr inbounds nuw i8, ptr %2, i64 1080
  %i.cq = load ptr, ptr %3, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = invoke noundef i64 %i.cs(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.cp, i64 noundef 4, i64 noundef 1)
          to label %.noexc37 unwind label %bb.f, !inline_history !47 ; 0 uses

.noexc37:                                         ; preds = %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit36
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 1084
  %i.cv = load ptr, ptr %3, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8
  %i.cy = invoke noundef i64 %i.cx(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.cu, i64 noundef 4, i64 noundef 1)
          to label %.noexc38 unwind label %bb.f, !inline_history !47 ; 0 uses

.noexc38:                                         ; preds = %.noexc37
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 1088
  %i.da = load ptr, ptr %3, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = invoke noundef i64 %i.dc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.cz, i64 noundef 4, i64 noundef 1)
          to label %_ZN6Assimp5WriteI9aiColor3DEEmPNS_8IOStreamERKT_.exit unwind label %bb.f, !inline_history !47 ; 0 uses

_ZN6Assimp5WriteI9aiColor3DEEmPNS_8IOStreamERKT_.exit: ; preds = %.noexc38
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 1092
  %i.df = load ptr, ptr %3, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dh = load ptr, ptr %i.dg, align 8
  %i.di = invoke noundef i64 %i.dh(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.de, i64 noundef 4, i64 noundef 1)
          to label %.noexc40 unwind label %bb.f, !inline_history !47 ; 0 uses

.noexc40:                                         ; preds = %_ZN6Assimp5WriteI9aiColor3DEEmPNS_8IOStreamERKT_.exit
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 1096
  %i.dk = load ptr, ptr %3, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = invoke noundef i64 %i.dm(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.dj, i64 noundef 4, i64 noundef 1)
          to label %.noexc41 unwind label %bb.f, !inline_history !47 ; 0 uses

.noexc41:                                         ; preds = %.noexc40
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 1100
  %i.dp = load ptr, ptr %3, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = invoke noundef i64 %i.dr(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.do, i64 noundef 4, i64 noundef 1)
          to label %_ZN6Assimp5WriteI9aiColor3DEEmPNS_8IOStreamERKT_.exit43 unwind label %bb.f, !inline_history !47 ; 0 uses

_ZN6Assimp5WriteI9aiColor3DEEmPNS_8IOStreamERKT_.exit43: ; preds = %.noexc41
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 1104
  %i.du = load ptr, ptr %3, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = invoke noundef i64 %i.dw(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.dt, i64 noundef 4, i64 noundef 1)
          to label %.noexc44 unwind label %bb.f, !inline_history !47 ; 0 uses

.noexc44:                                         ; preds = %_ZN6Assimp5WriteI9aiColor3DEEmPNS_8IOStreamERKT_.exit43
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 1108
  %i.dz = load ptr, ptr %3, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8
  %i.ec = invoke noundef i64 %i.eb(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.dy, i64 noundef 4, i64 noundef 1)
          to label %.noexc45 unwind label %bb.f, !inline_history !47 ; 0 uses

.noexc45:                                         ; preds = %.noexc44
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 1112
  %i.ee = load ptr, ptr %3, align 8
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = invoke noundef i64 %i.eg(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.ed, i64 noundef 4, i64 noundef 1)
          to label %_ZN6Assimp5WriteI9aiColor3DEEmPNS_8IOStreamERKT_.exit47 unwind label %bb.f, !inline_history !47 ; 0 uses

_ZN6Assimp5WriteI9aiColor3DEEmPNS_8IOStreamERKT_.exit47: ; preds = %.noexc45
  %i.ei = load i32, ptr %i.s, align 4
  %i.ej = icmp eq i32 %i.ei, 3
  br i1 %i.ej, label %bb.h, label %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit51

bb.h:                                             ; preds = %_ZN6Assimp5WriteI9aiColor3DEEmPNS_8IOStreamERKT_.exit47
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 1116
  %i.el = load ptr, ptr %3, align 8
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.en = load ptr, ptr %i.em, align 8
  %i.eo = invoke noundef i64 %i.en(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.ek, i64 noundef 4, i64 noundef 1)
          to label %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit49 unwind label %bb.f, !inline_history !46 ; 0 uses

_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit49:   ; preds = %bb.h
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 1120
  %i.eq = load ptr, ptr %3, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = invoke noundef i64 %i.es(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.ep, i64 noundef 4, i64 noundef 1)
          to label %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit51 unwind label %bb.f, !inline_history !46 ; 0 uses

_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit51:   ; preds = %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit49, %_ZN6Assimp5WriteI9aiColor3DEEmPNS_8IOStreamERKT_.exit47
  %i.eu = load ptr, ptr %i.c, align 8             ; 3 uses
  %.not.i = icmp eq ptr %i.eu, null
  br i1 %.not.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit51
  %i.ev = load ptr, ptr %i.eu, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ex = load ptr, ptr %i.ew, align 8
  %i.ey = invoke noundef i64 %i.ex(ptr noundef nonnull align 8 dereferenceable(8) %i.eu, ptr noundef nonnull %i.b, i64 noundef 4, i64 noundef 1)
          to label %bb.j unwind label %bb.n       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ez = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = invoke noundef i64 %i.fc(ptr noundef nonnull align 8 dereferenceable(8) %i.ez, ptr noundef nonnull %i.g, i64 noundef 4, i64 noundef 1)
          to label %bb.k unwind label %bb.n       ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.fe = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ff = load ptr, ptr %i.a, align 8
  %i.fg = load i64, ptr %i.g, align 8
  %i.fh = load ptr, ptr %i.fe, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = invoke noundef i64 %i.fj(ptr noundef nonnull align 8 dereferenceable(8) %i.fe, ptr noundef %i.ff, i64 noundef 1, i64 noundef %i.fg)
          to label %bb.l unwind label %bb.n       ; 0 uses

bb.l:                                             ; preds = %bb.k, %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit51
  %i.fl = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not2.i = icmp eq ptr %i.fl, null
  br i1 %.not2.i, label %_ZN6Assimp17AssbinChunkWriterD2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_ZdaPv(ptr noundef nonnull %i.fl) #22
  br label %_ZN6Assimp17AssbinChunkWriterD2Ev.exit

bb.n:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.fm = landingpad { ptr, i32 }
          catch ptr null
  %i.fn = extractvalue { ptr, i32 } %i.fm, 0
  call void @__clang_call_terminate(ptr %i.fn) #24
  unreachable

_ZN6Assimp17AssbinChunkWriterD2Ev.exit:           ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.o:                                             ; preds = %bb.g, %bb.f
  %.pn = phi { ptr, i32 } [ %i.cn, %bb.f ], [ %i.co, %bb.g ]
  call void @_ZN6Assimp17AssbinChunkWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp16AssbinFileWriter17WriteBinaryCameraEPNS_8IOStreamEPK8aiCamera(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::AssbinChunkWriter", align 8 ; 35 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6Assimp17AssbinChunkWriterE, i64 16), ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i32 4660, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store i64 4096, ptr %i.e, align 8
  %i.f = load i32, ptr %2, align 4                ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 6 uses
  %i.h = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #23
          to label %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i unwind label %bb.j ; 5 uses

_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i:      ; preds = %bb.a
  store ptr %i.h, ptr %i.a, align 8
  store i64 4096, ptr %i.d, align 8
  store i32 %i.f, ptr %i.h, align 1
  store i64 4, ptr %i.g, align 8
  %i.i = zext i32 %i.f to i64                     ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.k = icmp ugt i32 %i.f, 4092
  br i1 %i.k, label %bb.b, label %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit

bb.b:                                             ; preds = %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i
  %i.l = tail call i64 @llvm.umax.i64(i64 %i.i, i64 6140)
  %i.m = add nuw nsw i64 %i.l, 4                  ; 3 uses
  %i.n = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #23
          to label %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i32 unwind label %bb.j ; 3 uses

_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i32:    ; preds = %bb.b
  store ptr %i.n, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(4096) %i.n, ptr noundef nonnull align 1 dereferenceable(4096) %i.h, i64 4096, i1 false)
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #22
  store i64 %i.m, ptr %i.d, align 8
  br label %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit

_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit: ; preds = %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i32, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i
  %i.o = phi i64 [ %i.m, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i32 ], [ 4096, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i ] ; 4 uses
  %i.p = phi ptr [ %i.n, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i32 ], [ %i.h, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i ] ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 1 %i.j, i64 %i.i, i1 false)
  %i.r = add nuw nsw i64 %i.i, 4                  ; 2 uses
  store i64 %i.r, ptr %i.g, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 1028
  %i.t = add nuw nsw i64 %i.i, 8                  ; 2 uses
  %i.u = icmp samesign ugt i64 %i.t, %i.o
  br i1 %i.u, label %bb.c, label %.noexc11

bb.c:                                             ; preds = %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit
  %i.v = lshr i64 %i.o, 1
  %i.w = add nuw nsw i64 %i.v, %i.o
  %i.x = tail call i64 @llvm.umax.i64(i64 %i.t, i64 %i.w) ; 2 uses
  %i.y = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.x) #23
          to label %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i34 unwind label %bb.j ; 3 uses

_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i34:    ; preds = %bb.c
  store ptr %i.y, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.y, ptr noundef nonnull align 1 dereferenceable(1) %i.p, i64 %i.o, i1 false)
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #22
  store i64 %i.x, ptr %i.d, align 8
  br label %.noexc11

.noexc11:                                         ; preds = %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i34, %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit
  %i.z = phi ptr [ %i.y, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i34 ], [ %i.p, %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
  %i.ab = load i32, ptr %i.s, align 4
  store i32 %i.ab, ptr %i.aa, align 1
  %i.ac = load i64, ptr %i.g, align 8
  %i.ad = add i64 %i.ac, 4
  store i64 %i.ad, ptr %i.g, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 1032
  %i.af = load ptr, ptr %3, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = invoke noundef i64 %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.ae, i64 noundef 4, i64 noundef 1)
          to label %.noexc12 unwind label %bb.j, !inline_history !29 ; 0 uses

.noexc12:                                         ; preds = %.noexc11
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 1036
  %i.ak = load ptr, ptr %3, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = invoke noundef i64 %i.am(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.aj, i64 noundef 4, i64 noundef 1)
          to label %_ZN6Assimp5WriteI10aiVector3tIfEEEmPNS_8IOStreamERKT_.exit unwind label %bb.j, !inline_history !29 ; 0 uses

_ZN6Assimp5WriteI10aiVector3tIfEEEmPNS_8IOStreamERKT_.exit: ; preds = %.noexc12
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 1052
  %i.ap = load ptr, ptr %3, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = invoke noundef i64 %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.ao, i64 noundef 4, i64 noundef 1)
          to label %.noexc14 unwind label %bb.j, !inline_history !29 ; 0 uses

.noexc14:                                         ; preds = %_ZN6Assimp5WriteI10aiVector3tIfEEEmPNS_8IOStreamERKT_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 1056
  %i.au = load ptr, ptr %3, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = invoke noundef i64 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.at, i64 noundef 4, i64 noundef 1)
          to label %.noexc15 unwind label %bb.j, !inline_history !29 ; 0 uses

.noexc15:                                         ; preds = %.noexc14
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 1060
  %i.az = load ptr, ptr %3, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = invoke noundef i64 %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.ay, i64 noundef 4, i64 noundef 1)
          to label %_ZN6Assimp5WriteI10aiVector3tIfEEEmPNS_8IOStreamERKT_.exit17 unwind label %bb.j, !inline_history !29 ; 0 uses

_ZN6Assimp5WriteI10aiVector3tIfEEEmPNS_8IOStreamERKT_.exit17: ; preds = %.noexc15
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 1040
  %i.be = load ptr, ptr %3, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = invoke noundef i64 %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.bd, i64 noundef 4, i64 noundef 1)
          to label %.noexc18 unwind label %bb.j, !inline_history !29 ; 0 uses

.noexc18:                                         ; preds = %_ZN6Assimp5WriteI10aiVector3tIfEEEmPNS_8IOStreamERKT_.exit17
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 1044
  %i.bj = load ptr, ptr %3, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = invoke noundef i64 %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.bi, i64 noundef 4, i64 noundef 1)
          to label %.noexc19 unwind label %bb.j, !inline_history !29 ; 0 uses

.noexc19:                                         ; preds = %.noexc18
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 1048
  %i.bo = load ptr, ptr %3, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = invoke noundef i64 %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.bn, i64 noundef 4, i64 noundef 1)
          to label %_ZN6Assimp5WriteI10aiVector3tIfEEEmPNS_8IOStreamERKT_.exit21 unwind label %bb.j, !inline_history !29 ; 0 uses

_ZN6Assimp5WriteI10aiVector3tIfEEEmPNS_8IOStreamERKT_.exit21: ; preds = %.noexc19
  %i.bs = getelementptr inbounds nuw i8, ptr %2, i64 1064
  %i.bt = load ptr, ptr %3, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = invoke noundef i64 %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.bs, i64 noundef 4, i64 noundef 1)
          to label %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit unwind label %bb.j, !inline_history !46 ; 0 uses

_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit:     ; preds = %_ZN6Assimp5WriteI10aiVector3tIfEEEmPNS_8IOStreamERKT_.exit21
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 1068
  %i.by = load ptr, ptr %3, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = invoke noundef i64 %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.bx, i64 noundef 4, i64 noundef 1)
          to label %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit24 unwind label %bb.j, !inline_history !46 ; 0 uses

_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit24:   ; preds = %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 1072
  %i.cd = load ptr, ptr %3, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  %i.cg = invoke noundef i64 %i.cf(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.cc, i64 noundef 4, i64 noundef 1)
          to label %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit26 unwind label %bb.j, !inline_history !46 ; 0 uses

_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit26:   ; preds = %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit24
  %i.ch = getelementptr inbounds nuw i8, ptr %2, i64 1076
  %i.ci = load ptr, ptr %3, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = invoke noundef i64 %i.ck(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.ch, i64 noundef 4, i64 noundef 1)
          to label %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit28 unwind label %bb.j, !inline_history !46 ; 0 uses

_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit28:   ; preds = %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit26
  %i.cm = load ptr, ptr %i.c, align 8             ; 3 uses
  %.not.i = icmp eq ptr %i.cm, null
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit28
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = invoke noundef i64 %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull %i.b, i64 noundef 4, i64 noundef 1)
          to label %bb.e unwind label %bb.i       ; 0 uses

bb.e:                                             ; preds = %bb.d
  %i.cr = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = invoke noundef i64 %i.cu(ptr noundef nonnull align 8 dereferenceable(8) %i.cr, ptr noundef nonnull %i.g, i64 noundef 4, i64 noundef 1)
          to label %bb.f unwind label %bb.i       ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.cw = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.cx = load ptr, ptr %i.a, align 8
  %i.cy = load i64, ptr %i.g, align 8
  %i.cz = load ptr, ptr %i.cw, align 8
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = invoke noundef i64 %i.db(ptr noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noundef %i.cx, i64 noundef 1, i64 noundef %i.cy)
          to label %bb.g unwind label %bb.i       ; 0 uses

bb.g:                                             ; preds = %bb.f, %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit28
  %i.dd = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not2.i = icmp eq ptr %i.dd, null
end_hunk_2
begin_hunk_3_@_ZN6Assimp16AssbinFileWriter17WriteBinaryCameraEPNS_8IOStreamEPK8aiCamera:bb.a

bb.i:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.de = landingpad { ptr, i32 }
          catch ptr null
  %i.df = extractvalue { ptr, i32 } %i.de, 0
  call void @__clang_call_terminate(ptr %i.df) #24
  unreachable

_ZN6Assimp17AssbinChunkWriterD2Ev.exit:           ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.j:                                             ; preds = %bb.c, %bb.b, %bb.a, %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit26, %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit24, %_ZN6Assimp5WriteIfEEmPNS_8IOStreamERKT_.exit, %_ZN6Assimp5WriteI10aiVector3tIfEEEmPNS_8IOStreamERKT_.exit21, %.noexc19, %.noexc18, %_ZN6Assimp5WriteI10aiVector3tIfEEEmPNS_8IOStreamERKT_.exit17, %.noexc15, %.noexc14, %_ZN6Assimp5WriteI10aiVector3tIfEEEmPNS_8IOStreamERKT_.exit, %.noexc12, %.noexc11
  %i.dg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp17AssbinChunkWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %i.dg
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN6Assimp11WriteBoundsI10aiVector3tIfEEEmPNS_8IOStreamEPKT_j(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #16 comdat {
bb.a:
  %3 = alloca %class.aiVector3t, align 8          ; 7 uses
  %4 = alloca %class.aiVector3t, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store <2 x float> splat (float -1.000000e+10), ptr %4, align 8
  store float -1.000000e+10, ptr %i.b, align 8
  store <2 x float> splat (float 1.000000e+10), ptr %3, align 8
  store float 1.000000e+10, ptr %i.a, align 8
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %2 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %i.c = phi float [ -1.000000e+10, %.lr.ph.preheader.i ], [ %i.r, %.lr.ph.i ] ; 2 uses
  %i.d = phi float [ 1.000000e+10, %.lr.ph.preheader.i ], [ %i.k, %.lr.ph.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.e = phi <2 x float> [ splat (float -1.000000e+10), %.lr.ph.preheader.i ], [ %i.p, %.lr.ph.i ] ; 2 uses
  %i.f = phi <2 x float> [ splat (float 1.000000e+10), %.lr.ph.preheader.i ], [ %i.n, %.lr.ph.i ] ; 2 uses
  %i.g = getelementptr inbounds nuw [12 x i8], ptr %1, i64 %indvars.iv.i ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load float, ptr %i.h, align 4            ; 4 uses
  %i.j = fcmp olt float %i.d, %i.i
  %i.k = select i1 %i.j, float %i.d, float %i.i   ; 2 uses
  %i.l = load <2 x float>, ptr %i.g, align 4      ; 4 uses
  %i.m = fcmp olt <2 x float> %i.f, %i.l
  %i.n = select <2 x i1> %i.m, <2 x float> %i.f, <2 x float> %i.l ; 2 uses
  %i.o = fcmp olt <2 x float> %i.l, %i.e
  %i.p = select <2 x i1> %i.o, <2 x float> %i.e, <2 x float> %i.l ; 2 uses
  %i.q = fcmp olt float %i.i, %i.c
  %i.r = select i1 %i.q, float %i.c, float %i.i   ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit.loopexit, label %.lr.ph.i, !llvm.loop !48

_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit.loopexit: ; preds = %.lr.ph.i
  store <2 x float> %i.n, ptr %3, align 8
  store <2 x float> %i.p, ptr %4, align 8
  store float %i.k, ptr %i.a, align 8
  store float %i.r, ptr %i.b, align 8
  br label %_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit

_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit: ; preds = %_ZN6Assimp11ArrayBoundsI10aiVector3tIfEEEvPKT_jRS3_S6_.exit.loopexit, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.u = load ptr, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call noundef i64 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(12) %3, i64 noundef 4, i64 noundef 1), !inline_history !49 ; 0 uses
  %i.y = load ptr, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call noundef i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.t, i64 noundef 4, i64 noundef 1), !inline_history !49 ; 0 uses
  %i.ac = load ptr, ptr %0, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i64 noundef 4, i64 noundef 1), !inline_history !49 ; 0 uses
  %i.ag = load ptr, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call noundef i64 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(12) %4, i64 noundef 4, i64 noundef 1), !inline_history !49 ; 0 uses
  %i.ak = load ptr, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call noundef i64 %i.am(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.s, i64 noundef 4, i64 noundef 1), !inline_history !49 ; 0 uses
  %i.ao = load ptr, ptr %0, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef i64 %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i64 noundef 4, i64 noundef 1), !inline_history !49 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i64 24
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN6Assimp11WriteBoundsI9aiColor4tIfEEEmPNS_8IOStreamEPKT_j(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #16 comdat {
bb.a:
  %3 = alloca %class.aiColor4t, align 16          ; 8 uses
  %4 = alloca %class.aiColor4t, align 16          ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %.sroa.54.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store <4 x float> splat (float -1.000000e+10), ptr %4, align 16
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store <4 x float> splat (float 1.000000e+10), ptr %3, align 16
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %_ZN6Assimp11ArrayBoundsI9aiColor4tIfEEEvPKT_jRS3_S6_.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext i32 %2 to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 2 uses
  %i.a = phi <2 x float> [ splat (float -1.000000e+10), %.lr.ph.preheader.i ], [ %i.p, %.lr.ph.i ] ; 2 uses
  %i.b = phi <2 x float> [ splat (float -1.000000e+10), %.lr.ph.preheader.i ], [ %i.k, %.lr.ph.i ] ; 2 uses
  %i.c = phi <2 x float> [ splat (float 1.000000e+10), %.lr.ph.preheader.i ], [ %i.n, %.lr.ph.i ] ; 2 uses
  %i.d = phi <2 x float> [ splat (float 1.000000e+10), %.lr.ph.preheader.i ], [ %i.i, %.lr.ph.i ] ; 2 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv.i ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load <2 x float>, ptr %i.e, align 4      ; 4 uses
  %i.h = fcmp olt <2 x float> %i.d, %i.g
  %i.i = select <2 x i1> %i.h, <2 x float> %i.d, <2 x float> %i.g ; 2 uses
  %i.j = fcmp olt <2 x float> %i.g, %i.b
  %i.k = select <2 x i1> %i.j, <2 x float> %i.b, <2 x float> %i.g ; 2 uses
  %i.l = load <2 x float>, ptr %i.f, align 4      ; 4 uses
  %i.m = fcmp olt <2 x float> %i.c, %i.l
  %i.n = select <2 x i1> %i.m, <2 x float> %i.c, <2 x float> %i.l ; 2 uses
  %i.o = fcmp olt <2 x float> %i.l, %i.a
  %i.p = select <2 x i1> %i.o, <2 x float> %i.a, <2 x float> %i.l ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6Assimp11ArrayBoundsI9aiColor4tIfEEEvPKT_jRS3_S6_.exit.loopexit, label %.lr.ph.i, !llvm.loop !50

_ZN6Assimp11ArrayBoundsI9aiColor4tIfEEEvPKT_jRS3_S6_.exit.loopexit: ; preds = %.lr.ph.i
  store <2 x float> %i.i, ptr %3, align 16
  store <2 x float> %i.n, ptr %.sroa.5.0..sroa_idx.i.i, align 8
  store <2 x float> %i.k, ptr %4, align 16
  store <2 x float> %i.p, ptr %.sroa.54.0..sroa_idx.i.i, align 8
  br label %_ZN6Assimp11ArrayBoundsI9aiColor4tIfEEEvPKT_jRS3_S6_.exit

_ZN6Assimp11ArrayBoundsI9aiColor4tIfEEEvPKT_jRS3_S6_.exit: ; preds = %_ZN6Assimp11ArrayBoundsI9aiColor4tIfEEEvPKT_jRS3_S6_.exit.loopexit, %bb.a
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 12
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.q = load ptr, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = call noundef i64 %i.s(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 noundef 4, i64 noundef 1), !inline_history !51 ; 0 uses
  %i.u = load ptr, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call noundef i64 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.4.0..sroa_idx.i.i, i64 noundef 4, i64 noundef 1), !inline_history !51 ; 0 uses
  %i.y = load ptr, ptr %0, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call noundef i64 %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.5.0..sroa_idx.i.i, i64 noundef 4, i64 noundef 1), !inline_history !51 ; 0 uses
  %i.ac = load ptr, ptr %0, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.6.0..sroa_idx.i.i, i64 noundef 4, i64 noundef 1), !inline_history !51 ; 0 uses
  %i.ag = load ptr, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call noundef i64 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 noundef 4, i64 noundef 1), !inline_history !51 ; 0 uses
  %i.ak = load ptr, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call noundef i64 %i.am(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.43.0..sroa_idx.i.i, i64 noundef 4, i64 noundef 1), !inline_history !51 ; 0 uses
  %i.ao = load ptr, ptr %0, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef i64 %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.54.0..sroa_idx.i.i, i64 noundef 4, i64 noundef 1), !inline_history !51 ; 0 uses
  %i.as = load ptr, ptr %0, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call noundef i64 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.65.0..sroa_idx.i.i, i64 noundef 4, i64 noundef 1), !inline_history !51 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i64 32
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp16AssbinFileWriter15WriteBinaryBoneEPNS_8IOStreamEPK6aiBone(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %3 = alloca %struct.aiVertexWeight, align 8     ; 5 uses
  %4 = alloca %struct.aiVertexWeight, align 8     ; 5 uses
  %5 = alloca %"class.Assimp::AssbinChunkWriter", align 8 ; 38 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6Assimp17AssbinChunkWriterE, i64 16), ptr %5, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 6 uses
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store i32 4666, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store i64 4096, ptr %i.h, align 8
  %i.i = load i32, ptr %2, align 4                ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 6 uses
  %i.k = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #23
          to label %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp ; 5 uses

_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i:      ; preds = %bb.a
  store ptr %i.k, ptr %i.d, align 8
  store i64 4096, ptr %i.g, align 8
  store i32 %i.i, ptr %i.k, align 1
  store i64 4, ptr %i.j, align 8
  %i.l = zext i32 %i.i to i64                     ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = icmp ugt i32 %i.i, 4092
  br i1 %i.n, label %bb.b, label %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit

bb.b:                                             ; preds = %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i
  %i.o = tail call i64 @llvm.umax.i64(i64 %i.l, i64 6140)
  %i.p = add nuw nsw i64 %i.o, 4                  ; 3 uses
  %i.q = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #23
          to label %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i62 unwind label %.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i62:    ; preds = %bb.b
  store ptr %i.q, ptr %i.d, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(4096) %i.q, ptr noundef nonnull align 1 dereferenceable(4096) %i.k, i64 4096, i1 false)
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #22
  store i64 %i.p, ptr %i.g, align 8
  br label %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit

_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit: ; preds = %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i62, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i
  %i.r = phi i64 [ %i.p, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i62 ], [ 4096, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i ] ; 4 uses
  %i.s = phi ptr [ %i.q, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i62 ], [ %i.k, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull align 1 %i.m, i64 %i.l, i1 false)
  %i.u = add nuw nsw i64 %i.l, 4                  ; 2 uses
  store i64 %i.u, ptr %i.j, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 1028 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4
  %i.x = add nuw nsw i64 %i.l, 8                  ; 2 uses
  %i.y = icmp samesign ugt i64 %i.x, %i.r
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit
  %i.z = lshr i64 %i.r, 1
  %i.aa = add nuw nsw i64 %i.z, %i.r
  %i.ab = tail call i64 @llvm.umax.i64(i64 %i.x, i64 %i.aa) ; 2 uses
  %i.ac = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ab) #23
          to label %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i78 unwind label %.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i78:    ; preds = %bb.c
  store ptr %i.ac, ptr %i.d, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ac, ptr noundef nonnull align 1 dereferenceable(1) %i.s, i64 %i.r, i1 false)
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #22
  store i64 %i.ab, ptr %i.g, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i78, %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit
  %i.ad = phi ptr [ %i.ac, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i78 ], [ %i.s, %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.u
  store i32 %i.w, ptr %i.ae, align 1
  %i.af = load i64, ptr %i.j, align 8
  %i.ag = add i64 %i.af, 4
  store i64 %i.ag, ptr %i.j, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 1056
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 1088
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 1072
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 1092
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 1096
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 1100
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 1076
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 1080
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 1084
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 1060
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 1064
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 1068
  br label %.preheader.i

.preheader.i:                                     ; preds = %.noexc19, %bb.d
  %.0721.i = phi i32 [ 0, %bb.d ], [ %i.ca, %.noexc19 ] ; 2 uses
  %i.at = load ptr, ptr %5, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  switch i32 %.0721.i, label %default.unreachable5.i.i [
    i32 0, label %_ZNK12aiMatrix4x4tIfEixEj.exit.us.preheader.i
    i32 1, label %_ZNK12aiMatrix4x4tIfEixEj.exit.us11.preheader.i
    i32 2, label %.split.us.i
    i32 3, label %bb.e
  ]

_ZNK12aiMatrix4x4tIfEixEj.exit.us11.preheader.i:  ; preds = %.preheader.i
  br label %.split.us.i

_ZNK12aiMatrix4x4tIfEixEj.exit.us.preheader.i:    ; preds = %.preheader.i
  br label %.split.us.i

bb.e:                                             ; preds = %.preheader.i
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 1104
  %i.ax = invoke noundef i64 %i.av(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.aw, i64 noundef 4, i64 noundef 1)
          to label %.noexc12 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !25 ; 0 uses

.noexc12:                                         ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 1108
  %i.az = load ptr, ptr %5, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8
  %i.bc = invoke noundef i64 %i.bb(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.ay, i64 noundef 4, i64 noundef 1)
          to label %.noexc13 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !25 ; 0 uses

.noexc13:                                         ; preds = %.noexc12
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 1112
  %i.be = load ptr, ptr %5, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = invoke noundef i64 %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.bd, i64 noundef 4, i64 noundef 1)
          to label %.noexc14 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !25 ; 0 uses

.noexc14:                                         ; preds = %.noexc13
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 1116
  %i.bj = load ptr, ptr %5, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = invoke noundef i64 %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.bi, i64 noundef 4, i64 noundef 1)
          to label %_ZN6Assimp5WriteI12aiMatrix4x4tIfEEEmPNS_8IOStreamERKT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !25 ; 0 uses

.split.us.i:                                      ; preds = %_ZNK12aiMatrix4x4tIfEixEj.exit.us.preheader.i, %_ZNK12aiMatrix4x4tIfEixEj.exit.us11.preheader.i, %.preheader.i
  %.sink41.i = phi ptr [ %i.ah, %_ZNK12aiMatrix4x4tIfEixEj.exit.us.preheader.i ], [ %i.aj, %_ZNK12aiMatrix4x4tIfEixEj.exit.us11.preheader.i ], [ %i.ai, %.preheader.i ]
  %.sink37.i = phi ptr [ %i.aq, %_ZNK12aiMatrix4x4tIfEixEj.exit.us.preheader.i ], [ %i.an, %_ZNK12aiMatrix4x4tIfEixEj.exit.us11.preheader.i ], [ %i.ak, %.preheader.i ]
  %.sink33.i = phi ptr [ %i.ar, %_ZNK12aiMatrix4x4tIfEixEj.exit.us.preheader.i ], [ %i.ao, %_ZNK12aiMatrix4x4tIfEixEj.exit.us11.preheader.i ], [ %i.al, %.preheader.i ]
  %.sink.i = phi ptr [ %i.as, %_ZNK12aiMatrix4x4tIfEixEj.exit.us.preheader.i ], [ %i.ap, %_ZNK12aiMatrix4x4tIfEixEj.exit.us11.preheader.i ], [ %i.am, %.preheader.i ]
  %i.bn = invoke noundef i64 %i.av(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %.sink41.i, i64 noundef 4, i64 noundef 1)
          to label %.noexc16 unwind label %.loopexit.split-lp.loopexit, !inline_history !25 ; 0 uses

.noexc16:                                         ; preds = %.split.us.i
  %i.bo = load ptr, ptr %5, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = invoke noundef i64 %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %.sink37.i, i64 noundef 4, i64 noundef 1)
          to label %.noexc17 unwind label %.loopexit.split-lp.loopexit, !inline_history !25 ; 0 uses

.noexc17:                                         ; preds = %.noexc16
  %i.bs = load ptr, ptr %5, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = invoke noundef i64 %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %.sink33.i, i64 noundef 4, i64 noundef 1)
          to label %.noexc18 unwind label %.loopexit.split-lp.loopexit, !inline_history !25 ; 0 uses

.noexc18:                                         ; preds = %.noexc17
  %i.bw = load ptr, ptr %5, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = invoke noundef i64 %i.by(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %.sink.i, i64 noundef 4, i64 noundef 1)
          to label %.noexc19 unwind label %.loopexit.split-lp.loopexit, !inline_history !25 ; 0 uses

.noexc19:                                         ; preds = %.noexc18
  %i.ca = add nuw nsw i32 %.0721.i, 1
  br label %.preheader.i

default.unreachable5.i.i:                         ; preds = %.preheader.i
  unreachable

_ZN6Assimp5WriteI12aiMatrix4x4tIfEEEmPNS_8IOStreamERKT_.exit: ; preds = %.noexc14
  %i.cb = load i8, ptr %0, align 1, !range !4, !noundef !5
  %i.cc = trunc nuw i8 %i.cb to i1
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 1048
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %i.cf = load i32, ptr %i.v, align 4             ; 4 uses
  br i1 %i.cc, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN6Assimp5WriteI12aiMatrix4x4tIfEEEmPNS_8IOStreamERKT_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.ch = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  store i32 0, ptr %4, align 8
  store i32 -2147483648, ptr %3, align 8
  store float -1.000000e+10, ptr %i.ch, align 4
  store float 1.000000e+10, ptr %i.cg, align 4
  %.not.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not.i.i, label %_ZN6Assimp11ArrayBoundsI14aiVertexWeightEEvPKT_jRS2_S5_.exit.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.f
  %wide.trip.count.i.i = zext i32 %i.cf to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %i.ci = phi float [ -1.000000e+10, %.lr.ph.preheader.i.i ], [ %.v.i13.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.cj = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %i.cs, %.lr.ph.i.i ]
  %i.ck = phi float [ 1.000000e+10, %.lr.ph.preheader.i.i ], [ %.v.i.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.cl = phi i32 [ -2147483648, %.lr.ph.preheader.i.i ], [ %i.co, %.lr.ph.i.i ]
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 2 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.i.i ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4            ; 2 uses
  %i.co = call i32 @llvm.umin.i32(i32 %i.cl, i32 %i.cn) ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.cq = load float, ptr %i.cp, align 4          ; 4 uses
  %i.cr = fcmp olt float %i.ck, %i.cq
  %.v.i.i.i = select i1 %i.cr, float %i.ck, float %i.cq ; 2 uses
  %i.cs = call i32 @llvm.umax.i32(i32 %i.cn, i32 %i.cj) ; 3 uses
  %i.ct = fcmp olt float %i.cq, %i.ci
  %.v.i13.i.i = select i1 %i.ct, float %i.ci, float %i.cq ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN6Assimp11ArrayBoundsI14aiVertexWeightEEvPKT_jRS2_S5_.exit.loopexit.i, label %.lr.ph.i.i, !llvm.loop !52

_ZN6Assimp11ArrayBoundsI14aiVertexWeightEEvPKT_jRS2_S5_.exit.loopexit.i: ; preds = %.lr.ph.i.i
  %i.cu = bitcast float %.v.i.i.i to i32
  %.sroa.2.0.insert.ext.i.i.i = zext i32 %i.cu to i64
  %.sroa.2.0.insert.shift.i.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i.i, 32
  %.sroa.0.0.insert.ext.i.i.i = zext i32 %i.co to i64
  %.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i.i, %.sroa.0.0.insert.ext.i.i.i
  %i.cv = bitcast float %.v.i13.i.i to i32
  %.sroa.2.0.insert.ext.i14.i.i = zext i32 %i.cv to i64
  %.sroa.2.0.insert.shift.i15.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i14.i.i, 32
  %.sroa.0.0.insert.ext.i16.i.i = zext i32 %i.cs to i64
  %.sroa.0.0.insert.insert.i17.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i15.i.i, %.sroa.0.0.insert.ext.i16.i.i
  store i64 %.sroa.0.0.insert.insert.i.i.i, ptr %3, align 8
  store i64 %.sroa.0.0.insert.insert.i17.i.i, ptr %4, align 8
  br label %_ZN6Assimp11ArrayBoundsI14aiVertexWeightEEvPKT_jRS2_S5_.exit.i

_ZN6Assimp11ArrayBoundsI14aiVertexWeightEEvPKT_jRS2_S5_.exit.i: ; preds = %_ZN6Assimp11ArrayBoundsI14aiVertexWeightEEvPKT_jRS2_S5_.exit.loopexit.i, %bb.f
  %i.cw = phi i32 [ 0, %bb.f ], [ %i.cs, %_ZN6Assimp11ArrayBoundsI14aiVertexWeightEEvPKT_jRS2_S5_.exit.loopexit.i ]
  %i.cx = phi i32 [ -2147483648, %bb.f ], [ %i.co, %_ZN6Assimp11ArrayBoundsI14aiVertexWeightEEvPKT_jRS2_S5_.exit.loopexit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store i32 %i.cx, ptr %i.c, align 4
  %i.cy = load ptr, ptr %5, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = invoke noundef i64 %i.da(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.c, i64 noundef 4, i64 noundef 1)
          to label %.noexc20 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !53 ; 0 uses

.noexc20:                                         ; preds = %_ZN6Assimp11ArrayBoundsI14aiVertexWeightEEvPKT_jRS2_S5_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.dc = load ptr, ptr %5, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  %i.de = load ptr, ptr %i.dd, align 8
  %i.df = invoke noundef i64 %i.de(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.cg, i64 noundef 4, i64 noundef 1)
          to label %.noexc21 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !53 ; 0 uses

.noexc21:                                         ; preds = %.noexc20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 %i.cw, ptr %i.b, align 4
  %i.dg = load ptr, ptr %5, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.di = load ptr, ptr %i.dh, align 8
  %i.dj = invoke noundef i64 %i.di(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.b, i64 noundef 4, i64 noundef 1)
          to label %.noexc22 unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !53 ; 0 uses

.noexc22:                                         ; preds = %.noexc21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.dk = load ptr, ptr %5, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = invoke noundef i64 %i.dm(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.ch, i64 noundef 4, i64 noundef 1)
          to label %_ZN6Assimp11WriteBoundsI14aiVertexWeightEEmPNS_8IOStreamEPKT_j.exit unwind label %.loopexit.split-lp.loopexit.split-lp, !inline_history !53 ; 0 uses

_ZN6Assimp11WriteBoundsI14aiVertexWeightEEmPNS_8IOStreamEPKT_j.exit: ; preds = %.noexc22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %_ZN6Assimp10WriteArrayI14aiVertexWeightEEmPNS_8IOStreamEPKT_j.exit

.loopexit:                                        ; preds = %.lr.ph.i, %.noexc24
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.noexc18, %.noexc17, %.noexc16, %.split.us.i
  %lpad.loopexit27 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %bb.c, %bb.b, %bb.a, %.noexc22, %.noexc21, %.noexc20, %_ZN6Assimp11ArrayBoundsI14aiVertexWeightEEvPKT_jRS2_S5_.exit.i, %.noexc14, %.noexc13, %.noexc12, %bb.e
  %lpad.loopexit.split-lp28 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit27, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp28, %.loopexit.split-lp.loopexit.split-lp ]
  call void @_ZN6Assimp17AssbinChunkWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  resume { ptr, i32 } %lpad.phi

bb.g:                                             ; preds = %_ZN6Assimp5WriteI12aiMatrix4x4tIfEEEmPNS_8IOStreamERKT_.exit
  %.not.i = icmp eq i32 %i.cf, 0
  br i1 %.not.i, label %_ZN6Assimp10WriteArrayI14aiVertexWeightEEmPNS_8IOStreamEPKT_j.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.g
  %wide.trip.count.i = zext i32 %i.cf to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc25, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.noexc25 ] ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %indvars.iv.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.dp = load i32, ptr %i.do, align 4
  store i32 %i.dp, ptr %i.a, align 4
  %i.dq = load ptr, ptr %5, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = invoke noundef i64 %i.ds(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1)
          to label %.noexc24 unwind label %.loopexit, !inline_history !54 ; 0 uses

.noexc24:                                         ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 4
  %i.dv = load ptr, ptr %5, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = invoke noundef i64 %i.dx(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(4) %i.du, i64 noundef 4, i64 noundef 1)
          to label %.noexc25 unwind label %.loopexit, !inline_history !54 ; 0 uses

.noexc25:                                         ; preds = %.noexc24
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6Assimp10WriteArrayI14aiVertexWeightEEmPNS_8IOStreamEPKT_j.exit, label %.lr.ph.i, !llvm.loop !55

_ZN6Assimp10WriteArrayI14aiVertexWeightEEmPNS_8IOStreamEPKT_j.exit: ; preds = %.noexc25, %bb.g, %_ZN6Assimp11WriteBoundsI14aiVertexWeightEEmPNS_8IOStreamEPKT_j.exit
  %i.dz = load ptr, ptr %i.f, align 8             ; 3 uses
  %.not.i26 = icmp eq ptr %i.dz, null
  br i1 %.not.i26, label %bb.k, label %bb.h

bb.h:                                             ; preds = %_ZN6Assimp10WriteArrayI14aiVertexWeightEEmPNS_8IOStreamEPKT_j.exit
  %i.ea = load ptr, ptr %i.dz, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = invoke noundef i64 %i.ec(ptr noundef nonnull align 8 dereferenceable(8) %i.dz, ptr noundef nonnull %i.e, i64 noundef 4, i64 noundef 1)
          to label %bb.i unwind label %bb.m       ; 0 uses

bb.i:                                             ; preds = %bb.h
  %i.ee = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8
  %i.ei = invoke noundef i64 %i.eh(ptr noundef nonnull align 8 dereferenceable(8) %i.ee, ptr noundef nonnull %i.j, i64 noundef 4, i64 noundef 1)
          to label %bb.j unwind label %bb.m       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.ej = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ek = load ptr, ptr %i.d, align 8
  %i.el = load i64, ptr %i.j, align 8
  %i.em = load ptr, ptr %i.ej, align 8
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.eo = load ptr, ptr %i.en, align 8
  %i.ep = invoke noundef i64 %i.eo(ptr noundef nonnull align 8 dereferenceable(8) %i.ej, ptr noundef %i.ek, i64 noundef 1, i64 noundef %i.el)
          to label %bb.k unwind label %bb.m       ; 0 uses

bb.k:                                             ; preds = %bb.j, %_ZN6Assimp10WriteArrayI14aiVertexWeightEEmPNS_8IOStreamEPKT_j.exit
  %i.eq = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not2.i = icmp eq ptr %i.eq, null
  br i1 %.not2.i, label %_ZN6Assimp17AssbinChunkWriterD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZdaPv(ptr noundef nonnull %i.eq) #22
  br label %_ZN6Assimp17AssbinChunkWriterD2Ev.exit

bb.m:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.er = landingpad { ptr, i32 }
          catch ptr null
  %i.es = extractvalue { ptr, i32 } %i.er, 0
  call void @__clang_call_terminate(ptr %i.es) #24
  unreachable

_ZN6Assimp17AssbinChunkWriterD2Ev.exit:           ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp16AssbinFileWriter27WriteBinaryMaterialPropertyEPNS_8IOStreamEPK18aiMaterialProperty(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.Assimp::AssbinChunkWriter", align 8 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6Assimp17AssbinChunkWriterE, i64 16), ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i32 4670, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store i64 4096, ptr %i.h, align 8
  %i.i = load i32, ptr %2, align 4                ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 10 uses
  %i.k = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #23
          to label %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i27 unwind label %bb.q ; 5 uses

_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i27:    ; preds = %bb.a
  store ptr %i.k, ptr %i.d, align 8
  store i64 4096, ptr %i.g, align 8
  store i32 %i.i, ptr %i.k, align 1
  store i64 4, ptr %i.j, align 8
  %i.l = zext i32 %i.i to i64                     ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.n = icmp ugt i32 %i.i, 4092
  br i1 %i.n, label %bb.b, label %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit

bb.b:                                             ; preds = %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i27
  %i.o = tail call i64 @llvm.umax.i64(i64 %i.l, i64 6140)
  %i.p = add nuw nsw i64 %i.o, 4                  ; 3 uses
  %i.q = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #23
          to label %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i35 unwind label %bb.q ; 3 uses

_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i35:    ; preds = %bb.b
  store ptr %i.q, ptr %i.d, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(4096) %i.q, ptr noundef nonnull align 1 dereferenceable(4096) %i.k, i64 4096, i1 false)
  tail call void @_ZdaPv(ptr noundef nonnull %i.k) #22
  store i64 %i.p, ptr %i.g, align 8
  br label %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit

_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit: ; preds = %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i35, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i27
  %i.r = phi i64 [ %i.p, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i35 ], [ 4096, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i27 ] ; 4 uses
  %i.s = phi ptr [ %i.q, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i35 ], [ %i.k, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i27 ] ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull align 1 %i.m, i64 %i.l, i1 false)
  %i.u = add nuw nsw i64 %i.l, 4                  ; 2 uses
  store i64 %i.u, ptr %i.j, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 1028
  %i.w = load i32, ptr %i.v, align 4
  %i.x = add nuw nsw i64 %i.l, 8                  ; 2 uses
  %i.y = icmp samesign ugt i64 %i.x, %i.r
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit
  %i.z = lshr i64 %i.r, 1
  %i.aa = add nuw nsw i64 %i.z, %i.r
  %i.ab = tail call i64 @llvm.umax.i64(i64 %i.x, i64 %i.aa) ; 2 uses
  %i.ac = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ab) #23
          to label %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i42 unwind label %bb.q ; 3 uses

_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i42:    ; preds = %bb.c
  store ptr %i.ac, ptr %i.d, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ac, ptr noundef nonnull align 1 dereferenceable(1) %i.s, i64 %i.r, i1 false)
  tail call void @_ZdaPv(ptr noundef nonnull %i.s) #22
  store i64 %i.ab, ptr %i.g, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i42, %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit
  %i.ad = phi ptr [ %i.ac, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i42 ], [ %i.s, %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.u
  store i32 %i.w, ptr %i.ae, align 1
  %i.af = load i64, ptr %i.j, align 8
  %i.ag = add i64 %i.af, 4
  store i64 %i.ag, ptr %i.j, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 1032
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.ai = load i32, ptr %i.ah, align 4
  store i32 %i.ai, ptr %i.c, align 4
  %i.aj = load ptr, ptr %3, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = invoke noundef i64 %i.al(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.c, i64 noundef 4, i64 noundef 1)
          to label %bb.e unwind label %bb.q, !inline_history !3 ; 0 uses

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 1036 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.ao = load i32, ptr %i.an, align 4
  store i32 %i.ao, ptr %i.b, align 4
  %i.ap = load ptr, ptr %3, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8
  %i.as = invoke noundef i64 %i.ar(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.b, i64 noundef 4, i64 noundef 1)
          to label %bb.f unwind label %bb.q, !inline_history !3 ; 0 uses

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 1040
  %i.au = load i32, ptr %i.at, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 %i.au, ptr %i.a, align 4
  %i.av = load ptr, ptr %3, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = invoke noundef i64 %i.ax(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1)
          to label %bb.g unwind label %bb.r, !inline_history !3 ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 1048
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = load i32, ptr %i.an, align 4
  %i.bc = zext i32 %i.bb to i64                   ; 3 uses
  %i.bd = load i64, ptr %i.j, align 8             ; 3 uses
  %i.be = add i64 %i.bd, %i.bc                    ; 2 uses
  %i.bf = load i64, ptr %i.g, align 8             ; 4 uses
  %i.bg = icmp ugt i64 %i.be, %i.bf
  %.pre20 = load ptr, ptr %i.d, align 8           ; 4 uses
  br i1 %i.bg, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bh = lshr i64 %i.bf, 1
  %i.bi = add i64 %i.bh, %i.bf
  %i.bj = load i64, ptr %i.h, align 8
  %i.bk = call i64 @llvm.umax.i64(i64 %i.be, i64 %i.bi)
  %i.bl = call i64 @llvm.umax.i64(i64 %i.bj, i64 %i.bk) ; 2 uses
  %i.bm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bl) #23
          to label %.noexc19 unwind label %bb.q   ; 3 uses

.noexc19:                                         ; preds = %bb.h
  store ptr %i.bm, ptr %i.d, align 8
  %.not.i.i = icmp eq ptr %.pre20, null
  br i1 %.not.i.i, label %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i, label %bb.i

bb.i:                                             ; preds = %.noexc19
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull align 1 %.pre20, i64 %i.bf, i1 false)
  call void @_ZdaPv(ptr noundef nonnull %.pre20) #22
  %.pre.pre.i = load i64, ptr %i.j, align 8
  %.pre.pre = load ptr, ptr %i.d, align 8
  br label %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i

_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i:      ; preds = %bb.i, %.noexc19
  %.pre = phi ptr [ %i.bm, %.noexc19 ], [ %.pre.pre, %bb.i ]
  %.pre.i = phi i64 [ %i.bd, %.noexc19 ], [ %.pre.pre.i, %bb.i ]
  store i64 %i.bl, ptr %i.g, align 8
  br label %bb.j

bb.j:                                             ; preds = %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i, %bb.g
  %i.bn = phi ptr [ %.pre, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i ], [ %.pre20, %bb.g ]
  %i.bo = phi i64 [ %.pre.i, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i ], [ %i.bd, %bb.g ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bo
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bp, ptr align 1 %i.ba, i64 %i.bc, i1 false)
  %i.bq = load i64, ptr %i.j, align 8
  %i.br = add i64 %i.bq, %i.bc
  store i64 %i.br, ptr %i.j, align 8
  %i.bs = load ptr, ptr %i.f, align 8             ; 3 uses
  %.not.i = icmp eq ptr %i.bs, null
  br i1 %.not.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = invoke noundef i64 %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull %i.e, i64 noundef 4, i64 noundef 1)
          to label %bb.l unwind label %bb.p       ; 0 uses

bb.l:                                             ; preds = %bb.k
  %i.bx = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = invoke noundef i64 %i.ca(ptr noundef nonnull align 8 dereferenceable(8) %i.bx, ptr noundef nonnull %i.j, i64 noundef 4, i64 noundef 1)
          to label %bb.m unwind label %bb.p       ; 0 uses

bb.m:                                             ; preds = %bb.l
  %i.cc = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.cd = load ptr, ptr %i.d, align 8
  %i.ce = load i64, ptr %i.j, align 8
  %i.cf = load ptr, ptr %i.cc, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = invoke noundef i64 %i.ch(ptr noundef nonnull align 8 dereferenceable(8) %i.cc, ptr noundef %i.cd, i64 noundef 1, i64 noundef %i.ce)
          to label %bb.n unwind label %bb.p       ; 0 uses

bb.n:                                             ; preds = %bb.m, %bb.j
  %i.cj = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not2.i = icmp eq ptr %i.cj, null
  br i1 %.not2.i, label %_ZN6Assimp17AssbinChunkWriterD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @_ZdaPv(ptr noundef nonnull %i.cj) #22
  br label %_ZN6Assimp17AssbinChunkWriterD2Ev.exit

bb.p:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.ck = landingpad { ptr, i32 }
          catch ptr null
  %i.cl = extractvalue { ptr, i32 } %i.ck, 0
  call void @__clang_call_terminate(ptr %i.cl) #24
  unreachable

_ZN6Assimp17AssbinChunkWriterD2Ev.exit:           ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret void

bb.q:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.h, %bb.e, %bb.d
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.f
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.pn = phi { ptr, i32 } [ %i.cm, %bb.q ], [ %i.cn, %bb.r ]
  call void @_ZN6Assimp17AssbinChunkWriterD2Ev(ptr noundef nonnull align 8 dereferenceable(56) %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp16AssbinFileWriter19WriteBinaryNodeAnimEPNS_8IOStreamEPK10aiNodeAnim(ptr noundef nonnull align 1 dereferenceable(2) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %3 = alloca %"class.Assimp::AssbinChunkWriter", align 8 ; 48 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN6Assimp17AssbinChunkWriterE, i64 16), ptr %3, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  store ptr null, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store i32 4664, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  store ptr %1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store i64 4096, ptr %i.i, align 8
  %i.j = load i32, ptr %2, align 4                ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 6 uses
  %i.l = invoke noalias noundef nonnull dereferenceable(4096) ptr @_Znam(i64 noundef 4096) #23
          to label %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i:      ; preds = %bb.a
  store ptr %i.l, ptr %i.e, align 8
  store i64 4096, ptr %i.h, align 8
  store i32 %i.j, ptr %i.l, align 1
  store i64 4, ptr %i.k, align 8
  %i.m = zext i32 %i.j to i64                     ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.o = icmp ugt i32 %i.j, 4092
  br i1 %i.o, label %bb.b, label %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit

bb.b:                                             ; preds = %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i
  %i.p = tail call i64 @llvm.umax.i64(i64 %i.m, i64 6140)
  %i.q = add nuw nsw i64 %i.p, 4                  ; 3 uses
  %i.r = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.q) #23
          to label %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i95 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i95:    ; preds = %bb.b
  store ptr %i.r, ptr %i.e, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(4096) %i.r, ptr noundef nonnull align 1 dereferenceable(4096) %i.l, i64 4096, i1 false)
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #22
  store i64 %i.q, ptr %i.h, align 8
  br label %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit

_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit: ; preds = %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i95, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i
  %i.s = phi i64 [ %i.q, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i95 ], [ 4096, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i ] ; 4 uses
  %i.t = phi ptr [ %i.r, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i95 ], [ %i.l, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i ] ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.u, ptr nonnull align 1 %i.n, i64 %i.m, i1 false)
  %i.v = add nuw nsw i64 %i.m, 4                  ; 2 uses
  store i64 %i.v, ptr %i.k, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 1028 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = add nuw nsw i64 %i.m, 8                  ; 2 uses
  %i.z = icmp samesign ugt i64 %i.y, %i.s
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit
  %i.aa = lshr i64 %i.s, 1
  %i.ab = add nuw nsw i64 %i.aa, %i.s
  %i.ac = tail call i64 @llvm.umax.i64(i64 %i.y, i64 %i.ab) ; 2 uses
  %i.ad = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ac) #23
          to label %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i103 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i103:   ; preds = %bb.c
  store ptr %i.ad, ptr %i.e, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.ad, ptr noundef nonnull align 1 dereferenceable(1) %i.t, i64 %i.s, i1 false)
  tail call void @_ZdaPv(ptr noundef nonnull %i.t) #22
  store i64 %i.ac, ptr %i.h, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i103, %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit
  %i.ae = phi ptr [ %i.ad, %_ZN6Assimp17AssbinChunkWriter4GrowEm.exit.i103 ], [ %i.t, %_ZN6Assimp5WriteI8aiStringEEmPNS_8IOStreamERKT_.exit ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.v
  store i32 %i.x, ptr %i.af, align 1
  %i.ag = load i64, ptr %i.k, align 8
  %i.ah = add i64 %i.ag, 4
  store i64 %i.ah, ptr %i.k, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 1040 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #20
  %i.aj = load i32, ptr %i.ai, align 4
  store i32 %i.aj, ptr %i.d, align 4
  %i.ak = load ptr, ptr %3, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = invoke noundef i64 %i.am(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.d, i64 noundef 4, i64 noundef 1)
          to label %bb.e unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3 ; 0 uses

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #20
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 1056 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  %i.ap = load i32, ptr %i.ao, align 4
  store i32 %i.ap, ptr %i.c, align 4
  %i.aq = load ptr, ptr %3, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = invoke noundef i64 %i.as(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.c, i64 noundef 4, i64 noundef 1)
          to label %bb.f unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3 ; 0 uses

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 1072
  %i.av = load i32, ptr %i.au, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store i32 %i.av, ptr %i.b, align 4
  %i.aw = load ptr, ptr %3, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = invoke noundef i64 %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.b, i64 noundef 4, i64 noundef 1)
          to label %bb.g unwind label %bb.k, !inline_history !3 ; 0 uses

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 1076
  %i.bb = load i32, ptr %i.ba, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 %i.bb, ptr %i.a, align 4
  %i.bc = load ptr, ptr %3, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = invoke noundef i64 %i.be(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %i.a, i64 noundef 4, i64 noundef 1)
          to label %bb.h unwind label %bb.l, !inline_history !3 ; 0 uses

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.bg = getelementptr inbounds nuw i8, ptr %2, i64 1032
  %i.bh = load ptr, ptr %i.bg, align 8            ; 3 uses
  %.not = icmp eq ptr %i.bh, null
  br i1 %.not, label %_ZN6Assimp10WriteArrayI11aiVectorKeyEEmPNS_8IOStreamEPKT_j.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = load i8, ptr %0, align 1, !range !4, !noundef !5
  %i.bj = trunc nuw i8 %i.bi to i1
  %i.bk = load i32, ptr %i.w, align 4             ; 3 uses
  br i1 %i.bj, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.bl = invoke noundef i64 @_ZN6Assimp11WriteBoundsI11aiVectorKeyEEmPNS_8IOStreamEPKT_j(ptr noundef nonnull %3, ptr noundef nonnull %i.bh, i32 noundef %i.bk)
          to label %_ZN6Assimp10WriteArrayI11aiVectorKeyEEmPNS_8IOStreamEPKT_j.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

.loopexit:                                        ; preds = %.lr.ph.i62, %.noexc68, %.noexc69, %.noexc70
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %.noexc57, %.noexc56, %.noexc55, %.noexc54, %.lr.ph.i48
  %lpad.loopexit75 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %.lr.ph.i, %.noexc41, %.noexc42, %.noexc43
  %lpad.loopexit78 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.c, %bb.b, %bb.a, %bb.j, %bb.o, %bb.r, %bb.d, %bb.e
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.k:                                             ; preds = %bb.f
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.l:                                             ; preds = %bb.g
  %i.bn = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.m:                                             ; preds = %bb.i
  %.not.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i, label %_ZN6Assimp10WriteArrayI11aiVectorKeyEEmPNS_8IOStreamEPKT_j.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.m
  %wide.trip.count.i = zext i32 %i.bk to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.noexc44, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.noexc44 ] ; 2 uses
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bh, i64 %indvars.iv.i ; 4 uses
  %i.bp = load ptr, ptr %3, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = invoke noundef i64 %i.br(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 noundef 8, i64 noundef 1)
          to label %.noexc41 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !56 ; 0 uses

.noexc41:                                         ; preds = %.lr.ph.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bu = load ptr, ptr %3, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = invoke noundef i64 %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(12) %i.bt, i64 noundef 4, i64 noundef 1)
          to label %.noexc42 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !56 ; 0 uses

.noexc42:                                         ; preds = %.noexc41
  %i.by = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %i.bz = load ptr, ptr %3, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = invoke noundef i64 %i.cb(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %i.by, i64 noundef 4, i64 noundef 1)
          to label %.noexc43 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit, !inline_history !56 ; 0 uses

.noexc43:                                         ; preds = %.noexc42
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
end_hunk_3
begin_hunk_4_@_ZN6Assimp11WriteBoundsI11aiVectorKeyEEmPNS_8IOStreamEPKT_j:bb.a
  %i.q = load float, ptr %i.p, align 8, !noalias !60 ; 4 uses
  %i.r = fcmp olt float %i.g, %i.q
  %i.s = select i1 %i.r, float %i.g, float %i.q   ; 2 uses
  %i.t = fcmp olt double %i.l, %i.f
  %i.u = select i1 %i.t, double %i.f, double %i.l ; 2 uses
  %i.v = load <2 x float>, ptr %i.o, align 8, !noalias !60 ; 4 uses
  %i.w = fcmp olt <2 x float> %i.j, %i.v
  %i.x = select <2 x i1> %i.w, <2 x float> %i.j, <2 x float> %i.v ; 2 uses
  %i.y = fcmp olt <2 x float> %i.v, %i.i
  %i.z = select <2 x i1> %i.y, <2 x float> %i.i, <2 x float> %i.v ; 2 uses
  %i.aa = fcmp olt float %i.q, %i.e
  %i.ab = select i1 %i.aa, float %i.e, float %i.q ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6Assimp11ArrayBoundsI11aiVectorKeyEEvPKT_jRS2_S5_.exit.loopexit, label %bb.b, !llvm.loop !63

_ZN6Assimp11ArrayBoundsI11aiVectorKeyEEvPKT_jRS2_S5_.exit.loopexit: ; preds = %bb.b
  store <2 x float> %i.x, ptr %i.c, align 8
  store <2 x float> %i.z, ptr %i.d, align 8
  store double %i.n, ptr %3, align 8
  store float %i.s, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8
  store double %i.u, ptr %4, align 8
  store float %i.ab, ptr %.sroa.54.0..sroa_idx.i.i.i, align 8
  br label %_ZN6Assimp11ArrayBoundsI11aiVectorKeyEEvPKT_jRS2_S5_.exit

_ZN6Assimp11ArrayBoundsI11aiVectorKeyEEvPKT_jRS2_S5_.exit: ; preds = %_ZN6Assimp11ArrayBoundsI11aiVectorKeyEEvPKT_jRS2_S5_.exit.loopexit, %bb.a
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.43.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ac = load ptr, ptr %0, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = call noundef i64 %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 8, i64 noundef 1), !inline_history !64 ; 0 uses
  %i.ag = load ptr, ptr %0, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call noundef i64 %i.ai(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.c, i64 noundef 4, i64 noundef 1), !inline_history !65 ; 0 uses
  %i.ak = load ptr, ptr %0, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = call noundef i64 %i.am(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.4.0..sroa_idx.i.i.i, i64 noundef 4, i64 noundef 1), !inline_history !65 ; 0 uses
  %i.ao = load ptr, ptr %0, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef i64 %i.aq(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.5.0..sroa_idx.i.i.i, i64 noundef 4, i64 noundef 1), !inline_history !65 ; 0 uses
  %i.as = load ptr, ptr %0, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = call noundef i64 %i.au(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef 8, i64 noundef 1), !inline_history !64 ; 0 uses
  %i.aw = load ptr, ptr %0, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = call noundef i64 %i.ay(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(12) %i.d, i64 noundef 4, i64 noundef 1), !inline_history !65 ; 0 uses
  %i.ba = load ptr, ptr %0, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8
  %i.bd = call noundef i64 %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.43.0..sroa_idx.i.i.i, i64 noundef 4, i64 noundef 1), !inline_history !65 ; 0 uses
  %i.be = load ptr, ptr %0, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = call noundef i64 %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %.sroa.54.0..sroa_idx.i.i.i, i64 noundef 4, i64 noundef 1), !inline_history !65 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i64 40
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i64 @_ZN6Assimp11WriteBoundsI9aiQuatKeyEEmPNS_8IOStreamEPKT_j(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #16 comdat {
bb.a:
  %3 = alloca %struct.aiQuatKey, align 8          ; 10 uses
  %4 = alloca %struct.aiQuatKey, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  store i32 1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i32 1, ptr %i.f, align 8
  store double -1.000000e+10, ptr %4, align 8
  store double 1.000000e+10, ptr %3, align 8
  store <4 x float> splat (float -1.000000e+10), ptr %i.d, align 8
  store <4 x float> splat (float 1.000000e+10), ptr %i.a, align 8
  %.not.i = icmp eq i32 %2, 0
  br i1 %.not.i, label %_ZN6Assimp11ArrayBoundsI9aiQuatKeyEEvPKT_jRS2_S5_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %wide.trip.count.i = zext i32 %2 to i64
  store i32 1, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %i.g = phi double [ -1.000000e+10, %.lr.ph.i ], [ %i.t, %bb.b ] ; 2 uses
  %i.h = phi double [ 1.000000e+10, %.lr.ph.i ], [ %i.p, %bb.b ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.i = phi <2 x float> [ splat (float -1.000000e+10), %.lr.ph.i ], [ %i.ad, %bb.b ] ; 2 uses
  %i.j = phi <2 x float> [ splat (float -1.000000e+10), %.lr.ph.i ], [ %i.y, %bb.b ] ; 2 uses
  %i.k = phi <2 x float> [ splat (float 1.000000e+10), %.lr.ph.i ], [ %i.ab, %bb.b ] ; 2 uses
  %i.l = phi <2 x float> [ splat (float 1.000000e+10), %.lr.ph.i ], [ %i.w, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %indvars.iv.i ; 3 uses
  %i.n = load double, ptr %i.m, align 8, !noalias !66 ; 4 uses
  %i.o = fcmp olt double %i.h, %i.n
  %i.p = select i1 %i.o, double %i.h, double %i.n ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.s = fcmp olt double %i.n, %i.g
  %i.t = select i1 %i.s, double %i.g, double %i.n ; 2 uses
  %i.u = load <2 x float>, ptr %i.q, align 8, !noalias !66 ; 4 uses
  %i.v = fcmp olt <2 x float> %i.l, %i.u
  %i.w = select <2 x i1> %i.v, <2 x float> %i.l, <2 x float> %i.u ; 2 uses
  %i.x = fcmp olt <2 x float> %i.u, %i.j
  %i.y = select <2 x i1> %i.x, <2 x float> %i.j, <2 x float> %i.u ; 2 uses
  %i.z = load <2 x float>, ptr %i.r, align 8, !noalias !66 ; 4 uses
  %i.aa = fcmp olt <2 x float> %i.k, %i.z
  %i.ab = select <2 x i1> %i.aa, <2 x float> %i.k, <2 x float> %i.z ; 2 uses
  %i.ac = fcmp olt <2 x float> %i.z, %i.i
  %i.ad = select <2 x i1> %i.ac, <2 x float> %i.i, <2 x float> %i.z ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN6Assimp11ArrayBoundsI9aiQuatKeyEEvPKT_jRS2_S5_.exit.loopexit, label %bb.b, !llvm.loop !69

_ZN6Assimp11ArrayBoundsI9aiQuatKeyEEvPKT_jRS2_S5_.exit.loopexit: ; preds = %bb.b
  store <2 x float> %i.w, ptr %i.a, align 8
  store <2 x float> %i.ab, ptr %i.b, align 8
  store <2 x float> %i.y, ptr %i.d, align 8
  store <2 x float> %i.ad, ptr %i.e, align 8
  store double %i.p, ptr %3, align 8
  store double %i.t, ptr %4, align 8
  br label %_ZN6Assimp11ArrayBoundsI9aiQuatKeyEEvPKT_jRS2_S5_.exit

_ZN6Assimp11ArrayBoundsI9aiQuatKeyEEvPKT_jRS2_S5_.exit: ; preds = %_ZN6Assimp11ArrayBoundsI9aiQuatKeyEEvPKT_jRS2_S5_.exit.loopexit, %bb.a
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.ai = load ptr, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = call noundef i64 %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %3, i64 noundef 8, i64 noundef 1), !inline_history !70 ; 0 uses
  %i.am = load ptr, ptr %0, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call noundef i64 %i.ao(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 noundef 4, i64 noundef 1), !inline_history !71 ; 0 uses
  %i.aq = load ptr, ptr %0, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = call noundef i64 %i.as(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.ah, i64 noundef 4, i64 noundef 1), !inline_history !71 ; 0 uses
  %i.au = load ptr, ptr %0, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call noundef i64 %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i64 noundef 4, i64 noundef 1), !inline_history !71 ; 0 uses
  %i.ay = load ptr, ptr %0, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = call noundef i64 %i.ba(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.ag, i64 noundef 4, i64 noundef 1), !inline_history !71 ; 0 uses
  %i.bc = load ptr, ptr %0, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = call noundef i64 %i.be(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(28) %4, i64 noundef 8, i64 noundef 1), !inline_history !70 ; 0 uses
  %i.bg = load ptr, ptr %0, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8
  %i.bj = call noundef i64 %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 noundef 4, i64 noundef 1), !inline_history !71 ; 0 uses
  %i.bk = load ptr, ptr %0, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = call noundef i64 %i.bm(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.af, i64 noundef 4, i64 noundef 1), !inline_history !71 ; 0 uses
  %i.bo = load ptr, ptr %0, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call noundef i64 %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.e, i64 noundef 4, i64 noundef 1), !inline_history !71 ; 0 uses
  %i.bs = load ptr, ptr %0, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call noundef i64 %i.bu(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.ae, i64 noundef 4, i64 noundef 1), !inline_history !71 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  ret i64 48
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJERA20_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(20) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(20) %2) #20
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(20) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %3, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #22
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #20
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #20
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #20
  resume { ptr, i32 } %i.q
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #18

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noreturn }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #20 = { nounwind }
attributes #21 = { noreturn }
attributes #22 = { builtin nounwind }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{null}
!4 = !{i8 0, i8 2}
!5 = !{}
!6 = distinct !{null}
!7 = distinct !{null}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!17 = distinct !{!17, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!18 = !{!19}
!19 = distinct !{!19, !20, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!20 = distinct !{!20, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!21 = !{!22}
!22 = distinct !{!22, !23, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!23 = distinct !{!23, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!24 = !{!22, !19, !16}
!25 = distinct !{null}
!26 = distinct !{!26, !9}
!27 = distinct !{!27, !9}
!28 = distinct !{null}
!29 = distinct !{null}
!30 = distinct !{!30, !9}
!31 = distinct !{null}
!32 = distinct !{!32, !9}
!33 = distinct !{null}
!34 = distinct !{!34, !9}
!35 = distinct !{!35, !9}
!36 = distinct !{!36, !9}
!37 = distinct !{!37, !9}
!38 = distinct !{!38, !9}
!39 = distinct !{!39, !9}
!40 = distinct !{!40, !9}
!41 = distinct !{!41, !9}
!42 = distinct !{!42, !9}
!43 = distinct !{!43, !9}
!44 = distinct !{null}
!45 = distinct !{!45, !9}
!46 = distinct !{null}
!47 = distinct !{null}
!48 = distinct !{!48, !9}
!49 = distinct !{null, null}
!50 = distinct !{!50, !9}
!51 = distinct !{null, null}
!52 = distinct !{!52, !9}
!53 = distinct !{null}
!54 = distinct !{null}
!55 = distinct !{!55, !9}
!56 = distinct !{null}
!57 = distinct !{!57, !9}
!58 = distinct !{null}
!59 = distinct !{!59, !9}
!60 = !{!61}
!61 = distinct !{!61, !62, !"_ZSt3minRK11aiVectorKeyS1_: argument 0"}
!62 = distinct !{!62, !"_ZSt3minRK11aiVectorKeyS1_"}
!63 = distinct !{!63, !9}
!64 = distinct !{null, null}
!65 = distinct !{null, null, null}
!66 = !{!67}
!67 = distinct !{!67, !68, !"_ZSt3minRK9aiQuatKeyS1_: argument 0"}
!68 = distinct !{!68, !"_ZSt3minRK9aiQuatKeyS1_"}
!69 = distinct !{!69, !9}
!70 = distinct !{null, null}
!71 = distinct !{null, null, null}
end_hunk_4
