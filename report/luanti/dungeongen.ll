Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/dungeongen?download=true
inline.NumInlined: 312
inline.NumDeleted: 66
begin_hunk_0_@_ZN10DungeonGen11makeDungeonEN4core8vector3dIsEE:bb.a
  %.sink232.in = load i16, ptr %.sink232.in.in, align 4, !tbaa !29
  %.sink232 = sext i16 %.sink232.in to i32
  %.sink234 = load i16, ptr %.sink234.in, align 2, !tbaa !29
  %i.ga = sext i16 %.sink234 to i32
  %i.gb = tail call noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %i.f, i32 noundef %.sink232, i32 noundef %i.ga) ; 2 uses
  %.sink215.in = load i16, ptr %.sink215.in.in, align 2, !tbaa !29
  %.sink215 = sext i16 %.sink215.in to i32
  %.sink217 = load i16, ptr %.sink217.in, align 4, !tbaa !29
  %i.gc = sext i16 %.sink217 to i32
  %i.gd = tail call noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %i.f, i32 noundef %.sink215, i32 noundef %i.gc) ; 2 uses
  %.sroa.18.3 = trunc i32 %.sroa.18.3.in to i16
  %.sroa.11.3 = trunc i32 %i.gb to i16
  %storemerge71 = trunc i32 %i.gd to i16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(6) %i.dv, ptr noundef nonnull align 2 dereferenceable(6) %5, i64 6, i1 false), !tbaa.struct !66
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %i.eb, ptr noundef nonnull align 2 dereferenceable(6) %6, i64 6, i1 false), !tbaa.struct !66
  %.sroa.18.3.mask = and i32 %.sroa.18.3.in, 65535
  %.sroa.18.0.insert.ext = zext nneg i32 %.sroa.18.3.mask to i48
  %.sroa.18.0.insert.shift = shl nuw i48 %.sroa.18.0.insert.ext, 32
  %i.ge = shl i32 %i.gb, 16
  %.sroa.11.0.insert.shift = zext i32 %i.ge to i48
  %.sroa.11.0.insert.insert = or disjoint i48 %.sroa.18.0.insert.shift, %.sroa.11.0.insert.shift
  %storemerge71.mask = and i32 %i.gd, 65535
  %.sroa.0113.0.insert.ext = zext nneg i32 %storemerge71.mask to i48
  %.sroa.0113.0.insert.insert = or disjoint i48 %.sroa.11.0.insert.insert, %.sroa.0113.0.insert.ext
  %i.gf = call noundef zeroext i1 @_ZN10DungeonGen20findPlaceForRoomDoorEN4core8vector3dIsEERS2_S3_S3_(ptr noundef nonnull align 8 dereferenceable(152) %0, i48 %.sroa.0113.0.insert.insert, ptr noundef nonnull align 2 dereferenceable(6) %3, ptr noundef nonnull align 2 dereferenceable(6) %4, ptr noundef nonnull align 2 dereferenceable(6) %2)
  br i1 %i.gf, label %bb.u, label %.critedge.critedge78

bb.u:                                             ; preds = %bb.t
  %i.gg = load i32, ptr %i.f, align 4, !tbaa !49
  %i.gh = mul i32 %i.gg, 1103515245
  %i.gi = add i32 %i.gh, 12345                    ; 2 uses
  store i32 %i.gi, ptr %i.f, align 4, !tbaa !49
  %i.gj = sdiv i32 %i.gi, 65536
  %.zext.i103 = and i32 %i.gj, 1
  %i.gk = icmp eq i32 %.zext.i103, 0
  br i1 %i.gk, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %.sroa.05.0.copyload = load i48, ptr %3, align 8, !tbaa !29
  %.sroa.0.0.copyload.i.i104 = load i48, ptr %i.dw, align 4, !tbaa !29
  tail call void @_ZN10DungeonGen8makeFillEN4core8vector3dIsEES2_h7MapNodeh(ptr noundef nonnull readonly align 8 dereferenceable(152) %0, i48 %.sroa.05.0.copyload, i48 %.sroa.0.0.copyload.i.i104, i8 noundef zeroext 0, i32 126, i8 noundef zeroext 2)
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.gl = load <2 x i16>, ptr %4, align 8, !tbaa !29
  %i.gm = load <2 x i16>, ptr %2, align 8, !tbaa !29
  %i.gn = sub <2 x i16> %i.gm, %i.gl
  store <2 x i16> %i.gn, ptr %2, align 8, !tbaa !29
  %i.go = load i16, ptr %i.du, align 4, !tbaa !17
  %i.gp = load i16, ptr %i.d, align 4, !tbaa !17
  %i.gq = sub i16 %i.gp, %i.go
  store i16 %i.gq, ptr %i.d, align 4, !tbaa !17
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.gr = load i16, ptr %i.di, align 8, !tbaa !146
  %i.gs = zext i16 %i.gr to i32
  %i.gt = icmp samesign ult i32 %i.ep, %i.gs
  br i1 %i.gt, label %bb.i, label %.critedge

.critedge.critedge78:                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.l, %.critedge.critedge78
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.x, %.critedge.sink.split, %.thread, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  ret void
}

declare noundef float @_Z14NoiseFractal3DPK11NoiseParamsfffi(ptr noundef, float noundef, float noundef, float noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN12PseudoRandom5rangeEii(ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.std::allocator.46", align 1 ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %6 = alloca %"class.std::allocator.46", align 1 ; 4 uses
  %i.a = icmp slt i32 %2, %1
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @_ZN13PrngExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %3)
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTI13PrngException, ptr nonnull @_ZN13BaseExceptionD2Ev) #22
          to label %bb.m unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          cleanup
  %i.d = load ptr, ptr %3, align 8, !tbaa !38     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = icmp eq ptr %i.d, %i.e
  br i1 %i.f, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.g = load i64, ptr %i.e, align 8, !tbaa !36
  %i.h = add i64 %i.g, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.h) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.l

bb.e:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @__cxa_free_exception(ptr %i.b) #20
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  %i.j = sub nsw i32 %2, %1                       ; 2 uses
  %i.k = icmp ugt i32 %i.j, 6553
  br i1 %i.k, label %bb.g, label %bb.k

bb.g:                                             ; preds = %bb.f
  %i.l = tail call ptr @__cxa_allocate_exception(i64 40) #20 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @_ZN13PrngExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.l, ptr noundef nonnull align 8 dereferenceable(32) %5)
  invoke void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTI13PrngException, ptr nonnull @_ZN13BaseExceptionD2Ev) #22
          to label %bb.m unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %5, align 8, !tbaa !38     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.i
  %i.q = load i64, ptr %i.o, align 8, !tbaa !36
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  br label %bb.l

bb.j:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @__cxa_free_exception(ptr %i.l) #20
  br label %bb.l

bb.k:                                             ; preds = %bb.f
  %i.t = load i32, ptr %0, align 4, !tbaa !49
  %i.u = mul i32 %i.t, 1103515245
  %i.v = add i32 %i.u, 12345                      ; 2 uses
  store i32 %i.v, ptr %0, align 4, !tbaa !49
  %i.w = sdiv i32 %i.v, 65536
  %i.x = trunc nsw i32 %i.w to i16
  %.lhs.trunc = and i16 %i.x, 32767
  %i.y = trunc nuw nsw i32 %i.j to i16
  %.rhs.trunc = add nuw nsw i16 %i.y, 1
  %i.z = urem i16 %.lhs.trunc, %.rhs.trunc
  %.zext = zext nneg i16 %i.z to i32
  %i.aa = add i32 %1, %.zext
  ret i32 %i.aa

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %bb.j, %bb.e
  %.pn20.pn = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.s, %bb.j ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25.thread ]
  resume { ptr, i32 } %.pn20.pn

bb.m:                                             ; preds = %bb.h, %bb.c
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN10DungeonGen8makeRoomEN4core8vector3dIsEES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %0, i48 %1, i48 %2) local_unnamed_addr #4 align 2 {
bb.a:
  %.sroa.091.0.extract.trunc = trunc i48 %1 to i16 ; 8 uses
  %.sroa.5.0.extract.shift = lshr i48 %1, 16      ; 3 uses
  %.sroa.5.0.extract.trunc = trunc i48 %.sroa.5.0.extract.shift to i16 ; 5 uses
  %.sroa.0339.0.extract.trunc = trunc i48 %2 to i16 ; 7 uses
  %.sroa.8.0.extract.shift = lshr i48 %2, 16
  %.sroa.8.0.extract.trunc = trunc i48 %.sroa.8.0.extract.shift to i16 ; 7 uses
  %.sroa.15.0.extract.shift = lshr i48 %2, 32
  %.sroa.15.0.extract.trunc = trunc nuw i48 %.sroa.15.0.extract.shift to i16 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i16, ptr %i.a, align 4, !tbaa !37   ; 3 uses
  %i.c = ashr i48 %1, 32                          ; 3 uses
  %i.d = trunc nsw i48 %i.c to i32                ; 5 uses
  %i.e = icmp sgt i32 %i.d, 0                     ; 2 uses
  br i1 %i.e, label %.preheader391.lr.ph, label %.preheader390.thread

.preheader391.lr.ph:                              ; preds = %bb.a
  %i.f = icmp sgt i16 %.sroa.5.0.extract.trunc, 0
  %i.g = sext i16 %.sroa.0339.0.extract.trunc to i32
  %.sroa.0268.0.insert.ext282 = zext i16 %i.b to i32 ; 2 uses
  %i.h = add i16 %.sroa.091.0.extract.trunc, -1
  %i.i = add i16 %i.h, %.sroa.0339.0.extract.trunc ; 3 uses
  %i.j = sext i16 %i.i to i32
  br i1 %i.f, label %.preheader391.us.preheader, label %.preheader390.thread468

.preheader391.us.preheader:                       ; preds = %.preheader391.lr.ph
  %i.k = trunc nuw i48 %.sroa.5.0.extract.shift to i32
  %wide.trip.count = and i32 %i.k, 32767
  br label %.preheader391.us

.preheader391.us:                                 ; preds = %.preheader391.us.preheader, %._crit_edge.us
  %.0395.us = phi i16 [ %i.ck, %._crit_edge.us ], [ 0, %.preheader391.us.preheader ] ; 2 uses
  %i.l = add i16 %.0395.us, %.sroa.15.0.extract.trunc ; 5 uses
  %i.m = sext i16 %i.l to i32                     ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader391.us, %.thread.us
  %indvars.iv = phi i32 [ 0, %.preheader391.us ], [ %indvars.iv.next, %.thread.us ] ; 2 uses
  %i.n = trunc nuw nsw i32 %indvars.iv to i16
  %i.o = add i16 %i.n, %.sroa.8.0.extract.trunc   ; 5 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !48     ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i16, ptr %i.q, align 4, !tbaa !59   ; 2 uses
  %.not.i.us = icmp sgt i16 %i.r, %.sroa.0339.0.extract.trunc
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 14
  %i.t = load i16, ptr %i.s, align 2
  %.not6.i.us = icmp slt i16 %i.t, %.sroa.0339.0.extract.trunc
  %or.cond.i.us = select i1 %.not.i.us, i1 true, i1 %.not6.i.us
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 10
  %i.v = load i16, ptr %i.u, align 2              ; 2 uses
  %.not7.i.us = icmp sgt i16 %i.v, %i.o
  %or.cond12.i.us = select i1 %or.cond.i.us, i1 true, i1 %.not7.i.us
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.x = load i16, ptr %i.w, align 4
  %.not8.i.us = icmp slt i16 %i.x, %i.o
  %or.cond14.i.us = select i1 %or.cond12.i.us, i1 true, i1 %.not8.i.us
  br i1 %or.cond14.i.us, label %.thread.us, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.z = load i16, ptr %i.y, align 4, !tbaa !55   ; 2 uses
  %.not9.i.us = icmp slt i16 %i.l, %i.z
  br i1 %.not9.i.us, label %.thread.us, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.us

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.us: ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 18
  %i.ab = load i16, ptr %i.aa, align 2, !tbaa !67
  %.not370.us = icmp sgt i16 %i.l, %i.ab
  br i1 %.not370.us, label %.thread.us, label %bb.d

bb.d:                                             ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.us
  %i.ac = sext i16 %i.z to i32
  %i.ad = sub nsw i32 %i.m, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.p, i64 20
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !56
  %i.ah = mul nsw i32 %i.ad, %i.ag
  %i.ai = load i32, ptr %i.ae, align 4, !tbaa !57
  %i.aj = sext i16 %i.o to i32                    ; 2 uses
  %i.ak = sext i16 %i.v to i32
  %i.al = sub nsw i32 %i.aj, %i.ak
  %i.am = add i32 %i.al, %i.ah
  %i.an = mul i32 %i.am, %i.ai
  %i.ao = sext i16 %i.r to i32
  %i.ap = sub nsw i32 %i.g, %i.ao
  %i.aq = add nsw i32 %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !65
  %i.at = zext i32 %i.aq to i64                   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !36
  %i.aw = and i8 %i.av, 6
  %.not115.us = icmp eq i8 %i.aw, 0
  br i1 %.not115.us, label %bb.e, label %.thread.us

bb.e:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !62
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.at
  store i32 %.sroa.0268.0.insert.ext282, ptr %i.az, align 4
  %i.ba = load ptr, ptr %0, align 8, !tbaa !48    ; 10 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = load i16, ptr %i.bb, align 4, !tbaa !59 ; 2 uses
  %.not.i128.us = icmp sgt i16 %i.bc, %i.i
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 14
  %i.be = load i16, ptr %i.bd, align 2
  %.not6.i129.us = icmp slt i16 %i.be, %i.i
  %or.cond.i130.us = select i1 %.not.i128.us, i1 true, i1 %.not6.i129.us
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 10
  %i.bg = load i16, ptr %i.bf, align 2            ; 2 uses
  %.not7.i131.us = icmp sgt i16 %i.bg, %i.o
  %or.cond12.i132.us = select i1 %or.cond.i130.us, i1 true, i1 %.not7.i131.us
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bi = load i16, ptr %i.bh, align 4
  %.not8.i133.us = icmp slt i16 %i.bi, %i.o
  %or.cond14.i134.us = select i1 %or.cond12.i132.us, i1 true, i1 %.not8.i133.us
  br i1 %or.cond14.i134.us, label %.thread.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bk = load i16, ptr %i.bj, align 4, !tbaa !55 ; 2 uses
  %.not9.i135.us = icmp slt i16 %i.l, %i.bk
  br i1 %.not9.i135.us, label %.thread.us, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit136.us

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit136.us: ; preds = %bb.f
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 18
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !67
  %.not371.us = icmp sgt i16 %i.l, %i.bm
  br i1 %.not371.us, label %.thread.us, label %bb.g

bb.g:                                             ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit136.us
  %i.bn = sext i16 %i.bk to i32
  %i.bo = sub nsw i32 %i.m, %i.bn
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ba, i64 20
  %i.bq = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !56
  %i.bs = mul nsw i32 %i.bo, %i.br
  %i.bt = load i32, ptr %i.bp, align 4, !tbaa !57
  %i.bu = sext i16 %i.bg to i32
  %i.bv = sub nsw i32 %i.aj, %i.bu
  %i.bw = add i32 %i.bv, %i.bs
  %i.bx = mul i32 %i.bw, %i.bt
  %i.by = sext i16 %i.bc to i32
  %i.bz = sub nsw i32 %i.j, %i.by
  %i.ca = add nsw i32 %i.bz, %i.bx
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !65
  %i.cd = zext i32 %i.ca to i64                   ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !36
  %i.cg = and i8 %i.cf, 6
  %.not116.us = icmp eq i8 %i.cg, 0
  br i1 %.not116.us, label %bb.h, label %.thread.us

bb.h:                                             ; preds = %bb.g
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !62
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %i.cd
  store i32 %.sroa.0268.0.insert.ext282, ptr %i.cj, align 4
  br label %.thread.us

.thread.us:                                       ; preds = %bb.h, %bb.g, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit136.us, %bb.f, %bb.e, %bb.d, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.us, %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i32 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.b, !llvm.loop !147

._crit_edge.us:                                   ; preds = %.thread.us
  %i.ck = add i16 %.0395.us, 1                    ; 2 uses
  %i.cl = sext i16 %i.ck to i32
  %i.cm = icmp slt i32 %i.cl, %i.d
  br i1 %i.cm, label %.preheader391.us, label %.preheader390, !llvm.loop !148

.preheader390:                                    ; preds = %._crit_edge.us
  %i.cn = icmp sgt i16 %.sroa.091.0.extract.trunc, 0
  br i1 %i.cn, label %.preheader389.lr.ph, label %.preheader388.thread

.preheader390.thread468:                          ; preds = %.preheader391.lr.ph
  %i.co = icmp sgt i16 %.sroa.091.0.extract.trunc, 0
  br i1 %i.co, label %.preheader388.thread464.thread, label %.preheader388.thread.thread469

.preheader388.thread464.thread:                   ; preds = %.preheader390.thread468
  %3 = trunc i48 %1 to i32
  %4 = and i32 %3, 32767
  br label %.preheader387.us.preheader

.preheader388.thread.thread469:                   ; preds = %.preheader390.thread468
  %5 = sext i16 %.sroa.091.0.extract.trunc to i32
  br label %.preheader386

.preheader390.thread:                             ; preds = %bb.a
  %i.cp = icmp sgt i16 %.sroa.091.0.extract.trunc, 0
  br i1 %i.cp, label %.preheader389.lr.ph.thread473, label %._crit_edge408

.preheader389.lr.ph:                              ; preds = %.preheader390
  %invariant.op = add i16 %.sroa.15.0.extract.trunc, -1
  %i.cq = ashr i48 %2, 32
  %i.cr = trunc nsw i48 %i.cq to i32
  %i.cs = trunc nsw i48 %i.c to i16
  %.reass = add i16 %invariant.op, %i.cs
  br label %.preheader389.preheader

.preheader389.lr.ph.thread473:                    ; preds = %.preheader390.thread
  %invariant.op474 = add i16 %.sroa.15.0.extract.trunc, -1
  %i.ct = icmp sgt i16 %.sroa.5.0.extract.trunc, 0
  %i.cu = ashr i48 %2, 32
  %i.cv = trunc nsw i48 %i.cu to i32
  %i.cw = trunc nsw i48 %i.c to i16
  %.reass476 = add i16 %invariant.op474, %i.cw
  br i1 %i.ct, label %.preheader389.preheader, label %._crit_edge408

.preheader389.preheader:                          ; preds = %.preheader389.lr.ph, %.preheader389.lr.ph.thread473
  %.reass478 = phi i16 [ %.reass476, %.preheader389.lr.ph.thread473 ], [ %.reass, %.preheader389.lr.ph ] ; 3 uses
  %i.cx = phi i32 [ %i.cv, %.preheader389.lr.ph.thread473 ], [ %i.cr, %.preheader389.lr.ph ] ; 3 uses
  %.sroa.0268.0.insert.ext274477 = zext i16 %i.b to i32 ; 2 uses
  %i.cy = sext i16 %.reass478 to i32
  %i.cz = trunc i48 %1 to i32
  %wide.trip.count426 = and i32 %i.cz, 32767
  %i.da = trunc nuw i48 %.sroa.5.0.extract.shift to i32
  %wide.trip.count421 = and i32 %i.da, 32767
  br label %.preheader389

.preheader389:                                    ; preds = %.preheader389.preheader, %._crit_edge
  %indvars.iv423 = phi i32 [ 0, %.preheader389.preheader ], [ %indvars.iv.next424, %._crit_edge ] ; 2 uses
  %i.db = trunc nuw nsw i32 %indvars.iv423 to i16
  %i.dc = add i16 %i.db, %.sroa.0339.0.extract.trunc ; 5 uses
  %i.dd = sext i16 %i.dc to i32                   ; 2 uses
  br label %bb.p

.preheader388:                                    ; preds = %._crit_edge
  %6 = sext i16 %.sroa.091.0.extract.trunc to i32
  br i1 %i.e, label %.preheader387.us.preheader, label %._crit_edge408

.preheader388.thread:                             ; preds = %.preheader390
  %7 = sext i16 %.sroa.091.0.extract.trunc to i32
  br label %.preheader386

.preheader387.us.preheader:                       ; preds = %.preheader388, %.preheader388.thread464.thread
  %8 = phi i32 [ %6, %.preheader388 ], [ %4, %.preheader388.thread464.thread ]
  %i.de = sext i16 %.sroa.8.0.extract.trunc to i32
  %.sroa.0268.0.insert.ext = zext i16 %i.b to i32 ; 2 uses
  %i.df = add i16 %.sroa.5.0.extract.trunc, -1
  %i.dg = add i16 %i.df, %.sroa.8.0.extract.trunc ; 3 uses
  %i.dh = sext i16 %i.dg to i32
  %i.di = trunc i48 %1 to i32
  %wide.trip.count431 = and i32 %i.di, 32767
  br label %.preheader387.us

.preheader387.us:                                 ; preds = %.preheader387.us.preheader, %._crit_edge401.us
  %.0109402.us = phi i16 [ %i.gi, %._crit_edge401.us ], [ 0, %.preheader387.us.preheader ] ; 2 uses
  %i.dj = add i16 %.0109402.us, %.sroa.15.0.extract.trunc ; 5 uses
  %i.dk = sext i16 %i.dj to i32                   ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %.preheader387.us, %.thread363.us
  %indvars.iv428 = phi i32 [ 0, %.preheader387.us ], [ %indvars.iv.next429, %.thread363.us ] ; 2 uses
  %i.dl = trunc nuw nsw i32 %indvars.iv428 to i16
  %i.dm = add i16 %i.dl, %.sroa.0339.0.extract.trunc ; 5 uses
  %i.dn = load ptr, ptr %0, align 8, !tbaa !48    ; 10 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load i16, ptr %i.do, align 4, !tbaa !59 ; 2 uses
  %.not.i194.us = icmp sgt i16 %i.dp, %i.dm
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 14
  %i.dr = load i16, ptr %i.dq, align 2
  %.not6.i195.us = icmp slt i16 %i.dr, %i.dm
  %or.cond.i196.us = select i1 %.not.i194.us, i1 true, i1 %.not6.i195.us
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 10
  %i.dt = load i16, ptr %i.ds, align 2            ; 2 uses
  %.not7.i197.us = icmp sgt i16 %i.dt, %.sroa.8.0.extract.trunc
  %or.cond12.i198.us = select i1 %or.cond.i196.us, i1 true, i1 %.not7.i197.us
  %i.du = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.dv = load i16, ptr %i.du, align 4
  %.not8.i199.us = icmp slt i16 %i.dv, %.sroa.8.0.extract.trunc
  %or.cond14.i200.us = select i1 %or.cond12.i198.us, i1 true, i1 %.not8.i199.us
  br i1 %or.cond14.i200.us, label %.thread363.us, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 12
  %i.dx = load i16, ptr %i.dw, align 4, !tbaa !55 ; 2 uses
  %.not9.i201.us = icmp slt i16 %i.dj, %i.dx
  br i1 %.not9.i201.us, label %.thread363.us, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit202.us

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit202.us: ; preds = %bb.j
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dn, i64 18
  %i.dz = load i16, ptr %i.dy, align 2, !tbaa !67
  %.not366.us = icmp sgt i16 %i.dj, %i.dz
  br i1 %.not366.us, label %.thread363.us, label %bb.k

bb.k:                                             ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit202.us
  %i.ea = sext i16 %i.dx to i32
  %i.eb = sub nsw i32 %i.dk, %i.ea
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dn, i64 20
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !56
  %i.ef = mul nsw i32 %i.eb, %i.ee
  %i.eg = load i32, ptr %i.ec, align 4, !tbaa !57
  %i.eh = sext i16 %i.dt to i32
  %i.ei = sub nsw i32 %i.de, %i.eh
  %i.ej = add i32 %i.ei, %i.ef
  %i.ek = mul i32 %i.ej, %i.eg
  %i.el = sext i16 %i.dm to i32                   ; 2 uses
  %i.em = sext i16 %i.dp to i32
  %i.en = sub nsw i32 %i.el, %i.em
  %i.eo = add nsw i32 %i.en, %i.ek
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dn, i64 40
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !65
  %i.er = zext i32 %i.eo to i64                   ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !36
  %i.eu = and i8 %i.et, 6
  %.not.us = icmp eq i8 %i.eu, 0
  br i1 %.not.us, label %bb.l, label %.thread363.us

bb.l:                                             ; preds = %bb.k
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dn, i64 32
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !62
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %i.ew, i64 %i.er
  store i32 %.sroa.0268.0.insert.ext, ptr %i.ex, align 4
  %i.ey = load ptr, ptr %0, align 8, !tbaa !48    ; 10 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load i16, ptr %i.ez, align 4, !tbaa !59 ; 2 uses
  %.not.i216.us = icmp sgt i16 %i.fa, %i.dm
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 14
  %i.fc = load i16, ptr %i.fb, align 2
  %.not6.i217.us = icmp slt i16 %i.fc, %i.dm
  %or.cond.i218.us = select i1 %.not.i216.us, i1 true, i1 %.not6.i217.us
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ey, i64 10
  %i.fe = load i16, ptr %i.fd, align 2            ; 2 uses
  %.not7.i219.us = icmp sgt i16 %i.fe, %i.dg
  %or.cond12.i220.us = select i1 %or.cond.i218.us, i1 true, i1 %.not7.i219.us
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fg = load i16, ptr %i.ff, align 4
  %.not8.i221.us = icmp slt i16 %i.fg, %i.dg
  %or.cond14.i222.us = select i1 %or.cond12.i220.us, i1 true, i1 %.not8.i221.us
  br i1 %or.cond14.i222.us, label %.thread363.us, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  %i.fi = load i16, ptr %i.fh, align 4, !tbaa !55 ; 2 uses
  %.not9.i223.us = icmp slt i16 %i.dj, %i.fi
  br i1 %.not9.i223.us, label %.thread363.us, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit224.us

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit224.us: ; preds = %bb.m
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ey, i64 18
  %i.fk = load i16, ptr %i.fj, align 2, !tbaa !67
  %.not367.us = icmp sgt i16 %i.dj, %i.fk
  br i1 %.not367.us, label %.thread363.us, label %bb.n

bb.n:                                             ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit224.us
  %i.fl = sext i16 %i.fi to i32
  %i.fm = sub nsw i32 %i.dk, %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ey, i64 20
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !56
  %i.fq = mul nsw i32 %i.fm, %i.fp
  %i.fr = load i32, ptr %i.fn, align 4, !tbaa !57
  %i.fs = sext i16 %i.fe to i32
  %i.ft = sub nsw i32 %i.dh, %i.fs
  %i.fu = add i32 %i.ft, %i.fq
  %i.fv = mul i32 %i.fu, %i.fr
  %i.fw = sext i16 %i.fa to i32
  %i.fx = sub nsw i32 %i.el, %i.fw
  %i.fy = add nsw i32 %i.fx, %i.fv
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ey, i64 40
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !65
  %i.gb = zext i32 %i.fy to i64                   ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.ga, i64 %i.gb
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !36
  %i.ge = and i8 %i.gd, 6
  %.not112.us = icmp eq i8 %i.ge, 0
  br i1 %.not112.us, label %bb.o, label %.thread363.us

bb.o:                                             ; preds = %bb.n
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ey, i64 32
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !62
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %i.gg, i64 %i.gb
  store i32 %.sroa.0268.0.insert.ext, ptr %i.gh, align 4
  br label %.thread363.us

.thread363.us:                                    ; preds = %bb.o, %bb.n, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit224.us, %bb.m, %bb.l, %bb.k, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit202.us, %bb.j, %bb.i
  %indvars.iv.next429 = add nuw nsw i32 %indvars.iv428, 1 ; 2 uses
  %exitcond432.not.a = icmp eq i32 %indvars.iv.next429, %wide.trip.count431
  br i1 %exitcond432.not.a, label %._crit_edge401.us, label %bb.i, !llvm.loop !149

._crit_edge401.us:                                ; preds = %.thread363.us
  %i.gi = add i16 %.0109402.us, 1                 ; 2 uses
  %i.gj = sext i16 %i.gi to i32
  %i.gk = icmp slt i32 %i.gj, %i.d
  br i1 %i.gk, label %.preheader387.us, label %.preheader386, !llvm.loop !150

._crit_edge:                                      ; preds = %.thread360
  %indvars.iv.next424 = add nuw nsw i32 %indvars.iv423, 1 ; 2 uses
  %exitcond427.not = icmp eq i32 %indvars.iv.next424, %wide.trip.count426
  br i1 %exitcond427.not, label %.preheader388, label %.preheader389, !llvm.loop !151

bb.p:                                             ; preds = %.preheader389, %.thread360
  %indvars.iv418 = phi i32 [ 0, %.preheader389 ], [ %indvars.iv.next419, %.thread360 ] ; 2 uses
  %i.gl = trunc nuw nsw i32 %indvars.iv418 to i16
  %i.gm = add i16 %i.gl, %.sroa.8.0.extract.trunc ; 5 uses
  %i.gn = load ptr, ptr %0, align 8, !tbaa !48    ; 10 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load i16, ptr %i.go, align 4, !tbaa !59 ; 2 uses
  %.not.i150 = icmp sgt i16 %i.gp, %i.dc
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 14
  %i.gr = load i16, ptr %i.gq, align 2
  %.not6.i151 = icmp slt i16 %i.gr, %i.dc
  %or.cond.i152 = select i1 %.not.i150, i1 true, i1 %.not6.i151
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gn, i64 10
  %i.gt = load i16, ptr %i.gs, align 2            ; 2 uses
  %.not7.i153 = icmp sgt i16 %i.gt, %i.gm
  %or.cond12.i154 = select i1 %or.cond.i152, i1 true, i1 %.not7.i153
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gv = load i16, ptr %i.gu, align 4
  %.not8.i155 = icmp slt i16 %i.gv, %i.gm
  %or.cond14.i156 = select i1 %or.cond12.i154, i1 true, i1 %.not8.i155
  br i1 %or.cond14.i156, label %.thread360, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gn, i64 12
  %i.gx = load i16, ptr %i.gw, align 4, !tbaa !55
  %i.gy = sext i16 %i.gx to i32                   ; 2 uses
  %.not9.i157 = icmp slt i32 %i.cx, %i.gy
  br i1 %.not9.i157, label %.thread360, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit158

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit158: ; preds = %bb.q
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gn, i64 18
  %i.ha = load i16, ptr %i.gz, align 2, !tbaa !67
  %i.hb = sext i16 %i.ha to i32
  %.not368 = icmp sgt i32 %i.cx, %i.hb
  br i1 %.not368, label %.thread360, label %bb.r

bb.r:                                             ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit158
  %i.hc = sub nsw i32 %i.cx, %i.gy
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gn, i64 20
  %i.he = getelementptr inbounds nuw i8, ptr %i.gn, i64 24
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !56
  %i.hg = mul nsw i32 %i.hc, %i.hf
  %i.hh = load i32, ptr %i.hd, align 4, !tbaa !57
  %i.hi = sext i16 %i.gm to i32                   ; 2 uses
  %i.hj = sext i16 %i.gt to i32
  %i.hk = sub nsw i32 %i.hi, %i.hj
  %i.hl = add i32 %i.hk, %i.hg
  %i.hm = mul i32 %i.hl, %i.hh
  %i.hn = sext i16 %i.gp to i32
  %i.ho = sub nsw i32 %i.dd, %i.hn
  %i.hp = add nsw i32 %i.ho, %i.hm
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gn, i64 40
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !65
  %i.hs = zext i32 %i.hp to i64                   ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hr, i64 %i.hs
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !36
  %i.hv = and i8 %i.hu, 6
  %.not113 = icmp eq i8 %i.hv, 0
  br i1 %.not113, label %bb.s, label %.thread360

bb.s:                                             ; preds = %bb.r
  %i.hw = getelementptr inbounds nuw i8, ptr %i.gn, i64 32
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !62
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hx, i64 %i.hs
  store i32 %.sroa.0268.0.insert.ext274477, ptr %i.hy, align 4
  %i.hz = load ptr, ptr %0, align 8, !tbaa !48    ; 10 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  %i.ib = load i16, ptr %i.ia, align 4, !tbaa !59 ; 2 uses
  %.not.i172 = icmp sgt i16 %i.ib, %i.dc
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hz, i64 14
  %i.id = load i16, ptr %i.ic, align 2
  %.not6.i173 = icmp slt i16 %i.id, %i.dc
  %or.cond.i174 = select i1 %.not.i172, i1 true, i1 %.not6.i173
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hz, i64 10
  %i.if = load i16, ptr %i.ie, align 2            ; 2 uses
  %.not7.i175 = icmp sgt i16 %i.if, %i.gm
  %or.cond12.i176 = select i1 %or.cond.i174, i1 true, i1 %.not7.i175
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ih = load i16, ptr %i.ig, align 4
  %.not8.i177 = icmp slt i16 %i.ih, %i.gm
  %or.cond14.i178 = select i1 %or.cond12.i176, i1 true, i1 %.not8.i177
  br i1 %or.cond14.i178, label %.thread360, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ii = getelementptr inbounds nuw i8, ptr %i.hz, i64 12
  %i.ij = load i16, ptr %i.ii, align 4, !tbaa !55 ; 2 uses
  %.not9.i179 = icmp slt i16 %.reass478, %i.ij
  br i1 %.not9.i179, label %.thread360, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit180

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit180: ; preds = %bb.t
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hz, i64 18
  %i.il = load i16, ptr %i.ik, align 2, !tbaa !67
  %.not369 = icmp sgt i16 %.reass478, %i.il
  br i1 %.not369, label %.thread360, label %bb.u

bb.u:                                             ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit180
  %i.im = sext i16 %i.ij to i32
  %i.in = sub nsw i32 %i.cy, %i.im
  %i.io = getelementptr inbounds nuw i8, ptr %i.hz, i64 20
  %i.ip = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !56
  %i.ir = mul nsw i32 %i.in, %i.iq
  %i.is = load i32, ptr %i.io, align 4, !tbaa !57
  %i.it = sext i16 %i.if to i32
  %i.iu = sub nsw i32 %i.hi, %i.it
  %i.iv = add i32 %i.iu, %i.ir
  %i.iw = mul i32 %i.iv, %i.is
  %i.ix = sext i16 %i.ib to i32
  %i.iy = sub nsw i32 %i.dd, %i.ix
  %i.iz = add nsw i32 %i.iy, %i.iw
  %i.ja = getelementptr inbounds nuw i8, ptr %i.hz, i64 40
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !65
  %i.jc = zext i32 %i.iz to i64                   ; 2 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.jc
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !36
  %i.jf = and i8 %i.je, 6
  %.not114 = icmp eq i8 %i.jf, 0
  br i1 %.not114, label %bb.v, label %.thread360

bb.v:                                             ; preds = %bb.u
  %i.jg = getelementptr inbounds nuw i8, ptr %i.hz, i64 32
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !62
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.jc
  store i32 %.sroa.0268.0.insert.ext274477, ptr %i.ji, align 4
  br label %.thread360

.thread360:                                       ; preds = %bb.s, %bb.t, %bb.p, %bb.q, %bb.r, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit158, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit180, %bb.u, %bb.v
  %indvars.iv.next419 = add nuw nsw i32 %indvars.iv418, 1 ; 2 uses
  %exitcond422.not = icmp eq i32 %indvars.iv.next419, %wide.trip.count421
  br i1 %exitcond422.not, label %._crit_edge, label %bb.p, !llvm.loop !152

.preheader386:                                    ; preds = %._crit_edge401.us, %.preheader388.thread, %.preheader388.thread.thread469
  %9 = phi i32 [ %7, %.preheader388.thread ], [ %5, %.preheader388.thread.thread469 ], [ %8, %._crit_edge401.us ]
  %i.jj = add nsw i32 %i.d, -1
  %i.jk = icmp sgt i32 %i.d, 2
  br i1 %i.jk, label %.preheader385.lr.ph, label %._crit_edge408

.preheader385.lr.ph:                              ; preds = %.preheader386
  %10 = sext i16 %.sroa.5.0.extract.trunc to i32
  %11 = add nsw i32 %10, -1
  %12 = icmp sgt i16 %.sroa.5.0.extract.trunc, 2
  %13 = add nsw i32 %9, -1
  %14 = icmp sgt i16 %.sroa.091.0.extract.trunc, 2
  %or.cond = and i1 %12, %14
  br i1 %or.cond, label %.preheader385.us.us, label %._crit_edge408

.preheader385.us.us:                              ; preds = %.preheader385.lr.ph, %._crit_edge406.split.us.us.us
  %.0105407.us.us = phi i16 [ %i.lc, %._crit_edge406.split.us.us.us ], [ 1, %.preheader385.lr.ph ] ; 2 uses
  %i.jl = add i16 %.0105407.us.us, %.sroa.15.0.extract.trunc ; 3 uses
  %i.jm = sext i16 %i.jl to i32
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge404.us.us.us, %.preheader385.us.us
  %.0104405.us.us.us = phi i16 [ 1, %.preheader385.us.us ], [ %18, %._crit_edge404.us.us.us ] ; 2 uses
  %i.jn = add i16 %.0104405.us.us.us, %.sroa.8.0.extract.trunc ; 3 uses
  %i.jo = sext i16 %i.jn to i32
  br label %bb.w

bb.w:                                             ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.us.us.us, %.preheader.us.us.us
  %.0103403.us.us.us = phi i16 [ 1, %.preheader.us.us.us ], [ %15, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.us.us.us ] ; 2 uses
  %i.jp = add i16 %.0103403.us.us.us, %.sroa.0339.0.extract.trunc ; 3 uses
  %i.jq = load ptr, ptr %0, align 8, !tbaa !48    ; 9 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jq, i64 8
  %i.js = load i16, ptr %i.jr, align 4, !tbaa !59 ; 2 uses
  %.not.i238.us.us.us = icmp sgt i16 %i.js, %i.jp
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jq, i64 14
  %i.ju = load i16, ptr %i.jt, align 2
  %.not6.i239.us.us.us = icmp slt i16 %i.ju, %i.jp
  %or.cond.i240.us.us.us = select i1 %.not.i238.us.us.us, i1 true, i1 %.not6.i239.us.us.us
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jq, i64 10
  %i.jw = load i16, ptr %i.jv, align 2            ; 2 uses
  %.not7.i241.us.us.us = icmp sgt i16 %i.jw, %i.jn
  %or.cond12.i242.us.us.us = select i1 %or.cond.i240.us.us.us, i1 true, i1 %.not7.i241.us.us.us
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jq, i64 16
  %i.jy = load i16, ptr %i.jx, align 4
  %.not8.i243.us.us.us = icmp slt i16 %i.jy, %i.jn
  %or.cond14.i244.us.us.us = select i1 %or.cond12.i242.us.us.us, i1 true, i1 %.not8.i243.us.us.us
  br i1 %or.cond14.i244.us.us.us, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.us.us.us, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jq, i64 12
  %i.ka = load i16, ptr %i.jz, align 4, !tbaa !55 ; 2 uses
  %.not9.i245.us.us.us = icmp slt i16 %i.jl, %i.ka
  br i1 %.not9.i245.us.us.us, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.us.us.us, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.us.us.us

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.us.us.us: ; preds = %bb.x
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jq, i64 18
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !67
  %.not365.us.us.us = icmp sgt i16 %i.jl, %i.kc
  br i1 %.not365.us.us.us, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.us.us.us, label %bb.y

bb.y:                                             ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.us.us.us
  %i.kd = sext i16 %i.ka to i32
  %i.ke = sub nsw i32 %i.jm, %i.kd
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jq, i64 20
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jq, i64 24
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !56
  %i.ki = mul nsw i32 %i.ke, %i.kh
  %i.kj = load i32, ptr %i.kf, align 4, !tbaa !57
  %i.kk = sext i16 %i.jw to i32
  %i.kl = sub nsw i32 %i.jo, %i.kk
  %i.km = add i32 %i.kl, %i.ki
  %i.kn = mul i32 %i.km, %i.kj
  %i.ko = sext i16 %i.jp to i32
  %i.kp = sext i16 %i.js to i32
  %i.kq = sub nsw i32 %i.ko, %i.kp
  %i.kr = add nsw i32 %i.kq, %i.kn
  %i.ks = getelementptr inbounds nuw i8, ptr %i.jq, i64 40
  %i.kt = load ptr, ptr %i.ks, align 8, !tbaa !65
  %i.ku = zext i32 %i.kr to i64                   ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %i.kt, i64 %i.ku ; 2 uses
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !36
  %i.kx = or i8 %i.kw, 6
  store i8 %i.kx, ptr %i.kv, align 1, !tbaa !36
  %i.ky = load ptr, ptr %0, align 8, !tbaa !48
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 32
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !62
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.la, i64 %i.ku
  store i32 126, ptr %i.lb, align 4
  br label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.us.us.us

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.us.us.us: ; preds = %bb.y, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.us.us.us, %bb.x, %bb.w
  %15 = add i16 %.0103403.us.us.us, 1             ; 2 uses
  %16 = sext i16 %15 to i32
  %17 = icmp sgt i32 %13, %16
  br i1 %17, label %bb.w, label %._crit_edge404.us.us.us, !llvm.loop !153

._crit_edge404.us.us.us:                          ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit246.thread.us.us.us
  %18 = add i16 %.0104405.us.us.us, 1             ; 2 uses
  %19 = sext i16 %18 to i32
  %20 = icmp sgt i32 %11, %19
  br i1 %20, label %.preheader.us.us.us, label %._crit_edge406.split.us.us.us, !llvm.loop !154

._crit_edge406.split.us.us.us:                    ; preds = %._crit_edge404.us.us.us
  %i.lc = add i16 %.0105407.us.us, 1              ; 2 uses
  %i.ld = sext i16 %i.lc to i32
  %i.le = icmp sgt i32 %i.jj, %i.ld
  br i1 %i.le, label %.preheader385.us.us, label %._crit_edge408, !llvm.loop !155

._crit_edge408:                                   ; preds = %._crit_edge406.split.us.us.us, %.preheader389.lr.ph.thread473, %.preheader390.thread, %.preheader388, %.preheader385.lr.ph, %.preheader386
  ret void
}

declare noundef zeroext i1 @_ZN16GenerateNotifier8addEventE13GenNotifyTypeN4core8vector3dIsEE(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef, i48) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef zeroext i1 @_ZN10DungeonGen16findPlaceForDoorERN4core8vector3dIsEES3_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(152) %0, ptr nofree noundef nonnull writeonly align 2 captures(none) dereferenceable(6) %1, ptr nofree noundef nonnull writeonly align 2 captures(none) dereferenceable(6) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 140 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 146 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 142 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 150
  %i.g = load ptr, ptr %0, align 8, !tbaa !48     ; 10 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 14
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 10
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 18
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 20 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.s = load i16, ptr %i.r, align 4              ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 9 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 134 ; 2 uses
  %.pre = load i16, ptr %i.a, align 4, !tbaa !15
  %.pre462 = load i16, ptr %i.b, align 2, !tbaa !15
  %.pre463 = load i16, ptr %i.c, align 2, !tbaa !16
  %.pre464 = load i16, ptr %i.d, align 4, !tbaa !16
  %.pre465 = load i16, ptr %i.e, align 8, !tbaa !17
  %.pre466 = load i16, ptr %i.f, align 2, !tbaa !17
  %i.v = load i8, ptr %i.u, align 2, !range !50   ; 2 uses
  %i.w = trunc nuw i8 %i.v to i1
  %i.x = trunc nuw i8 %i.v to i1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.ad
  %i.y = phi i16 [ %.pre466, %bb.a ], [ %i.nk, %bb.ad ] ; 2 uses
  %i.z = phi i16 [ %.pre465, %bb.a ], [ %i.nl, %bb.ad ] ; 3 uses
  %i.aa = phi i16 [ %.pre464, %bb.a ], [ %i.nm, %bb.ad ] ; 2 uses
  %i.ab = phi i16 [ %.pre463, %bb.a ], [ %i.nn, %bb.ad ] ; 3 uses
  %i.ac = phi i16 [ %.pre462, %bb.a ], [ %i.no, %bb.ad ] ; 2 uses
  %i.ad = phi i16 [ %.pre, %bb.a ], [ %i.np, %bb.ad ] ; 3 uses
  %.017446 = phi i32 [ 0, %bb.a ], [ %i.nq, %bb.ad ] ; 2 uses
  %i.ae = add i16 %i.ac, %i.ad                    ; 12 uses
  %i.af = add i16 %i.aa, %i.ab                    ; 13 uses
  %i.ag = add i16 %i.y, %i.z                      ; 12 uses
  %i.ah = add i16 %i.af, 1                        ; 5 uses
  %i.ai = load i16, ptr %i.h, align 4, !tbaa !59  ; 8 uses
  %.not.i = icmp sgt i16 %i.ai, %i.ae
  %i.aj = load i16, ptr %i.i, align 2
  %.not6.i = icmp slt i16 %i.aj, %i.ae
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not6.i
  %i.ak = load i16, ptr %i.j, align 2             ; 15 uses
  %.not7.i = icmp sgt i16 %i.ak, %i.af
  %or.cond12.i = select i1 %or.cond.i, i1 true, i1 %.not7.i
  %i.al = load i16, ptr %i.k, align 4             ; 8 uses
  %.not8.i = icmp slt i16 %i.al, %i.af
  %or.cond14.i = select i1 %or.cond12.i, i1 true, i1 %.not8.i
  br i1 %or.cond14.i, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.am = load i16, ptr %i.l, align 4, !tbaa !55  ; 8 uses
  %.not9.i = icmp slt i16 %i.ag, %i.am
  br i1 %.not9.i, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit: ; preds = %bb.c
  %i.an = load i16, ptr %i.m, align 2, !tbaa !67
  %.not411 = icmp sgt i16 %i.ag, %i.an
  br i1 %.not411, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit
  %.not7.i36 = icmp sgt i16 %i.ak, %i.ah
  %.not8.i38 = icmp slt i16 %i.al, %i.ah
  %or.cond14.i39 = select i1 %.not7.i36, i1 true, i1 %.not8.i38
  %i.ao = and i32 %.017446, 3
  %i.ap = icmp eq i32 %i.ao, 0
  %or.cond = or i1 %or.cond14.i39, %i.ap
  br i1 %or.cond, label %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread, label %bb.g

_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread: ; preds = %bb.d, %bb.b, %bb.c, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit
  %.pre.i.i = load i32, ptr %i.t, align 4, !tbaa !49 ; 2 uses
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread
  %i.aq = mul i32 %.pre.i.i, 1103515245
  %i.ar = add i32 %i.aq, 12345                    ; 3 uses
  %i.as = sdiv i32 %i.ar, 65536
  %i.at = and i32 %i.as, 3
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %.preheader.i.i, label %bb.f

.preheader.i.i:                                   ; preds = %bb.e, %.preheader.i.i
  %i.av = phi i32 [ %i.ba, %.preheader.i.i ], [ %i.ar, %bb.e ]
  %.0.i.i = phi i32 [ %i.aw, %.preheader.i.i ], [ 0, %bb.e ] ; 2 uses
  %i.aw = add nuw nsw i32 %.0.i.i, 1
  %i.ax = mul i32 %i.av, 1103515245
  %i.ay = add i32 %i.ax, 12345                    ; 2 uses
  %i.az = mul i32 %i.ay, 1103515245
  %i.ba = add i32 %i.az, 12345                    ; 3 uses
  %i.bb = insertelement <2 x i32> poison, i32 %i.ay, i64 0
  %i.bc = insertelement <2 x i32> %i.bb, i32 %i.ba, i64 1
  %i.bd = sdiv <2 x i32> %i.bc, splat (i32 65536)
  %i.be = trunc nsw <2 x i32> %i.bd to <2 x i16>
  %i.bf = and <2 x i16> %i.be, splat (i16 32767)
  %i.bg = urem <2 x i16> %i.bf, splat (i16 3)
  %i.bh = add nsw <2 x i16> %i.bg, splat (i16 -1) ; 2 uses
  %i.bi = icmp eq <2 x i16> %i.bh, zeroinitializer ; 2 uses
  %i.bj = extractelement <2 x i1> %i.bi, i64 0
  %i.bk = extractelement <2 x i1> %i.bi, i64 1
  %or.cond.i.i = select i1 %i.bk, i1 true, i1 %i.bj
  %i.bl = icmp samesign ult i32 %.0.i.i, 9
  %or.cond5.i.i = select i1 %or.cond.i.i, i1 %i.bl, i1 false
  br i1 %or.cond5.i.i, label %.preheader.i.i, label %.critedge.loopexit.i.i, !llvm.loop !0

bb.f:                                             ; preds = %bb.e, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread
  %i.bm = phi i32 [ %i.ar, %bb.e ], [ %.pre.i.i, %_ZNK9VoxelArea8containsEN4core8vector3dIsEE.exit.thread ]
  %i.bn = mul i32 %i.bm, 1103515245
  %i.bo = add i32 %i.bn, 12345                    ; 2 uses
  %i.bp = mul i32 %i.bo, 1103515245
  %i.bq = add i32 %i.bp, 12345                    ; 2 uses
  store i32 %i.bq, ptr %i.t, align 4, !tbaa !49
  %i.br = insertelement <2 x i32> poison, i32 %i.bq, i64 0
  %i.bs = insertelement <2 x i32> %i.br, i32 %i.bo, i64 1
  %i.bt = sdiv <2 x i32> %i.bs, splat (i32 65536)
  %i.bu = and <2 x i32> %i.bt, splat (i32 1)
  %i.bv = icmp eq <2 x i32> %i.bu, zeroinitializer ; 2 uses
  %i.bw = extractelement <2 x i1> %i.bv, i64 0
  %spec.select.i.i = select i1 %i.bw, i16 1, i16 -1 ; 2 uses
  %i.bx = extractelement <2 x i1> %i.bv, i64 1    ; 2 uses
  %.spec.select.i.i = select i1 %i.bx, i16 0, i16 %spec.select.i.i
  %spec.select..i.i = select i1 %i.bx, i16 %spec.select.i.i, i16 0
  %i.by = insertelement <2 x i16> poison, i16 %.spec.select.i.i, i64 0
  %i.bz = insertelement <2 x i16> %i.by, i16 %spec.select..i.i, i64 1
  br label %_ZN10DungeonGen12randomizeDirEv.exit

.critedge.loopexit.i.i:                           ; preds = %.preheader.i.i
  store i32 %i.ba, ptr %i.t, align 4, !tbaa !49
  br label %_ZN10DungeonGen12randomizeDirEv.exit

_ZN10DungeonGen12randomizeDirEv.exit:             ; preds = %bb.f, %.critedge.loopexit.i.i
  %i.ca = phi <2 x i16> [ %i.bh, %.critedge.loopexit.i.i ], [ %i.bz, %bb.f ] ; 2 uses
  %i.cb = extractelement <2 x i16> %i.ca, i64 0   ; 2 uses
  %.sroa.13.0.insert.ext.i.i = zext i16 %i.cb to i48
  %.sroa.13.0.insert.shift.i.i = shl nuw i48 %.sroa.13.0.insert.ext.i.i, 32
  %i.cc = extractelement <2 x i16> %i.ca, i64 1   ; 2 uses
  %.sroa.0.0.insert.ext.i.i = zext i16 %i.cc to i48
  %.sroa.0.0.insert.insert.i.i = or disjoint i48 %.sroa.13.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  store i48 %.sroa.0.0.insert.insert.i.i, ptr %i.b, align 2, !tbaa !29
  br label %bb.ad

bb.g:                                             ; preds = %bb.d
  %i.cd = sext i16 %i.ag to i32
  %i.ce = sext i16 %i.am to i32
  %i.cf = sub nsw i32 %i.cd, %i.ce
  %i.cg = load i32, ptr %i.o, align 4, !tbaa !56
  %i.ch = mul nsw i32 %i.cg, %i.cf
  %i.ci = load i32, ptr %i.n, align 4, !tbaa !57
  %i.cj = sext i16 %i.af to i32
  %i.ck = sext i16 %i.ak to i32
  %i.cl = sub nsw i32 %i.cj, %i.ck
  %i.cm = add i32 %i.cl, %i.ch
  %i.cn = mul i32 %i.cm, %i.ci
  %i.co = sext i16 %i.ae to i32
  %i.cp = sext i16 %i.ai to i32
  %i.cq = sub nsw i32 %i.co, %i.cp
  %i.cr = add nsw i32 %i.cq, %i.cn
  %i.cs = load ptr, ptr %i.p, align 8, !tbaa !65
  %i.ct = sext i32 %i.cr to i64                   ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %i.cs, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !36
  %i.cw = and i8 %i.cv, 1
  %.not.i44 = icmp eq i8 %i.cw, 0
  br i1 %.not.i44, label %bb.h, label %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit

bb.h:                                             ; preds = %bb.g
  %i.cx = load ptr, ptr %i.q, align 8, !tbaa !62
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.ct
  %i.cz = load i32, ptr %i.cy, align 4
  %i.da = trunc i32 %i.cz to i16
  br label %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit

_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit: ; preds = %bb.g, %bb.h
  %.sroa.6.0.i = phi i16 [ %i.da, %bb.h ], [ 127, %bb.g ]
  %i.db = icmp eq i16 %.sroa.6.0.i, %i.s
  br i1 %i.db, label %bb.i, label %.critedge

bb.i:                                             ; preds = %_ZNK16VoxelManipulator19getNodeNoExNoEmergeERKN4core8vector3dIsEE.exit
  %i.dc = sext i16 %i.ag to i32
  %i.dd = sext i16 %i.am to i32
  %i.de = sub nsw i32 %i.dc, %i.dd
  %i.df = load i32, ptr %i.o, align 8, !tbaa !56
  %i.dg = mul nsw i32 %i.df, %i.de
  %i.dh = load i32, ptr %i.n, align 4, !tbaa !57
  %i.di = sext i16 %i.ah to i32
  %i.dj = sext i16 %i.ak to i32
end_hunk_0
