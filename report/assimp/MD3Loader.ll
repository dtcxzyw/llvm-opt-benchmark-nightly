inline.NumInlined: 1319
inline.NumDeleted: 545
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZNK6Assimp11MD3Importer10ReadShaderERNS_8Q3Shader10ShaderDataE:bb.a
  %i.xd = icmp eq ptr %i.xc, %i.tn
  br i1 %i.xd, label %.body313, label %.body313.sink.split

.body313.sink.split:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354, %bb.cf
  %.sink553 = phi ptr [ %i.tz, %bb.cf ], [ %i.xc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354 ]
  %.pn67.pn.ph = phi { ptr, i32 } [ %i.ty, %bb.cf ], [ %.pn67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354 ]
  %i.xe = load i64, ptr %i.tn, align 8
  %i.xf = add i64 %i.xe, 1
  call void @_ZdlPvm(ptr noundef %.sink553, i64 noundef %i.xf) #25
  br label %.body313

.body313:                                         ; preds = %.body313.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354, %bb.cf
  %.pn67.pn = phi { ptr, i32 } [ %i.ty, %bb.cf ], [ %.pn67, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit354 ], [ %.pn67.pn.ph, %.body313.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #24
  br label %bb.cy

bb.ct:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i339, %bb.cn
  %i.xg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360

bb.cu:                                            ; preds = %bb.cp
  %i.xh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.xi = load ptr, ptr %25, align 8              ; 2 uses
  %i.xj = icmp eq ptr %i.xi, %i.wa
  br i1 %i.xj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358: ; preds = %bb.cu
  %i.xk = load i64, ptr %i.wa, align 8
  %i.xl = add i64 %i.xk, 1
  call void @_ZdlPvm(ptr noundef %i.xi, i64 noundef %i.xl) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358, %bb.ct
  %.pn70 = phi { ptr, i32 } [ %i.xg, %bb.ct ], [ %i.xh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i358 ], [ %i.xh, %bb.cu ] ; 2 uses
  %i.xm = load ptr, ptr %26, align 8              ; 2 uses
  %i.xn = icmp eq ptr %i.xm, %i.vi
  br i1 %i.xn, label %.body336, label %.body336.sink.split

.body336.sink.split:                              ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360, %bb.cm
  %.sink556 = phi ptr [ %i.vu, %bb.cm ], [ %i.xm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360 ]
  %.pn70.pn.ph = phi { ptr, i32 } [ %i.vt, %bb.cm ], [ %.pn70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360 ]
  %i.xo = load i64, ptr %i.vi, align 8
  %i.xp = add i64 %i.xo, 1
  call void @_ZdlPvm(ptr noundef %.sink556, i64 noundef %i.xp) #25
  br label %.body336

.body336:                                         ; preds = %.body336.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360, %bb.cm
  %.pn70.pn = phi { ptr, i32 } [ %i.vt, %bb.cm ], [ %.pn70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit360 ], [ %.pn70.pn.ph, %.body336.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #24
  br label %bb.cy

bb.cv:                                            ; preds = %bb.cc
  %i.xq = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.xr = load ptr, ptr %i.xq, align 8
  %i.xs = invoke noundef zeroext i1 @_ZN6Assimp8Q3Shader10LoadShaderERNS0_10ShaderDataERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPNS_8IOSystemE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef %i.xr)
          to label %bb.cx unwind label %bb.cw     ; 0 uses

bb.cw:                                            ; preds = %bb.cv
  %i.xt = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

bb.cx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit351, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit327, %bb.cv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit148, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit244
  %i.xu = load ptr, ptr %2, align 8               ; 2 uses
  %i.xv = icmp eq ptr %i.xu, %i.k
  br i1 %i.xv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364: ; preds = %bb.cx
  %i.xw = load i64, ptr %i.k, align 8
  %i.xx = add i64 %i.xw, 1
  call void @_ZdlPvm(ptr noundef %i.xu, i64 noundef %i.xx) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit366: ; preds = %bb.cx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i364
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  ret void

bb.cy:                                            ; preds = %.body313, %.body336, %bb.cw, %bb.bh, %.body, %.body157
  %.pn70.pn.pn.pn = phi { ptr, i32 } [ %i.pk, %bb.bh ], [ %.pn55.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body157 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %.body ], [ %.pn70.pn, %.body336 ], [ %.pn67.pn, %.body313 ], [ %i.xt, %bb.cw ]
  %i.xy = load ptr, ptr %2, align 8               ; 2 uses
  %i.xz = icmp eq ptr %i.xy, %i.k
  br i1 %i.xz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i367

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i367: ; preds = %bb.cy
  %i.ya = load i64, ptr %i.k, align 8
  %i.yb = add i64 %i.ya, 1
  call void @_ZdlPvm(ptr noundef %i.xy, i64 noundef %i.yb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit369: ; preds = %bb.cy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i367
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  resume { ptr, i32 } %.pn70.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_Z24RemoveSingleNodeFromListP6aiNode(ptr noundef %0) local_unnamed_addr #4 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.b = load i32, ptr %i.a, align 8
  %.not21 = icmp eq i32 %i.b, 0
  br i1 %.not21, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not22 = icmp eq ptr %i.d, null
  br i1 %.not22, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1104 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8              ; 3 uses
  %.not31 = icmp eq i32 %i.f, 0
  br i1 %.not31, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 1112 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %wide.trip.count = zext i32 %i.f to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp eq ptr %i.j, %0
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = trunc nuw i64 %indvars.iv to i32
  %i.m = add i32 %i.f, -1                         ; 2 uses
  store i32 %i.m, ptr %i.e, align 8
  %i.n = icmp ugt i32 %i.m, %i.l
  br i1 %i.n, label %.lr.ph30, label %._crit_edge

.lr.ph30:                                         ; preds = %bb.e, %.lr.ph30
  %indvars.iv35 = phi i64 [ %indvars.iv.next36, %.lr.ph30 ], [ %indvars.iv, %bb.e ] ; 2 uses
  %i.o = load ptr, ptr %i.g, align 8              ; 2 uses
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv35, 1 ; 3 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv.next36
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.o, i64 %indvars.iv35
  store ptr %i.q, ptr %i.r, align 8
  %i.s = load i32, ptr %i.e, align 8
  %i.t = zext i32 %i.s to i64
  %i.u = icmp samesign ult i64 %indvars.iv.next36, %i.t
  br i1 %i.u, label %.lr.ph30, label %._crit_edge, !llvm.loop !143

._crit_edge:                                      ; preds = %.lr.ph30, %bb.e
  tail call void @_ZN6aiNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(1144) dereferenceable(1144) %0) #24
  tail call void @_ZdlPvm(ptr noundef %0, i64 noundef 1144) #25
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.d, !llvm.loop !144

.loopexit:                                        ; preds = %bb.f, %.preheader, %._crit_edge, %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6aiNodeD1Ev(ptr noundef nonnull align 8 dead_on_return(1144) dereferenceable(1144)) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp11MD3Importer17ReadMultipartFileEv(ptr noundef nonnull align 8 dereferenceable(296) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.std::vector.21", align 8   ; 17 uses
  %14 = alloca %"struct.Assimp::BatchLoader::PropertyMap", align 8 ; 32 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %15 = alloca %"class.Assimp::BatchLoader", align 8 ; 13 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 4 uses
  %i.e = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 noundef signext 95, i64 noundef -1) #24 ; 2 uses
  %i.f = tail call noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32) %i.d, i8 noundef signext 46, i64 noundef -1) #24 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %.019 = select i1 %i.g, i64 %i.i, i64 %i.f      ; 2 uses
  %i.j = icmp eq i64 %i.e, -1
  %spec.select = select i1 %i.j, i64 %.019, i64 %i.e ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  store ptr %i.k, ptr %1, align 8, !alias.scope !145
  %i.l = load ptr, ptr %i.d, align 8, !noalias !145 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %spec.select, i64 %i.i) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24, !noalias !145
  store i64 %spec.select.i.i.i, ptr %i.b, align 8, !noalias !145
  %i.m = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.m, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %bb.a
  %i.n = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0) ; 2 uses
  store ptr %i.n, ptr %1, align 8, !alias.scope !145
  %i.o = load i64, ptr %i.b, align 8, !noalias !145
  store i64 %i.o, ptr %i.k, align 8, !alias.scope !145
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %bb.a
  %i.p = phi ptr [ %i.n, %.noexc10.i.i ], [ %i.k, %bb.a ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i
  %i.q = load i8, ptr %i.l, align 1
  store i8 %i.q, ptr %i.p, align 1
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.c:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.l, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.b, %bb.c
  %i.r = load i64, ptr %i.b, align 8, !noalias !145 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i64 %i.r, ptr %i.s, align 8, !alias.scope !145
  %i.t = load ptr, ptr %1, align 8, !alias.scope !145
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24, !noalias !145
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  call void @llvm.experimental.noalias.scope.decl(metadata !148)
  %i.v = load i64, ptr %i.h, align 8, !noalias !148 ; 3 uses
  %i.w = icmp ugt i64 %spec.select, %i.v
  br i1 %i.w, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.113, i64 noundef %spec.select, i64 noundef %i.v) #26
          to label %.noexc unwind label %bb.au

.noexc:                                           ; preds = %bb.d
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.x = sub i64 %.019, %spec.select
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.y, ptr %2, align 8, !alias.scope !148
  %i.z = load ptr, ptr %i.d, align 8, !noalias !148
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %spec.select ; 2 uses
  %i.ab = sub nuw i64 %i.v, %spec.select
  %spec.select.i.i.i70 = call noundef i64 @llvm.umin.i64(i64 %i.x, i64 %i.ab) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24, !noalias !148
  store i64 %spec.select.i.i.i70, ptr %i.a, align 8, !noalias !148
  %i.ac = icmp ugt i64 %spec.select.i.i.i70, 15
  br i1 %i.ac, label %.noexc10.i.i72, label %._crit_edge.i.i.i71

.noexc10.i.i72:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ad = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc73 unwind label %bb.au  ; 2 uses

.noexc73:                                         ; preds = %.noexc10.i.i72
  store ptr %i.ad, ptr %2, align 8, !alias.scope !148
  %i.ae = load i64, ptr %i.a, align 8, !noalias !148
  store i64 %i.ae, ptr %i.y, align 8, !alias.scope !148
  br label %._crit_edge.i.i.i71

._crit_edge.i.i.i71:                              ; preds = %.noexc73, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.af = phi ptr [ %i.ad, %.noexc73 ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i70, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %bb.g
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i71
  %i.ag = load i8, ptr %i.aa, align 1
  store i8 %i.ag, ptr %i.af, align 1
  br label %bb.g

bb.f:                                             ; preds = %._crit_edge.i.i.i71
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.af, ptr align 1 %i.aa, i64 %spec.select.i.i.i70, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %._crit_edge.i.i.i71
  %i.ah = load i64, ptr %i.a, align 8, !noalias !148 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 %i.ah, ptr %i.ai, align 8, !alias.scope !148
  %i.aj = load ptr, ptr %2, align 8, !alias.scope !148
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24, !noalias !148
  %i.al = load i64, ptr %i.s, align 8             ; 2 uses
  switch i64 %i.al, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78.thread345 [
    i64 5, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78
  ]

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.g
  %i.am = load ptr, ptr %1, align 8               ; 4 uses
  %i.an = load i32, ptr %i.am, align 1
  %i.ao = xor i32 %i.an, 1702326124
  %i.ap = getelementptr i8, ptr %i.am, i64 4
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext i8 %i.aq to i32
  %i.as = xor i32 %i.ar, 114
  %i.at = or i32 %i.ao, %i.as
  %i.au = icmp ne i32 %i.at, 0
  %i.av = zext i1 %i.au to i32
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit76

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit76: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ax = load i32, ptr %i.am, align 1
  %i.ay = xor i32 %i.ax, 1701867637
  %i.az = getelementptr i8, ptr %i.am, i64 4
  %i.ba = load i8, ptr %i.az, align 1
  %i.bb = zext i8 %i.ba to i32
  %i.bc = xor i32 %i.bb, 114
  %i.bd = or i32 %i.ay, %i.bc
  %i.be = icmp ne i32 %i.bd, 0
  %i.bf = zext i1 %i.be to i32
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78.thread345

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78: ; preds = %bb.g
  %.pre = load ptr, ptr %1, align 8
  %bcmp.i77 = call i32 @bcmp(ptr %.pre, ptr nonnull @.str.66, i64 %i.al)
  %i.bh = icmp eq i32 %bcmp.i77, 0
  br i1 %i.bh, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78.thread345

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit78, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit76, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !151)
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !151
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !151 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.bm, ptr %5, align 8, !alias.scope !154
  %i.bn = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  store i64 0, ptr %i.bn, align 8, !alias.scope !154
  store i8 0, ptr %i.bm, align 8, !alias.scope !154
  %i.bo = add i64 %i.bl, 5
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.bo)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.bp = load i64, ptr %i.bn, align 8, !alias.scope !154
  %i.bq = sub i64 4611686018427387903, %i.bp
  %i.br = icmp ult i64 %i.bq, %i.bl
  br i1 %i.br, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i: ; preds = %bb.h
  %i.bs = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.bj, i64 noundef %i.bl)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i unwind label %bb.i ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i
  %i.bt = load i64, ptr %i.bn, align 8, !alias.scope !154
  %i.bu = add i64 %i.bt, -4611686018427387899
  %i.bv = icmp ult i64 %i.bu, 5
  br i1 %i.bv, label %.invoke.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i

.invoke.i.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i, %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #26
          to label %.cont.i.i unwind label %bb.i

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i
  %i.bw = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.64, i64 noundef 5)
          to label %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit unwind label %bb.i ; 0 uses

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i, %.invoke.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.by = load ptr, ptr %5, align 8, !alias.scope !154 ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.bm
  br i1 %i.bz, label %.body, label %.body.sink.split

_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %i.ca = load i64, ptr %i.ai, align 8, !noalias !157 ; 2 uses
  %i.cb = load i64, ptr %i.bn, align 8, !noalias !157
  %i.cc = sub i64 4611686018427387903, %i.cb
  %i.cd = icmp ult i64 %i.cc, %i.ca
  br i1 %i.cd, label %bb.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i

bb.j:                                             ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.115) #26
          to label %.noexc79 unwind label %bb.av

.noexc79:                                         ; preds = %bb.j
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i: ; preds = %_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_PKS5_.exit
  %i.ce = load ptr, ptr %2, align 8, !noalias !157
  %i.cf = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %i.ce, i64 noundef %i.ca)
          to label %.noexc80 unwind label %bb.av  ; 6 uses

.noexc80:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.cg, ptr %4, align 8, !alias.scope !157
  %i.ch = load ptr, ptr %i.cf, align 8            ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 5 uses
  %i.cj = icmp eq ptr %i.ch, %i.ci
  br i1 %i.cj, label %bb.k, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.k:                                             ; preds = %.noexc80
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cl = load i64, ptr %i.ck, align 8            ; 3 uses
  %i.cm = icmp ult i64 %i.cl, 16
  call void @llvm.assume(i1 %i.cm)
  %i.cn = add nuw nsw i64 %i.cl, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cg, ptr noundef nonnull align 8 dereferenceable(1) %i.ci, i64 %i.cn, i1 false)
  br label %bb.l

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc80
  store ptr %i.ch, ptr %4, align 8, !alias.scope !157
  %i.co = load i64, ptr %i.ci, align 8
  store i64 %i.co, ptr %i.cg, align 8, !alias.scope !157
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8
  br label %bb.l

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.k
  %i.cp = phi i64 [ %i.cl, %bb.k ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i64 %i.cp, ptr %i.cr, align 8, !alias.scope !157
  store ptr %i.ci, ptr %i.cf, align 8
  store i64 0, ptr %i.cq, align 8
end_hunk_0
