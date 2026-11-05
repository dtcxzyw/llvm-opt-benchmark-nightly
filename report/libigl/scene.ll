Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/scene?download=true
inline.NumInlined: 894
inline.NumDeleted: 299
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6embree5Scene4bindEjNS_3RefINS_8GeometryEEE:bb.a
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread84, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread84: ; preds = %.body28.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.ad

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body28.thread
  call void @_ZdlPv(ptr noundef %i.ad) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  br label %bb.ad

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body28, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %.pn2577 = phi { ptr, i32 } [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread ], [ %i.y, %.body28 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #26
  call void @__cxa_free_exception(ptr %i.t) #26
  br label %bb.ad

bb.f:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.ah = invoke noundef zeroext i1 @_ZN6embree6IDPoolIjLm4294967294EE3addEj(ptr noundef nonnull align 8 dereferenceable(52) %i.ag, i32 noundef %1)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  br i1 %i.ah, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = tail call ptr @__cxa_allocate_exception(i64 48) #26 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #26
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull @.str.43, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %bb.i unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread

bb.i:                                             ; preds = %bb.h
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6embree12rtcore_errorE, i64 16), ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i32 3, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %.body

_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.i
  invoke void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTIN6embree12rtcore_errorE, ptr nonnull @_ZN6embree12rtcore_errorD2Ev) #27
          to label %bb.ae unwind label %.body.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread: ; preds = %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

.body:                                            ; preds = %bb.i
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(48) %i.ai) #26
  %i.an = load ptr, ptr %6, align 8               ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ap = icmp eq ptr %i.an, %i.ao
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.thread: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.an) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56

.body.thread:                                     ; preds = %_ZN6embree12rtcore_errorC2E8RTCErrorRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = load ptr, ptr %6, align 8               ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread96, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread96: ; preds = %.body.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.ad

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54: ; preds = %.body.thread
  call void @_ZdlPv(ptr noundef %i.ar) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  br label %bb.ad

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread
  %.pn89 = phi { ptr, i32 } [ %i.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56.thread ], [ %i.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i54.thread ], [ %i.am, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #26
  call void @__cxa_free_exception(ptr %i.ai) #26
  br label %bb.ad

bb.j:                                             ; preds = %_ZN6embree6IDPoolIjLm4294967294EE8allocateEv.exit.thread73, %bb.g, %_ZN6embree6IDPoolIjLm4294967294EE8allocateEv.exit
  %.021 = phi i32 [ %i.n, %_ZN6embree6IDPoolIjLm4294967294EE8allocateEv.exit ], [ %1, %bb.g ], [ %i.h, %_ZN6embree6IDPoolIjLm4294967294EE8allocateEv.exit.thread73 ] ; 5 uses
  %i.au = zext i32 %.021 to i64                   ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 5 uses
  %i.ax = load i64, ptr %i.aw, align 8            ; 6 uses
  %.not = icmp ugt i64 %i.ax, %i.au
  br i1 %.not, label %_ZN6embree8vector_tIjNS_17aligned_allocatorIjLm4EEEE6resizeEm.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ay = add nuw i32 %.021, 1
  %i.az = zext i32 %i.ay to i64                   ; 25 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 16           ; 4 uses
  %.not.i34 = icmp ult i64 %i.bb, %i.az
  br i1 %.not.i34, label %bb.l, label %_ZN6embree8vector_tINS_3RefINS_8GeometryEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %_ZN6embree8vector_tINS_3RefINS_8GeometryEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %.lr.ph
  %.0.i35117 = phi i64 [ %i.bd, %.lr.ph ], [ %i.bb, %bb.l ]
  %i.bd = shl nuw nsw i64 %.0.i35117, 1           ; 3 uses
  %i.be = icmp samesign ult i64 %i.bd, %i.az
  br i1 %i.be, label %.lr.ph, label %_ZN6embree8vector_tINS_3RefINS_8GeometryEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit, !llvm.loop !28

_ZN6embree8vector_tINS_3RefINS_8GeometryEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit: ; preds = %.lr.ph, %bb.l
  %.07.i = phi i64 [ %i.az, %bb.l ], [ %i.bd, %.lr.ph ] ; 3 uses
  %i.bf = icmp eq i64 %.07.i, %i.bb
  br i1 %i.bf, label %_ZN6embree8vector_tINS_3RefINS_8GeometryEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit.thread, label %bb.m

_ZN6embree8vector_tINS_3RefINS_8GeometryEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit.thread: ; preds = %bb.k, %_ZN6embree8vector_tINS_3RefINS_8GeometryEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit
  %i.bg = icmp samesign ult i64 %i.ax, %i.az
  br i1 %i.bg, label %.lr.ph127, label %._crit_edge128

.lr.ph127:                                        ; preds = %_ZN6embree8vector_tINS_3RefINS_8GeometryEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit.thread
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 5 uses
  %i.bi = sub nuw i64 %i.az, %i.ax
  %i.bj = zext i32 %.021 to i64
  %i.bk = sub i64 %i.bj, %i.ax
  %xtraiter176 = and i64 %i.bi, 3                 ; 2 uses
  %lcmp.mod177.not = icmp eq i64 %xtraiter176, 0
  br i1 %lcmp.mod177.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph127, %.prol.preheader
  %.028.i125.prol = phi i64 [ %i.bn, %.prol.preheader ], [ %i.ax, %.lr.ph127 ] ; 2 uses
  %prol.iter178 = phi i64 [ %prol.iter178.next, %.prol.preheader ], [ 0, %.lr.ph127 ]
  %i.bl = load ptr, ptr %i.bh, align 8
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %.028.i125.prol
  store ptr null, ptr %i.bm, align 8
  %i.bn = add nuw nsw i64 %.028.i125.prol, 1      ; 2 uses
  %prol.iter178.next = add i64 %prol.iter178, 1   ; 2 uses
  %prol.iter178.cmp.not = icmp eq i64 %prol.iter178.next, %xtraiter176
  br i1 %prol.iter178.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !29

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph127
  %.028.i125.unr = phi i64 [ %i.ax, %.lr.ph127 ], [ %i.bn, %.prol.preheader ]
  %i.bo = icmp ult i64 %i.bk, 3
  br i1 %i.bo, label %._crit_edge128, label %.lr.ph127.new

._crit_edge128:                                   ; preds = %.prol.loopexit, %.lr.ph127.new, %_ZN6embree8vector_tINS_3RefINS_8GeometryEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit.thread
  store i64 %i.az, ptr %i.aw, align 8
  br label %_ZN6embree8vector_tINS_3RefINS_8GeometryEEENS_6Device9allocatorIS3_Lm8EEEE6resizeEm.exit

.lr.ph127.new:                                    ; preds = %.prol.loopexit, %.lr.ph127.new
  %.028.i125 = phi i64 [ %i.ca, %.lr.ph127.new ], [ %.028.i125.unr, %.prol.loopexit ] ; 5 uses
  %i.bp = load ptr, ptr %i.bh, align 8
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %.028.i125
  store ptr null, ptr %i.bq, align 8
  %i.br = load ptr, ptr %i.bh, align 8
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %.028.i125
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store ptr null, ptr %i.bt, align 8
  %i.bu = load ptr, ptr %i.bh, align 8
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %.028.i125
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  store ptr null, ptr %i.bw, align 8
  %i.bx = load ptr, ptr %i.bh, align 8
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %.028.i125
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  store ptr null, ptr %i.bz, align 8
  %i.ca = add nuw nsw i64 %.028.i125, 4           ; 2 uses
  %exitcond147.not.3 = icmp eq i64 %i.ca, %i.az
  br i1 %exitcond147.not.3, label %._crit_edge128, label %.lr.ph127.new, !llvm.loop !30

bb.m:                                             ; preds = %_ZN6embree8vector_tINS_3RefINS_8GeometryEEENS_6Device9allocatorIS3_Lm8EEEE18internal_grow_sizeEm.exit
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 8 uses
  %i.cc = load ptr, ptr %i.cb, align 8            ; 2 uses
  %i.cd = load ptr, ptr %i.av, align 16           ; 2 uses
  %i.ce = shl nuw nsw i64 %.07.i, 3
  %i.cf = load ptr, ptr %i.cd, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %i.ch = load ptr, ptr %i.cg, align 8
  %i.ci = invoke noundef ptr %i.ch(ptr noundef nonnull align 8 dereferenceable(1384) %i.cd, i64 noundef %i.ce, i64 noundef 8, i32 noundef 3)
          to label %.noexc32 unwind label %bb.e, !inline_history !31

.noexc32:                                         ; preds = %bb.m
  store ptr %i.ci, ptr %i.cb, align 8
  %i.cj = load i64, ptr %i.aw, align 8
  %.not141 = icmp eq i64 %i.cj, 0
  br i1 %.not141, label %.lr.ph123.preheader, label %_ZN6embree3RefINS_8GeometryEED2Ev.exit.i

.preheader112:                                    ; preds = %_ZN6embree3RefINS_8GeometryEED2Ev.exit.i
  %i.ck = icmp ult i64 %i.cx, %i.az
  br i1 %i.ck, label %.lr.ph123.preheader, label %._crit_edge124

.lr.ph123.preheader:                              ; preds = %.noexc32, %.preheader112
  %.0.i122.ph = phi i64 [ 0, %.noexc32 ], [ %i.cx, %.preheader112 ] ; 4 uses
  %i.cl = sub nsw i64 %i.az, %.0.i122.ph
  %i.cm = zext i32 %.021 to i64
  %i.cn = sub nsw i64 %i.cm, %.0.i122.ph
  %xtraiter = and i64 %i.cl, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph123.prol.loopexit, label %.lr.ph123.prol

.lr.ph123.prol:                                   ; preds = %.lr.ph123.preheader, %.lr.ph123.prol
  %.0.i122.prol = phi i64 [ %i.cq, %.lr.ph123.prol ], [ %.0.i122.ph, %.lr.ph123.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph123.prol ], [ 0, %.lr.ph123.preheader ]
  %i.co = load ptr, ptr %i.cb, align 8
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.0.i122.prol
  store ptr null, ptr %i.cp, align 8
  %i.cq = add nuw nsw i64 %.0.i122.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph123.prol.loopexit, label %.lr.ph123.prol, !llvm.loop !32

.lr.ph123.prol.loopexit:                          ; preds = %.lr.ph123.prol, %.lr.ph123.preheader
  %.0.i122.unr = phi i64 [ %.0.i122.ph, %.lr.ph123.preheader ], [ %i.cq, %.lr.ph123.prol ]
  %i.cr = icmp ult i64 %i.cn, 3
  br i1 %i.cr, label %._crit_edge124, label %.lr.ph123

_ZN6embree3RefINS_8GeometryEED2Ev.exit.i:         ; preds = %.noexc32, %_ZN6embree3RefINS_8GeometryEED2Ev.exit.i
  %.027.i120 = phi i64 [ %i.cw, %_ZN6embree3RefINS_8GeometryEED2Ev.exit.i ], [ 0, %.noexc32 ] ; 3 uses
  %i.cs = load ptr, ptr %i.cb, align 8
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.027.i120
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.027.i120 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8
  store ptr %i.cv, ptr %i.ct, align 8
  store ptr null, ptr %i.cu, align 8
  %i.cw = add nuw i64 %.027.i120, 1               ; 2 uses
  %i.cx = load i64, ptr %i.aw, align 8            ; 3 uses
  %i.cy = icmp ult i64 %i.cw, %i.cx
  br i1 %i.cy, label %_ZN6embree3RefINS_8GeometryEED2Ev.exit.i, label %.preheader112, !llvm.loop !33

._crit_edge124:                                   ; preds = %.lr.ph123.prol.loopexit, %.lr.ph123, %.preheader112
  %i.cz = load ptr, ptr %i.av, align 16           ; 3 uses
  %.not.i35.i = icmp eq ptr %i.cz, null
  br i1 %.not.i35.i, label %_ZN6embree6Device9allocatorINS_3RefINS_8GeometryEEELm8EE10deallocateEPS4_m.exit.i, label %bb.n

bb.n:                                             ; preds = %._crit_edge124
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 72
  %i.dc = load ptr, ptr %i.db, align 8
  invoke void %i.dc(ptr noundef nonnull align 8 dereferenceable(1384) %i.cz, ptr noundef %i.cc)
          to label %_ZN6embree6Device9allocatorINS_3RefINS_8GeometryEEELm8EE10deallocateEPS4_m.exit.i unwind label %bb.e, !inline_history !31

_ZN6embree6Device9allocatorINS_3RefINS_8GeometryEEELm8EE10deallocateEPS4_m.exit.i: ; preds = %bb.n, %._crit_edge124
  store i64 %i.az, ptr %i.aw, align 8
  store i64 %.07.i, ptr %i.ba, align 16
  br label %_ZN6embree8vector_tINS_3RefINS_8GeometryEEENS_6Device9allocatorIS3_Lm8EEEE6resizeEm.exit

.lr.ph123:                                        ; preds = %.lr.ph123.prol.loopexit, %.lr.ph123
  %.0.i122 = phi i64 [ %i.do, %.lr.ph123 ], [ %.0.i122.unr, %.lr.ph123.prol.loopexit ] ; 5 uses
  %i.dd = load ptr, ptr %i.cb, align 8
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.dd, i64 %.0.i122
  store ptr null, ptr %i.de, align 8
  %i.df = load ptr, ptr %i.cb, align 8
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.0.i122
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  store ptr null, ptr %i.dh, align 8
  %i.di = load ptr, ptr %i.cb, align 8
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %.0.i122
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  store ptr null, ptr %i.dk, align 8
  %i.dl = load ptr, ptr %i.cb, align 8
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dl, i64 %.0.i122
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 24
  store ptr null, ptr %i.dn, align 8
  %i.do = add nuw nsw i64 %.0.i122, 4             ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.do, %i.az
  br i1 %exitcond.not.3, label %._crit_edge124, label %.lr.ph123, !llvm.loop !34

_ZN6embree8vector_tINS_3RefINS_8GeometryEEENS_6Device9allocatorIS3_Lm8EEEE6resizeEm.exit: ; preds = %._crit_edge128, %_ZN6embree6Device9allocatorINS_3RefINS_8GeometryEEELm8EE10deallocateEPS4_m.exit.i
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 16           ; 5 uses
  %.not.i40 = icmp ult i64 %i.dr, %i.az
  br i1 %.not.i40, label %bb.o, label %_ZN6embree8vector_tIPfNS_6Device9allocatorIS1_Lm8EEEE18internal_grow_sizeEm.exit

bb.o:                                             ; preds = %_ZN6embree8vector_tINS_3RefINS_8GeometryEEENS_6Device9allocatorIS3_Lm8EEEE6resizeEm.exit
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %_ZN6embree8vector_tIPfNS_6Device9allocatorIS1_Lm8EEEE18internal_grow_sizeEm.exit, label %.lr.ph130

.lr.ph130:                                        ; preds = %bb.o, %.lr.ph130
  %.0.i42129 = phi i64 [ %i.dt, %.lr.ph130 ], [ %i.dr, %bb.o ]
  %i.dt = shl nuw nsw i64 %.0.i42129, 1           ; 3 uses
  %i.du = icmp samesign ult i64 %i.dt, %i.az
  br i1 %i.du, label %.lr.ph130, label %_ZN6embree8vector_tIPfNS_6Device9allocatorIS1_Lm8EEEE18internal_grow_sizeEm.exit, !llvm.loop !35

_ZN6embree8vector_tIPfNS_6Device9allocatorIS1_Lm8EEEE18internal_grow_sizeEm.exit: ; preds = %.lr.ph130, %_ZN6embree8vector_tINS_3RefINS_8GeometryEEENS_6Device9allocatorIS3_Lm8EEEE6resizeEm.exit, %bb.o
  %.07.i41 = phi i64 [ %i.az, %bb.o ], [ %i.dr, %_ZN6embree8vector_tINS_3RefINS_8GeometryEEENS_6Device9allocatorIS3_Lm8EEEE6resizeEm.exit ], [ %i.dt, %.lr.ph130 ] ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 536 ; 6 uses
  %i.dw = load i64, ptr %i.dv, align 8
  %i.dx = icmp ugt i64 %i.dw, %i.az
  br i1 %i.dx, label %.preheader110.preheader, label %bb.p

.preheader110.preheader:                          ; preds = %_ZN6embree8vector_tIPfNS_6Device9allocatorIS1_Lm8EEEE18internal_grow_sizeEm.exit
  store i64 %i.az, ptr %i.dv, align 8
  br label %bb.p

bb.p:                                             ; preds = %.preheader110.preheader, %_ZN6embree8vector_tIPfNS_6Device9allocatorIS1_Lm8EEEE18internal_grow_sizeEm.exit
  %i.dy = icmp eq i64 %.07.i41, %i.dr
  br i1 %i.dy, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i64 %i.az, ptr %i.dv, align 8
  br label %_ZN6embree8vector_tIPfNS_6Device9allocatorIS1_Lm8EEEE6resizeEm.exit

bb.r:                                             ; preds = %bb.p
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 552 ; 3 uses
  %i.ea = load ptr, ptr %i.dz, align 8            ; 2 uses
  %i.eb = load ptr, ptr %i.dp, align 16           ; 2 uses
  %i.ec = shl i64 %.07.i41, 3
  %i.ed = load ptr, ptr %i.eb, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 64
  %i.ef = load ptr, ptr %i.ee, align 8
  %i.eg = invoke noundef ptr %i.ef(ptr noundef nonnull align 8 dereferenceable(1384) %i.eb, i64 noundef %i.ec, i64 noundef 8, i32 noundef 3)
          to label %.noexc38 unwind label %bb.e, !inline_history !36

.noexc38:                                         ; preds = %bb.r
  store ptr %i.eg, ptr %i.dz, align 8
  %i.eh = load i64, ptr %i.dv, align 8
  %.not142 = icmp eq i64 %i.eh, 0
  br i1 %.not142, label %.preheader109, label %.lr.ph133

.preheader109:                                    ; preds = %.lr.ph133, %.noexc38
  %i.ei = load ptr, ptr %i.dp, align 16           ; 3 uses
  %.not.i.i37 = icmp eq ptr %i.ei, null
  br i1 %.not.i.i37, label %_ZN6embree6Device9allocatorIPfLm8EE10deallocateEPS2_m.exit.i, label %bb.s

.lr.ph133:                                        ; preds = %.noexc38, %.lr.ph133
  %.022.i132 = phi i64 [ %i.en, %.lr.ph133 ], [ 0, %.noexc38 ] ; 3 uses
  %i.ej = load ptr, ptr %i.dz, align 8
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %.022.i132
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %.022.i132
  %i.em = load ptr, ptr %i.el, align 8
  store ptr %i.em, ptr %i.ek, align 8
  %i.en = add nuw i64 %.022.i132, 1               ; 2 uses
  %i.eo = load i64, ptr %i.dv, align 8
  %i.ep = icmp ult i64 %i.en, %i.eo
  br i1 %i.ep, label %.lr.ph133, label %.preheader109, !llvm.loop !37

bb.s:                                             ; preds = %.preheader109
  %i.eq = load ptr, ptr %i.ei, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 72
  %i.es = load ptr, ptr %i.er, align 8
  invoke void %i.es(ptr noundef nonnull align 8 dereferenceable(1384) %i.ei, ptr noundef %i.ea)
          to label %_ZN6embree6Device9allocatorIPfLm8EE10deallocateEPS2_m.exit.i unwind label %bb.e, !inline_history !36

_ZN6embree6Device9allocatorIPfLm8EE10deallocateEPS2_m.exit.i: ; preds = %bb.s, %.preheader109
  store i64 %i.az, ptr %i.dv, align 8
  store i64 %.07.i41, ptr %i.dq, align 16
  br label %_ZN6embree8vector_tIPfNS_6Device9allocatorIS1_Lm8EEEE6resizeEm.exit

_ZN6embree8vector_tIPfNS_6Device9allocatorIS1_Lm8EEEE6resizeEm.exit: ; preds = %bb.q, %_ZN6embree6Device9allocatorIPfLm8EE10deallocateEPS2_m.exit.i
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.eu = load i64, ptr %i.et, align 16           ; 5 uses
  %.not.i49 = icmp ult i64 %i.eu, %i.az
  br i1 %.not.i49, label %bb.t, label %_ZN6embree8vector_tIjNS_17aligned_allocatorIjLm4EEEE18internal_grow_sizeEm.exit

bb.t:                                             ; preds = %_ZN6embree8vector_tIPfNS_6Device9allocatorIS1_Lm8EEEE6resizeEm.exit
  %i.ev = icmp eq i64 %i.eu, 0
  br i1 %i.ev, label %_ZN6embree8vector_tIjNS_17aligned_allocatorIjLm4EEEE18internal_grow_sizeEm.exit, label %.lr.ph136

.lr.ph136:                                        ; preds = %bb.t, %.lr.ph136
  %.0.i51135 = phi i64 [ %i.ew, %.lr.ph136 ], [ %i.eu, %bb.t ]
  %i.ew = shl nuw nsw i64 %.0.i51135, 1           ; 3 uses
  %i.ex = icmp samesign ult i64 %i.ew, %i.az
  br i1 %i.ex, label %.lr.ph136, label %_ZN6embree8vector_tIjNS_17aligned_allocatorIjLm4EEEE18internal_grow_sizeEm.exit, !llvm.loop !38

_ZN6embree8vector_tIjNS_17aligned_allocatorIjLm4EEEE18internal_grow_sizeEm.exit: ; preds = %.lr.ph136, %_ZN6embree8vector_tIPfNS_6Device9allocatorIS1_Lm8EEEE6resizeEm.exit, %bb.t
  %.07.i50 = phi i64 [ %i.az, %bb.t ], [ %i.eu, %_ZN6embree8vector_tIPfNS_6Device9allocatorIS1_Lm8EEEE6resizeEm.exit ], [ %i.ew, %.lr.ph136 ] ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 6 uses
  %i.ez = load i64, ptr %i.ey, align 8
  %i.fa = icmp ugt i64 %i.ez, %i.az
  br i1 %i.fa, label %.preheader107.preheader, label %bb.u

.preheader107.preheader:                          ; preds = %_ZN6embree8vector_tIjNS_17aligned_allocatorIjLm4EEEE18internal_grow_sizeEm.exit
  store i64 %i.az, ptr %i.ey, align 8
  br label %bb.u

bb.u:                                             ; preds = %.preheader107.preheader, %_ZN6embree8vector_tIjNS_17aligned_allocatorIjLm4EEEE18internal_grow_sizeEm.exit
  %i.fb = icmp eq i64 %.07.i50, %i.eu
  br i1 %i.fb, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i64 %i.az, ptr %i.ey, align 8
  br label %_ZN6embree8vector_tIjNS_17aligned_allocatorIjLm4EEEE6resizeEm.exit

bb.w:                                             ; preds = %bb.u
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 3 uses
  %i.fd = load ptr, ptr %i.fc, align 8            ; 2 uses
  %i.fe = shl i64 %.07.i50, 2
  %i.ff = invoke noundef ptr @_ZN6embree13alignedMallocEmm(i64 noundef %i.fe, i64 noundef 4)
          to label %.noexc47 unwind label %bb.e

.noexc47:                                         ; preds = %bb.w
  store ptr %i.ff, ptr %i.fc, align 8
  %i.fg = load i64, ptr %i.ey, align 8
  %.not143 = icmp eq i64 %i.fg, 0
  br i1 %.not143, label %.preheader, label %.lr.ph139
end_hunk_0
