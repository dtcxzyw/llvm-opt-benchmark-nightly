Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/bitmatrix?download=true
inline.NumInlined: 504
inline.NumDeleted: 172
begin_hunk_0_@_ZN5zxing9BitMatrix7flipAllEv:bb.a
  br i1 %i.k, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = and i64 %i.i, 2147483647     ; 5 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check8 = icmp samesign ult i64 %wide.trip.count, 32
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.l = and i64 %i.i, 28
  %n.vec = and i64 %i.i, 2147483616               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 %index ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %i.m, align 1, !tbaa !71
  %wide.load9 = load <16 x i8>, ptr %i.n, align 1, !tbaa !71
  %i.o = xor <16 x i8> %wide.load, splat (i8 1)
  %i.p = xor <16 x i8> %wide.load9, splat (i8 1)
  store <16 x i8> %i.o, ptr %i.m, align 1, !tbaa !71
  store <16 x i8> %i.p, ptr %i.n, align 1, !tbaa !71
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !92

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.l, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !95

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec10 = and i64 %i.i, 2147483644             ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index11 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next13, %vec.epilog.vector.body ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 %index11 ; 2 uses
  %wide.load12 = load <4 x i8>, ptr %i.r, align 1, !tbaa !71
  %i.s = xor <4 x i8> %wide.load12, splat (i8 1)
  store <4 x i8> %i.s, ptr %i.r, align 1, !tbaa !71
  %index.next13 = add nuw i64 %index11, 4         ; 2 uses
  %i.t = icmp eq i64 %index.next13, %n.vec10
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !93

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n14 = icmp eq i64 %wide.trip.count, %n.vec10
  br i1 %cmp.n14, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec10, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !71, !range !34, !noundef !35
  %i.w = xor i8 %i.v, 1
  store i8 %i.w, ptr %i.u, align 1, !tbaa !71
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !94
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5zxing9BitMatrix10flipRegionEiiiiRNS_12ErrorHandlerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(346) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(48) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.zxing::IllegalArgumentErrorHandler", align 8 ; 13 uses
  %7 = alloca %"class.zxing::IllegalArgumentErrorHandler", align 8 ; 13 uses
  %8 = alloca %"class.zxing::IllegalArgumentErrorHandler", align 8 ; 13 uses
  %i.a = or i32 %2, %1
  %or.cond.not = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @_ZN5zxing12ErrorHandlerC2EPKc(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing27IllegalArgumentErrorHandlerE, i64 16), ptr %6, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 4, ptr %i.b, align 8, !tbaa !57
  %i.c = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN5zxing12ErrorHandleraSERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %6, align 8, !tbaa !48
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN5zxing12ErrorHandlerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.h = load i64, ptr %i.f, align 8, !tbaa !59
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #17
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit

_ZN5zxing12ErrorHandlerD2Ev.exit:                 ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %6, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !58   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN5zxing12ErrorHandlerD2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40: ; preds = %bb.d
  %i.o = load i64, ptr %i.m, align 8, !tbaa !59
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #17
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit42

_ZN5zxing12ErrorHandlerD2Ev.exit42:               ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.q = icmp slt i32 %4, 1
  %i.r = icmp slt i32 %3, 1
  %or.cond3 = or i1 %i.r, %i.q
  br i1 %or.cond3, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @_ZN5zxing12ErrorHandlerC2EPKc(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing27IllegalArgumentErrorHandlerE, i64 16), ptr %7, align 8, !tbaa !48
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 4, ptr %i.s, align 8, !tbaa !57
  %i.t = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN5zxing12ErrorHandleraSERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %7, align 8, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !58   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN5zxing12ErrorHandlerD2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43: ; preds = %bb.g
  %i.y = load i64, ptr %i.w, align 8, !tbaa !59
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #17
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit45

_ZN5zxing12ErrorHandlerD2Ev.exit45:               ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %7, align 8, !tbaa !48
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !58 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN5zxing12ErrorHandlerD2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46: ; preds = %bb.h
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !59
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #17
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit48

_ZN5zxing12ErrorHandlerD2Ev.exit48:               ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.n

bb.i:                                             ; preds = %bb.e
  %i.ah = add nuw nsw i32 %3, %1                  ; 2 uses
  %i.ai = add nuw nsw i32 %4, %2                  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !37
  %i.al = icmp sgt i32 %i.ai, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = icmp sgt i32 %i.ah, %i.an
  %or.cond = select i1 %i.al, i1 true, i1 %i.ao
  br i1 %or.cond, label %bb.j, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 312
  %9 = sext i32 %2 to i64
  %10 = sext i32 %i.ai to i64
  br label %.preheader

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @_ZN5zxing12ErrorHandlerC2EPKc(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.2)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing27IllegalArgumentErrorHandlerE, i64 16), ptr %8, align 8, !tbaa !48
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 4, ptr %i.ar, align 8, !tbaa !57
  %i.as = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN5zxing12ErrorHandleraSERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %8)
          to label %bb.k unwind label %bb.l       ; 0 uses

bb.k:                                             ; preds = %bb.j
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %8, align 8, !tbaa !48
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !58 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZN5zxing12ErrorHandlerD2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49: ; preds = %bb.k
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !59
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #17
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit51

_ZN5zxing12ErrorHandlerD2Ev.exit51:               ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.az = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %8, align 8, !tbaa !48
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !58 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZN5zxing12ErrorHandlerD2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52: ; preds = %bb.l
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !59
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #17
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit54

_ZN5zxing12ErrorHandlerD2Ev.exit54:               ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.n

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %9, %.preheader.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  br label %bb.m

._crit_edge:                                      ; preds = %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %11 = icmp slt i64 %indvars.iv.next, %10
  br i1 %11, label %.preheader, label %.loopexit, !llvm.loop !96

bb.m:                                             ; preds = %.preheader, %bb.m
  %.056 = phi i32 [ %1, %.preheader ], [ %i.bt, %bb.m ] ; 2 uses
  %i.bg = load ptr, ptr %i.ap, align 8, !tbaa !51
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !63
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !64
  %i.bl = add nsw i32 %i.bk, %.056
  %i.bm = load ptr, ptr %i.aq, align 8, !tbaa !50
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = sext i32 %i.bl to i64
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !67
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bo ; 2 uses
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !59
  %i.bs = xor i8 %i.br, 1
  store i8 %i.bs, ptr %i.bq, align 1, !tbaa !59
  %i.bt = add nuw nsw i32 %.056, 1                ; 2 uses
  %i.bu = icmp slt i32 %i.bt, %i.ah
  br i1 %i.bu, label %bb.m, label %._crit_edge, !llvm.loop !97

.loopexit:                                        ; preds = %._crit_edge, %_ZN5zxing12ErrorHandlerD2Ev.exit51, %_ZN5zxing12ErrorHandlerD2Ev.exit45, %_ZN5zxing12ErrorHandlerD2Ev.exit
  ret void

bb.n:                                             ; preds = %_ZN5zxing12ErrorHandlerD2Ev.exit54, %_ZN5zxing12ErrorHandlerD2Ev.exit48, %_ZN5zxing12ErrorHandlerD2Ev.exit42
  %.pn = phi { ptr, i32 } [ %i.j, %_ZN5zxing12ErrorHandlerD2Ev.exit42 ], [ %i.aa, %_ZN5zxing12ErrorHandlerD2Ev.exit48 ], [ %i.az, %_ZN5zxing12ErrorHandlerD2Ev.exit54 ]
  resume { ptr, i32 } %.pn
}

declare noundef nonnull align 8 dereferenceable(48) ptr @_ZN5zxing12ErrorHandleraSERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5zxing12ErrorHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %0, align 8, !tbaa !48
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !59
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5zxing9BitMatrix9setRegionEiiiiRNS_12ErrorHandlerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(346) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull align 8 dereferenceable(48) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.zxing::IllegalArgumentErrorHandler", align 8 ; 13 uses
  %7 = alloca %"class.zxing::IllegalArgumentErrorHandler", align 8 ; 13 uses
  %8 = alloca %"class.zxing::IllegalArgumentErrorHandler", align 8 ; 13 uses
  %i.a = or i32 %2, %1
  %or.cond.not = icmp sgt i32 %i.a, -1
  br i1 %or.cond.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @_ZN5zxing12ErrorHandlerC2EPKc(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing27IllegalArgumentErrorHandlerE, i64 16), ptr %6, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 4, ptr %i.b, align 8, !tbaa !57
  %i.c = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN5zxing12ErrorHandleraSERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %bb.c unwind label %bb.d       ; 0 uses

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %6, align 8, !tbaa !48
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !58   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZN5zxing12ErrorHandlerD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.h = load i64, ptr %i.f, align 8, !tbaa !59
  %i.i = add i64 %i.h, 1
  call void @_ZdlPvm(ptr noundef %i.e, i64 noundef %i.i) #17
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit

_ZN5zxing12ErrorHandlerD2Ev.exit:                 ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %.loopexit

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %6, align 8, !tbaa !48
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !58   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN5zxing12ErrorHandlerD2Ev.exit42, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40: ; preds = %bb.d
  %i.o = load i64, ptr %i.m, align 8, !tbaa !59
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #17
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit42

_ZN5zxing12ErrorHandlerD2Ev.exit42:               ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  %i.q = icmp slt i32 %4, 1
  %i.r = icmp slt i32 %3, 1
  %or.cond3 = or i1 %i.r, %i.q
  br i1 %or.cond3, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @_ZN5zxing12ErrorHandlerC2EPKc(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing27IllegalArgumentErrorHandlerE, i64 16), ptr %7, align 8, !tbaa !48
  %i.s = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 4, ptr %i.s, align 8, !tbaa !57
  %i.t = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN5zxing12ErrorHandleraSERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %bb.g unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %7, align 8, !tbaa !48
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !58   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.x = icmp eq ptr %i.v, %i.w
  br i1 %i.x, label %_ZN5zxing12ErrorHandlerD2Ev.exit45, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43: ; preds = %bb.g
  %i.y = load i64, ptr %i.w, align 8, !tbaa !59
  %i.z = add i64 %i.y, 1
  call void @_ZdlPvm(ptr noundef %i.v, i64 noundef %i.z) #17
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit45

_ZN5zxing12ErrorHandlerD2Ev.exit45:               ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i43
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %7, align 8, !tbaa !48
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !58 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZN5zxing12ErrorHandlerD2Ev.exit48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46: ; preds = %bb.h
  %i.af = load i64, ptr %i.ad, align 8, !tbaa !59
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ac, i64 noundef %i.ag) #17
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit48

_ZN5zxing12ErrorHandlerD2Ev.exit48:               ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.n

bb.i:                                             ; preds = %bb.e
  %i.ah = add nuw nsw i32 %3, %1                  ; 2 uses
  %i.ai = add nuw nsw i32 %4, %2                  ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !37
  %i.al = icmp sgt i32 %i.ai, %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = icmp sgt i32 %i.ah, %i.an
  %or.cond = select i1 %i.al, i1 true, i1 %i.ao
  br i1 %or.cond, label %bb.j, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 312
  %9 = sext i32 %2 to i64
  %10 = sext i32 %i.ai to i64
  br label %.preheader

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @_ZN5zxing12ErrorHandlerC2EPKc(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.2)
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing27IllegalArgumentErrorHandlerE, i64 16), ptr %8, align 8, !tbaa !48
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 4, ptr %i.ar, align 8, !tbaa !57
  %i.as = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN5zxing12ErrorHandleraSERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull align 8 dereferenceable(48) %8)
          to label %bb.k unwind label %bb.l       ; 0 uses

bb.k:                                             ; preds = %bb.j
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %8, align 8, !tbaa !48
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !58 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.aw = icmp eq ptr %i.au, %i.av
  br i1 %i.aw, label %_ZN5zxing12ErrorHandlerD2Ev.exit51, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49: ; preds = %bb.k
  %i.ax = load i64, ptr %i.av, align 8, !tbaa !59
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ay) #17
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit51

_ZN5zxing12ErrorHandlerD2Ev.exit51:               ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.az = landingpad { ptr, i32 }
          cleanup
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %8, align 8, !tbaa !48
  %i.ba = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !58 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.bd = icmp eq ptr %i.bb, %i.bc
  br i1 %i.bd, label %_ZN5zxing12ErrorHandlerD2Ev.exit54, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52: ; preds = %bb.l
  %i.be = load i64, ptr %i.bc, align 8, !tbaa !59
  %i.bf = add i64 %i.be, 1
  call void @_ZdlPvm(ptr noundef %i.bb, i64 noundef %i.bf) #17
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit54

_ZN5zxing12ErrorHandlerD2Ev.exit54:               ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i52
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.n

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %9, %.preheader.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  br label %bb.m

._crit_edge:                                      ; preds = %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %11 = icmp slt i64 %indvars.iv.next, %10
  br i1 %11, label %.preheader, label %.loopexit, !llvm.loop !98

bb.m:                                             ; preds = %.preheader, %bb.m
  %.056 = phi i32 [ %1, %.preheader ], [ %i.br, %bb.m ] ; 2 uses
  %i.bg = load ptr, ptr %i.ap, align 8, !tbaa !51
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !63
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !64
  %i.bl = add nsw i32 %i.bk, %.056
  %i.bm = load ptr, ptr %i.aq, align 8, !tbaa !50
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = sext i32 %i.bl to i64
  %i.bp = load ptr, ptr %i.bn, align 8, !tbaa !67
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bo
  store i8 1, ptr %i.bq, align 1, !tbaa !59
  %i.br = add nuw nsw i32 %.056, 1                ; 2 uses
  %i.bs = icmp slt i32 %i.br, %i.ah
  br i1 %i.bs, label %bb.m, label %._crit_edge, !llvm.loop !99

.loopexit:                                        ; preds = %._crit_edge, %_ZN5zxing12ErrorHandlerD2Ev.exit51, %_ZN5zxing12ErrorHandlerD2Ev.exit45, %_ZN5zxing12ErrorHandlerD2Ev.exit
  ret void

bb.n:                                             ; preds = %_ZN5zxing12ErrorHandlerD2Ev.exit54, %_ZN5zxing12ErrorHandlerD2Ev.exit48, %_ZN5zxing12ErrorHandlerD2Ev.exit42
  %.pn = phi { ptr, i32 } [ %i.j, %_ZN5zxing12ErrorHandlerD2Ev.exit42 ], [ %i.aa, %_ZN5zxing12ErrorHandlerD2Ev.exit48 ], [ %i.az, %_ZN5zxing12ErrorHandlerD2Ev.exit54 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5zxing9BitMatrix6getRowEiNS_3RefINS_8BitArrayEEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.zxing::Ref.16") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(346) %1, i32 noundef %2, ptr nofree noundef align 8 captures(none) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %3, align 8, !tbaa !103    ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZNK5zxing8BitArray7getSizeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !36   ; 2 uses
  %i.f = icmp slt i32 %i.c, %i.e
  br i1 %i.f, label %bb.c, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b
  %.pre = load ptr, ptr %3, align 8, !tbaa !103
  br label %bb.h

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #16 ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !36
  invoke void @_ZN5zxing8BitArrayC1Ei(ptr noundef nonnull align 8 dereferenceable(88) %i.g, i32 noundef %i.i)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !46
  %i.l = add i32 %i.k, 1
  store i32 %i.l, ptr %i.j, align 8, !tbaa !46
  %i.m = load ptr, ptr %3, align 8, !tbaa !103    ; 4 uses
  %.not5.i.i = icmp eq ptr %i.m, null
  br i1 %.not5.i.i, label %_ZN5zxing3RefINS_8BitArrayEEaSEPS1_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !46
  %i.p = add i32 %i.o, -1                         ; 2 uses
  store i32 %i.p, ptr %i.n, align 8, !tbaa !46
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.f, label %_ZN5zxing3RefINS_8BitArrayEEaSEPS1_.exit

bb.f:                                             ; preds = %bb.e
  store i32 -559026175, ptr %i.n, align 8, !tbaa !46
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !48
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #18, !inline_history !100
  br label %_ZN5zxing3RefINS_8BitArrayEEaSEPS1_.exit

_ZN5zxing3RefINS_8BitArrayEEaSEPS1_.exit:         ; preds = %bb.d, %bb.e, %bb.f
  store ptr %i.g, ptr %3, align 8, !tbaa !103
  %.pre4 = load i32, ptr %i.h, align 4, !tbaa !36
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 88) #17
  resume { ptr, i32 } %i.u

bb.h:                                             ; preds = %._crit_edge, %_ZN5zxing3RefINS_8BitArrayEEaSEPS1_.exit
  %i.v = phi i32 [ %i.e, %._crit_edge ], [ %.pre4, %_ZN5zxing3RefINS_8BitArrayEEaSEPS1_.exit ]
  %i.w = phi ptr [ %.pre, %._crit_edge ], [ %i.g, %_ZN5zxing3RefINS_8BitArrayEEaSEPS1_.exit ]
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !50
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !67
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !51
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = sext i32 %2 to i64
  %i.af = load ptr, ptr %i.ad, align 8, !tbaa !63
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.ae
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !64
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds i8, ptr %i.aa, i64 %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !50
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !67
  %i.ao = sext i32 %i.v to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.an, ptr align 1 %i.aj, i64 %i.ao, i1 false)
  %i.ap = load ptr, ptr %3, align 8, !tbaa !103   ; 3 uses
  %.not.i.i = icmp eq ptr %i.ap, null
  br i1 %.not.i.i, label %_ZN5zxing3RefINS_8BitArrayEEC2ERKS2_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !46
  %i.as = add i32 %i.ar, 1
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !46
  br label %_ZN5zxing3RefINS_8BitArrayEEC2ERKS2_.exit

_ZN5zxing3RefINS_8BitArrayEEC2ERKS2_.exit:        ; preds = %bb.h, %bb.i
  store ptr %i.ap, ptr %0, align 8, !tbaa !103
  ret void
}

declare noundef i32 @_ZNK5zxing8BitArray7getSizeEv(ptr noundef nonnull align 8 dereferenceable(88)) local_unnamed_addr #9

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

declare void @_ZN5zxing8BitArrayC1Ei(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef) unnamed_addr #9

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK5zxing9BitMatrix15getTopLeftOnBitEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.zxing::ArrayRef.4") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(346) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 312
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !74
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !67   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h                       ; 2 uses
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = and i64 %i.i, 2147483647
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %indvars.iv
  %i.m = load i8, ptr %i.l, align 1, !tbaa !59
  %i.n = icmp eq i8 %i.m, 0
  br i1 %i.n, label %bb.b, label %.critedge.loopexit

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge.thread, label %.lr.ph, !llvm.loop !104

.critedge.loopexit:                               ; preds = %.lr.ph
  %i.o = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.o, %.critedge.loopexit ] ; 3 uses
  %i.p = icmp eq i32 %.0.lcssa, %i.j
  br i1 %i.p, label %.critedge.thread, label %bb.c

.critedge.thread:                                 ; preds = %bb.b, %.critedge
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.q, align 8, !tbaa !46
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing8ArrayRefIiEE, i64 16), ptr %0, align 8, !tbaa !48
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.r, align 8, !tbaa !51
  br label %bb.f

bb.c:                                             ; preds = %.critedge
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !36   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.u, align 8, !tbaa !46
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing8ArrayRefIiEE, i64 16), ptr %0, align 8, !tbaa !48
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !51
  %i.w = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #16 ; 7 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store i32 0, ptr %i.x, align 8, !tbaa !46
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing5ArrayIiEE, i64 16), ptr %i.w, align 8, !tbaa !48
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, i8 0, i64 24, i1 false)
  %i.z = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #16
          to label %bb.e unwind label %bb.d       ; 4 uses

end_hunk_0
