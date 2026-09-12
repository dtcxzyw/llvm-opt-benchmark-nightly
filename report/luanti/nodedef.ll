Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/nodedef?download=true
inline.NumInlined: 3188
inline.NumDeleted: 1144
loop-unroll.NumCompletelyUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_RKS8_:bb.a
  %i.t = add i64 %i.s, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #34
  br label %.body

_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i
  ret void

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  resume { ptr, i32 } %i.p
}

declare void @_ZNK19TileAnimationParams9serializeERSot(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8), i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN7TileDef11deSerializeERSi12NodeDrawTypet(ptr noundef nonnull align 8 dereferenceable(60) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i8 zeroext %2, i16 noundef zeroext %3) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 5 uses
  %i.c = alloca [1 x i8], align 1                 ; 5 uses
  %i.d = alloca [1 x i8], align 1                 ; 5 uses
  %i.e = alloca [1 x i8], align 1                 ; 5 uses
  %i.f = alloca [2 x i8], align 2                 ; 5 uses
  %i.g = alloca [1 x i8], align 1                 ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::allocator.0", align 1  ; 4 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #32
  store i8 0, ptr %i.g, align 1
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
  %7 = lshr i8 %i.bl, 1
  %i.bp = and i8 %7, 1
  store i8 %i.bp, ptr %i.bo, align 1, !tbaa !91
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 34
  %8 = lshr i8 %i.bl, 2
  %i.br = and i8 %8, 1
  store i8 %i.br, ptr %i.bq, align 2, !tbaa !92
  %i.bs = and i32 %i.bk, 8                        ; 2 uses
  %.not = icmp eq i32 %i.bs, 0
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 35
  %.lobit = lshr exact i32 %i.bs, 3
  %i.bu = trunc nuw nsw i32 %.lobit to i8
  store i8 %i.bu, ptr %i.bt, align 1, !tbaa !93
  %i.bv = and i32 %i.bk, 16
  %.not23 = icmp eq i32 %i.bv, 0
  %i.bw = and i32 %i.bk, 32
  %.not24 = icmp eq i32 %i.bw, 0
  br i1 %.not, label %bb.r, label %bb.n

bb.n:                                             ; preds = %_Z7readU16RSi.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #32
  store i8 0, ptr %i.e, align 1
  %i.by = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.e, i64 noundef 1) ; 0 uses
  %i.bz = load ptr, ptr %1, align 8, !tbaa !55
  %i.ca = getelementptr i8, ptr %i.bz, i64 -24
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds i8, ptr %1, i64 %i.cb
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !70
  %i.cf = and i32 %i.ce, 2
  %.not.i31 = icmp eq i32 %i.cf, 0
  br i1 %.not.i31, label %_Z6readU8RSi.exit32, label %bb.o

bb.o:                                             ; preds = %bb.n
  call fastcc void @_ZL19serialize_throw_eofv()
  unreachable

_Z6readU8RSi.exit32:                              ; preds = %bb.n
  %i.cg = load i8, ptr %i.e, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #32
  %i.ch = zext i8 %i.cg to i32
  %i.ci = shl nuw nsw i32 %i.ch, 16
  %i.cj = load i32, ptr %i.bx, align 4, !tbaa !95
  %i.ck = and i32 %i.cj, -16711681
  %i.cl = or disjoint i32 %i.ck, %i.ci
  store i32 %i.cl, ptr %i.bx, align 4, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #32
  store i8 0, ptr %i.d, align 1
  %i.cm = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.d, i64 noundef 1) ; 0 uses
  %i.cn = load ptr, ptr %1, align 8, !tbaa !55
  %i.co = getelementptr i8, ptr %i.cn, i64 -24
  %i.cp = load i64, ptr %i.co, align 8
  %i.cq = getelementptr inbounds i8, ptr %1, i64 %i.cp
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 32
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !70
  %i.ct = and i32 %i.cs, 2
  %.not.i33 = icmp eq i32 %i.ct, 0
  br i1 %.not.i33, label %_Z6readU8RSi.exit34, label %bb.p

bb.p:                                             ; preds = %_Z6readU8RSi.exit32
  call fastcc void @_ZL19serialize_throw_eofv()
  unreachable

_Z6readU8RSi.exit34:                              ; preds = %_Z6readU8RSi.exit32
  %i.cu = load i8, ptr %i.d, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #32
  %i.cv = zext i8 %i.cu to i32
  %i.cw = shl nuw nsw i32 %i.cv, 8
  %i.cx = load i32, ptr %i.bx, align 4, !tbaa !95
  %i.cy = and i32 %i.cx, -65281
  %i.cz = or disjoint i32 %i.cy, %i.cw
  store i32 %i.cz, ptr %i.bx, align 4, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #32
  store i8 0, ptr %i.c, align 1
  %i.da = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  %i.db = load ptr, ptr %1, align 8, !tbaa !55
  %i.dc = getelementptr i8, ptr %i.db, i64 -24
  %i.dd = load i64, ptr %i.dc, align 8
  %i.de = getelementptr inbounds i8, ptr %1, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 32
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !70
  %i.dh = and i32 %i.dg, 2
  %.not.i35 = icmp eq i32 %i.dh, 0
  br i1 %.not.i35, label %_Z6readU8RSi.exit36, label %bb.q

bb.q:                                             ; preds = %_Z6readU8RSi.exit34
  call fastcc void @_ZL19serialize_throw_eofv()
  unreachable

_Z6readU8RSi.exit36:                              ; preds = %_Z6readU8RSi.exit34
  %i.di = load i8, ptr %i.c, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #32
  %i.dj = zext i8 %i.di to i32
  %i.dk = load i32, ptr %i.bx, align 4, !tbaa !95
  %i.dl = and i32 %i.dk, -256
  %i.dm = or disjoint i32 %i.dl, %i.dj
  store i32 %i.dm, ptr %i.bx, align 4, !tbaa !95
  br label %bb.r

bb.r:                                             ; preds = %_Z6readU8RSi.exit36, %_Z7readU16RSi.exit
  br i1 %.not23, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #32
  store i8 0, ptr %i.b, align 1
  %i.dn = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.b, i64 noundef 1) ; 0 uses
  %i.do = load ptr, ptr %1, align 8, !tbaa !55
  %i.dp = getelementptr i8, ptr %i.do, i64 -24
  %i.dq = load i64, ptr %i.dp, align 8
  %i.dr = getelementptr inbounds i8, ptr %1, i64 %i.dq
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 32
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !70
  %i.du = and i32 %i.dt, 2
  %.not.i37 = icmp eq i32 %i.du, 0
  br i1 %.not.i37, label %_Z6readU8RSi.exit38, label %bb.t

bb.t:                                             ; preds = %bb.s
  call fastcc void @_ZL19serialize_throw_eofv()
  unreachable

_Z6readU8RSi.exit38:                              ; preds = %bb.s
  %i.dv = load i8, ptr %i.b, align 1, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #32
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %_Z6readU8RSi.exit38
  %i.dw = phi i8 [ %i.dv, %_Z6readU8RSi.exit38 ], [ 0, %bb.r ]
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 41
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !87
  br i1 %.not24, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #32
  store i8 0, ptr %i.a, align 1
  %i.dy = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSi4readEPcl(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  %i.dz = load ptr, ptr %1, align 8, !tbaa !55
  %i.ea = getelementptr i8, ptr %i.dz, i64 -24
  %i.eb = load i64, ptr %i.ea, align 8
  %i.ec = getelementptr inbounds i8, ptr %1, i64 %i.eb
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 32
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !70
  %i.ef = and i32 %i.ee, 2
  %.not.i39 = icmp eq i32 %i.ef, 0
  br i1 %.not.i39, label %_Z6readU8RSi.exit40, label %bb.w

bb.w:                                             ; preds = %bb.v
  call fastcc void @_ZL19serialize_throw_eofv()
  unreachable

_Z6readU8RSi.exit40:                              ; preds = %bb.v
  %i.eg = load i8, ptr %i.a, align 1, !tbaa !56   ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #32
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ei = icmp ugt i8 %i.eg, 2
  %spec.store.select = select i1 %i.ei, i8 0, i8 %i.eg
  store i8 %spec.store.select, ptr %i.eh, align 8
  br label %bb.y

bb.x:                                             ; preds = %bb.u
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i8 0, ptr %i.ej, align 8, !tbaa !94
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
end_hunk_0
