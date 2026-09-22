Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/builder?download=true
inline.NumInlined: 3497
inline.NumDeleted: 1222
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZN5Darts7Details18DoubleArrayBuilder5buildIiEEvRKNS0_6KeysetIT_EE:bb.a

bb.k:                                             ; preds = %bb.a
  tail call void @_ZN5Darts7Details18DoubleArrayBuilder17build_from_keysetIiEEvRKNS0_6KeysetIT_EE(ptr noundef nonnull align 8 dereferenceable(76) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Darts7Details18DoubleArrayBuilderD2Ev(ptr noundef nonnull align 8 dead_on_return(76) dereferenceable(76) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %.promoted.i.i.i = load i64, ptr %i.b, align 8, !tbaa !116
  %.not.i.i = icmp eq i64 %.promoted.i.i.i, 0
  br i1 %.not.i.i, label %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.a
  store i64 0, ptr %i.b, align 8, !tbaa !116
  br label %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit.i.i

_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit.i.i: ; preds = %.lr.ph.preheader.i.i.i, %bb.a
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !117  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE5clearEv.exit.i, label %bb.b

bb.b:                                             ; preds = %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #30
  store ptr null, ptr %i.a, align 8, !tbaa !117
  br label %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE5clearEv.exit.i

_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE5clearEv.exit.i: ; preds = %bb.b, %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !165  ; 2 uses
  %.not.i1.i = icmp eq ptr %i.e, null
  br i1 %.not.i1.i, label %_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEE5clearEv.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE5clearEv.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.e) #30
  store ptr null, ptr %i.d, align 8, !tbaa !165
  br label %_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEE5clearEv.exit.i

_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEE5clearEv.exit.i: ; preds = %bb.c, %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE5clearEv.exit.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %.promoted.i.i2.i = load i64, ptr %i.g, align 8, !tbaa !166
  %.not.i3.i = icmp eq i64 %.promoted.i.i2.i, 0
  br i1 %.not.i3.i, label %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i.i, label %.lr.ph.preheader.i.i4.i

.lr.ph.preheader.i.i4.i:                          ; preds = %_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEE5clearEv.exit.i
  store i64 0, ptr %i.g, align 8, !tbaa !166
  br label %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i.i

_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i.i:  ; preds = %.lr.ph.preheader.i.i4.i, %_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEE5clearEv.exit.i
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !117  ; 2 uses
  %.not.i.i5.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i5.i, label %_ZN5Darts7Details8AutoPoolIhE5clearEv.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.h) #30
  store ptr null, ptr %i.f, align 8, !tbaa !117
  br label %_ZN5Darts7Details8AutoPoolIhE5clearEv.exit.i

_ZN5Darts7Details8AutoPoolIhE5clearEv.exit.i:     ; preds = %bb.d, %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !167  ; 2 uses
  %.not.i6.i = icmp eq ptr %i.j, null
  br i1 %.not.i6.i, label %_ZN5Darts7Details9AutoArrayIjED2Ev.exit.thread, label %_ZN5Darts7Details9AutoArrayIjED2Ev.exit

_ZN5Darts7Details9AutoArrayIjED2Ev.exit.thread:   ; preds = %_ZN5Darts7Details8AutoPoolIhE5clearEv.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.k, align 8, !tbaa !168
  br label %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i.i5

_ZN5Darts7Details9AutoArrayIjED2Ev.exit:          ; preds = %_ZN5Darts7Details8AutoPoolIhE5clearEv.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.j) #30
  store ptr null, ptr %i.i, align 8, !tbaa !167
  %.promoted.i.i.i2.pre = load i64, ptr %i.g, align 8, !tbaa !166
  %i.l = icmp eq i64 %.promoted.i.i.i2.pre, 0
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 0, ptr %i.m, align 8, !tbaa !168
  br i1 %i.l, label %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i.i5, label %.lr.ph.preheader.i.i.i4

.lr.ph.preheader.i.i.i4:                          ; preds = %_ZN5Darts7Details9AutoArrayIjED2Ev.exit
  store i64 0, ptr %i.g, align 8, !tbaa !166
  br label %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i.i5

_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i.i5: ; preds = %_ZN5Darts7Details9AutoArrayIjED2Ev.exit.thread, %.lr.ph.preheader.i.i.i4, %_ZN5Darts7Details9AutoArrayIjED2Ev.exit
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !117  ; 2 uses
  %.not.i.i.i6 = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i6, label %_ZN5Darts7Details8AutoPoolIhED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i.i5
  tail call void @_ZdaPv(ptr noundef nonnull %i.n) #30
  br label %_ZN5Darts7Details8AutoPoolIhED2Ev.exit

_ZN5Darts7Details8AutoPoolIhED2Ev.exit:           ; preds = %_ZN5Darts7Details8AutoPoolIhE6resizeEm.exit.i.i5, %bb.e
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !165  ; 2 uses
  %.not.i.i7 = icmp eq ptr %i.o, null
  br i1 %.not.i.i7, label %_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5Darts7Details8AutoPoolIhED2Ev.exit
  tail call void @_ZdaPv(ptr noundef nonnull %i.o) #30
  br label %_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEED2Ev.exit

_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEED2Ev.exit: ; preds = %_ZN5Darts7Details8AutoPoolIhED2Ev.exit, %bb.f
  %.promoted.i.i.i9 = load i64, ptr %i.b, align 8, !tbaa !116
  %.not.i.i10 = icmp eq i64 %.promoted.i.i.i9, 0
  br i1 %.not.i.i10, label %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit.i.i12, label %.lr.ph.preheader.i.i.i11

.lr.ph.preheader.i.i.i11:                         ; preds = %_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEED2Ev.exit
  store i64 0, ptr %i.b, align 8, !tbaa !116
  br label %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit.i.i12

_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit.i.i12: ; preds = %.lr.ph.preheader.i.i.i11, %_ZN5Darts7Details9AutoArrayINS0_27DoubleArrayBuilderExtraUnitEED2Ev.exit
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !117  ; 2 uses
  %.not.i.i.i13 = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i13, label %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit.i.i12
  tail call void @_ZdaPv(ptr noundef nonnull %i.p) #30
  br label %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEED2Ev.exit

_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEED2Ev.exit: ; preds = %_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE6resizeEm.exit.i.i12, %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Darts7Details8AutoPoolIhE10resize_bufEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !169
  %i.c = shl i64 %i.b, 1
  %.not = icmp ult i64 %1, %i.c
  br i1 %.not, label %.preheader, label %.loopexit30

.preheader:                                       ; preds = %bb.a, %.preheader
  %.019 = phi i64 [ %i.e, %.preheader ], [ 1, %bb.a ] ; 3 uses
  %i.d = icmp ult i64 %.019, %1
  %i.e = shl i64 %.019, 1
  br i1 %i.d, label %.preheader, label %.loopexit30, !llvm.loop !6

.loopexit30:                                      ; preds = %.preheader, %bb.a
  %.1 = phi i64 [ %1, %bb.a ], [ %.019, %.preheader ] ; 3 uses
  %i.f = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %.1) #35
          to label %_ZN5Darts7Details9AutoArrayIcE5resetEPc.exit unwind label %bb.b ; 10 uses

bb.b:                                             ; preds = %.loopexit30
  %i.g = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc             ; 3 uses
  %i.h = extractvalue { ptr, i32 } %i.g, 1
  %i.i = tail call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #28
  %i.j = icmp eq i32 %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZN5Darts7Details9AutoArrayIcED2Ev.exit25

bb.c:                                             ; preds = %bb.b
  %i.k = extractvalue { ptr, i32 } %i.g, 0
  %i.l = tail call ptr @__cxa_begin_catch(ptr %i.k) #28 ; 0 uses
  %i.m = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Darts7Details9ExceptionE, i64 16), ptr %i.m, align 8, !tbaa !88
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr @.str.59, ptr %i.n, align 8, !tbaa !172
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTIN5Darts7Details9ExceptionE, ptr nonnull @_ZNSt9exceptionD2Ev) #34
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZN5Darts7Details9AutoArrayIcED2Ev.exit25 unwind label %bb.f

_ZN5Darts7Details9AutoArrayIcE5resetEPc.exit:     ; preds = %.loopexit30
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !166  ; 11 uses
  %.not23 = icmp eq i64 %i.q, 0
  %.pre = load ptr, ptr %0, align 8, !tbaa !117   ; 10 uses
  br i1 %.not23, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %_ZN5Darts7Details9AutoArrayIcE5resetEPc.exit
  %.pre36 = ptrtoaddr ptr %.pre to i64
  %i.r = ptrtoaddr ptr %i.f to i64
  %min.iters.check = icmp ult i64 %i.q, 4
  %i.s = sub i64 %.pre36, %i.r
  %diff.check = icmp ugt i64 %i.s, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check37 = icmp ult i64 %i.q, 32
  br i1 %min.iters.check37, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.t = and i64 %i.q, 28
  %n.vec = and i64 %i.q, -32                      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.pre, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load = load <16 x i8>, ptr %i.v, align 1, !tbaa !56
  %wide.load38 = load <16 x i8>, ptr %i.w, align 1, !tbaa !56
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <16 x i8> %wide.load, ptr %i.u, align 1, !tbaa !56
  store <16 x i8> %wide.load38, ptr %i.x, align 1, !tbaa !56
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !628

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.q, %n.vec
  br i1 %cmp.n, label %.loopexit.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.t, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !173

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec39 = and i64 %i.q, -4                     ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 %index40
  %i.aa = getelementptr inbounds nuw i8, ptr %.pre, i64 %index40
  %wide.load41 = load <4 x i8>, ptr %i.aa, align 1, !tbaa !56
  store <4 x i8> %wide.load41, ptr %i.z, align 1, !tbaa !56
  %index.next42 = add nuw i64 %index40, 4         ; 2 uses
  %i.ab = icmp eq i64 %index.next42, %n.vec39
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !629

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n43 = icmp eq i64 %i.q, %n.vec39
  br i1 %cmp.n43, label %.loopexit.thread, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.031.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec39, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.q, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.031.prol = phi i64 [ %i.af, %vec.epilog.scalar.ph.prol ], [ %.031.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 %.031.prol
  %i.ad = getelementptr inbounds nuw i8, ptr %.pre, i64 %.031.prol
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !56
  store i8 %i.ae, ptr %i.ac, align 1, !tbaa !56
  %i.af = add nuw i64 %.031.prol, 1               ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !630

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.031.unr = phi i64 [ %.031.ph, %vec.epilog.scalar.ph.preheader ], [ %i.af, %vec.epilog.scalar.ph.prol ]
  %i.ag = sub i64 %.031.ph, %i.q
  %i.ah = icmp ugt i64 %i.ag, -4
  br i1 %i.ah, label %.loopexit.thread, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.031 = phi i64 [ %i.ax, %vec.epilog.scalar.ph ], [ %.031.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 %.031
  %i.aj = getelementptr inbounds nuw i8, ptr %.pre, i64 %.031
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !56
  store i8 %i.ak, ptr %i.ai, align 1, !tbaa !56
  %i.al = add nuw i64 %.031, 1                    ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.al
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !56
  store i8 %i.ao, ptr %i.am, align 1, !tbaa !56
  %i.ap = add nuw i64 %.031, 2                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.ap
  %i.ar = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.ap
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !56
  store i8 %i.as, ptr %i.aq, align 1, !tbaa !56
  %i.at = add nuw i64 %.031, 3                    ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.at
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !56
  store i8 %i.aw, ptr %i.au, align 1, !tbaa !56
  %i.ax = add nuw i64 %.031, 4                    ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.ax, %i.q
  br i1 %exitcond.not.3, label %.loopexit.thread, label %vec.epilog.scalar.ph, !llvm.loop !631

.loopexit.thread:                                 ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  store ptr %i.f, ptr %0, align 8, !tbaa !117
  store i64 %.1, ptr %i.a, align 8, !tbaa !169
  br label %bb.e

.loopexit:                                        ; preds = %_ZN5Darts7Details9AutoArrayIcE5resetEPc.exit
  store ptr %i.f, ptr %0, align 8, !tbaa !117
  store i64 %.1, ptr %i.a, align 8, !tbaa !169
  %.not.i.i = icmp eq ptr %.pre, null
  br i1 %.not.i.i, label %_ZN5Darts7Details9AutoArrayIcED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %.loopexit.thread, %.loopexit
  tail call void @_ZdaPv(ptr noundef nonnull %.pre) #30
  br label %_ZN5Darts7Details9AutoArrayIcED2Ev.exit

_ZN5Darts7Details9AutoArrayIcED2Ev.exit:          ; preds = %.loopexit, %bb.e
  ret void

_ZN5Darts7Details9AutoArrayIcED2Ev.exit25:        ; preds = %bb.b, %bb.d
  %.merged = phi { ptr, i32 } [ %i.g, %bb.b ], [ %i.o, %bb.d ]
  resume { ptr, i32 } %.merged

bb.f:                                             ; preds = %bb.d
  %i.ay = landingpad { ptr, i32 }
          catch ptr null
  %i.az = extractvalue { ptr, i32 } %i.ay, 0
  tail call void @__clang_call_terminate(ptr %i.az) #29
  unreachable

bb.g:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #19

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #22

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #16

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #23

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5Darts7Details9ExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #28
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #30
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5Darts7Details9Exception4whatEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !172  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %spec.select = select i1 %.not, ptr @.str.28, ptr %i.b
  ret ptr %spec.select
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Darts7Details8AutoPoolINS0_22DoubleArrayBuilderUnitEE10resize_bufEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !174
  %i.c = shl i64 %i.b, 1
  %.not = icmp ult i64 %1, %i.c
  br i1 %.not, label %.preheader, label %.loopexit30

.preheader:                                       ; preds = %bb.a, %.preheader
  %.019 = phi i64 [ %i.e, %.preheader ], [ 1, %bb.a ] ; 3 uses
  %i.d = icmp ult i64 %.019, %1
  %i.e = shl i64 %.019, 1
  br i1 %i.d, label %.preheader, label %.loopexit30, !llvm.loop !632

.loopexit30:                                      ; preds = %.preheader, %bb.a
  %.1 = phi i64 [ %1, %bb.a ], [ %.019, %.preheader ] ; 3 uses
  %i.f = shl i64 %.1, 2
  %i.g = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #35
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
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Darts7Details9ExceptionE, i64 16), ptr %i.n, align 8, !tbaa !88
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @.str.59, ptr %i.o, align 8, !tbaa !172
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTIN5Darts7Details9ExceptionE, ptr nonnull @_ZNSt9exceptionD2Ev) #34
          to label %bb.g unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %_ZN5Darts7Details9AutoArrayIcED2Ev.exit25 unwind label %bb.f

end_hunk_0
begin_hunk_1_@_ZN5Darts7Details11DawgBuilder5flushEj:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Darts7Details9ExceptionE, i64 16), ptr %i.du, align 8, !tbaa !88
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  store ptr @.str.59, ptr %i.dv, align 8, !tbaa !172
  invoke void @__cxa_throw(ptr nonnull %i.du, ptr nonnull @_ZTIN5Darts7Details9ExceptionE, ptr nonnull @_ZNSt9exceptionD2Ev) #34
          to label %bb.u unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.t

_ZN5Darts7Details9AutoArrayIcE5resetEPc.exit.i44: ; preds = %.loopexit30.i40
  %.not23.i45 = icmp eq i64 %i.df, 0
  %.pre.i46 = load ptr, ptr %i.p, align 8, !tbaa !117 ; 9 uses
  br i1 %.not23.i45, label %.loopexit.i50, label %.preheader86.preheader

.preheader86.preheader:                           ; preds = %_ZN5Darts7Details9AutoArrayIcE5resetEPc.exit.i44
  %.pre.i46198 = ptrtoaddr ptr %.pre.i46 to i64
  %i.dx = ptrtoaddr ptr %i.dn to i64
  %min.iters.check201 = icmp ult i64 %i.df, 8
  %i.dy = sub i64 %.pre.i46198, %i.dx
  %diff.check199 = icmp ugt i64 %i.dy, -32
  %or.cond227 = select i1 %min.iters.check201, i1 true, i1 %diff.check199
  br i1 %or.cond227, label %.preheader86.preheader231, label %vector.ph202

vector.ph202:                                     ; preds = %.preheader86.preheader
  %n.vec203 = and i64 %i.df, -8                   ; 3 uses
  br label %vector.body204

vector.body204:                                   ; preds = %vector.body204, %vector.ph202
  %index205 = phi i64 [ 0, %vector.ph202 ], [ %index.next208, %vector.body204 ] ; 3 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %index205 ; 2 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %.pre.i46, i64 %index205 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %wide.load206 = load <4 x i32>, ptr %i.ea, align 4, !tbaa !188
  %wide.load207 = load <4 x i32>, ptr %i.eb, align 4, !tbaa !188
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  store <4 x i32> %wide.load206, ptr %i.dz, align 4, !tbaa !188
  store <4 x i32> %wide.load207, ptr %i.ec, align 4, !tbaa !188
  %index.next208 = add nuw i64 %index205, 8       ; 2 uses
  %i.ed = icmp eq i64 %index.next208, %n.vec203
  br i1 %i.ed, label %middle.block209, label %vector.body204, !llvm.loop !653

middle.block209:                                  ; preds = %vector.body204
  %cmp.n210 = icmp eq i64 %i.df, %n.vec203
  br i1 %cmp.n210, label %.loopexit.thread.i49, label %.preheader86.preheader231

.preheader86.preheader231:                        ; preds = %.preheader86.preheader, %middle.block209
  %.031.i47.ph = phi i64 [ 0, %.preheader86.preheader ], [ %n.vec203, %middle.block209 ] ; 3 uses
  %xtraiter235 = and i64 %i.df, 3                 ; 2 uses
  %lcmp.mod236.not = icmp eq i64 %xtraiter235, 0
  br i1 %lcmp.mod236.not, label %.preheader86.prol.loopexit, label %.preheader86.prol

.preheader86.prol:                                ; preds = %.preheader86.preheader231, %.preheader86.prol
  %.031.i47.prol = phi i64 [ %i.eh, %.preheader86.prol ], [ %.031.i47.ph, %.preheader86.preheader231 ] ; 3 uses
  %prol.iter237 = phi i64 [ %prol.iter237.next, %.preheader86.prol ], [ 0, %.preheader86.preheader231 ]
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.031.i47.prol
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.pre.i46, i64 %.031.i47.prol
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !188
  store i32 %i.eg, ptr %i.ee, align 4, !tbaa !188
  %i.eh = add nuw i64 %.031.i47.prol, 1           ; 2 uses
  %prol.iter237.next = add i64 %prol.iter237, 1   ; 2 uses
  %prol.iter237.cmp.not = icmp eq i64 %prol.iter237.next, %xtraiter235
  br i1 %prol.iter237.cmp.not, label %.preheader86.prol.loopexit, label %.preheader86.prol, !llvm.loop !654

.preheader86.prol.loopexit:                       ; preds = %.preheader86.prol, %.preheader86.preheader231
  %.031.i47.unr = phi i64 [ %.031.i47.ph, %.preheader86.preheader231 ], [ %i.eh, %.preheader86.prol ]
  %i.ei = sub i64 %.031.i47.ph, %i.df
  %i.ej = icmp ugt i64 %i.ei, -4
  br i1 %i.ej, label %.loopexit.thread.i49, label %.preheader86

.preheader86:                                     ; preds = %.preheader86.prol.loopexit, %.preheader86
  %.031.i47 = phi i64 [ %i.ez, %.preheader86 ], [ %.031.i47.unr, %.preheader86.prol.loopexit ] ; 6 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %.031.i47
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %.pre.i46, i64 %.031.i47
  %i.em = load i32, ptr %i.el, align 4, !tbaa !188
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !188
  %i.en = add nuw i64 %.031.i47, 1                ; 2 uses
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.en
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %.pre.i46, i64 %i.en
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !188
  store i32 %i.eq, ptr %i.eo, align 4, !tbaa !188
  %i.er = add nuw i64 %.031.i47, 2                ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.er
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.pre.i46, i64 %i.er
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !188
  store i32 %i.eu, ptr %i.es, align 4, !tbaa !188
  %i.ev = add nuw i64 %.031.i47, 3                ; 2 uses
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.dn, i64 %i.ev
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.pre.i46, i64 %i.ev
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !188
  store i32 %i.ey, ptr %i.ew, align 4, !tbaa !188
  %i.ez = add nuw i64 %.031.i47, 4                ; 2 uses
  %exitcond.not.i48.3 = icmp eq i64 %i.ez, %i.df
  br i1 %exitcond.not.i48.3, label %.loopexit.thread.i49, label %.preheader86, !llvm.loop !655

.loopexit.thread.i49:                             ; preds = %.preheader86.prol.loopexit, %.preheader86, %middle.block209
  store ptr %i.dn, ptr %i.p, align 8, !tbaa !117
  store i64 %.1.i41, ptr %i.r, align 8, !tbaa !193
  br label %bb.s

.loopexit.i50:                                    ; preds = %_ZN5Darts7Details9AutoArrayIcE5resetEPc.exit.i44
  store ptr %i.dn, ptr %i.p, align 8, !tbaa !117
  store i64 %.1.i41, ptr %i.r, align 8, !tbaa !193
  %.not.i.i.i51 = icmp eq ptr %.pre.i46, null
  br i1 %.not.i.i.i51, label %_ZN5Darts7Details8AutoPoolINS0_8DawgUnitEE6appendEv.exit.i, label %bb.s

bb.s:                                             ; preds = %.loopexit.i50, %.loopexit.thread.i49
  call void @_ZdaPv(ptr noundef nonnull %.pre.i46) #30
  %.pre.i1.i.pre = load i64, ptr %i.q, align 8, !tbaa !176
  br label %_ZN5Darts7Details8AutoPoolINS0_8DawgUnitEE6appendEv.exit.i

bb.t:                                             ; preds = %bb.r
  %i.fa = landingpad { ptr, i32 }
          catch ptr null
  %i.fb = extractvalue { ptr, i32 } %i.fa, 0
  call void @__clang_call_terminate(ptr %i.fb) #29
  unreachable

bb.u:                                             ; preds = %bb.q
  unreachable

_ZN5Darts7Details8AutoPoolINS0_8DawgUnitEE6appendEv.exit.i: ; preds = %bb.s, %.loopexit.i50, %_ZN5Darts7Details9BitVector6appendEv.exit.i
  %i.fc = phi i64 [ %i.df, %_ZN5Darts7Details9BitVector6appendEv.exit.i ], [ 0, %.loopexit.i50 ], [ %.pre.i1.i.pre, %bb.s ] ; 2 uses
  %i.fd = add i64 %i.fc, 1
  store i64 %i.fd, ptr %i.q, align 8, !tbaa !176
  %i.fe = load ptr, ptr %i.p, align 8, !tbaa !117
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %i.fc
  store i32 0, ptr %i.ff, align 4, !tbaa !188
  %i.fg = load i64, ptr %i.s, align 8, !tbaa !166 ; 15 uses
  %i.fh = load i64, ptr %i.t, align 8, !tbaa !169
  %i.fi = icmp eq i64 %i.fg, %i.fh
  br i1 %i.fi, label %bb.v, label %_ZN5Darts7Details11DawgBuilder11append_unitEv.exit

bb.v:                                             ; preds = %_ZN5Darts7Details8AutoPoolINS0_8DawgUnitEE6appendEv.exit.i
  %i.fj = add i64 %i.fg, 1                        ; 3 uses
  %i.fk = shl i64 %i.fg, 1
  %.not.i = icmp ult i64 %i.fj, %i.fk
  br i1 %.not.i, label %.preheader.i, label %.loopexit30.i

.preheader.i:                                     ; preds = %bb.v, %.preheader.i
  %.019.i = phi i64 [ %i.fm, %.preheader.i ], [ 1, %bb.v ] ; 3 uses
  %i.fl = icmp ult i64 %.019.i, %i.fj
  %i.fm = shl i64 %.019.i, 1
  br i1 %i.fl, label %.preheader.i, label %.loopexit30.i, !llvm.loop !6

.loopexit30.i:                                    ; preds = %.preheader.i, %bb.v
  %.1.i = phi i64 [ %i.fj, %bb.v ], [ %.019.i, %.preheader.i ] ; 3 uses
  %i.fn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %.1.i) #35
          to label %_ZN5Darts7Details9AutoArrayIcE5resetEPc.exit.i unwind label %bb.w ; 10 uses

bb.w:                                             ; preds = %.loopexit30.i
  %i.fo = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTISt9bad_alloc             ; 3 uses
  %i.fp = extractvalue { ptr, i32 } %i.fo, 1
  %i.fq = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTISt9bad_alloc) #28
  %i.fr = icmp eq i32 %i.fp, %i.fq
  br i1 %i.fr, label %bb.x, label %common.resume

bb.x:                                             ; preds = %bb.w
  %i.fs = extractvalue { ptr, i32 } %i.fo, 0
  %i.ft = call ptr @__cxa_begin_catch(ptr %i.fs) #28 ; 0 uses
  %i.fu = call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN5Darts7Details9ExceptionE, i64 16), ptr %i.fu, align 8, !tbaa !88
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  store ptr @.str.59, ptr %i.fv, align 8, !tbaa !172
  invoke void @__cxa_throw(ptr nonnull %i.fu, ptr nonnull @_ZTIN5Darts7Details9ExceptionE, ptr nonnull @_ZNSt9exceptionD2Ev) #34
          to label %bb.ab unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %common.resume unwind label %bb.aa

_ZN5Darts7Details9AutoArrayIcE5resetEPc.exit.i:   ; preds = %.loopexit30.i
  %.not23.i = icmp eq i64 %i.fg, 0
  %.pre.i = load ptr, ptr %i.u, align 8, !tbaa !117 ; 10 uses
  br i1 %.not23.i, label %.loopexit.i, label %iter.check

iter.check:                                       ; preds = %_ZN5Darts7Details9AutoArrayIcE5resetEPc.exit.i
  %.pre.i177 = ptrtoaddr ptr %.pre.i to i64
  %i.fx = ptrtoaddr ptr %i.fn to i64
  %min.iters.check180 = icmp ult i64 %i.fg, 4
  %i.fy = sub i64 %.pre.i177, %i.fx
  %diff.check178 = icmp ugt i64 %i.fy, -32
  %or.cond228 = select i1 %min.iters.check180, i1 true, i1 %diff.check178
  br i1 %or.cond228, label %.preheader85.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check181 = icmp ult i64 %i.fg, 32
  br i1 %min.iters.check181, label %vec.epilog.ph, label %vector.ph182

vector.ph182:                                     ; preds = %vector.main.loop.iter.check
  %i.fz = and i64 %i.fg, 28
  %n.vec183 = and i64 %i.fg, -32                  ; 4 uses
  br label %vector.body184

vector.body184:                                   ; preds = %vector.ph182, %vector.body184
  %index185 = phi i64 [ 0, %vector.ph182 ], [ %index.next188, %vector.body184 ] ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fn, i64 %index185 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %index185 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %wide.load186 = load <16 x i8>, ptr %i.gb, align 1, !tbaa !56
  %wide.load187 = load <16 x i8>, ptr %i.gc, align 1, !tbaa !56
  %i.gd = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  store <16 x i8> %wide.load186, ptr %i.ga, align 1, !tbaa !56
  store <16 x i8> %wide.load187, ptr %i.gd, align 1, !tbaa !56
  %index.next188 = add nuw i64 %index185, 32      ; 2 uses
  %i.ge = icmp eq i64 %index.next188, %n.vec183
  br i1 %i.ge, label %middle.block189, label %vector.body184, !llvm.loop !656

middle.block189:                                  ; preds = %vector.body184
  %cmp.n190 = icmp eq i64 %i.fg, %n.vec183
  br i1 %cmp.n190, label %.loopexit.thread.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block189
  %min.epilog.iters.check = icmp eq i64 %i.fz, 0
  br i1 %min.epilog.iters.check, label %.preheader85.preheader, label %vec.epilog.ph, !prof !173

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec183, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec191 = and i64 %i.fg, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index192 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next194, %vec.epilog.vector.body ] ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fn, i64 %index192
  %i.gg = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %index192
  %wide.load193 = load <4 x i8>, ptr %i.gg, align 1, !tbaa !56
  store <4 x i8> %wide.load193, ptr %i.gf, align 1, !tbaa !56
  %index.next194 = add nuw i64 %index192, 4       ; 2 uses
  %i.gh = icmp eq i64 %index.next194, %n.vec191
  br i1 %i.gh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !657

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n195 = icmp eq i64 %i.fg, %n.vec191
  br i1 %cmp.n195, label %.loopexit.thread.i, label %.preheader85.preheader

.preheader85.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.031.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec183, %vec.epilog.iter.check ], [ %n.vec191, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter238 = and i64 %i.fg, 3                 ; 2 uses
  %lcmp.mod239.not = icmp eq i64 %xtraiter238, 0
  br i1 %lcmp.mod239.not, label %.preheader85.prol.loopexit, label %.preheader85.prol

.preheader85.prol:                                ; preds = %.preheader85.preheader, %.preheader85.prol
  %.031.i.prol = phi i64 [ %i.gl, %.preheader85.prol ], [ %.031.i.ph, %.preheader85.preheader ] ; 3 uses
  %prol.iter240 = phi i64 [ %prol.iter240.next, %.preheader85.prol ], [ 0, %.preheader85.preheader ]
  %i.gi = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.031.i.prol
  %i.gj = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.031.i.prol
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !56
  store i8 %i.gk, ptr %i.gi, align 1, !tbaa !56
  %i.gl = add nuw i64 %.031.i.prol, 1             ; 2 uses
  %prol.iter240.next = add i64 %prol.iter240, 1   ; 2 uses
  %prol.iter240.cmp.not = icmp eq i64 %prol.iter240.next, %xtraiter238
  br i1 %prol.iter240.cmp.not, label %.preheader85.prol.loopexit, label %.preheader85.prol, !llvm.loop !658

.preheader85.prol.loopexit:                       ; preds = %.preheader85.prol, %.preheader85.preheader
  %.031.i.unr = phi i64 [ %.031.i.ph, %.preheader85.preheader ], [ %i.gl, %.preheader85.prol ]
  %i.gm = sub i64 %.031.i.ph, %i.fg
  %i.gn = icmp ugt i64 %i.gm, -4
  br i1 %i.gn, label %.loopexit.thread.i, label %.preheader85

.preheader85:                                     ; preds = %.preheader85.prol.loopexit, %.preheader85
  %.031.i = phi i64 [ %i.hd, %.preheader85 ], [ %.031.i.unr, %.preheader85.prol.loopexit ] ; 6 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.fn, i64 %.031.i
  %i.gp = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %.031.i
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !56
  store i8 %i.gq, ptr %i.go, align 1, !tbaa !56
  %i.gr = add nuw i64 %.031.i, 1                  ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.gr
  %i.gt = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.gr
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !56
  store i8 %i.gu, ptr %i.gs, align 1, !tbaa !56
  %i.gv = add nuw i64 %.031.i, 2                  ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.gv
  %i.gx = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.gv
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !56
  store i8 %i.gy, ptr %i.gw, align 1, !tbaa !56
  %i.gz = add nuw i64 %.031.i, 3                  ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.gz
  %i.hb = getelementptr inbounds nuw i8, ptr %.pre.i, i64 %i.gz
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !56
  store i8 %i.hc, ptr %i.ha, align 1, !tbaa !56
  %i.hd = add nuw i64 %.031.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.hd, %i.fg
  br i1 %exitcond.not.i.3, label %.loopexit.thread.i, label %.preheader85, !llvm.loop !659

.loopexit.thread.i:                               ; preds = %.preheader85.prol.loopexit, %.preheader85, %vec.epilog.middle.block, %middle.block189
  store ptr %i.fn, ptr %i.u, align 8, !tbaa !117
  store i64 %.1.i, ptr %i.t, align 8, !tbaa !169
  br label %bb.z

.loopexit.i:                                      ; preds = %_ZN5Darts7Details9AutoArrayIcE5resetEPc.exit.i
  store ptr %i.fn, ptr %i.u, align 8, !tbaa !117
  store i64 %.1.i, ptr %i.t, align 8, !tbaa !169
  %.not.i.i.i = icmp eq ptr %.pre.i, null
  br i1 %.not.i.i.i, label %_ZN5Darts7Details11DawgBuilder11append_unitEv.exit, label %bb.z

bb.z:                                             ; preds = %.loopexit.i, %.loopexit.thread.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i) #30
  %.pre.i2.i.pre = load i64, ptr %i.s, align 8, !tbaa !166
  br label %_ZN5Darts7Details11DawgBuilder11append_unitEv.exit

bb.aa:                                            ; preds = %bb.y
  %i.he = landingpad { ptr, i32 }
          catch ptr null
  %i.hf = extractvalue { ptr, i32 } %i.he, 0
  call void @__clang_call_terminate(ptr %i.hf) #29
  unreachable

bb.ab:                                            ; preds = %bb.x
  unreachable

_ZN5Darts7Details11DawgBuilder11append_unitEv.exit: ; preds = %bb.z, %.loopexit.i, %_ZN5Darts7Details8AutoPoolINS0_8DawgUnitEE6appendEv.exit.i
  %i.hg = phi i64 [ %i.fg, %_ZN5Darts7Details8AutoPoolINS0_8DawgUnitEE6appendEv.exit.i ], [ 0, %.loopexit.i ], [ %.pre.i2.i.pre, %bb.z ]
  %i.hh = add i64 %i.hg, 1
  store i64 %i.hh, ptr %i.s, align 8, !tbaa !166
  %i.hi = add nuw i32 %.028105, 1
  %exitcond.not = icmp eq i32 %.028105, %.032103
  br i1 %exitcond.not, label %.preheader88, label %.lr.ph106, !llvm.loop !660

._crit_edge114:                                   ; preds = %_ZNK5Darts7Details8DawgNode4unitEv.exit, %._crit_edge.thread
  %.1.lcssa = phi i32 [ 1, %._crit_edge.thread ], [ %.1111, %_ZNK5Darts7Details8DawgNode4unitEv.exit ] ; 2 uses
  %i.hj = load i32, ptr %i.a, align 4, !tbaa !62
  %i.hk = zext i32 %i.hj to i64
  %i.hl = load ptr, ptr %i.j, align 8, !tbaa !117
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.hl, i64 %i.hk
  store i32 %.1.lcssa, ptr %i.hm, align 4, !tbaa !62
  %i.hn = load i64, ptr %i.i, align 8, !tbaa !198
  %i.ho = add i64 %i.hn, 1
  store i64 %i.ho, ptr %i.i, align 8, !tbaa !198
  br label %bb.ae

.lr.ph113:                                        ; preds = %.lr.ph113.preheader, %_ZNK5Darts7Details8DawgNode4unitEv.exit
  %i.hp = phi ptr [ %i.in, %_ZNK5Darts7Details8DawgNode4unitEv.exit ], [ %.pre, %.lr.ph113.preheader ]
  %.027112 = phi i32 [ %i.iq, %_ZNK5Darts7Details8DawgNode4unitEv.exit ], [ %i.y, %.lr.ph113.preheader ]
  %.1111 = phi i32 [ %i.im, %_ZNK5Darts7Details8DawgNode4unitEv.exit ], [ %.029.lcssa168, %.lr.ph113.preheader ] ; 3 uses
  %i.hq = zext i32 %.027112 to i64                ; 2 uses
  %i.hr = getelementptr inbounds nuw [12 x i8], ptr %i.hp, i64 %i.hq ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = load i8, ptr %i.hs, align 4, !tbaa !200 ; 2 uses
  %i.hu = icmp eq i8 %i.ht, 0
  %i.hv = load i32, ptr %i.hr, align 4, !tbaa !201 ; 2 uses
  br i1 %i.hu, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.lr.ph113
  %i.hw = shl i32 %i.hv, 1
  br label %_ZNK5Darts7Details8DawgNode4unitEv.exit

bb.ad:                                            ; preds = %.lr.ph113
  %i.hx = shl i32 %i.hv, 2
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hr, i64 9
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !203, !range !35, !noundef !36
  %i.ia = shl nuw nsw i8 %i.hz, 1
  %i.ib = zext nneg i8 %i.ia to i32
  %i.ic = or disjoint i32 %i.hx, %i.ib
  br label %_ZNK5Darts7Details8DawgNode4unitEv.exit

_ZNK5Darts7Details8DawgNode4unitEv.exit:          ; preds = %bb.ac, %bb.ad
  %.sink.i = phi i32 [ %i.ic, %bb.ad ], [ %i.hw, %bb.ac ]
  %i.id = getelementptr inbounds nuw i8, ptr %i.hr, i64 10
  %i.ie = load i8, ptr %i.id, align 2, !tbaa !202, !range !35, !noundef !36
  %i.if = zext nneg i8 %i.ie to i32
  %i.ig = or disjoint i32 %.sink.i, %i.if
  %i.ih = zext i32 %.1111 to i64                  ; 2 uses
  %i.ii = load ptr, ptr %i.p, align 8, !tbaa !117
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.ii, i64 %i.ih
  store i32 %i.ig, ptr %i.ij, align 4, !tbaa !188
  %i.ik = load ptr, ptr %i.u, align 8, !tbaa !117
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.ih
  store i8 %i.ht, ptr %i.il, align 1, !tbaa !56
  %i.im = add i32 %.1111, -1
  %i.in = load ptr, ptr %0, align 8, !tbaa !117   ; 2 uses
  %i.io = getelementptr inbounds nuw [12 x i8], ptr %i.in, i64 %i.hq
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 4
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !204 ; 2 uses
  %.not37 = icmp eq i32 %i.iq, 0
  br i1 %.not37, label %._crit_edge114, label %.lr.ph113, !llvm.loop !661

bb.ae:                                            ; preds = %._crit_edge114, %bb.f
  %.030 = phi i32 [ %i.an, %bb.f ], [ %.1.lcssa, %._crit_edge114 ]
  br i1 %.not35102, label %._crit_edge120, label %.lr.ph119.preheader

.lr.ph119.preheader:                              ; preds = %bb.ae
  %.pre135 = load i64, ptr %i.w, align 8, !tbaa !191
  br label %.lr.ph119

._crit_edge120:                                   ; preds = %_ZN5Darts7Details11DawgBuilder9free_nodeEj.exit, %bb.ae
  %i.ir = load i64, ptr %i.c, align 8, !tbaa !191 ; 3 uses
  %i.is = load ptr, ptr %i.b, align 8, !tbaa !117
  %i.it = getelementptr [4 x i8], ptr %i.is, i64 %i.ir
  %i.iu = getelementptr i8, ptr %i.it, i64 -4     ; 2 uses
  %i.iv = load i32, ptr %i.iu, align 4, !tbaa !62
  %i.iw = zext i32 %i.iv to i64
  %i.ix = load ptr, ptr %0, align 8, !tbaa !117
  %i.iy = getelementptr inbounds nuw [12 x i8], ptr %i.ix, i64 %i.iw
  store i32 %.030, ptr %i.iy, align 4, !tbaa !201
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
end_hunk_1
