Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/DartsDict?download=true
inline.NumInlined: 1274
inline.NumDeleted: 491
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN5Darts7Details8AutoPoolINS0_8DawgUnitEE10resize_bufEm:bb.a

.loopexit30:                                      ; preds = %.preheader, %bb.a
  %.1 = phi i64 [ %1, %bb.a ], [ %.019, %.preheader ] ; 3 uses
  %i.f = shl i64 %.1, 2
  %i.g = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #29
          to label %_ZN5Darts7Details9AutoArrayIcE5resetEPc.exit unwind label %bb.b ; 9 uses

bb.b:                                             ; preds = %.loopexit30
  %i.h = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc             ; 3 uses
  %i.i = extractvalue { ptr, i32 } %i.h, 1
  %i.j = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #28
  %i.k = icmp eq i32 %i.i, %i.j
  br i1 %i.k, label %bb.c, label %_ZN5Darts7Details9AutoArrayIcED2Ev.exit25

bb.c:                                             ; preds = %bb.b
  %i.l = extractvalue { ptr, i32 } %i.h, 0
  %i.m = tail call ptr @__cxa_begin_catch(ptr %i.l) #28 ; 0 uses
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Darts7Details9ExceptionE, i64 16), ptr %i.n, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @.str.22, ptr %i.o, align 8, !tbaa !131
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN5Darts7Details9ExceptionE, ptr nonnull @_ZNSt9exceptionD2Ev) #27
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZN5Darts7Details9AutoArrayIcED2Ev.exit25 unwind label %bb.f

_ZN5Darts7Details9AutoArrayIcE5resetEPc.exit:     ; preds = %.loopexit30
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !135  ; 7 uses
  %.not23 = icmp eq i64 %i.r, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !117   ; 9 uses
  br i1 %.not23, label %.loopexit, label %.preheader35

.preheader35:                                     ; preds = %_ZN5Darts7Details9AutoArrayIcE5resetEPc.exit
  %.pre36 = ptrtoaddr ptr %.pre to i64
  %i.s = ptrtoaddr ptr %i.g to i64
  %min.iters.check = icmp ult i64 %i.r, 8
  %i.t = sub i64 %.pre36, %i.s
  %diff.check = icmp ugt i64 %i.t, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader35
  %n.vec = and i64 %i.r, -8                       ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load = load <4 x i32>, ptr %i.v, align 4, !tbaa !147
  %wide.load37 = load <4 x i32>, ptr %i.w, align 4, !tbaa !147
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <4 x i32> %wide.load, ptr %i.u, align 4, !tbaa !147
  store <4 x i32> %wide.load37, ptr %i.x, align 4, !tbaa !147
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !225

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.r, %n.vec
  br i1 %cmp.n, label %.loopexit.thread, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader35, %middle.block
  %.031.ph = phi i64 [ 0, %.preheader35 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %i.r, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.031.prol = phi i64 [ %i.ac, %scalar.ph.prol ], [ %.031.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.031.prol
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.031.prol
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !147
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !147
  %i.ac = add nuw i64 %.031.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !226

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.031.unr = phi i64 [ %.031.ph, %scalar.ph.preheader ], [ %i.ac, %scalar.ph.prol ]
  %i.ad = sub i64 %.031.ph, %i.r
  %i.ae = icmp ugt i64 %i.ad, -4
  br i1 %i.ae, label %.loopexit.thread, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.031 = phi i64 [ %i.au, %scalar.ph ], [ %.031.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.031
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.031
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !147
  store i32 %i.ah, ptr %i.af, align 4, !tbaa !147
  %i.ai = add nuw i64 %.031, 1                    ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ai
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.ai
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !147
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !147
  %i.am = add nuw i64 %.031, 2                    ; 2 uses
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.am
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.am
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !147
  store i32 %i.ap, ptr %i.an, align 4, !tbaa !147
  %i.aq = add nuw i64 %.031, 3                    ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.aq
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.aq
  %i.at = load i32, ptr %i.as, align 4, !tbaa !147
  store i32 %i.at, ptr %i.ar, align 4, !tbaa !147
  %i.au = add nuw i64 %.031, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.au, %i.r
  br i1 %exitcond.not.3, label %.loopexit.thread, label %scalar.ph, !llvm.loop !227

.loopexit.thread:                                 ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  store ptr %i.g, ptr %0, align 8, !tbaa !117
  store i64 %.1, ptr %i.a, align 8, !tbaa !154
  br label %bb.e

.loopexit:                                        ; preds = %_ZN5Darts7Details9AutoArrayIcE5resetEPc.exit
  store ptr %i.g, ptr %0, align 8, !tbaa !117
  store i64 %.1, ptr %i.a, align 8, !tbaa !154
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZN5Darts7Details9AutoArrayIcED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %.loopexit.thread, %.loopexit
  tail call void @_ZdaPv(ptr noundef nonnull %.pre) #30
  br label %_ZN5Darts7Details9AutoArrayIcED2Ev.exit

_ZN5Darts7Details9AutoArrayIcED2Ev.exit:          ; preds = %.loopexit, %bb.e
  ret void

_ZN5Darts7Details9AutoArrayIcED2Ev.exit25:        ; preds = %bb.b, %bb.d
  %.merged = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.p, %bb.d ]
  resume { ptr, i32 } %.merged

bb.f:                                             ; preds = %bb.d
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  tail call void @__clang_call_terminate(ptr %i.aw) #31
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Darts7Details8AutoPoolINS0_8DawgNodeEE10resize_bufEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !155
  %i.c = shl i64 %i.b, 1
  %.not = icmp ult i64 %1, %i.c
  br i1 %.not, label %.preheader, label %.loopexit30

.preheader:                                       ; preds = %bb.a, %.preheader
  %.019 = phi i64 [ %i.e, %.preheader ], [ 1, %bb.a ] ; 3 uses
  %i.d = icmp ult i64 %.019, %1
  %i.e = shl i64 %.019, 1
  br i1 %i.d, label %.preheader, label %.loopexit30, !llvm.loop !228

.loopexit30:                                      ; preds = %.preheader, %bb.a
  %.1 = phi i64 [ %1, %bb.a ], [ %.019, %.preheader ] ; 3 uses
  %i.f = mul i64 %.1, 12
  %i.g = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #29
          to label %_ZN5Darts7Details9AutoArrayIcE5resetEPc.exit unwind label %bb.b ; 5 uses

bb.b:                                             ; preds = %.loopexit30
  %i.h = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc             ; 3 uses
  %i.i = extractvalue { ptr, i32 } %i.h, 1
  %i.j = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #28
  %i.k = icmp eq i32 %i.i, %i.j
  br i1 %i.k, label %bb.c, label %_ZN5Darts7Details9AutoArrayIcED2Ev.exit25

bb.c:                                             ; preds = %bb.b
  %i.l = extractvalue { ptr, i32 } %i.h, 0
  %i.m = tail call ptr @__cxa_begin_catch(ptr %i.l) #28 ; 0 uses
  %i.n = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Darts7Details9ExceptionE, i64 16), ptr %i.n, align 8, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @.str.22, ptr %i.o, align 8, !tbaa !131
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN5Darts7Details9ExceptionE, ptr nonnull @_ZNSt9exceptionD2Ev) #27
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZN5Darts7Details9AutoArrayIcED2Ev.exit25 unwind label %bb.f

_ZN5Darts7Details9AutoArrayIcE5resetEPc.exit:     ; preds = %.loopexit30
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !151  ; 4 uses
  %.pre = load ptr, ptr %0, align 8, !tbaa !117   ; 5 uses
  switch i64 %i.r, label %.preheader35.preheader.new [
    i64 0, label %.loopexit
    i64 1, label %.preheader35.epil.preheader
  ]

.preheader35.preheader.new:                       ; preds = %_ZN5Darts7Details9AutoArrayIcE5resetEPc.exit
  %unroll_iter = and i64 %i.r, -2
  br label %.preheader35

.preheader35:                                     ; preds = %.preheader35, %.preheader35.preheader.new
  %.031 = phi i64 [ 0, %.preheader35.preheader.new ], [ %i.x, %.preheader35 ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader35.preheader.new ], [ %niter.next.1, %.preheader35 ]
  %i.s = getelementptr inbounds nuw [12 x i8], ptr %i.g, i64 %.031
  %i.t = getelementptr inbounds nuw [12 x i8], ptr %.pre, i64 %.031
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.s, ptr noundef nonnull align 4 dereferenceable(12) %i.t, i64 12, i1 false), !tbaa.struct !231
  %i.u = or disjoint i64 %.031, 1                 ; 2 uses
  %i.v = getelementptr inbounds nuw [12 x i8], ptr %i.g, i64 %i.u
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %.pre, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.v, ptr noundef nonnull align 4 dereferenceable(12) %i.w, i64 12, i1 false), !tbaa.struct !231
  %i.x = add nuw i64 %.031, 2                     ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.thread.unr-lcssa, label %.preheader35, !llvm.loop !229

.loopexit.thread.unr-lcssa:                       ; preds = %.preheader35
  %lcmp.mod.not = trunc i64 %i.r to i1
  br i1 %lcmp.mod.not, label %.preheader35.epil.preheader, label %.loopexit.thread

.preheader35.epil.preheader:                      ; preds = %_ZN5Darts7Details9AutoArrayIcE5resetEPc.exit, %.loopexit.thread.unr-lcssa
  %.031.epil.init = phi i64 [ 0, %_ZN5Darts7Details9AutoArrayIcE5resetEPc.exit ], [ %i.x, %.loopexit.thread.unr-lcssa ] ; 2 uses
  %lcmp.mod36 = trunc i64 %i.r to i1
  tail call void @llvm.assume(i1 %lcmp.mod36)
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %i.g, i64 %.031.epil.init
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %.pre, i64 %.031.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.y, ptr noundef nonnull align 4 dereferenceable(12) %i.z, i64 12, i1 false), !tbaa.struct !231
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit.thread.unr-lcssa, %.preheader35.epil.preheader
  store ptr %i.g, ptr %0, align 8, !tbaa !117
  store i64 %.1, ptr %i.a, align 8, !tbaa !155
  br label %bb.e

.loopexit:                                        ; preds = %_ZN5Darts7Details9AutoArrayIcE5resetEPc.exit
  store ptr %i.g, ptr %0, align 8, !tbaa !117
  store i64 %.1, ptr %i.a, align 8, !tbaa !155
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZN5Darts7Details9AutoArrayIcED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %.loopexit.thread, %.loopexit
  tail call void @_ZdaPv(ptr noundef nonnull %.pre) #30
  br label %_ZN5Darts7Details9AutoArrayIcED2Ev.exit

_ZN5Darts7Details9AutoArrayIcED2Ev.exit:          ; preds = %.loopexit, %bb.e
  ret void

_ZN5Darts7Details9AutoArrayIcED2Ev.exit25:        ; preds = %bb.b, %bb.d
  %.merged = phi { ptr, i32 } [ %i.h, %bb.b ], [ %i.p, %bb.d ]
  resume { ptr, i32 } %.merged

bb.f:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #31
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Darts7Details11DawgBuilder4initEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #23 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %.promoted.i = load i64, ptr %i.b, align 8, !tbaa !152 ; 2 uses
  %i.c = icmp ugt i64 %.promoted.i, 1024
  br i1 %i.c, label %.lr.ph.preheader.i, label %bb.b

.lr.ph.preheader.i:                               ; preds = %bb.a
  store i64 1024, ptr %i.b, align 8, !tbaa !152
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.preheader.i, %bb.a
  %i.d = phi i64 [ 1024, %.lr.ph.preheader.i ], [ %.promoted.i, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = load i64, ptr %i.e, align 8, !tbaa !153
  %i.g = icmp ult i64 %i.f, 1024
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5Darts7Details8AutoPoolIjE10resize_bufEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1024)
  %.pre.i = load i64, ptr %i.b, align 8, !tbaa !152
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi i64 [ %.pre.i, %bb.c ], [ %i.d, %bb.b ] ; 2 uses
  %i.i = icmp ult i64 %i.h, 1024
  br i1 %i.i, label %.lr.ph9.i, label %_ZN5Darts7Details8AutoPoolIjE6resizeEmRKj.exit

.lr.ph9.i:                                        ; preds = %bb.d
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !117
  %i.k = shl nuw nsw i64 %i.h, 2                  ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.j, i64 %i.k
  %i.l = sub nuw nsw i64 4096, %i.k
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep, i8 0, i64 %i.l, i1 false), !tbaa !56
  store i64 1024, ptr %i.b, align 8, !tbaa !152
  br label %_ZN5Darts7Details8AutoPoolIjE6resizeEmRKj.exit

_ZN5Darts7Details8AutoPoolIjE6resizeEmRKj.exit:   ; preds = %bb.d, %.lr.ph9.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !152  ; 2 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.g

bb.e:                                             ; preds = %_ZN5Darts7Details8AutoPoolIjE6resizeEmRKj.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !151  ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !155
  %i.t = icmp eq i64 %i.q, %i.s
  br i1 %i.t, label %bb.f, label %_ZN5Darts7Details8AutoPoolINS0_8DawgNodeEE6appendEv.exit.i

bb.f:                                             ; preds = %bb.e
  %i.u = add i64 %i.q, 1
  tail call void @_ZN5Darts7Details8AutoPoolINS0_8DawgNodeEE10resize_bufEm(ptr noundef nonnull align 8 dereferenceable(200) %0, i64 noundef %i.u)
  %.pre.i.i = load i64, ptr %i.p, align 8, !tbaa !151
  br label %_ZN5Darts7Details8AutoPoolINS0_8DawgNodeEE6appendEv.exit.i

_ZN5Darts7Details8AutoPoolINS0_8DawgNodeEE6appendEv.exit.i: ; preds = %bb.f, %bb.e
  %i.v = phi i64 [ %.pre.i.i, %bb.f ], [ %i.q, %bb.e ] ; 2 uses
  %i.w = add i64 %i.v, 1
  store i64 %i.w, ptr %i.p, align 8, !tbaa !151
  %i.x = load ptr, ptr %0, align 8, !tbaa !117
  %i.y = getelementptr inbounds nuw [12 x i8], ptr %i.x, i64 %i.v
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %i.y, i8 0, i64 11, i1 false)
  br label %_ZN5Darts7Details11DawgBuilder11append_nodeEv.exit

bb.g:                                             ; preds = %_ZN5Darts7Details8AutoPoolIjE6resizeEmRKj.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !117
  %i.ab = getelementptr [4 x i8], ptr %i.aa, i64 %i.n
  %i.ac = getelementptr i8, ptr %i.ab, i64 -4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !56
  %i.ae = zext i32 %i.ad to i64
  %i.af = load ptr, ptr %0, align 8, !tbaa !117
  %i.ag = getelementptr inbounds nuw [12 x i8], ptr %i.af, i64 %i.ae
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(11) %i.ag, i8 0, i64 11, i1 false)
  %i.ah = load i64, ptr %i.m, align 8, !tbaa !152
  %i.ai = add i64 %i.ah, -1
  store i64 %i.ai, ptr %i.m, align 8, !tbaa !152
  br label %_ZN5Darts7Details11DawgBuilder11append_nodeEv.exit

_ZN5Darts7Details11DawgBuilder11append_nodeEv.exit: ; preds = %_ZN5Darts7Details8AutoPoolINS0_8DawgNodeEE6appendEv.exit.i, %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !156 ; 3 uses
  %i.am = and i64 %i.al, 31
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.h, label %_ZN5Darts7Details9BitVector6appendEv.exit.i

bb.h:                                             ; preds = %_ZN5Darts7Details11DawgBuilder11append_nodeEv.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !152 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !153
  %i.as = icmp eq i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.i, label %_ZN5Darts7Details8AutoPoolIjE6appendERKj.exit.i.i

bb.i:                                             ; preds = %bb.h
  %i.at = add i64 %i.ap, 1
  tail call void @_ZN5Darts7Details8AutoPoolIjE10resize_bufEm(ptr noundef nonnull align 8 dereferenceable(48) %i.aj, i64 noundef %i.at)
  %.pre.i.i.i = load i64, ptr %i.ao, align 8, !tbaa !152
  %.pre.pre.i.i = load i64, ptr %i.ak, align 8, !tbaa !156
  br label %_ZN5Darts7Details8AutoPoolIjE6appendERKj.exit.i.i

_ZN5Darts7Details8AutoPoolIjE6appendERKj.exit.i.i: ; preds = %bb.i, %bb.h
  %.pre.i.i1 = phi i64 [ %.pre.pre.i.i, %bb.i ], [ %i.al, %bb.h ]
  %i.au = phi i64 [ %.pre.i.i.i, %bb.i ], [ %i.ap, %bb.h ] ; 2 uses
  %i.av = add i64 %i.au, 1
  store i64 %i.av, ptr %i.ao, align 8, !tbaa !152
  %i.aw = load ptr, ptr %i.aj, align 8, !tbaa !117
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.au
  store i32 0, ptr %i.ax, align 4, !tbaa !56
  br label %_ZN5Darts7Details9BitVector6appendEv.exit.i

_ZN5Darts7Details9BitVector6appendEv.exit.i:      ; preds = %_ZN5Darts7Details8AutoPoolIjE6appendERKj.exit.i.i, %_ZN5Darts7Details11DawgBuilder11append_nodeEv.exit
  %i.ay = phi i64 [ %.pre.i.i1, %_ZN5Darts7Details8AutoPoolIjE6appendERKj.exit.i.i ], [ %i.al, %_ZN5Darts7Details11DawgBuilder11append_nodeEv.exit ]
  %i.az = add i64 %i.ay, 1
  store i64 %i.az, ptr %i.ak, align 8, !tbaa !156
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !135 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !154
  %i.bf = icmp eq i64 %i.bc, %i.be
  br i1 %i.bf, label %bb.j, label %_ZN5Darts7Details8AutoPoolINS0_8DawgUnitEE6appendEv.exit.i

bb.j:                                             ; preds = %_ZN5Darts7Details9BitVector6appendEv.exit.i
  %i.bg = add i64 %i.bc, 1
  tail call void @_ZN5Darts7Details8AutoPoolINS0_8DawgUnitEE10resize_bufEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef %i.bg)
  %.pre.i1.i = load i64, ptr %i.bb, align 8, !tbaa !135
  br label %_ZN5Darts7Details8AutoPoolINS0_8DawgUnitEE6appendEv.exit.i

_ZN5Darts7Details8AutoPoolINS0_8DawgUnitEE6appendEv.exit.i: ; preds = %bb.j, %_ZN5Darts7Details9BitVector6appendEv.exit.i
  %i.bh = phi i64 [ %.pre.i1.i, %bb.j ], [ %i.bc, %_ZN5Darts7Details9BitVector6appendEv.exit.i ] ; 2 uses
  %i.bi = add i64 %i.bh, 1
  store i64 %i.bi, ptr %i.bb, align 8, !tbaa !135
  %i.bj = load ptr, ptr %i.ba, align 8, !tbaa !117
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bh
  store i32 0, ptr %i.bk, align 4, !tbaa !147
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !125 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !128
  %i.bp = icmp eq i64 %i.bm, %i.bo
  br i1 %i.bp, label %bb.k, label %_ZN5Darts7Details11DawgBuilder11append_unitEv.exit

bb.k:                                             ; preds = %_ZN5Darts7Details8AutoPoolINS0_8DawgUnitEE6appendEv.exit.i
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.br = add i64 %i.bm, 1
  tail call void @_ZN5Darts7Details8AutoPoolIhE10resize_bufEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i64 noundef %i.br)
  %.pre.i2.i = load i64, ptr %i.bl, align 8, !tbaa !125
  br label %_ZN5Darts7Details11DawgBuilder11append_unitEv.exit

_ZN5Darts7Details11DawgBuilder11append_unitEv.exit: ; preds = %_ZN5Darts7Details8AutoPoolINS0_8DawgUnitEE6appendEv.exit.i, %bb.k
  %i.bs = phi i64 [ %.pre.i2.i, %bb.k ], [ %i.bm, %_ZN5Darts7Details8AutoPoolINS0_8DawgUnitEE6appendEv.exit.i ]
  %i.bt = add i64 %i.bs, 1
  store i64 %i.bt, ptr %i.bl, align 8, !tbaa !125
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 192
end_hunk_0
