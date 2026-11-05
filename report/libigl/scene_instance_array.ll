Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/scene_instance_array?download=true
inline.NumInlined: 398
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6embree13InstanceArrayC2EPNS_6DeviceEj:.noexc

bb.e:                                             ; preds = %bb.d
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8
  invoke void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.bm)
          to label %_ZN6embree13RawBufferViewD2Ev.exit26 unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bq = landingpad { ptr, i32 }
          catch ptr null
  %i.br = extractvalue { ptr, i32 } %i.bq, 0
  tail call void @__clang_call_terminate(ptr %i.br) #23
  unreachable

_ZN6embree13RawBufferViewD2Ev.exit26:             ; preds = %bb.e, %bb.d
  %i.bs = load i64, ptr %i.d, align 8             ; 2 uses
  %.not38 = icmp eq i64 %i.bs, 0
  br i1 %.not38, label %._crit_edge37, label %.lr.ph

._crit_edge37:                                    ; preds = %_ZN6embree13RawBufferViewD2Ev.exit28, %_ZN6embree13RawBufferViewD2Ev.exit26
  %i.bt = load ptr, ptr %i.a, align 16            ; 3 uses
  %.not.i = icmp eq ptr %i.bt, null
  br i1 %.not.i, label %_ZN6embree8vector_tINS_13RawBufferViewENS_6Device9allocatorIS1_Lm8EEEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %._crit_edge37
  %i.bu = load ptr, ptr %i.f, align 8
  %i.bv = load ptr, ptr %i.bt, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 72
  %i.bx = load ptr, ptr %i.bw, align 8
  invoke void %i.bx(ptr noundef nonnull align 8 dereferenceable(1384) %i.bt, ptr noundef %i.bu)
          to label %_ZN6embree8vector_tINS_13RawBufferViewENS_6Device9allocatorIS1_Lm8EEEED2Ev.exit unwind label %bb.j, !inline_history !2

.lr.ph:                                           ; preds = %_ZN6embree13RawBufferViewD2Ev.exit26, %_ZN6embree13RawBufferViewD2Ev.exit28
  %i.by = phi i64 [ %i.ci, %_ZN6embree13RawBufferViewD2Ev.exit28 ], [ %i.bs, %_ZN6embree13RawBufferViewD2Ev.exit26 ]
  %.0.i36 = phi i64 [ %i.cj, %_ZN6embree13RawBufferViewD2Ev.exit28 ], [ 0, %_ZN6embree13RawBufferViewD2Ev.exit26 ] ; 2 uses
  %i.bz = load ptr, ptr %i.f, align 8
  %i.ca = getelementptr inbounds nuw [56 x i8], ptr %i.bz, i64 %.0.i36
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8            ; 3 uses
  %.not.i.i27 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i27, label %_ZN6embree13RawBufferViewD2Ev.exit28, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8
  invoke void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.cc)
          to label %._ZN6embree13RawBufferViewD2Ev.exit28_crit_edge unwind label %bb.i

._ZN6embree13RawBufferViewD2Ev.exit28_crit_edge:  ; preds = %bb.h
  %.pre = load i64, ptr %i.d, align 8
  br label %_ZN6embree13RawBufferViewD2Ev.exit28

bb.i:                                             ; preds = %bb.h
  %i.cg = landingpad { ptr, i32 }
          catch ptr null
  %i.ch = extractvalue { ptr, i32 } %i.cg, 0
  tail call void @__clang_call_terminate(ptr %i.ch) #23
  unreachable

_ZN6embree13RawBufferViewD2Ev.exit28:             ; preds = %._ZN6embree13RawBufferViewD2Ev.exit28_crit_edge, %.lr.ph
  %i.ci = phi i64 [ %.pre, %._ZN6embree13RawBufferViewD2Ev.exit28_crit_edge ], [ %i.by, %.lr.ph ] ; 2 uses
  %i.cj = add nuw i64 %.0.i36, 1                  ; 2 uses
  %i.ck = icmp ult i64 %i.cj, %i.ci
  br i1 %i.ck, label %.lr.ph, label %._crit_edge37, !llvm.loop !3

bb.j:                                             ; preds = %bb.g
  %i.cl = landingpad { ptr, i32 }
          catch ptr null
  %i.cm = extractvalue { ptr, i32 } %i.cl, 0
  tail call void @__clang_call_terminate(ptr %i.cm) #23
  unreachable

_ZN6embree8vector_tINS_13RawBufferViewENS_6Device9allocatorIS1_Lm8EEEED2Ev.exit: ; preds = %bb.g, %._crit_edge37
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  tail call void @_ZN6embree8GeometryD2Ev(ptr noundef nonnull align 16 dead_on_return(88) dereferenceable(88) %0) #24
  resume { ptr, i32 } %i.bl
}

declare void @_ZN6embree8GeometryC2EPNS_6DeviceENS0_5GTypeEjj(ptr noundef nonnull align 16 dereferenceable(88), ptr noundef, i32 noundef, i32 noundef, i32 noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN6embree8GeometryD2Ev(ptr noundef nonnull align 16 dead_on_return(88) dereferenceable(88)) unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #24 ; 0 uses
  tail call void @_ZSt9terminatev() #23
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN6embree13InstanceArrayD0Ev(ptr noundef nonnull align 16 dereferenceable(200) initializes((0, 8)) %0) unnamed_addr #6 align 2 {
bb.a:
  tail call void @_ZN6embree13InstanceArrayD2Ev(ptr noundef nonnull align 16 dead_on_return(200) dereferenceable(200) %0) #24
  tail call void @_ZdlPv(ptr noundef nonnull %0) #25
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6embree13InstanceArray15setNumTimeStepsEj(ptr noundef nonnull align 16 dereferenceable(200) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.b = load i32, ptr %i.a, align 4
  %i.c = icmp eq i32 %1, %i.b
  br i1 %i.c, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.e = zext i32 %1 to i64                       ; 17 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.g = load i64, ptr %i.f, align 16             ; 5 uses
  %.not.i = icmp ult i64 %i.g, %i.e
  br i1 %.not.i, label %bb.c, label %_ZN6embree8vector_tINS_13RawBufferViewENS_6Device9allocatorIS1_Lm8EEEE18internal_grow_sizeEm.exit

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN6embree8vector_tINS_13RawBufferViewENS_6Device9allocatorIS1_Lm8EEEE18internal_grow_sizeEm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.0.i312 = phi i64 [ %i.i, %.lr.ph ], [ %i.g, %bb.c ]
  %i.i = shl nuw nsw i64 %.0.i312, 1              ; 3 uses
  %i.j = icmp samesign ult i64 %i.i, %i.e
  br i1 %i.j, label %.lr.ph, label %_ZN6embree8vector_tINS_13RawBufferViewENS_6Device9allocatorIS1_Lm8EEEE18internal_grow_sizeEm.exit, !llvm.loop !11

_ZN6embree8vector_tINS_13RawBufferViewENS_6Device9allocatorIS1_Lm8EEEE18internal_grow_sizeEm.exit: ; preds = %.lr.ph, %bb.b, %bb.c
  %.07.i = phi i64 [ %i.e, %bb.c ], [ %i.g, %bb.b ], [ %i.i, %.lr.ph ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 7 uses
  %i.l = load i64, ptr %i.k, align 8              ; 3 uses
  %i.m = icmp ugt i64 %i.l, %i.e
  br i1 %i.m, label %.lr.ph14, label %bb.g

.lr.ph14:                                         ; preds = %_ZN6embree8vector_tINS_13RawBufferViewENS_6Device9allocatorIS1_Lm8EEEE18internal_grow_sizeEm.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN6embree13RawBufferViewD2Ev.exit
  %.pre26.pre = load i64, ptr %i.f, align 16
  store i64 %i.e, ptr %i.k, align 8
  br label %bb.g

bb.d:                                             ; preds = %.lr.ph14, %_ZN6embree13RawBufferViewD2Ev.exit
  %i.o = phi i64 [ %i.l, %.lr.ph14 ], [ %i.y, %_ZN6embree13RawBufferViewD2Ev.exit ]
  %.029.i13 = phi i64 [ %i.e, %.lr.ph14 ], [ %i.z, %_ZN6embree13RawBufferViewD2Ev.exit ] ; 2 uses
  %i.p = load ptr, ptr %i.n, align 8
  %i.q = getelementptr inbounds nuw [56 x i8], ptr %i.p, i64 %.029.i13
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %.not.i.i4 = icmp eq ptr %i.s, null
  br i1 %.not.i.i4, label %_ZN6embree13RawBufferViewD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr noundef nonnull align 8 dereferenceable(16) %i.s)
          to label %._ZN6embree13RawBufferViewD2Ev.exit_crit_edge unwind label %bb.f

._ZN6embree13RawBufferViewD2Ev.exit_crit_edge:    ; preds = %bb.e
  %.pre = load i64, ptr %i.k, align 8
  br label %_ZN6embree13RawBufferViewD2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #23
  unreachable

_ZN6embree13RawBufferViewD2Ev.exit:               ; preds = %._ZN6embree13RawBufferViewD2Ev.exit_crit_edge, %bb.d
  %i.y = phi i64 [ %.pre, %._ZN6embree13RawBufferViewD2Ev.exit_crit_edge ], [ %i.o, %bb.d ] ; 2 uses
  %i.z = add nuw i64 %.029.i13, 1                 ; 2 uses
  %i.aa = icmp ult i64 %i.z, %i.y
  br i1 %i.aa, label %bb.d, label %._crit_edge, !llvm.loop !12

bb.g:                                             ; preds = %._crit_edge, %_ZN6embree8vector_tINS_13RawBufferViewENS_6Device9allocatorIS1_Lm8EEEE18internal_grow_sizeEm.exit
  %i.ab = phi i64 [ %i.e, %._crit_edge ], [ %i.l, %_ZN6embree8vector_tINS_13RawBufferViewENS_6Device9allocatorIS1_Lm8EEEE18internal_grow_sizeEm.exit ] ; 6 uses
  %i.ac = phi i64 [ %.pre26.pre, %._crit_edge ], [ %i.g, %_ZN6embree8vector_tINS_13RawBufferViewENS_6Device9allocatorIS1_Lm8EEEE18internal_grow_sizeEm.exit ]
  %i.ad = icmp eq i64 %.07.i, %i.ac
  br i1 %i.ad, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ae = icmp samesign ult i64 %i.ab, %i.e
  br i1 %i.ae, label %.lr.ph22, label %._crit_edge23

.lr.ph22:                                         ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.ag = sub nuw nsw i64 %i.e, %i.ab
  %xtraiter44 = and i64 %i.ag, 1
  %lcmp.mod45.not = icmp eq i64 %xtraiter44, 0
  br i1 %lcmp.mod45.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph22
  %i.ah = load ptr, ptr %i.af, align 8
  %i.ai = getelementptr inbounds nuw [56 x i8], ptr %i.ah, i64 %i.ab ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ai, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store i8 1, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 44
  store i32 0, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 48
  store ptr null, ptr %i.am, align 8
  %i.an = add nuw nsw i64 %i.ab, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph22
  %.028.i20.unr = phi i64 [ %i.ab, %.lr.ph22 ], [ %i.an, %.prol.loopexit.unr-lcssa ]
  %i.ao = add nsw i64 %i.e, -1
  %i.ap = icmp eq i64 %i.ab, %i.ao
  br i1 %i.ap, label %._crit_edge23, label %.lr.ph22.new

._crit_edge23:                                    ; preds = %.prol.loopexit, %.lr.ph22.new, %bb.h
  store i64 %i.e, ptr %i.k, align 8
  br label %_ZN6embree8vector_tINS_13RawBufferViewENS_6Device9allocatorIS1_Lm8EEEE15internal_resizeEmm.exit

.lr.ph22.new:                                     ; preds = %.prol.loopexit, %.lr.ph22.new
  %.028.i20 = phi i64 [ %i.bd, %.lr.ph22.new ], [ %.028.i20.unr, %.prol.loopexit ] ; 3 uses
  %i.aq = load ptr, ptr %i.af, align 8
  %i.ar = getelementptr inbounds nuw [56 x i8], ptr %i.aq, i64 %.028.i20 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ar, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.as, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store i8 1, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 44
  store i32 0, ptr %i.au, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  store ptr null, ptr %i.av, align 8
  %i.aw = load ptr, ptr %i.af, align 8
  %i.ax = getelementptr inbounds nuw [56 x i8], ptr %i.aw, i64 %.028.i20 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ay, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.az, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  store i8 1, ptr %i.ba, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 100
  store i32 0, ptr %i.bb, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  store ptr null, ptr %i.bc, align 8
  %i.bd = add nuw nsw i64 %.028.i20, 2            ; 2 uses
  %exitcond25.not.1 = icmp eq i64 %i.bd, %i.e
  br i1 %exitcond25.not.1, label %._crit_edge23, label %.lr.ph22.new, !llvm.loop !13

bb.i:                                             ; preds = %bb.g
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 6 uses
  %i.bf = load ptr, ptr %i.be, align 8            ; 2 uses
  %i.bg = load ptr, ptr %i.d, align 16            ; 2 uses
  %i.bh = mul i64 %.07.i, 56
  %i.bi = load ptr, ptr %i.bg, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = tail call noundef ptr %i.bk(ptr noundef nonnull align 8 dereferenceable(1384) %i.bg, i64 noundef %i.bh, i64 noundef 8, i32 noundef 3), !inline_history !14
  store ptr %i.bl, ptr %i.be, align 8
  %i.bm = load i64, ptr %i.k, align 8
  %.not = icmp eq i64 %i.bm, 0
  br i1 %.not, label %.preheader, label %_ZN6embree13RawBufferViewD2Ev.exit6

.preheader:                                       ; preds = %_ZN6embree13RawBufferViewD2Ev.exit6, %bb.i
  %.lcssa = phi i64 [ 0, %bb.i ], [ %i.cf, %_ZN6embree13RawBufferViewD2Ev.exit6 ] ; 6 uses
  %i.bn = icmp ult i64 %.lcssa, %i.e
  br i1 %i.bn, label %.lr.ph18.preheader, label %._crit_edge19

.lr.ph18.preheader:                               ; preds = %.preheader
  %i.bo = sub nuw i64 %i.e, %.lcssa
  %xtraiter = and i64 %i.bo, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph18.prol.loopexit, label %.lr.ph18.prol

.lr.ph18.prol:                                    ; preds = %.lr.ph18.preheader
  %i.bp = load ptr, ptr %i.be, align 8
  %i.bq = getelementptr inbounds nuw [56 x i8], ptr %i.bp, i64 %.lcssa ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bq, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.br, align 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store i8 1, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 44
  store i32 0, ptr %i.bt, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  store ptr null, ptr %i.bu, align 8
  %i.bv = add nuw nsw i64 %.lcssa, 1
  br label %.lr.ph18.prol.loopexit

.lr.ph18.prol.loopexit:                           ; preds = %.lr.ph18.prol, %.lr.ph18.preheader
  %.0.i17.unr = phi i64 [ %.lcssa, %.lr.ph18.preheader ], [ %i.bv, %.lr.ph18.prol ]
  %i.bw = add nsw i64 %i.e, -1
  %i.bx = icmp eq i64 %.lcssa, %i.bw
  br i1 %i.bx, label %._crit_edge19, label %.lr.ph18

_ZN6embree13RawBufferViewD2Ev.exit6:              ; preds = %bb.i, %_ZN6embree13RawBufferViewD2Ev.exit6
  %.027.i15 = phi i64 [ %i.ce, %_ZN6embree13RawBufferViewD2Ev.exit6 ], [ 0, %bb.i ] ; 3 uses
  %i.by = load ptr, ptr %i.be, align 8
  %i.bz = getelementptr inbounds nuw [56 x i8], ptr %i.by, i64 %.027.i15 ; 2 uses
  %i.ca = getelementptr inbounds nuw [56 x i8], ptr %i.bf, i64 %.027.i15 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bz, ptr noundef nonnull align 8 dereferenceable(56) %i.ca, i64 48, i1 false)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 48
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 48 ; 2 uses
  %i.cd = load ptr, ptr %i.cc, align 8
  store ptr %i.cd, ptr %i.cb, align 8
  store ptr null, ptr %i.cc, align 8
  %i.ce = add nuw i64 %.027.i15, 1                ; 2 uses
  %i.cf = load i64, ptr %i.k, align 8             ; 2 uses
  %i.cg = icmp ult i64 %i.ce, %i.cf
  br i1 %i.cg, label %_ZN6embree13RawBufferViewD2Ev.exit6, label %.preheader, !llvm.loop !0

._crit_edge19:                                    ; preds = %.lr.ph18.prol.loopexit, %.lr.ph18, %.preheader
  %i.ch = load ptr, ptr %i.d, align 16            ; 3 uses
  %.not.i.i = icmp eq ptr %i.ch, null
  br i1 %.not.i.i, label %_ZN6embree6Device9allocatorINS_13RawBufferViewELm8EE10deallocateEPS2_m.exit.i, label %bb.j

bb.j:                                             ; preds = %._crit_edge19
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 72
  %i.ck = load ptr, ptr %i.cj, align 8
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(1384) %i.ch, ptr noundef %i.bf), !inline_history !15
  br label %_ZN6embree6Device9allocatorINS_13RawBufferViewELm8EE10deallocateEPS2_m.exit.i

_ZN6embree6Device9allocatorINS_13RawBufferViewELm8EE10deallocateEPS2_m.exit.i: ; preds = %bb.j, %._crit_edge19
  store i64 %i.e, ptr %i.k, align 8
  store i64 %.07.i, ptr %i.f, align 16
  br label %_ZN6embree8vector_tINS_13RawBufferViewENS_6Device9allocatorIS1_Lm8EEEE15internal_resizeEmm.exit

.lr.ph18:                                         ; preds = %.lr.ph18.prol.loopexit, %.lr.ph18
  %.0.i17 = phi i64 [ %i.cy, %.lr.ph18 ], [ %.0.i17.unr, %.lr.ph18.prol.loopexit ] ; 3 uses
  %i.cl = load ptr, ptr %i.be, align 8
  %i.cm = getelementptr inbounds nuw [56 x i8], ptr %i.cl, i64 %.0.i17 ; 5 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 36
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cm, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.cn, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 40
  store i8 1, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 44
  store i32 0, ptr %i.cp, align 4
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 48
  store ptr null, ptr %i.cq, align 8
  %i.cr = load ptr, ptr %i.be, align 8
  %i.cs = getelementptr inbounds nuw [56 x i8], ptr %i.cr, i64 %.0.i17 ; 5 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 92
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.ct, i8 0, i64 36, i1 false)
  store i32 1, ptr %i.cu, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 96
  store i8 1, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 100
  store i32 0, ptr %i.cw, align 4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 104
  store ptr null, ptr %i.cx, align 8
  %i.cy = add nuw nsw i64 %.0.i17, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.cy, %i.e
  br i1 %exitcond.not.1, label %._crit_edge19, label %.lr.ph18, !llvm.loop !1

_ZN6embree8vector_tINS_13RawBufferViewENS_6Device9allocatorIS1_Lm8EEEE15internal_resizeEmm.exit: ; preds = %._crit_edge23, %_ZN6embree6Device9allocatorINS_13RawBufferViewELm8EE10deallocateEPS2_m.exit.i
  tail call void @_ZN6embree8Geometry15setNumTimeStepsEj(ptr noundef nonnull align 16 dereferenceable(88) %0, i32 noundef %1)
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %_ZN6embree8vector_tINS_13RawBufferViewENS_6Device9allocatorIS1_Lm8EEEE15internal_resizeEmm.exit
  ret void
}

declare void @_ZN6embree8Geometry15setNumTimeStepsEj(ptr noundef nonnull align 16 dereferenceable(88), i32 noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6embree13InstanceArray17setInstancedSceneERKNS_3RefINS_5SceneEEE(ptr noundef nonnull align 16 dereferenceable(200) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(16) %i.b)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load ptr, ptr %1, align 8                ; 4 uses
  store ptr %i.f, ptr %i.a, align 8
  %.not3 = icmp eq ptr %i.f, null
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr %i.f, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
end_hunk_0
