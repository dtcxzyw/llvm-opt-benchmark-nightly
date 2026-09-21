Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/cavegen?download=true
inline.NumInlined: 304
inline.NumDeleted: 78
begin_hunk_0_@_ZN12CavernsNoiseC2EPK14NodeDefManagerN4core8vector3dIsEEP11NoiseParamsifff:bb.a
  %i.al = phi i16 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.af, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.am = icmp eq i16 %i.al, 127
  br i1 %i.am, label %bb.c, label %.noexc.i19

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store i16 126, ptr %i.ag, align 8, !tbaa !206
  br label %.noexc.i19

bb.d:                                             ; preds = %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef 88) #20
  br label %bb.l

bb.e:                                             ; preds = %.noexc.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

bb.f:                                             ; preds = %.noexc
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %8, align 8, !tbaa !113   ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.z
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %bb.f
  %i.as = load i64, ptr %i.z, align 8, !tbaa !114
  %i.at = add i64 %i.as, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.e ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15 ], [ %i.ap, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  br label %bb.l

.noexc.i19:                                       ; preds = %bb.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.au = load ptr, ptr %0, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.av, ptr %9, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 18, ptr %i.a, align 8, !tbaa !112
  %i.aw = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc20 unwind label %bb.i   ; 2 uses

.noexc20:                                         ; preds = %.noexc.i19
  store ptr %i.aw, ptr %9, align 8, !tbaa !113
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !112 ; 3 uses
  store i64 %i.ax, ptr %i.av, align 8, !tbaa !114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.aw, ptr noundef nonnull align 1 dereferenceable(18) @.str.4, i64 18, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !68
  %i.az = load ptr, ptr %9, align 8, !tbaa !113
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ax
  store i8 0, ptr %i.ba, align 1, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.bb = invoke noundef zeroext i16 @_ZNK14NodeDefManager5getIdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(65848) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.g unwind label %bb.j       ; 2 uses

bb.g:                                             ; preds = %.noexc20
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 42 ; 3 uses
  store i16 %i.bb, ptr %i.bc, align 2, !tbaa !207
  %i.bd = load ptr, ptr %9, align 8, !tbaa !113   ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.av
  br i1 %i.be, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %bb.g
  %i.bf = load i64, ptr %i.av, align 8, !tbaa !114
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #20
  %.pre29 = load i16, ptr %i.bc, align 2, !tbaa !207
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  %i.bh = phi i16 [ %.pre29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22 ], [ %i.bb, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.bi = icmp eq i16 %i.bh, 127
  br i1 %i.bi, label %bb.h, label %bb.k

bb.h:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  store i16 126, ptr %i.bc, align 2, !tbaa !207
  br label %bb.k

bb.i:                                             ; preds = %.noexc.i19
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

bb.j:                                             ; preds = %.noexc20
  %i.bk = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bl = load ptr, ptr %9, align 8, !tbaa !113   ; 2 uses
  %i.bm = icmp eq ptr %i.bl, %i.av
  br i1 %i.bm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25: ; preds = %bb.j
  %i.bn = load i64, ptr %i.av, align 8, !tbaa !114
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bl, i64 noundef %i.bo) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25, %bb.i
  %.pn12 = phi { ptr, i32 } [ %i.bj, %bb.i ], [ %i.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25 ], [ %i.bk, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.l

bb.k:                                             ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24
  ret void

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %bb.d
  %.pn12.pn = phi { ptr, i32 } [ %.pn12, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17 ], [ %i.an, %bb.d ]
  resume { ptr, i32 } %.pn12.pn
}

declare noundef zeroext i16 @_ZNK14NodeDefManager5getIdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(65848), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !111
  %i.c = icmp eq ptr %1, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.8) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #21 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 %i.d, ptr %i.a, align 8, !tbaa !112
  %i.e = icmp ugt i64 %i.d, 15
  br i1 %i.e, label %.noexc, label %._crit_edge.i

.noexc:                                           ; preds = %bb.c
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !113
  %i.g = load i64, ptr %i.a, align 8, !tbaa !112
  store i64 %i.g, ptr %i.b, align 8, !tbaa !114
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c, %.noexc
  %i.h = phi ptr [ %i.f, %.noexc ], [ %i.b, %bb.c ] ; 2 uses
  switch i64 %i.d, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i
  %i.i = load i8, ptr %1, align 1, !tbaa !114
  store i8 %i.i, ptr %i.h, align 1, !tbaa !114
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.h, ptr nonnull align 1 %1, i64 %i.d, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i
  %i.j = load i64, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !68
  %i.l = load ptr, ptr %0, align 8, !tbaa !113
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  store i8 0, ptr %i.m, align 1, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12CavernsNoiseD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(44) dereferenceable(44) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110  ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5NoiseD1Ev(ptr noundef nonnull align 8 dead_on_return(88) dereferenceable(88) %i.b) #21
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 88) #20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN12CavernsNoise15generateCavernsEP8MMVManipN4core8vector3dIsEES4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(44) %0, ptr nofree noundef readonly captures(none) %1, i48 %2, i48 %3) local_unnamed_addr #1 align 2 {
bb.a:
  %.sroa.035.0.extract.trunc = trunc i48 %2 to i16 ; 4 uses
  %.sroa.4.0.extract.shift = lshr i48 %2, 16
  %.sroa.4.0.extract.trunc = trunc i48 %.sroa.4.0.extract.shift to i16
  %.sroa.7.0.extract.shift = lshr i48 %2, 32
  %.sroa.7.0.extract.trunc = trunc nuw i48 %.sroa.7.0.extract.shift to i16 ; 3 uses
  %.sroa.0.0.extract.trunc = trunc i48 %3 to i16  ; 2 uses
  %.sroa.2.0.extract.shift = lshr i48 %3, 16
  %.sroa.2.0.extract.trunc = trunc i48 %.sroa.2.0.extract.shift to i16 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110
  %i.c = sitofp nsz i16 %.sroa.035.0.extract.trunc to float
  %i.d = sext i16 %.sroa.4.0.extract.trunc to i32 ; 4 uses
  %i.e = add nsw i32 %i.d, -1                     ; 3 uses
  %i.f = sitofp nsz i32 %i.e to float
  %i.g = sitofp nsz i16 %.sroa.7.0.extract.trunc to float
  %i.h = tail call noundef ptr @_ZN5Noise10noiseMap3DEfffPf(ptr noundef nonnull align 8 dereferenceable(88) %i.b, float noundef %i.c, float noundef %i.f, float noundef %i.g, ptr noundef null) ; 0 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 10 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !tbaa !109
  %i.k = sext i16 %i.j to i64
  %i.l = add nsw i64 %i.k, 1                      ; 2 uses
  %i.m = icmp ugt i64 %i.l, 4611686018427387903
  %i.n = shl nsw i64 %i.l, 2
  %i.o = select i1 %i.m, i64 -1, i64 %i.n
  %i.p = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.o) #19 ; 4 uses
  %i.q = sext i16 %.sroa.2.0.extract.trunc to i32 ; 3 uses
  %.not65 = icmp sgt i32 %i.e, %i.q               ; 2 uses
  br i1 %.not65, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load float, ptr %i.r, align 8, !tbaa !104 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.u = load float, ptr %i.t, align 4, !tbaa !105 ; 2 uses
  %i.v = add i16 %.sroa.2.0.extract.trunc, -1
  %i.w = sext i16 %i.v to i32                     ; 2 uses
  %i.x = add nsw i32 %i.d, -2
  %i.y = tail call i32 @llvm.smin.i32(i32 %i.x, i32 %i.w)
  %i.z = add nsw i32 %i.w, 1
  %i.aa = sub i32 %i.z, %i.y                      ; 3 uses
  %min.iters.check = icmp ult i32 %i.aa, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph
  %i.ab = add i16 %.sroa.2.0.extract.trunc, -1    ; 3 uses
  %i.ac = sext i16 %i.ab to i32                   ; 2 uses
  %i.ad = add nsw i32 %i.d, -2
  %smin = tail call i32 @llvm.smin.i32(i32 %i.ad, i32 %i.ac)
  %i.ae = sub i32 %i.ac, %smin                    ; 2 uses
  %i.af = trunc i32 %i.ae to i16
  %i.ag = sub i16 %i.ab, %i.af
  %i.ah = icmp sgt i16 %i.ag, %i.ab
  %i.ai = icmp ugt i32 %i.ae, 255
  %i.aj = or i1 %i.ah, %i.ai
  br i1 %i.aj, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i32 %i.aa, -4                      ; 4 uses
  %i.ak = trunc i32 %n.vec to i16
  %i.al = sub i16 %.sroa.2.0.extract.trunc, %i.ak
  %i.am = trunc i32 %n.vec to i8
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.s, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert124 = insertelement <4 x float> poison, float %i.u, i64 0
  %broadcast.splat125 = shufflevector <4 x float> %broadcast.splatinsert124, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert126 = insertelement <4 x i16> poison, i16 %.sroa.2.0.extract.trunc, i64 0
  %broadcast.splat127 = shufflevector <4 x i16> %broadcast.splatinsert126, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.an = add <4 x i16> %broadcast.splat127, <i16 0, i16 -1, i16 -2, i16 -3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i16> [ %i.an, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.ao = sitofp <4 x i16> %vec.ind to <4 x float>
  %i.ap = fsub nsz <4 x float> %broadcast.splat, %i.ao
  %i.aq = fdiv nsz <4 x float> %i.ap, %broadcast.splat125 ; 2 uses
  %i.ar = fcmp nsz olt <4 x float> %i.aq, splat (float 1.000000e+00)
  %i.as = select nsz <4 x i1> %i.ar, <4 x float> %i.aq, <4 x float> splat (float 1.000000e+00)
  %i.at = and i32 %index, 252
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.au
  store <4 x float> %i.as, ptr %i.av, align 4, !tbaa !63
  %index.next = add nuw i32 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i16> %vec.ind, splat (i16 -4)
  %i.aw = icmp eq i32 %index.next, %n.vec
  br i1 %i.aw, label %middle.block, label %vector.body, !llvm.loop !208

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i32 %i.aa, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph, %middle.block
  %.04867.ph = phi i16 [ %.sroa.2.0.extract.trunc, %vector.scevcheck ], [ %.sroa.2.0.extract.trunc, %.lr.ph ], [ %i.al, %middle.block ]
  %.04966.ph = phi i8 [ 0, %vector.scevcheck ], [ 0, %.lr.ph ], [ %i.am, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.az = ashr i48 %3, 32
  %i.ba = trunc nsw i48 %i.az to i32              ; 2 uses
  %i.bb = sext i16 %.sroa.7.0.extract.trunc to i32 ; 3 uses
  %.not5786 = icmp sgt i32 %i.bb, %i.ba
  br i1 %.not5786, label %._crit_edge90, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %._crit_edge
  %.not5877 = icmp sgt i16 %.sroa.035.0.extract.trunc, %.sroa.0.0.extract.trunc
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 30
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bh = sext i16 %.sroa.035.0.extract.trunc to i32
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %brmerge = or i1 %.not5877, %.not65
  br i1 %brmerge, label %._crit_edge90, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre.pre = load i32, ptr %i.ay, align 4, !tbaa !29
  %.pre103.pre = load i16, ptr %i.bg, align 4, !tbaa !107
  br label %.preheader

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.04867 = phi i16 [ %i.br, %scalar.ph ], [ %.04867.ph, %scalar.ph.preheader ] ; 2 uses
  %.04966 = phi i8 [ %i.bs, %scalar.ph ], [ %.04966.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bk = sitofp i16 %.04867 to float
  %i.bl = fsub nsz float %i.s, %i.bk
  %i.bm = fdiv nsz float %i.bl, %i.u              ; 2 uses
  %i.bn = fcmp nsz olt float %i.bm, 1.000000e+00
  %i.bo = select nsz i1 %i.bn, float %i.bm, float 1.000000e+00
  %i.bp = zext i8 %.04966 to i64
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.bp
  store float %i.bo, ptr %i.bq, align 4, !tbaa !63
  %i.br = add i16 %.04867, -1                     ; 2 uses
  %i.bs = add i8 %.04966, 1
  %i.bt = sext i16 %i.br to i32
  %.not = icmp sgt i32 %i.e, %i.bt
  br i1 %.not, label %._crit_edge, label %scalar.ph, !llvm.loop !209

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge82.split
  %.pre103 = phi i16 [ %.pre103110, %._crit_edge82.split ], [ %.pre103.pre, %.preheader.preheader ] ; 2 uses
  %.pre = phi i32 [ %.pre106, %._crit_edge82.split ], [ %.pre.pre, %.preheader.preheader ] ; 2 uses
  %i.bu = phi i32 [ %i.bx, %._crit_edge82.split ], [ %i.bb, %.preheader.preheader ] ; 2 uses
  %.04489 = phi i16 [ %i.bw, %._crit_edge82.split ], [ %.sroa.7.0.extract.trunc, %.preheader.preheader ]
  %.04687 = phi i1 [ %.3, %._crit_edge82.split ], [ false, %.preheader.preheader ]
  %i.bv = sub nsw i32 %i.bu, %i.bb
  br label %.lr.ph75

._crit_edge82.split:                              ; preds = %._crit_edge76
  %i.bw = add i16 %.04489, 1                      ; 2 uses
  %i.bx = sext i16 %i.bw to i32                   ; 2 uses
  %.not57 = icmp sgt i32 %i.bx, %i.ba
  br i1 %.not57, label %._crit_edge90, label %.preheader, !llvm.loop !210

.lr.ph75:                                         ; preds = %.preheader, %._crit_edge76
  %.pre103112 = phi i16 [ %.pre103, %.preheader ], [ %.pre103110, %._crit_edge76 ]
  %.pre108 = phi i32 [ %.pre, %.preheader ], [ %.pre106, %._crit_edge76 ]
  %i.by = phi i32 [ %.pre, %.preheader ], [ %i.eo, %._crit_edge76 ] ; 2 uses
  %i.bz = phi i16 [ %.pre103, %.preheader ], [ %i.ep, %._crit_edge76 ] ; 2 uses
  %.04380 = phi i16 [ %.sroa.035.0.extract.trunc, %.preheader ], [ %i.cz, %._crit_edge76 ] ; 2 uses
  %.14778 = phi i1 [ %.04687, %.preheader ], [ %.3, %._crit_edge76 ]
  %i.ca = sext i16 %.04380 to i32                 ; 2 uses
  %i.cb = load i16, ptr %i.bc, align 4, !tbaa !34
  %i.cc = sext i16 %i.cb to i32
  %i.cd = sub nsw i32 %i.bu, %i.cc
  %i.ce = load i32, ptr %i.bd, align 4, !tbaa !35
  %i.cf = mul nsw i32 %i.cd, %i.ce
  %i.cg = load i16, ptr %i.be, align 2, !tbaa !36
  %i.ch = sext i16 %i.cg to i32
  %i.ci = add i32 %i.cf, %i.q
  %i.cj = sub i32 %i.ci, %i.ch
  %i.ck = mul i32 %i.cj, %i.by
  %i.cl = load i16, ptr %i.ax, align 4, !tbaa !37
  %i.cm = sext i16 %i.cl to i32
  %i.cn = sub nsw i32 %i.ca, %i.cm
  %i.co = add nsw i32 %i.cn, %i.ck
  %i.cp = load i16, ptr %i.bf, align 2, !tbaa !108
  %i.cq = zext i16 %i.cp to i32
  %i.cr = mul nsw i32 %i.bv, %i.cq
  %i.cs = load i16, ptr %i.i, align 2, !tbaa !109
  %i.ct = sext i16 %i.cs to i32
  %i.cu = zext i16 %i.bz to i32
  %i.cv = mul nsw i32 %i.cu, %i.ct
  %i.cw = sub nsw i32 %i.ca, %i.bh
  %i.cx = add i32 %i.cw, %i.cr
  %i.cy = add i32 %i.cx, %i.cv
  br label %bb.b

._crit_edge76:                                    ; preds = %bb.h
  %i.cz = add i16 %.04380, 1                      ; 2 uses
  %.not58 = icmp sgt i16 %i.cz, %.sroa.0.0.extract.trunc
  br i1 %.not58, label %._crit_edge82.split, label %.lr.ph75, !llvm.loop !211

bb.b:                                             ; preds = %.lr.ph75, %bb.h
  %.pre103111 = phi i16 [ %.pre103112, %.lr.ph75 ], [ %.pre103110, %bb.h ] ; 3 uses
  %.pre107 = phi i32 [ %.pre108, %.lr.ph75 ], [ %.pre106, %bb.h ] ; 3 uses
  %i.da = phi i32 [ %i.by, %.lr.ph75 ], [ %i.eo, %bb.h ] ; 3 uses
  %i.db = phi i16 [ %i.bz, %.lr.ph75 ], [ %i.ep, %bb.h ] ; 3 uses
  %indvars.iv = phi i32 [ %i.q, %.lr.ph75 ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %.04272 = phi i32 [ %i.cy, %.lr.ph75 ], [ %i.er, %bb.h ] ; 2 uses
  %.271 = phi i1 [ %.14778, %.lr.ph75 ], [ %.3, %bb.h ]
  %.15070 = phi i8 [ 0, %.lr.ph75 ], [ %i.et, %bb.h ] ; 2 uses
  %.06269 = phi i32 [ %i.co, %.lr.ph75 ], [ %i.es, %bb.h ] ; 2 uses
  %i.dc = load ptr, ptr %i.bi, align 8, !tbaa !55
  %i.dd = zext i32 %.06269 to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.dd ; 2 uses
  %i.df = load i16, ptr %i.de, align 4, !tbaa !57
  %i.dg = load ptr, ptr %i.a, align 8, !tbaa !110
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 80
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !62
  %i.dj = zext i32 %.04272 to i64
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dj
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !63
  %i.dm = tail call nsz noundef float @llvm.fabs.f32(float %i.dl)
  %i.dn = zext i8 %.15070 to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.dn
  %i.dp = load float, ptr %i.do, align 4, !tbaa !63
  %i.dq = fmul nsz float %i.dm, %i.dp             ; 2 uses
  %i.dr = load float, ptr %i.bj, align 8, !tbaa !106 ; 2 uses
  %i.ds = fadd nsz float %i.dr, -1.000000e-01
  %i.dt = fcmp nsz ogt float %i.dq, %i.ds
  br i1 %i.dt, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.du = fcmp nsz ogt float %i.dq, %i.dr
  br i1 %i.du, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.dv = load ptr, ptr %0, align 8, !tbaa !103   ; 2 uses
  %i.dw = zext i16 %i.df to i64                   ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !66
  %i.dz = load ptr, ptr %i.dv, align 8, !tbaa !67 ; 3 uses
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %i.ed = sdiv exact i64 %i.ec, 2072
  %i.ee = icmp ugt i64 %i.ed, %i.dw
  br i1 %i.ee, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ef = getelementptr inbounds nuw [2072 x i8], ptr %i.dz, i64 %i.dw ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !68
  %i.ei = icmp eq i64 %i.eh, 0
  br i1 %i.ei, label %bb.f, label %_ZNK14NodeDefManager3getEt.exit

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dz, i64 259000
  br label %_ZNK14NodeDefManager3getEt.exit

_ZNK14NodeDefManager3getEt.exit:                  ; preds = %bb.e, %bb.f
  %i.ek = phi ptr [ %i.ej, %bb.f ], [ %i.ef, %bb.e ]
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1402
  %i.em = load i8, ptr %i.el, align 2, !tbaa !98, !range !99, !noundef !100
  %i.en = trunc nuw i8 %i.em to i1
  br i1 %i.en, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNK14NodeDefManager3getEt.exit
  store i32 126, ptr %i.de, align 4
  %.pre104 = load i16, ptr %i.bg, align 4, !tbaa !107 ; 2 uses
  %.pre105 = load i32, ptr %i.ay, align 4, !tbaa !101 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %_ZNK14NodeDefManager3getEt.exit, %bb.g, %bb.b
  %.pre103110 = phi i16 [ %.pre104, %bb.g ], [ %.pre103111, %_ZNK14NodeDefManager3getEt.exit ], [ %.pre103111, %bb.c ], [ %.pre103111, %bb.b ] ; 3 uses
  %.pre106 = phi i32 [ %.pre105, %bb.g ], [ %.pre107, %_ZNK14NodeDefManager3getEt.exit ], [ %.pre107, %bb.c ], [ %.pre107, %bb.b ] ; 3 uses
  %i.eo = phi i32 [ %.pre105, %bb.g ], [ %i.da, %_ZNK14NodeDefManager3getEt.exit ], [ %i.da, %bb.c ], [ %i.da, %bb.b ] ; 3 uses
  %i.ep = phi i16 [ %.pre104, %bb.g ], [ %i.db, %_ZNK14NodeDefManager3getEt.exit ], [ %i.db, %bb.c ], [ %i.db, %bb.b ] ; 3 uses
  %.3 = phi i1 [ true, %bb.g ], [ true, %_ZNK14NodeDefManager3getEt.exit ], [ true, %bb.c ], [ %.271, %bb.b ] ; 4 uses
  %indvars.iv.next = add nsw i32 %indvars.iv, -1
  %i.eq = zext i16 %i.ep to i32
  %i.er = sub i32 %.04272, %i.eq
  %i.es = sub i32 %.06269, %i.eo
  %i.et = add i8 %.15070, 1
  %.not59 = icmp slt i32 %indvars.iv, %i.d
  br i1 %.not59, label %._crit_edge76, label %bb.b, !llvm.loop !212

._crit_edge90:                                    ; preds = %._crit_edge82.split, %.preheader.lr.ph, %._crit_edge
  %.046.lcssa = phi i1 [ false, %._crit_edge ], [ false, %.preheader.lr.ph ], [ %.3, %._crit_edge82.split ]
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #20
  ret i1 %.046.lcssa
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15CavesRandomWalkC2EPK14NodeDefManagerP16GenerateNotifieriittfP8BiomeGen(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(150) initializes((8, 24), (32, 52), (56, 64), (80, 116), (120, 132), (144, 146)) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i16 noundef zeroext %5, i16 noundef zeroext %6, float noundef %7, ptr noundef %8) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120
  store <2 x float> zeroinitializer, ptr %i.d, align 8, !tbaa !63
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  store float 0.000000e+00, ptr %i.e, align 8, !tbaa !115
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(36) %i.c, i8 0, i64 36, i1 false)
  store ptr %1, ptr %i.f, align 8, !tbaa !121
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %i.g, align 8, !tbaa !122
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %3, ptr %i.h, align 8, !tbaa !123
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %4, ptr %i.i, align 4, !tbaa !124
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr @_ZL19nparams_caveliquids, ptr %i.j, align 8, !tbaa !125
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %7, ptr %i.k, align 8, !tbaa !126
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %8, ptr %i.l, align 8, !tbaa !127
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  store i16 %5, ptr %i.m, align 8, !tbaa !128
  %i.n = icmp eq i16 %5, 127
  br i1 %i.n, label %.noexc.i, label %.thread

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 6 uses
  store ptr %i.o, ptr %9, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #21
  store i64 19, ptr %i.b, align 8, !tbaa !112
  %i.p = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %bb.c     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.p, ptr %9, align 8, !tbaa !113
  %i.q = load i64, ptr %i.b, align 8, !tbaa !112  ; 3 uses
  store i64 %i.q, ptr %i.o, align 8, !tbaa !114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(19) %i.p, ptr noundef nonnull align 1 dereferenceable(19) @.str.3, i64 19, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !68
  %i.s = load ptr, ptr %9, align 8, !tbaa !113
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  %i.u = invoke noundef zeroext i16 @_ZNK14NodeDefManager5getIdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(65848) %1, ptr noundef nonnull align 8 dereferenceable(32) %9)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %.noexc
  store i16 %i.u, ptr %i.m, align 8, !tbaa !128
  %i.v = load ptr, ptr %9, align 8, !tbaa !113    ; 2 uses
  %i.w = icmp eq ptr %i.v, %i.o
  br i1 %i.w, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.x = load i64, ptr %i.o, align 8, !tbaa !114
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.y) #20
  %.pr.pre = load i16, ptr %i.m, align 8, !tbaa !128
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i

bb.c:                                             ; preds = %.noexc.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

bb.d:                                             ; preds = %.noexc
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %9, align 8, !tbaa !113   ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.o
  br i1 %i.ac, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19: ; preds = %bb.d
  %i.ad = load i64, ptr %i.o, align 8, !tbaa !114
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19, %bb.c
  %.pn = phi { ptr, i32 } [ %i.z, %bb.c ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i19 ], [ %i.aa, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.pr = phi i16 [ %.pr.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.u, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  %i.af = icmp eq i16 %.pr, 127
  br i1 %i.af, label %bb.e, label %.thread

bb.e:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  store i16 126, ptr %i.m, align 8, !tbaa !128
  br label %.thread

.thread:                                          ; preds = %bb.a, %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 146 ; 4 uses
  store i16 %6, ptr %i.ag, align 2, !tbaa !129
  %i.ah = icmp eq i16 %6, 127
  br i1 %i.ah, label %.noexc.i23, label %.thread34

.noexc.i23:                                       ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #21
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.ai, ptr %10, align 8, !tbaa !111
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 18, ptr %i.a, align 8, !tbaa !112
  %i.aj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc24 unwind label %bb.g   ; 2 uses

.noexc24:                                         ; preds = %.noexc.i23
  store ptr %i.aj, ptr %10, align 8, !tbaa !113
  %i.ak = load i64, ptr %i.a, align 8, !tbaa !112 ; 3 uses
  store i64 %i.ak, ptr %i.ai, align 8, !tbaa !114
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %i.aj, ptr noundef nonnull align 1 dereferenceable(18) @.str.4, i64 18, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !68
  %i.am = load ptr, ptr %10, align 8, !tbaa !113
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.ak
  store i8 0, ptr %i.an, align 1, !tbaa !114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  %i.ao = invoke noundef zeroext i16 @_ZNK14NodeDefManager5getIdERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(65848) %1, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.f unwind label %bb.h       ; 2 uses

bb.f:                                             ; preds = %.noexc24
  store i16 %i.ao, ptr %i.ag, align 2, !tbaa !129
  %i.ap = load ptr, ptr %10, align 8, !tbaa !113  ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.ai
  br i1 %i.aq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i27, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.f
  %i.ar = load i64, ptr %i.ai, align 8, !tbaa !114
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #20
  %.pr33.pre = load i16, ptr %i.ag, align 2, !tbaa !129
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i27

bb.g:                                             ; preds = %.noexc.i23
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

bb.h:                                             ; preds = %.noexc24
  %i.au = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.av = load ptr, ptr %10, align 8, !tbaa !113  ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.ai
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %bb.h
  %i.ax = load i64, ptr %i.ai, align 8, !tbaa !114
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29, %bb.g
  %.pn16 = phi { ptr, i32 } [ %i.at, %bb.g ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29 ], [ %i.au, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i27: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26
  %.pr33 = phi i16 [ %.pr33.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %i.ao, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #21
  %i.az = icmp eq i16 %.pr33, 127
  br i1 %i.az, label %bb.i, label %.thread34

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i27
  store i16 126, ptr %i.ag, align 2, !tbaa !129
  br label %.thread34

.thread34:                                        ; preds = %.thread, %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i27
  ret void

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21
  %.pn16.pn = phi { ptr, i32 } [ %.pn16, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit21 ]
  resume { ptr, i32 } %.pn16.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15CavesRandomWalk8makeCaveEP8MMVManipN4core8vector3dIsEES4_P12PseudoRandombiPs(ptr nofree noundef nonnull align 8 dereferenceable(150) initializes((0, 8), (24, 32), (64, 92), (120, 132), (136, 144)) %0, ptr noundef %1, i48 %2, i48 %3, ptr noundef %4, i1 noundef zeroext %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
