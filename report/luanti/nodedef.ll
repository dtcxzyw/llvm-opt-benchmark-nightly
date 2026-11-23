Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/nodedef?download=true
inline.NumInlined: 3188
inline.NumDeleted: 1144
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN7TileDef11deSerializeERSi12NodeDrawTypet:bb.a
  %i.h = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.g, i64 noundef 1) ; 0 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !55
  %i.j = getelementptr i8, ptr %i.i, i64 -24
  %i.k = load i64, ptr %i.j, align 8
  %i.l = getelementptr inbounds i8, ptr %1, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !70
  %i.o = and i32 %i.n, 2
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %_Z6readU8RSi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call fastcc void @_ZL19serialize_throw_eofv()
  unreachable

_Z6readU8RSi.exit:                                ; preds = %bb.a
  %i.p = load i8, ptr %i.g, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #32
  %i.q = icmp ult i8 %i.p, 6
  br i1 %i.q, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_Z6readU8RSi.exit
  %i.r = call ptr @__cxa_allocate_exception(i64 40) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @_ZN18SerializationErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %4)
  invoke void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTI18SerializationError, ptr nonnull @_ZN13BaseExceptionD2Ev) #33
          to label %bb.aa unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %4, align 8, !tbaa !74     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.w = load i64, ptr %i.u, align 8, !tbaa !56
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.z

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  call void @__cxa_free_exception(ptr %i.r) #32
  br label %bb.z

bb.g:                                             ; preds = %_Z6readU8RSi.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #32
  call void @_Z19deSerializeString16B5cxx11RSi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.z = load ptr, ptr %0, align 8, !tbaa !74     ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  %i.ac = load ptr, ptr %6, align 8, !tbaa !74    ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad                ; 2 uses
  br i1 %i.ab, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.g
  br i1 %i.ae, label %bb.h, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.g
  br i1 %i.ae, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !80 ; 3 uses
  %i.ah = icmp ult i64 %i.ag, 16
  call void @llvm.assume(i1 %i.ah)
  switch i64 %i.ag, label %bb.j [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h
  %i.ai = load i8, ptr %i.ac, align 1, !tbaa !56
  store i8 %i.ai, ptr %i.z, align 1, !tbaa !56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr align 1 %i.ac, i64 %i.ag, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.aj = load i64, ptr %i.af, align 8, !tbaa !80 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !80
  %i.al = load ptr, ptr %0, align 8, !tbaa !74
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.aj
  store i8 0, ptr %i.am, align 1, !tbaa !56
  %.pre.i = load ptr, ptr %6, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %0, align 8, !tbaa !74
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ap = load <2 x i64>, ptr %i.ao, align 8, !tbaa !56
  store <2 x i64> %i.ap, ptr %i.an, align 8, !tbaa !56
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.aq = load i64, ptr %i.aa, align 8, !tbaa !56
  store ptr %i.ac, ptr %0, align 8, !tbaa !74
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.at = load <2 x i64>, ptr %i.ar, align 8, !tbaa !56
  store <2 x i64> %i.at, ptr %i.as, align 8, !tbaa !56
  %.not.i26 = icmp eq ptr %i.z, null
  br i1 %.not.i26, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.z, ptr %6, align 8, !tbaa !74
  store i64 %i.aq, ptr %i.ad, align 8, !tbaa !56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.ad, ptr %6, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.k, %bb.l
  %i.au = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.z, %bb.k ], [ %i.ad, %bb.l ]
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 0, ptr %i.av, align 8, !tbaa !80
  store i8 0, ptr %i.au, align 1, !tbaa !56
  %i.aw = load ptr, ptr %6, align 8, !tbaa !74    ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ay = icmp eq ptr %i.aw, %i.ax
  br i1 %i.ay, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.az = load i64, ptr %i.ax, align 8, !tbaa !56
  %i.ba = add i64 %i.az, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.ba) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44
  call void @_ZN19TileAnimationParams11deSerializeERSit(ptr noundef nonnull align 4 dereferenceable(16) %i.bb, ptr noundef nonnull align 8 dereferenceable(16) %1, i16 noundef zeroext %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #32
  store i16 0, ptr %i.f, align 2
  %i.bc = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.f, i64 noundef 2) ; 0 uses
  %i.bd = load ptr, ptr %1, align 8, !tbaa !55
  %i.be = getelementptr i8, ptr %i.bd, i64 -24
  %i.bf = load i64, ptr %i.be, align 8
  %i.bg = getelementptr inbounds i8, ptr %1, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !70
  %i.bj = and i32 %i.bi, 2
  %.not.i30 = icmp eq i32 %i.bj, 0
  br i1 %.not.i30, label %_Z7readU16RSi.exit, label %bb.m

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  call fastcc void @_ZL19serialize_throw_eofv()
  unreachable

_Z7readU16RSi.exit:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  %.0.copyload.i.i = load i16, ptr %i.f, align 2
  %rev.i.i.i = call noundef i16 @llvm.bswap.i16(i16 %.0.copyload.i.i) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #32
  %i.bk = zext i16 %rev.i.i.i to i32              ; 3 uses
  %i.bl = trunc i16 %rev.i.i.i to i8              ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bn = and i8 %i.bl, 1
  store i8 %i.bn, ptr %i.bm, align 8, !tbaa !88
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.bp = lshr i8 %i.bl, 1
  %i.bq = and i8 %i.bp, 1
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !91
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.bs = lshr i8 %i.bl, 2
  %i.bt = and i8 %i.bs, 1
  store i8 %i.bt, ptr %i.br, align 2, !tbaa !92
  %i.bu = and i32 %i.bk, 8                        ; 2 uses
  %.not = icmp eq i32 %i.bu, 0
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 35
  %.lobit = lshr exact i32 %i.bu, 3
  %i.bw = trunc nuw nsw i32 %.lobit to i8
  store i8 %i.bw, ptr %i.bv, align 1, !tbaa !93
  %i.bx = and i32 %i.bk, 16
  %.not23 = icmp eq i32 %i.bx, 0
  %i.by = and i32 %i.bk, 32
  %.not24 = icmp eq i32 %i.by, 0
  br i1 %.not, label %bb.r, label %bb.n

bb.n:                                             ; preds = %_Z7readU16RSi.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  store i8 0, ptr %i.e, align 1
  %i.ca = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.e, i64 noundef 1) ; 0 uses
  %i.cb = load ptr, ptr %1, align 8, !tbaa !55
  %i.cc = getelementptr i8, ptr %i.cb, i64 -24
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds i8, ptr %1, i64 %i.cd
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !70
  %i.ch = and i32 %i.cg, 2
  %.not.i31 = icmp eq i32 %i.ch, 0
  br i1 %.not.i31, label %_Z6readU8RSi.exit32, label %bb.o

bb.o:                                             ; preds = %bb.n
  call fastcc void @_ZL19serialize_throw_eofv()
  unreachable

_Z6readU8RSi.exit32:                              ; preds = %bb.n
  %i.ci = load i8, ptr %i.e, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  %7 = zext i8 %i.ci to i32
  %8 = shl nuw nsw i32 %7, 16
  %9 = load i32, ptr %i.bz, align 4, !tbaa !95
  %10 = and i32 %9, -16711681
  %11 = or disjoint i32 %10, %8
  store i32 %11, ptr %i.bz, align 4, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  store i8 0, ptr %i.d, align 1
  %i.cj = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.d, i64 noundef 1) ; 0 uses
  %i.ck = load ptr, ptr %1, align 8, !tbaa !55
  %i.cl = getelementptr i8, ptr %i.ck, i64 -24
  %i.cm = load i64, ptr %i.cl, align 8
  %i.cn = getelementptr inbounds i8, ptr %1, i64 %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 32
  %i.cp = load i32, ptr %i.co, align 8, !tbaa !70
  %i.cq = and i32 %i.cp, 2
  %.not.i33 = icmp eq i32 %i.cq, 0
  br i1 %.not.i33, label %_Z6readU8RSi.exit34, label %bb.p

bb.p:                                             ; preds = %_Z6readU8RSi.exit32
  call fastcc void @_ZL19serialize_throw_eofv()
  unreachable

_Z6readU8RSi.exit34:                              ; preds = %_Z6readU8RSi.exit32
  %i.cr = load i8, ptr %i.d, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  %12 = zext i8 %i.cr to i32
  %13 = shl nuw nsw i32 %12, 8
  %14 = load i32, ptr %i.bz, align 4, !tbaa !95
  %15 = and i32 %14, -65281
  %16 = or disjoint i32 %15, %13
  store i32 %16, ptr %i.bz, align 4, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store i8 0, ptr %i.c, align 1
  %i.cs = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  %i.ct = load ptr, ptr %1, align 8, !tbaa !55
  %i.cu = getelementptr i8, ptr %i.ct, i64 -24
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds i8, ptr %1, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 32
  %i.cy = load i32, ptr %i.cx, align 8, !tbaa !70
  %i.cz = and i32 %i.cy, 2
  %.not.i35 = icmp eq i32 %i.cz, 0
  br i1 %.not.i35, label %_Z6readU8RSi.exit36, label %bb.q

bb.q:                                             ; preds = %_Z6readU8RSi.exit34
  call fastcc void @_ZL19serialize_throw_eofv()
  unreachable

_Z6readU8RSi.exit36:                              ; preds = %_Z6readU8RSi.exit34
  %i.da = load i8, ptr %i.c, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  %17 = zext i8 %i.da to i32
  %18 = load i32, ptr %i.bz, align 4, !tbaa !95
  %19 = and i32 %18, -256
  %20 = or disjoint i32 %19, %17
  store i32 %20, ptr %i.bz, align 4, !tbaa !95
  br label %bb.r

bb.r:                                             ; preds = %_Z6readU8RSi.exit36, %_Z7readU16RSi.exit
  br i1 %.not23, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i8 0, ptr %i.b, align 1
  %i.db = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  %i.dc = load ptr, ptr %1, align 8, !tbaa !55
  %i.dd = getelementptr i8, ptr %i.dc, i64 -24
  %i.de = load i64, ptr %i.dd, align 8
  %i.df = getelementptr inbounds i8, ptr %1, i64 %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !70
  %i.di = and i32 %i.dh, 2
  %.not.i37 = icmp eq i32 %i.di, 0
  br i1 %.not.i37, label %_Z6readU8RSi.exit38, label %bb.t

bb.t:                                             ; preds = %bb.s
  call fastcc void @_ZL19serialize_throw_eofv()
  unreachable

_Z6readU8RSi.exit38:                              ; preds = %bb.s
  %i.dj = load i8, ptr %i.b, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %_Z6readU8RSi.exit38
  %i.dk = phi i8 [ %i.dj, %_Z6readU8RSi.exit38 ], [ 0, %bb.r ]
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 %i.dk, ptr %i.dl, align 1, !tbaa !87
  br i1 %.not24, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i8 0, ptr %i.a, align 1
  %i.dm = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  %i.dn = load ptr, ptr %1, align 8, !tbaa !55
  %i.do = getelementptr i8, ptr %i.dn, i64 -24
  %i.dp = load i64, ptr %i.do, align 8
  %i.dq = getelementptr inbounds i8, ptr %1, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !70
  %i.dt = and i32 %i.ds, 2
  %.not.i39 = icmp eq i32 %i.dt, 0
  br i1 %.not.i39, label %_Z6readU8RSi.exit40, label %bb.w

bb.w:                                             ; preds = %bb.v
  call fastcc void @_ZL19serialize_throw_eofv()
  unreachable

_Z6readU8RSi.exit40:                              ; preds = %bb.v
  %i.du = load i8, ptr %i.a, align 1, !tbaa !56   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.dw = icmp ugt i8 %i.du, 2
  %spec.store.select = select i1 %i.dw, i8 0, i8 %i.du
  store i8 %spec.store.select, ptr %i.dv, align 8, !tbaa !94
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.dx, align 8, !tbaa !94
  br label %bb.y

bb.y:                                             ; preds = %_Z6readU8RSi.exit40, %bb.x
  ret void

bb.z:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.f
  %.pn43 = phi { ptr, i32 } [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.y, %bb.f ]
  resume { ptr, i32 } %.pn43

bb.aa:                                            ; preds = %bb.d
  unreachable
}

declare void @_Z19deSerializeString16B5cxx11RSi(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

declare void @_ZN19TileAnimationParams11deSerializeERSit(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16), i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15TextureSettings12readSettingsEv(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %i.e = alloca i64, align 8                      ; 5 uses
  %i.f = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.g = load ptr, ptr @g_settings, align 8, !tbaa !449
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #32
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.h, ptr %1, align 8, !tbaa !78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.h, ptr noundef nonnull align 1 dereferenceable(15) @.str.6, i64 15, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 15, ptr %i.i, align 8, !tbaa !80
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 31
  store i8 0, ptr %i.j, align 1, !tbaa !56
  %i.k = invoke noundef zeroext i1 @_ZNK8Settings7getBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.a unwind label %bb.q

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.m = zext i1 %i.k to i8
  store i8 %i.m, ptr %i.l, align 1, !tbaa !454
  %i.n = load ptr, ptr %1, align 8, !tbaa !74     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.h
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.p = load i64, ptr %i.h, align 8, !tbaa !56
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.q) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #32
  %i.r = load ptr, ptr @g_settings, align 8, !tbaa !449
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #32
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 6 uses
  store ptr %i.s, ptr %2, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #32
  store i64 19, ptr %i.f, align 8, !tbaa !79
  %i.t = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc30 unwind label %bb.r   ; 2 uses

.noexc30:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.t, ptr %2, align 8, !tbaa !74
  %i.u = load i64, ptr %i.f, align 8, !tbaa !79   ; 3 uses
  store i64 %i.u, ptr %i.s, align 8, !tbaa !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.t, ptr noundef nonnull align 1 dereferenceable(19) @.str.7, i64 19, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.u, ptr %i.v, align 8, !tbaa !80
  %i.w = load ptr, ptr %2, align 8, !tbaa !74
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.u
  store i8 0, ptr %i.x, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #32
  %i.y = invoke noundef zeroext i1 @_ZNK8Settings7getBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.r, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.s

bb.b:                                             ; preds = %.noexc30
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aa = zext i1 %i.y to i8
  store i8 %i.aa, ptr %i.z, align 4, !tbaa !455
  %i.ab = load ptr, ptr %2, align 8, !tbaa !74    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.s
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.b
  %i.ad = load i64, ptr %i.s, align 8, !tbaa !56
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  %i.af = load ptr, ptr @g_settings, align 8, !tbaa !449
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.ag, ptr %3, align 8, !tbaa !78
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(14) %i.ag, ptr noundef nonnull align 1 dereferenceable(14) @.str.8, i64 14, i1 false)
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 14, ptr %i.ah, align 8, !tbaa !80
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 30
  store i8 0, ptr %i.ai, align 2, !tbaa !56
  %i.aj = invoke noundef zeroext i1 @_ZNK8Settings7getBoolERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(236) %i.af, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.c unwind label %bb.t

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.al = zext i1 %i.aj to i8
  store i8 %i.al, ptr %i.ak, align 2, !tbaa !456
  %i.am = load ptr, ptr %3, align 8, !tbaa !74    ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.ag
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.c
  %i.ao = load i64, ptr %i.ag, align 8, !tbaa !56
  %i.ap = add i64 %i.ao, 1
  call void @_ZdlPvm(ptr noundef %i.am, i64 noundef %i.ap) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  %i.aq = load ptr, ptr @g_settings, align 8, !tbaa !449
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.ar, ptr %4, align 8, !tbaa !78
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
end_hunk_0
begin_hunk_1_@_ZN15ContentFeatures11deSerializeERSit:bb.a
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !70
  %i.hb = and i32 %i.ha, 2
  %.not.i161 = icmp eq i32 %i.hb, 0
  br i1 %.not.i161, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.noexc
  invoke fastcc void @_ZL19serialize_throw_eofv()
          to label %.noexc162 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc162:                                        ; preds = %bb.y
  unreachable

bb.z:                                             ; preds = %.noexc
  %.0.copyload.i.i.i = load i16, ptr %i.ai, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai) #32
  %i.hc = invoke noundef nonnull align 4 dereferenceable(4) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_iESaIS9_ENS_10_Select1stESt8equal_toIS6_ESt4hashIS6_ENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.cl, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEEixERSB_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEEixERSB_.exit: ; preds = %bb.z
  %rev.i.i.i.i = call noundef i16 @llvm.bswap.i16(i16 %.0.copyload.i.i.i)
  %i.hd = sext i16 %rev.i.i.i.i to i32
  store i32 %i.hd, ptr %i.hc, align 4, !tbaa !57
  %i.he = load ptr, ptr %6, align 8, !tbaa !74    ; 2 uses
  %i.hf = icmp eq ptr %i.he, %i.di
  br i1 %i.hf, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEEixERSB_.exit
  %i.hg = load i64, ptr %i.di, align 8, !tbaa !56
  %i.hh = add i64 %i.hg, 1
  call void @_ZdlPvm(ptr noundef %i.he, i64 noundef %i.hh) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiSt4hashIS5_ESt8equal_toIS5_ESaISt4pairIKS5_iEEEixERSB_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  %i.hi = add nuw nsw i32 %.0114306, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.hi, %i.dh
  br i1 %exitcond.not, label %._crit_edge, label %bb.x, !llvm.loop !463

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.z, %bb.x, %bb.y
  %lpad.loopexit.split-lp403 = landingpad { ptr, i32 }
          cleanup
  %i.hj = load ptr, ptr %6, align 8, !tbaa !74    ; 2 uses
  %i.hk = icmp eq ptr %i.hj, %i.di
  br i1 %i.hk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.hl = load i64, ptr %i.di, align 8, !tbaa !56
  %i.hm = add i64 %i.hl, 1
  call void @_ZdlPvm(ptr noundef %i.hj, i64 noundef %i.hm) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #32
  br label %bb.cy

bb.aa:                                            ; preds = %_Z6readU8RSi.exit160
  %i.hn = call ptr @__cxa_allocate_exception(i64 40) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.25, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  call void @_ZN18SerializationErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.hn, ptr noundef nonnull align 8 dereferenceable(32) %8)
  invoke void @__cxa_throw(ptr nonnull %i.hn, ptr nonnull @_ZTI18SerializationError, ptr nonnull @_ZN13BaseExceptionD2Ev) #33
          to label %bb.cz unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ho = landingpad { ptr, i32 }
          cleanup
  %i.hp = load ptr, ptr %8, align 8, !tbaa !74    ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.hr = icmp eq ptr %i.hp, %i.hq
  br i1 %i.hr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170: ; preds = %bb.ac
  %i.hs = load i64, ptr %i.hq, align 8, !tbaa !56
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %i.hp, i64 noundef %i.ht) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit172.thread: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i170
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  br label %bb.cy

bb.ad:                                            ; preds = %bb.aa
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #32
  call void @__cxa_free_exception(ptr %i.hn) #32
  br label %bb.cy

bb.ae:                                            ; preds = %.preheader305.preheader
  call fastcc void @_ZL19serialize_throw_eofv()
  unreachable

_Z6readU8RSi.exit174:                             ; preds = %.preheader305.preheader
  %i.hv = load i8, ptr %i.ah, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah) #32
  %.not123 = icmp eq i8 %i.hv, 6
  br i1 %.not123, label %.preheader.preheader, label %bb.af

.preheader.preheader:                             ; preds = %_Z6readU8RSi.exit174
  %.0108.ptr = getelementptr inbounds nuw i8, ptr %0, i64 912
  call void @_ZN7TileDef11deSerializeERSi12NodeDrawTypet(ptr noundef nonnull align 8 dereferenceable(60) %.0108.ptr, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 zeroext poison, i16 noundef zeroext %2)
  %.0108.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 976
  call void @_ZN7TileDef11deSerializeERSi12NodeDrawTypet(ptr noundef nonnull align 8 dereferenceable(60) %.0108.ptr.1, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 zeroext poison, i16 noundef zeroext %2)
  %.0108.ptr.2 = getelementptr inbounds nuw i8, ptr %0, i64 1040
  call void @_ZN7TileDef11deSerializeERSi12NodeDrawTypet(ptr noundef nonnull align 8 dereferenceable(60) %.0108.ptr.2, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 zeroext poison, i16 noundef zeroext %2)
  %.0108.ptr.3 = getelementptr inbounds nuw i8, ptr %0, i64 1104
  call void @_ZN7TileDef11deSerializeERSi12NodeDrawTypet(ptr noundef nonnull align 8 dereferenceable(60) %.0108.ptr.3, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 zeroext poison, i16 noundef zeroext %2)
  %.0108.ptr.4 = getelementptr inbounds nuw i8, ptr %0, i64 1168
  call void @_ZN7TileDef11deSerializeERSi12NodeDrawTypet(ptr noundef nonnull align 8 dereferenceable(60) %.0108.ptr.4, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 zeroext poison, i16 noundef zeroext %2)
  %.0108.ptr.5 = getelementptr inbounds nuw i8, ptr %0, i64 1232
  call void @_ZN7TileDef11deSerializeERSi12NodeDrawTypet(ptr noundef nonnull align 8 dereferenceable(60) %.0108.ptr.5, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 zeroext poison, i16 noundef zeroext %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag) #32
  store i8 0, ptr %i.ag, align 1
  %i.hw = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ag, i64 noundef 1) ; 0 uses
  %i.hx = load ptr, ptr %1, align 8, !tbaa !55
  %i.hy = getelementptr i8, ptr %i.hx, i64 -24
  %i.hz = load i64, ptr %i.hy, align 8
  %i.ia = getelementptr inbounds i8, ptr %1, i64 %i.hz
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 32
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !70
  %i.id = and i32 %i.ic, 2
  %.not.i178 = icmp eq i32 %i.id, 0
  br i1 %.not.i178, label %_Z6readU8RSi.exit179, label %bb.aj

bb.af:                                            ; preds = %_Z6readU8RSi.exit174
  %i.ie = call ptr @__cxa_allocate_exception(i64 40) #32 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #32
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %11)
          to label %bb.ag unwind label %bb.ai

bb.ag:                                            ; preds = %bb.af
  call void @_ZN18SerializationErrorC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.ie, ptr noundef nonnull align 8 dereferenceable(32) %10)
  invoke void @__cxa_throw(ptr nonnull %i.ie, ptr nonnull @_ZTI18SerializationError, ptr nonnull @_ZN13BaseExceptionD2Ev) #33
          to label %bb.cz unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.if = landingpad { ptr, i32 }
          cleanup
  %i.ig = load ptr, ptr %10, align 8, !tbaa !74   ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ii = icmp eq ptr %i.ig, %i.ih
  br i1 %i.ii, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %bb.ah
  %i.ij = load i64, ptr %i.ih, align 8, !tbaa !56
  %i.ik = add i64 %i.ij, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ik) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177.thread: ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %bb.cy

bb.ai:                                            ; preds = %bb.af
  %i.il = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  call void @__cxa_free_exception(ptr %i.ie) #32
  br label %bb.cy

bb.aj:                                            ; preds = %.preheader.preheader
  call fastcc void @_ZL19serialize_throw_eofv()
  unreachable

_Z6readU8RSi.exit179:                             ; preds = %.preheader.preheader
  %i.im = load i8, ptr %i.ag, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag) #32
  %i.in = load i8, ptr %i.eo, align 2, !tbaa !134
  %i.io = icmp eq i8 %i.im, -1                    ; 3 uses
  switch i8 %i.in, label %bb.am [
    i8 0, label %bb.ak
    i8 2, label %bb.al
    i8 3, label %bb.al
  ]

bb.ak:                                            ; preds = %_Z6readU8RSi.exit179
  %i.ip = select i1 %i.io, i8 2, i8 1
  br label %_ZN15ContentFeatures18setAlphaFromLegacyEh.exit

bb.al:                                            ; preds = %_Z6readU8RSi.exit179, %_Z6readU8RSi.exit179
  %i.iq = select i1 %i.io, i8 2, i8 0
  br label %_ZN15ContentFeatures18setAlphaFromLegacyEh.exit

bb.am:                                            ; preds = %_Z6readU8RSi.exit179
  %i.ir = zext i1 %i.io to i8
  br label %_ZN15ContentFeatures18setAlphaFromLegacyEh.exit

_ZN15ContentFeatures18setAlphaFromLegacyEh.exit:  ; preds = %bb.ak, %bb.al, %bb.am
  %.sink.i = phi i8 [ %i.ir, %bb.am ], [ %i.iq, %bb.al ], [ %i.ip, %bb.ak ]
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 1296 ; 2 uses
  store i8 %.sink.i, ptr %i.is, align 8, !tbaa !142
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 1300 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af) #32
  store i8 0, ptr %i.af, align 1
  %i.iu = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.af, i64 noundef 1) ; 0 uses
  %i.iv = load ptr, ptr %1, align 8, !tbaa !55
  %i.iw = getelementptr i8, ptr %i.iv, i64 -24
  %i.ix = load i64, ptr %i.iw, align 8
  %i.iy = getelementptr inbounds i8, ptr %1, i64 %i.ix
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 32
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !70
  %i.jb = and i32 %i.ja, 2
  %.not.i180 = icmp eq i32 %i.jb, 0
  br i1 %.not.i180, label %_Z6readU8RSi.exit181, label %bb.an

bb.an:                                            ; preds = %_ZN15ContentFeatures18setAlphaFromLegacyEh.exit
  call fastcc void @_ZL19serialize_throw_eofv()
  unreachable

_Z6readU8RSi.exit181:                             ; preds = %_ZN15ContentFeatures18setAlphaFromLegacyEh.exit
  %i.jc = load i8, ptr %i.af, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af) #32
  %16 = zext i8 %i.jc to i32
  %17 = shl nuw nsw i32 %16, 16
  %18 = load i32, ptr %i.it, align 4, !tbaa !95
  %19 = and i32 %18, -16711681
  %20 = or disjoint i32 %19, %17
  store i32 %20, ptr %i.it, align 4, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae) #32
  store i8 0, ptr %i.ae, align 1
  %i.jd = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ae, i64 noundef 1) ; 0 uses
  %i.je = load ptr, ptr %1, align 8, !tbaa !55
  %i.jf = getelementptr i8, ptr %i.je, i64 -24
  %i.jg = load i64, ptr %i.jf, align 8
  %i.jh = getelementptr inbounds i8, ptr %1, i64 %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jh, i64 32
  %i.jj = load i32, ptr %i.ji, align 8, !tbaa !70
  %i.jk = and i32 %i.jj, 2
  %.not.i182 = icmp eq i32 %i.jk, 0
  br i1 %.not.i182, label %_Z6readU8RSi.exit183, label %bb.ao

bb.ao:                                            ; preds = %_Z6readU8RSi.exit181
  call fastcc void @_ZL19serialize_throw_eofv()
  unreachable

_Z6readU8RSi.exit183:                             ; preds = %_Z6readU8RSi.exit181
  %i.jl = load i8, ptr %i.ae, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae) #32
  %21 = zext i8 %i.jl to i32
  %22 = shl nuw nsw i32 %21, 8
  %23 = load i32, ptr %i.it, align 4, !tbaa !95
  %24 = and i32 %23, -65281
  %25 = or disjoint i32 %24, %22
  store i32 %25, ptr %i.it, align 4, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad) #32
  store i8 0, ptr %i.ad, align 1
  %i.jm = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ad, i64 noundef 1) ; 0 uses
  %i.jn = load ptr, ptr %1, align 8, !tbaa !55
  %i.jo = getelementptr i8, ptr %i.jn, i64 -24
  %i.jp = load i64, ptr %i.jo, align 8
  %i.jq = getelementptr inbounds i8, ptr %1, i64 %i.jp
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 32
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !70
  %i.jt = and i32 %i.js, 2
  %.not.i184 = icmp eq i32 %i.jt, 0
  br i1 %.not.i184, label %_Z6readU8RSi.exit185, label %bb.ap

bb.ap:                                            ; preds = %_Z6readU8RSi.exit183
  call fastcc void @_ZL19serialize_throw_eofv()
  unreachable

_Z6readU8RSi.exit185:                             ; preds = %_Z6readU8RSi.exit183
  %i.ju = load i8, ptr %i.ad, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad) #32
  %26 = zext i8 %i.ju to i32
  %27 = load i32, ptr %i.it, align 4, !tbaa !95
  %28 = and i32 %27, -256
  %29 = or disjoint i32 %28, %26
  store i32 %29, ptr %i.it, align 4, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #32
  call void @_Z19deSerializeString16B5cxx11RSi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(16) %1)
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 1304 ; 4 uses
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !74 ; 6 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 1320 ; 2 uses
  %i.jy = icmp eq ptr %i.jw, %i.jx
  %i.jz = load ptr, ptr %12, align 8, !tbaa !74   ; 5 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 4 uses
  %i.kb = icmp eq ptr %i.jz, %i.ka                ; 2 uses
  br i1 %i.jy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i186

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i191: ; preds = %_Z6readU8RSi.exit185
  br i1 %i.kb, label %bb.aq, label %.thread.i192

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i186: ; preds = %_Z6readU8RSi.exit185
  br i1 %i.kb, label %bb.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i187

bb.aq:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i186, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i191
  %i.kc = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.kd = load i64, ptr %i.kc, align 8, !tbaa !80 ; 3 uses
  %i.ke = icmp ult i64 %i.kd, 16
  call void @llvm.assume(i1 %i.ke)
  switch i64 %i.kd, label %bb.as [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i189
    i64 1, label %bb.ar
  ]

bb.ar:                                            ; preds = %bb.aq
  %i.kf = load i8, ptr %i.jz, align 1, !tbaa !56
  store i8 %i.kf, ptr %i.jw, align 1, !tbaa !56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i189

bb.as:                                            ; preds = %bb.aq
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jw, ptr align 1 %i.jz, i64 %i.kd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i189

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i189: ; preds = %bb.as, %bb.ar, %bb.aq
  %i.kg = load i64, ptr %i.kc, align 8, !tbaa !80 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 1312
  store i64 %i.kg, ptr %i.kh, align 8, !tbaa !80
  %i.ki = load ptr, ptr %i.jv, align 8, !tbaa !74
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.kg
  store i8 0, ptr %i.kj, align 1, !tbaa !56
  %.pre.i190 = load ptr, ptr %12, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit193

.thread.i192:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i191
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 1312
  store ptr %i.jz, ptr %i.jv, align 8, !tbaa !74
  %i.kl = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.km = load <2 x i64>, ptr %i.kl, align 8, !tbaa !56
  store <2 x i64> %i.km, ptr %i.kk, align 8, !tbaa !56
  br label %bb.au

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i187: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i186
  %i.kn = load i64, ptr %i.jx, align 8, !tbaa !56
  store ptr %i.jz, ptr %i.jv, align 8, !tbaa !74
  %i.ko = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 1312
  %i.kq = load <2 x i64>, ptr %i.ko, align 8, !tbaa !56
  store <2 x i64> %i.kq, ptr %i.kp, align 8, !tbaa !56
  %.not.i188 = icmp eq ptr %i.jw, null
  br i1 %.not.i188, label %bb.au, label %bb.at

bb.at:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i187
  store ptr %i.jw, ptr %12, align 8, !tbaa !74
  store i64 %i.kn, ptr %i.ka, align 8, !tbaa !56
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit193

bb.au:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i187, %.thread.i192
  store ptr %i.ka, ptr %12, align 8, !tbaa !74
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit193

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit193: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i189, %bb.at, %bb.au
  %i.kr = phi ptr [ %.pre.i190, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i189 ], [ %i.jw, %bb.at ], [ %i.ka, %bb.au ]
  %i.ks = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 0, ptr %i.ks, align 8, !tbaa !80
  store i8 0, ptr %i.kr, align 1, !tbaa !56
  %i.kt = load ptr, ptr %12, align 8, !tbaa !74   ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.kv = icmp eq ptr %i.kt, %i.ku
  br i1 %i.kv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit193
  %i.kw = load i64, ptr %i.ku, align 8, !tbaa !56
  %i.kx = add i64 %i.kw, 1
  call void @_ZdlPvm(ptr noundef %i.kt, i64 noundef %i.kx) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit193, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i194
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac) #32
  store i8 0, ptr %i.ac, align 1
  %i.ky = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ac, i64 noundef 1) ; 0 uses
  %i.kz = load ptr, ptr %1, align 8, !tbaa !55
  %i.la = getelementptr i8, ptr %i.kz, i64 -24
  %i.lb = load i64, ptr %i.la, align 8
  %i.lc = getelementptr inbounds i8, ptr %1, i64 %i.lb
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 32
  %i.le = load i32, ptr %i.ld, align 8, !tbaa !70
  %i.lf = and i32 %i.le, 2
  %.not.i197 = icmp eq i32 %i.lf, 0
  br i1 %.not.i197, label %_Z6readU8RSi.exit198, label %bb.av

bb.av:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196
  call fastcc void @_ZL19serialize_throw_eofv()
  unreachable

_Z6readU8RSi.exit198:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit196
  %i.lg = load i8, ptr %i.ac, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac) #32
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 1336
  store i8 %i.lg, ptr %i.lh, align 8, !tbaa !154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #32
  store i8 0, ptr %i.ab, align 1
  %i.li = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.ab, i64 noundef 1) ; 0 uses
  %i.lj = load ptr, ptr %1, align 8, !tbaa !55
  %i.lk = getelementptr i8, ptr %i.lj, i64 -24
  %i.ll = load i64, ptr %i.lk, align 8
  %i.lm = getelementptr inbounds i8, ptr %1, i64 %i.ll
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 32
  %i.lo = load i32, ptr %i.ln, align 8, !tbaa !70
  %i.lp = and i32 %i.lo, 2
  %.not.i199 = icmp eq i32 %i.lp, 0
  br i1 %.not.i199, label %_Z6readU8RSi.exit200, label %bb.aw

bb.aw:                                            ; preds = %_Z6readU8RSi.exit198
  call fastcc void @_ZL19serialize_throw_eofv()
  unreachable

_Z6readU8RSi.exit200:                             ; preds = %_Z6readU8RSi.exit198
  %i.lq = load i8, ptr %i.ab, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab) #32
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 1337
  store i8 %i.lq, ptr %i.lr, align 1, !tbaa !139
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 1368 ; 3 uses
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !130 ; 2 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 1376 ; 5 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !138
  %.not.i.i = icmp eq ptr %i.lv, %i.lt
  br i1 %.not.i.i, label %_ZNSt6vectorItSaItEE5clearEv.exit, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %_Z6readU8RSi.exit200
  store ptr %i.lt, ptr %i.lu, align 8, !tbaa !138
  br label %_ZNSt6vectorItSaItEE5clearEv.exit

_ZNSt6vectorItSaItEE5clearEv.exit:                ; preds = %_Z6readU8RSi.exit200, %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #32
  store i16 0, ptr %i.aa, align 2
  %i.lw = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.aa, i64 noundef 2) ; 0 uses
  %i.lx = load ptr, ptr %1, align 8, !tbaa !55
  %i.ly = getelementptr i8, ptr %i.lx, i64 -24
  %i.lz = load i64, ptr %i.ly, align 8
  %i.ma = getelementptr inbounds i8, ptr %1, i64 %i.lz
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 32
  %i.mc = load i32, ptr %i.mb, align 8, !tbaa !70
  %i.md = and i32 %i.mc, 2
  %.not.i201 = icmp eq i32 %i.md, 0
  br i1 %.not.i201, label %_Z7readU16RSi.exit204, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorItSaItEE5clearEv.exit
  call fastcc void @_ZL19serialize_throw_eofv()
  unreachable

_Z7readU16RSi.exit204:                            ; preds = %_ZNSt6vectorItSaItEE5clearEv.exit
  %.0.copyload.i.i202 = load i16, ptr %i.aa, align 2 ; 2 uses
  %rev.i.i.i203 = call noundef i16 @llvm.bswap.i16(i16 %.0.copyload.i.i202)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #32
  %.not314 = icmp eq i16 %.0.copyload.i.i202, 0
  br i1 %.not314, label %._crit_edge312, label %.lr.ph311

.lr.ph311:                                        ; preds = %_Z7readU16RSi.exit204
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 1384 ; 3 uses
  br label %bb.ch

._crit_edge312:                                   ; preds = %_ZNSt6vectorItSaItEE9push_backEOt.exit, %_Z7readU16RSi.exit204
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #32
  store i32 0, ptr %i.z, align 4
  %i.mf = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.z, i64 noundef 4) ; 0 uses
  %i.mg = load ptr, ptr %1, align 8, !tbaa !55
  %i.mh = getelementptr i8, ptr %i.mg, i64 -24
  %i.mi = load i64, ptr %i.mh, align 8
  %i.mj = getelementptr inbounds i8, ptr %1, i64 %i.mi
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 32
  %i.ml = load i32, ptr %i.mk, align 8, !tbaa !70
  %i.mm = and i32 %i.ml, 2
  %.not.i205 = icmp eq i32 %i.mm, 0
  br i1 %.not.i205, label %_Z9readARGB8RSi.exit, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge312
  call fastcc void @_ZL19serialize_throw_eofv()
  unreachable

_Z9readARGB8RSi.exit:                             ; preds = %._crit_edge312
  %.0.copyload.i.i.i206 = load i32, ptr %i.z, align 4
  %i.mn = call noundef i32 @llvm.bswap.i32(i32 %.0.copyload.i.i.i206)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #32
  %i.mo = getelementptr inbounds nuw i8, ptr %0, i64 1392
  store i32 %i.mn, ptr %i.mo, align 8, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #32
end_hunk_1
