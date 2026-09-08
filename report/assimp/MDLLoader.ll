Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/MDLLoader?download=true
inline.NumInlined: 1571
inline.NumDeleted: 754
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN6Assimp11MDLImporter24ValidateHeader_3DGS_MDL7EPKNS_3MDL11Header_MDL7E:bb.a
bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull @.str.68)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.e:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.f = load i16, ptr %i.e, align 1
  %.not6 = icmp eq i16 %i.f, 8
  br i1 %.not6, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull @.str.69)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.i:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 30
  %i.j = load i16, ptr %i.i, align 1
  %.not7 = icmp eq i16 %i.j, 28
  br i1 %.not7, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.k = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.k, ptr noundef nonnull @.str.70)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.m:                                             ; preds = %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = load i32, ptr %i.m, align 1
  %.not8 = icmp eq i32 %i.n, 0
  br i1 %.not8, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.o = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN17DeadlyImportErrorC2EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull @.str.71)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.m
  ret void

bb.r:                                             ; preds = %bb.p, %bb.l, %bb.h, %bb.d
  %.sink = phi ptr [ %i.o, %bb.p ], [ %i.k, %bb.l ], [ %i.g, %bb.h ], [ %i.c, %bb.d ]
  %.pn = phi { ptr, i32 } [ %i.p, %bb.p ], [ %i.l, %bb.l ], [ %i.h, %bb.h ], [ %i.d, %bb.d ]
  tail call void @__cxa_free_exception(ptr nonnull %.sink) #28
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden void @_ZN6Assimp11MDLImporter29CalcAbsBoneMatrices_3DGS_MDL7EPPNS_3MDL12IntBone_MDL7E(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(159) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #18 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 1
  %.not71 = icmp eq i32 %i.e, 0
  br i1 %.not71, label %._crit_edge70, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 2 uses
  br label %.lr.ph67

.lr.ph67:                                         ; preds = %._crit_edge68, %.preheader.preheader
  %i.g = phi i32 [ %i.k, %._crit_edge68 ], [ 1, %.preheader.preheader ] ; 2 uses
  %.05869 = phi i16 [ %i.j, %._crit_edge68 ], [ -1, %.preheader.preheader ] ; 4 uses
  %.not = icmp eq i16 %.05869, -1
  %i.h = zext i16 %.05869 to i64                  ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.h
  br label %bb.b

._crit_edge68:                                    ; preds = %bb.h
  %i.j = add i16 %.05869, 1
  %i.k = add nuw i32 %i.g, 1
  %i.l = icmp ult i32 %i.g, %i.bs
  br i1 %i.l, label %.lr.ph67, label %._crit_edge70, !llvm.loop !50

bb.b:                                             ; preds = %.lr.ph67, %bb.h
  %indvars.iv77 = phi i64 [ 0, %.lr.ph67 ], [ %indvars.iv.next78, %bb.h ] ; 4 uses
  %i.m = load i16, ptr %i.f, align 1
  %i.n = zext i16 %i.m to i64
  %i.o = trunc nuw i64 %indvars.iv77 to i32
  %i.p = mul nuw nsw i64 %indvars.iv77, %i.n
  %i.q = and i64 %i.p, 4294967295
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.q ; 5 uses
  %i.s = load i16, ptr %i.r, align 1
  %i.t = icmp eq i16 %.05869, %i.s
  br i1 %i.t, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv77
  %i.v = load ptr, ptr %i.u, align 8              ; 17 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 1120
  store i64 %i.h, ptr %i.w, align 8
  br i1 %.not, label %._crit_edge80, label %bb.d

._crit_edge80:                                    ; preds = %bb.c
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.v, i64 1068
  %.pre = load float, ptr %.phi.trans.insert, align 4
  %.phi.trans.insert81 = getelementptr inbounds nuw i8, ptr %i.v, i64 1084
  %.pre82 = load float, ptr %.phi.trans.insert81, align 4
  %.phi.trans.insert83 = getelementptr inbounds nuw i8, ptr %i.v, i64 1100
  %.pre84 = load float, ptr %.phi.trans.insert83, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.i, align 8              ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 1128
  %i.z = load float, ptr %i.y, align 8
  %i.aa = fneg float %i.z                         ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 1068
  store float %i.aa, ptr %i.ab, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 1132
  %i.ad = load float, ptr %i.ac, align 4
  %i.ae = fneg float %i.ad                        ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 1084
  store float %i.ae, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 1136
  %i.ah = load float, ptr %i.ag, align 8
  %i.ai = fneg float %i.ah                        ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 1100
  store float %i.ai, ptr %i.aj, align 4
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge80, %bb.d
  %i.ak = phi float [ %.pre84, %._crit_edge80 ], [ %i.ai, %bb.d ]
  %i.al = phi float [ %.pre82, %._crit_edge80 ], [ %i.ae, %bb.d ]
  %i.am = phi float [ %.pre, %._crit_edge80 ], [ %i.aa, %bb.d ]
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 4 ; 2 uses
  %i.ao = load float, ptr %i.an, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 1128
  store float %i.ao, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.ar = load float, ptr %i.aq, align 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.v, i64 1132
  store float %i.ar, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 12 ; 2 uses
  %i.au = load float, ptr %i.at, align 1
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 1136
  store float %i.au, ptr %i.av, align 8
  %i.aw = load float, ptr %i.an, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %i.v, i64 1068
  %i.ay = fsub float %i.am, %i.aw
  store float %i.ay, ptr %i.ax, align 4
  %i.az = load float, ptr %i.aq, align 1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.v, i64 1084
  %i.bb = fsub float %i.al, %i.az
  store float %i.bb, ptr %i.ba, align 4
  %i.bc = load float, ptr %i.at, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.v, i64 1100
  %i.be = fsub float %i.ak, %i.bc
  store float %i.be, ptr %i.bd, align 4
  %i.bf = load i16, ptr %i.f, align 1             ; 2 uses
  %i.bg = icmp eq i16 %i.bf, 16
  br i1 %i.bg, label %bb.f, label %.lr.ph.preheader.a

bb.f:                                             ; preds = %bb.e
  %i.bh = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.bi = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.bh, i64 noundef 1024, ptr noundef nonnull @.str.72, i32 noundef %i.o) #28
  store i32 %i.bi, ptr %i.v, align 8
  br label %bb.h

.lr.ph.preheader.a:                               ; preds = %bb.e
  %i.bj = zext i16 %i.bf to i32
  %i.bk = add nsw i32 %i.bj, -16                  ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %wide.trip.count = zext i32 %i.bk to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader.a, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.a ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %indvars.iv
  %i.bn = load i8, ptr %i.bm, align 1
  %.not62 = icmp eq i8 %i.bn, 0
  br i1 %.not62, label %._crit_edge.split.loop.exit87, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !51

._crit_edge.split.loop.exit87:                    ; preds = %.lr.ph
  %i.bo = trunc nuw i64 %indvars.iv to i32
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.g, %._crit_edge.split.loop.exit87
  %.055.ph = phi i32 [ %i.bo, %._crit_edge.split.loop.exit87 ], [ %i.bk, %bb.g ] ; 2 uses
  store i32 %.055.ph, ptr %i.v, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.v, i64 4 ; 2 uses
  %i.bq = zext i32 %.055.ph to i64                ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bp, ptr nonnull align 1 %i.bl, i64 %i.bq, i1 false)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bq
  store i8 0, ptr %i.br, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %._crit_edge, %bb.b
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %i.bs = load i32, ptr %i.d, align 1             ; 2 uses
  %i.bt = zext i32 %i.bs to i64
  %i.bu = icmp samesign ult i64 %indvars.iv.next78, %i.bt
  br i1 %i.bu, label %bb.b, label %._crit_edge68, !llvm.loop !52

._crit_edge70:                                    ; preds = %._crit_edge68, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noalias noundef ptr @_ZN6Assimp11MDLImporter19LoadBones_3DGS_MDL7Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(159) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 1              ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.f = load i16, ptr %i.e, align 1
  switch i16 %i.f, label %bb.c [
    i16 36, label %bb.d
    i16 48, label %bb.d
    i16 16, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = tail call noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
  tail call void @_ZN6Assimp6Logger4warnEPKc(ptr noundef nonnull align 8 dereferenceable(12) %i.g, ptr noundef nonnull @.str.73)
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.h = zext i32 %i.d to i64
  %i.i = shl nuw nsw i64 %i.h, 3
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #31 ; 3 uses
  %i.k = load i32, ptr %i.c, align 1
  %.not19 = icmp eq i32 %i.k, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  tail call void @_ZN6Assimp11MDLImporter29CalcAbsBoneMatrices_3DGS_MDL7EPPNS_3MDL12IntBone_MDL7E(ptr noundef nonnull align 8 dereferenceable(159) %0, ptr noundef nonnull %i.j)
  br label %bb.e

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.d ] ; 2 uses
  %i.l = tail call noalias noundef nonnull dereferenceable(1216) ptr @_Znwm(i64 noundef 1216) #31 ; 2 uses
  tail call void @_ZN6Assimp3MDL12IntBone_MDL7C2Ev(ptr noundef nonnull align 8 dereferenceable(1216) %i.l) #28
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  store ptr %i.l, ptr %i.m, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.n = load i32, ptr %i.c, align 1
  %i.o = zext i32 %i.n to i64
  %i.p = icmp samesign ult i64 %indvars.iv.next, %i.o
  br i1 %i.p, label %.lr.ph, label %._crit_edge, !llvm.loop !53

bb.e:                                             ; preds = %bb.a, %._crit_edge, %bb.c
  %.013 = phi ptr [ null, %bb.c ], [ %i.j, %._crit_edge ], [ null, %bb.a ]
  ret ptr %.013
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp3MDL12IntBone_MDL7C2Ev(ptr noundef nonnull align 8 dereferenceable(1216) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE11_M_allocateEm.exit.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1056
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1120) %0, i8 0, i64 1056, i1 false)
  store float 1.000000e+00, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1060
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1076
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1096
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1100
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1116
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i64 65535, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1128
  store <2 x float> zeroinitializer, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1136
  store float 0.000000e+00, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1168 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1152 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.k, i8 0, i64 72, i1 false)
  %i.p = invoke noalias noundef nonnull dereferenceable(720) ptr @_Znwm(i64 noundef 720) #31
          to label %.noexc unwind label %bb.d     ; 4 uses

.noexc:                                           ; preds = %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE11_M_allocateEm.exit.i
  %i.q = load ptr, ptr %i.k, align 8              ; 5 uses
  %i.r = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.q, %i.r
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.noexc, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.t, %.lr.ph.i.i.i.i ], [ %i.p, %.noexc ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i ], [ %i.q, %.noexc ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i, i64 24, i1 false), !alias.scope !63
  %i.s = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24
  %.not.i.i.i.i = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i: ; preds = %.lr.ph.i.i.i.i, %.noexc
  %.not.i8.i = icmp eq ptr %i.q, null
  br i1 %.not.i8.i, label %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i, label %bb.a

bb.a:                                             ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  %i.u = load ptr, ptr %i.n, align 8
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.q to i64
  %i.x = sub i64 %i.v, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.x) #29
  br label %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i

_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i: ; preds = %bb.a, %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i
  store ptr %i.p, ptr %i.k, align 8
  store ptr %i.p, ptr %i.o, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 720
  store ptr %i.y, ptr %i.n, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1184 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load ptr, ptr %i.l, align 8
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64               ; 2 uses
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = sdiv exact i64 %i.ae, 24
  %i.ag = icmp ult i64 %i.af, 30
  br i1 %i.ag, label %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE11_M_allocateEm.exit.i1, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE7reserveEm.exit11

_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE11_M_allocateEm.exit.i1: ; preds = %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 3 uses
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = ptrtoint ptr %i.ai to i64
  %i.ak = sub i64 %i.aj, %i.ad
  %i.al = invoke noalias noundef nonnull dereferenceable(720) ptr @_Znwm(i64 noundef 720) #31
          to label %.noexc10 unwind label %bb.d   ; 4 uses

.noexc10:                                         ; preds = %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE11_M_allocateEm.exit.i1
  %i.am = load ptr, ptr %i.l, align 8             ; 5 uses
  %i.an = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not10.i.i.i.i2 = icmp eq ptr %i.am, %i.an
  br i1 %.not10.i.i.i.i2, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i7, label %.lr.ph.i.i.i.i3

.lr.ph.i.i.i.i3:                                  ; preds = %.noexc10, %.lr.ph.i.i.i.i3
  %.012.i.i.i.i4 = phi ptr [ %i.ap, %.lr.ph.i.i.i.i3 ], [ %i.al, %.noexc10 ] ; 2 uses
  %.0911.i.i.i.i5 = phi ptr [ %i.ao, %.lr.ph.i.i.i.i3 ], [ %i.am, %.noexc10 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i4, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i5, i64 24, i1 false), !alias.scope !64
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i5, i64 24 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i4, i64 24
  %.not.i.i.i.i6 = icmp eq ptr %i.ao, %i.an
  br i1 %.not.i.i.i.i6, label %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i7, label %.lr.ph.i.i.i.i3, !llvm.loop !2

_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i7: ; preds = %.lr.ph.i.i.i.i3, %.noexc10
  %.not.i8.i8 = icmp eq ptr %i.am, null
  br i1 %.not.i8.i8, label %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i9, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i7
  %i.aq = load ptr, ptr %i.z, align 8
  %i.ar = ptrtoint ptr %i.aq to i64
  %i.as = ptrtoint ptr %i.am to i64
  %i.at = sub i64 %i.ar, %i.as
  tail call void @_ZdlPvm(ptr noundef nonnull %i.am, i64 noundef %i.at) #29
  br label %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i9

_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i9: ; preds = %bb.b, %_ZNSt6vectorI11aiVectorKeySaIS0_EE11_S_relocateEPS0_S3_S3_RS1_.exit.i7
  store ptr %i.al, ptr %i.l, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak
  store ptr %i.au, ptr %i.ah, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 720
  store ptr %i.av, ptr %i.z, align 8
  br label %_ZNSt6vectorI11aiVectorKeySaIS0_EE7reserveEm.exit11

_ZNSt6vectorI11aiVectorKeySaIS0_EE7reserveEm.exit11: ; preds = %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i9, %_ZNSt12_Vector_baseI11aiVectorKeySaIS0_EE13_M_deallocateEPS0_m.exit.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 3 uses
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = load ptr, ptr %i.m, align 8
  %i.az = ptrtoint ptr %i.ax to i64
  %i.ba = ptrtoint ptr %i.ay to i64               ; 2 uses
  %i.bb = sub i64 %i.az, %i.ba
  %i.bc = icmp ult i64 %i.bb, 960
  br i1 %i.bc, label %_ZNSt12_Vector_baseI9aiQuatKeySaIS0_EE11_M_allocateEm.exit.i, label %_ZNSt6vectorI9aiQuatKeySaIS0_EE7reserveEm.exit

_ZNSt12_Vector_baseI9aiQuatKeySaIS0_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt6vectorI11aiVectorKeySaIS0_EE7reserveEm.exit11
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1200 ; 3 uses
  %i.be = load ptr, ptr %i.bd, align 8
end_hunk_0
