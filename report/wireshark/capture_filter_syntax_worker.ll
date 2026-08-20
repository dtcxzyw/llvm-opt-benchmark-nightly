inline.NumInlined: 684
inline.NumDeleted: 377
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZN25CaptureFilterSyntaxWorker11checkFilterE7QString:bb.a
  %i.gx = load ptr, ptr %i.gw, align 8            ; 4 uses
  %i.gy = icmp eq ptr %i.gx, null
  br i1 %i.gy, label %_ZN12QHashPrivate4DataINS_4NodeIj15QHashDummyValueEEED2Ev.exit.i.i, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.gz = getelementptr inbounds i8, ptr %i.gx, i64 -8 ; 2 uses
  %i.ha = load i64, ptr %i.gz, align 8            ; 2 uses
  %.idx.i.i.i = mul i64 %i.ha, 144                ; 2 uses
  %i.hb = icmp eq i64 %i.ha, 0
  br i1 %i.hb, label %.loopexit.i.i.i, label %.preheader.preheader.i.i.i

.preheader.preheader.i.i.i:                       ; preds = %bb.ck
  %i.hc = getelementptr inbounds i8, ptr %i.gx, i64 %.idx.i.i.i
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %_ZN12QHashPrivate4SpanINS_4NodeIj15QHashDummyValueEEED2Ev.exit.i.i.i, %.preheader.preheader.i.i.i
  %i.hd = phi ptr [ %i.he, %_ZN12QHashPrivate4SpanINS_4NodeIj15QHashDummyValueEEED2Ev.exit.i.i.i ], [ %i.hc, %.preheader.preheader.i.i.i ] ; 2 uses
  %i.he = getelementptr inbounds i8, ptr %i.hd, i64 -144 ; 2 uses
  %i.hf = getelementptr i8, ptr %i.hd, i64 -16
  %i.hg = load ptr, ptr %i.hf, align 8            ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hg, null
  br i1 %.not.i.i.i.i.i, label %_ZN12QHashPrivate4SpanINS_4NodeIj15QHashDummyValueEEED2Ev.exit.i.i.i, label %bb.cl

bb.cl:                                            ; preds = %.preheader.i.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.hg) #23
  br label %_ZN12QHashPrivate4SpanINS_4NodeIj15QHashDummyValueEEED2Ev.exit.i.i.i

_ZN12QHashPrivate4SpanINS_4NodeIj15QHashDummyValueEEED2Ev.exit.i.i.i: ; preds = %bb.cl, %.preheader.i.i.i
  %i.hh = icmp eq ptr %i.he, %i.gx
  br i1 %i.hh, label %.loopexit.i.i.i, label %.preheader.i.i.i

.loopexit.i.i.i:                                  ; preds = %_ZN12QHashPrivate4SpanINS_4NodeIj15QHashDummyValueEEED2Ev.exit.i.i.i, %bb.ck
  %i.hi = or disjoint i64 %.idx.i.i.i, 8
  call void @_ZdaPvm(ptr noundef %i.gz, i64 noundef %i.hi) #23
  br label %_ZN12QHashPrivate4DataINS_4NodeIj15QHashDummyValueEEED2Ev.exit.i.i

_ZN12QHashPrivate4DataINS_4NodeIj15QHashDummyValueEEED2Ev.exit.i.i: ; preds = %.loopexit.i.i.i, %bb.cj
  call void @_ZdlPvm(ptr noundef %i.gu, i64 noundef 40) #23
  br label %_ZN4QSetIjED2Ev.exit

_ZN4QSetIjED2Ev.exit:                             ; preds = %_ZN7QStringD2Ev.exit208, %bb.ch, %_ZN9QtPrivate8RefCount5derefEv.exit.i.i, %bb.ci, %_ZN12QHashPrivate4DataINS_4NodeIj15QHashDummyValueEEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.hj = load ptr, ptr %6, align 8               ; 3 uses
  %.not.i.i210 = icmp eq ptr %i.hj, null
  br i1 %.not.i.i210, label %_ZN4QSetIiED2Ev.exit, label %bb.cm

bb.cm:                                            ; preds = %_ZN4QSetIjED2Ev.exit
  %i.hk = load atomic i32, ptr %i.hj monotonic, align 4
  %i.hl = icmp eq i32 %i.hk, -1
  br i1 %i.hl, label %_ZN4QSetIiED2Ev.exit, label %_ZN9QtPrivate8RefCount5derefEv.exit.i.i211

_ZN9QtPrivate8RefCount5derefEv.exit.i.i211:       ; preds = %bb.cm
  %i.hm = atomicrmw sub ptr %i.hj, i32 1 acq_rel, align 4
  %.not3.i.i212 = icmp eq i32 %i.hm, 1
  br i1 %.not3.i.i212, label %bb.cn, label %_ZN4QSetIiED2Ev.exit

bb.cn:                                            ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i.i211
  %i.hn = load ptr, ptr %6, align 8               ; 3 uses
  %i.ho = icmp eq ptr %i.hn, null
  br i1 %i.ho, label %_ZN4QSetIiED2Ev.exit, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.hp = getelementptr i8, ptr %i.hn, i64 32
  %i.hq = load ptr, ptr %i.hp, align 8            ; 4 uses
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %_ZN12QHashPrivate4DataINS_4NodeIi15QHashDummyValueEEED2Ev.exit.i.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.hs = getelementptr inbounds i8, ptr %i.hq, i64 -8 ; 2 uses
  %i.ht = load i64, ptr %i.hs, align 8            ; 2 uses
  %.idx.i.i.i213 = mul i64 %i.ht, 144             ; 2 uses
  %i.hu = icmp eq i64 %i.ht, 0
  br i1 %i.hu, label %.loopexit.i.i.i217, label %.preheader.preheader.i.i.i214

.preheader.preheader.i.i.i214:                    ; preds = %bb.cp
  %i.hv = getelementptr inbounds i8, ptr %i.hq, i64 %.idx.i.i.i213
  br label %.preheader.i.i.i215

.preheader.i.i.i215:                              ; preds = %_ZN12QHashPrivate4SpanINS_4NodeIi15QHashDummyValueEEED2Ev.exit.i.i.i, %.preheader.preheader.i.i.i214
  %i.hw = phi ptr [ %i.hx, %_ZN12QHashPrivate4SpanINS_4NodeIi15QHashDummyValueEEED2Ev.exit.i.i.i ], [ %i.hv, %.preheader.preheader.i.i.i214 ] ; 2 uses
  %i.hx = getelementptr inbounds i8, ptr %i.hw, i64 -144 ; 2 uses
  %i.hy = getelementptr i8, ptr %i.hw, i64 -16
  %i.hz = load ptr, ptr %i.hy, align 8            ; 2 uses
  %.not.i.i.i.i.i216 = icmp eq ptr %i.hz, null
  br i1 %.not.i.i.i.i.i216, label %_ZN12QHashPrivate4SpanINS_4NodeIi15QHashDummyValueEEED2Ev.exit.i.i.i, label %bb.cq

bb.cq:                                            ; preds = %.preheader.i.i.i215
  call void @_ZdaPv(ptr noundef nonnull %i.hz) #23
  br label %_ZN12QHashPrivate4SpanINS_4NodeIi15QHashDummyValueEEED2Ev.exit.i.i.i

_ZN12QHashPrivate4SpanINS_4NodeIi15QHashDummyValueEEED2Ev.exit.i.i.i: ; preds = %bb.cq, %.preheader.i.i.i215
  %i.ia = icmp eq ptr %i.hx, %i.hq
  br i1 %i.ia, label %.loopexit.i.i.i217, label %.preheader.i.i.i215

.loopexit.i.i.i217:                               ; preds = %_ZN12QHashPrivate4SpanINS_4NodeIi15QHashDummyValueEEED2Ev.exit.i.i.i, %bb.cp
  %i.ib = or disjoint i64 %.idx.i.i.i213, 8
  call void @_ZdaPvm(ptr noundef %i.hs, i64 noundef %i.ib) #23
  br label %_ZN12QHashPrivate4DataINS_4NodeIi15QHashDummyValueEEED2Ev.exit.i.i

_ZN12QHashPrivate4DataINS_4NodeIi15QHashDummyValueEEED2Ev.exit.i.i: ; preds = %.loopexit.i.i.i217, %bb.co
  call void @_ZdlPvm(ptr noundef %i.hn, i64 noundef 40) #23
  br label %_ZN4QSetIiED2Ev.exit

_ZN4QSetIiED2Ev.exit:                             ; preds = %_ZN4QSetIjED2Ev.exit, %bb.cm, %_ZN9QtPrivate8RefCount5derefEv.exit.i.i211, %bb.cn, %_ZN12QHashPrivate4DataINS_4NodeIi15QHashDummyValueEEED2Ev.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret void

bb.cr:                                            ; preds = %_ZN7QStringC2ERKS_.exit196
  %i.ic = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.id = load ptr, ptr %21, align 8              ; 2 uses
  %.not.i.i.i218 = icmp eq ptr %i.id, null
  br i1 %.not.i.i.i218, label %_ZN7QStringD2Ev.exit221, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i219

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i219:   ; preds = %bb.cr
  %i.ie = atomicrmw sub ptr %i.id, i32 1 acq_rel, align 4
  %.not.i.i220 = icmp eq i32 %i.ie, 1
  br i1 %.not.i.i220, label %bb.cs, label %_ZN7QStringD2Ev.exit221

bb.cs:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i219
  %i.if = load ptr, ptr %21, align 8
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.if, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit221

_ZN7QStringD2Ev.exit221:                          ; preds = %bb.cr, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i219, %bb.cs
  %i.ig = load ptr, ptr %20, align 16             ; 2 uses
  %.not.i.i.i222 = icmp eq ptr %i.ig, null
  br i1 %.not.i.i.i222, label %_ZN7QStringD2Ev.exit97, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i223

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i223:   ; preds = %_ZN7QStringD2Ev.exit221
  %i.ih = atomicrmw sub ptr %i.ig, i32 1 acq_rel, align 4
  %.not.i.i224 = icmp eq i32 %i.ih, 1
  br i1 %.not.i.i224, label %bb.ct, label %_ZN7QStringD2Ev.exit97

bb.ct:                                            ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i223
  %i.ii = load ptr, ptr %20, align 16
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.ii, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit97

_ZN7QStringD2Ev.exit97:                           ; preds = %bb.ct, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i223, %_ZN7QStringD2Ev.exit221, %bb.bk, %bb.bz, %_ZN17QArrayDataPointerIjE5derefEv.exit.i.i.i, %bb.ca, %bb.af, %_ZN12QMutexLockerI6QMutexED2Ev.exit148, %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i, %bb.bh, %bb.x, %bb.aa, %bb.ad
  %.sroa.0261.18 = phi ptr [ %.sroa.0261.7, %bb.bk ], [ %.sroa.0261.13, %bb.bz ], [ %.sroa.0261.13, %bb.ca ], [ %.sroa.0261.6, %bb.bh ], [ %.sroa.0261.0341, %bb.x ], [ %.sroa.0261.13, %_ZN17QArrayDataPointerIjE5derefEv.exit.i.i.i ], [ %.sroa.0261.16, %_ZN7QStringD2Ev.exit221 ], [ %.sroa.0261.16, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i223 ], [ %.sroa.0261.16, %bb.ct ], [ %.sroa.0261.0341, %bb.ad ], [ %.sroa.0261.0341, %bb.aa ], [ %.sroa.0261.0.lcssa, %bb.af ], [ %.sroa.0261.6, %_ZN12QMutexLockerI6QMutexED2Ev.exit148 ], [ %.sroa.0261.6, %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i ] ; 3 uses
  %.pn83 = phi { ptr, i32 } [ %i.er, %bb.bk ], [ %.pn78, %bb.bz ], [ %.pn78, %bb.ca ], [ %.pn70, %bb.bh ], [ %i.br, %bb.x ], [ %.pn78, %_ZN17QArrayDataPointerIjE5derefEv.exit.i.i.i ], [ %i.ic, %_ZN7QStringD2Ev.exit221 ], [ %i.ic, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i223 ], [ %i.ic, %bb.ct ], [ %i.bx, %bb.ad ], [ %i.bu, %bb.aa ], [ %i.cp, %bb.af ], [ %.pn70, %_ZN12QMutexLockerI6QMutexED2Ev.exit148 ], [ %.pn70, %_ZN17QArrayDataPointerIiE5derefEv.exit.i.i.i ] ; 3 uses
  %.not.i.i.i226 = icmp eq ptr %.sroa.0261.18, null
  br i1 %.not.i.i.i226, label %_ZN7QStringD2Ev.exit229, label %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i227

_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i227:   ; preds = %_ZN7QStringD2Ev.exit97
  %i.ij = atomicrmw sub ptr %.sroa.0261.18, i32 1 acq_rel, align 4
  %.not.i.i228 = icmp eq i32 %i.ij, 1
  br i1 %.not.i.i228, label %_ZN7QStringD2Ev.exit229.sink.split, label %_ZN7QStringD2Ev.exit229

_ZN7QStringD2Ev.exit229.sink.split:               ; preds = %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i227, %bb.i, %bb.q
  %.sink475 = phi ptr [ %i.ax, %bb.q ], [ %i.w, %bb.i ], [ %.sroa.0261.18, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i227 ]
  %.pn83295.ph = phi { ptr, i32 } [ %i.ar, %bb.q ], [ %i.q, %bb.i ], [ %.pn83, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i227 ]
  call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %.sink475, i64 noundef 2, i64 noundef 8) #21
  br label %_ZN7QStringD2Ev.exit229

_ZN7QStringD2Ev.exit229:                          ; preds = %_ZN7QStringD2Ev.exit229.sink.split, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i118, %_ZN17QArrayDataPointerIDsED2Ev.exit116, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i95, %_ZN7QStringD2Ev.exit93, %_ZN7QStringD2Ev.exit97, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i227
  %.pn83295 = phi { ptr, i32 } [ %i.q, %_ZN7QStringD2Ev.exit93 ], [ %.pn83, %_ZN7QStringD2Ev.exit97 ], [ %.pn83, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i227 ], [ %i.ar, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i118 ], [ %i.ar, %_ZN17QArrayDataPointerIDsED2Ev.exit116 ], [ %i.q, %_ZN17QArrayDataPointerIDsE5derefEv.exit.i.i95 ], [ %.pn83295.ph, %_ZN7QStringD2Ev.exit229.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @_ZN4QSetIjED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %7) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  call void @_ZN4QSetIiED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable_or_null(8) %6) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  resume { ptr, i32 } %.pn83295
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: null_pointer_is_valid
declare void @_ZN25CaptureFilterSyntaxWorker12syntaxResultE7QStringiS0_(ptr noundef align 8 dereferenceable_or_null(16), ptr noundef align 8, i32 noundef, ptr noundef align 8) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZNK4QSetIiE6valuesEv(ptr dead_on_unwind noalias writable sret(%class.QList) align 8 %0, ptr noundef align 8 dereferenceable_or_null(8) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %0, i8 0, i64 24, i1 false)
  %i.b = load ptr, ptr %1, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNK4QSetIiE4sizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8
  br label %_ZNK4QSetIiE4sizeEv.exit

_ZNK4QSetIiE4sizeEv.exit:                         ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  invoke void @_ZN5QListIiE7reserveEx(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %i.e)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %_ZNK4QSetIiE4sizeEv.exit
  %i.f = load ptr, ptr %1, align 8, !noalias !24  ; 5 uses
  %.not.i.i5 = icmp eq ptr %i.f, null
  br i1 %.not.i.i5, label %_ZNK4QSetIiE10constBeginEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !24 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !24
  %.not.i.i.i.i = icmp eq i8 %i.i, -1
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZNK4QSetIiE14const_iteratorneERKS1_.exit.thread.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %i.f, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !24 ; 2 uses
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %_ZNK4QSetIiE10constBeginEv.exit, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.m = add i64 %i.o, 1                          ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.k
  br i1 %i.n, label %_ZNK4QSetIiE10constBeginEv.exit, label %.lr.ph, !llvm.loop !27

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %i.o = phi i64 [ %i.m, %bb.f ], [ 1, %bb.e ]    ; 4 uses
  %i.p = lshr i64 %i.o, 7
  %i.q = getelementptr [144 x i8], ptr %i.h, i64 %i.p
  %i.r = and i64 %i.o, 127
  %i.s = getelementptr i8, ptr %i.q, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !noalias !24
  %.not.i.i.i.i.i = icmp eq i8 %i.t, -1
  br i1 %.not.i.i.i.i.i, label %bb.f, label %._ZNK4QSetIiE10constBeginEv.exit.loopexit_crit_edge, !llvm.loop !27

._ZNK4QSetIiE10constBeginEv.exit.loopexit_crit_edge: ; preds = %.lr.ph
  br label %_ZNK4QSetIiE10constBeginEv.exit, !llvm.loop !27

_ZNK4QSetIiE10constBeginEv.exit:                  ; preds = %bb.f, %bb.e, %._ZNK4QSetIiE10constBeginEv.exit.loopexit_crit_edge, %bb.c
  %.sroa.0.0.i.i = phi ptr [ null, %bb.c ], [ %i.f, %._ZNK4QSetIiE10constBeginEv.exit.loopexit_crit_edge ], [ null, %bb.e ], [ null, %bb.f ] ; 2 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.c ], [ %i.o, %._ZNK4QSetIiE10constBeginEv.exit.loopexit_crit_edge ], [ 0, %bb.e ], [ 0, %bb.f ] ; 2 uses
  %2 = icmp ne ptr %.sroa.0.0.i.i, null
  %3 = icmp ne i64 %.sroa.4.0.i.i, 0
  %or.cond14 = or i1 %2, %3
  br i1 %or.cond14, label %_ZNK4QSetIiE14const_iteratorneERKS1_.exit.thread.lr.ph, label %._crit_edge

_ZNK4QSetIiE14const_iteratorneERKS1_.exit.thread.lr.ph: ; preds = %bb.d, %_ZNK4QSetIiE10constBeginEv.exit
  %.sroa.4.0.i.i25 = phi i64 [ %.sroa.4.0.i.i, %_ZNK4QSetIiE10constBeginEv.exit ], [ 0, %bb.d ]
  %.sroa.0.0.i.i24 = phi ptr [ %.sroa.0.0.i.i, %_ZNK4QSetIiE10constBeginEv.exit ], [ %i.f, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNK4QSetIiE14const_iteratorneERKS1_.exit.thread

_ZNK4QSetIiE14const_iteratorneERKS1_.exit.thread: ; preds = %_ZNK4QSetIiE14const_iteratorneERKS1_.exit.thread.lr.ph, %_ZN4QSetIiE14const_iteratorppEv.exit
  %.sroa.8.016 = phi i64 [ %.sroa.4.0.i.i25, %_ZNK4QSetIiE14const_iteratorneERKS1_.exit.thread.lr.ph ], [ %.sroa.8.1, %_ZN4QSetIiE14const_iteratorppEv.exit ] ; 3 uses
  %.sroa.09.015 = phi ptr [ %.sroa.0.0.i.i24, %_ZNK4QSetIiE14const_iteratorneERKS1_.exit.thread.lr.ph ], [ %.sroa.09.1, %_ZN4QSetIiE14const_iteratorppEv.exit ] ; 3 uses
  %i.v = getelementptr i8, ptr %.sroa.09.015, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.sroa.8.016, 7
  %i.y = getelementptr [144 x i8], ptr %i.w, i64 %i.x ; 2 uses
  %i.z = and i64 %.sroa.8.016, 127
  %i.aa = getelementptr i8, ptr %i.y, i64 128
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr i8, ptr %i.y, i64 %i.z
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr [4 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.ag, ptr %i.a, align 4
  %i.ah = load i64, ptr %i.u, align 8
  invoke void @_ZN9QtPrivate12QPodArrayOpsIiE7emplaceIJRiEEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %i.ah, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %_ZNK4QSetIiE14const_iteratorneERKS1_.exit.thread
  %i.ai = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i: ; preds = %.noexc
  %i.aj = load atomic i32, ptr %i.ai monotonic, align 4
  %i.ak = icmp sgt i32 %i.aj, 1
  br i1 %i.ak, label %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i, label %bb.g

_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i, %.noexc
  invoke void @_ZN17QArrayDataPointerIiE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.i.i.i.i.i, %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.al = getelementptr i8, ptr %.sroa.09.015, i64 16
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = add i64 %.sroa.8.016, 1                 ; 2 uses
  %i.ao = icmp eq i64 %i.an, %i.am
  br i1 %i.ao, label %_ZN4QSetIiE14const_iteratorppEv.exit, label %.lr.ph32.preheader

.lr.ph32.preheader:                               ; preds = %bb.g
  %i.ap = load ptr, ptr %i.v, align 8
  br label %.lr.ph32

bb.h:                                             ; preds = %.lr.ph32
  %i.aq = add i64 %i.as, 1                        ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %i.am
  br i1 %i.ar, label %_ZN4QSetIiE14const_iteratorppEv.exit, label %.lr.ph32, !llvm.loop !27

.lr.ph32:                                         ; preds = %.lr.ph32.preheader, %bb.h
  %i.as = phi i64 [ %i.aq, %bb.h ], [ %i.an, %.lr.ph32.preheader ] ; 4 uses
  %i.at = lshr i64 %i.as, 7
  %i.au = getelementptr [144 x i8], ptr %i.ap, i64 %i.at
  %i.av = and i64 %i.as, 127
  %i.aw = getelementptr i8, ptr %i.au, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1
  %.not.i.i.i.i8 = icmp eq i8 %i.ax, -1
  br i1 %.not.i.i.i.i8, label %bb.h, label %._ZN4QSetIiE14const_iteratorppEv.exit_crit_edge35, !llvm.loop !27

._ZN4QSetIiE14const_iteratorppEv.exit_crit_edge35: ; preds = %.lr.ph32
  br label %_ZN4QSetIiE14const_iteratorppEv.exit, !llvm.loop !27

_ZN4QSetIiE14const_iteratorppEv.exit:             ; preds = %bb.h, %._ZN4QSetIiE14const_iteratorppEv.exit_crit_edge35, %bb.g
  %.sroa.09.1 = phi ptr [ %.sroa.09.015, %._ZN4QSetIiE14const_iteratorppEv.exit_crit_edge35 ], [ null, %bb.g ], [ null, %bb.h ] ; 2 uses
  %.sroa.8.1 = phi i64 [ %i.as, %._ZN4QSetIiE14const_iteratorppEv.exit_crit_edge35 ], [ 0, %bb.g ], [ 0, %bb.h ] ; 2 uses
  %i.ay = icmp ne ptr %.sroa.09.1, null
  %i.az = icmp ne i64 %.sroa.8.1, 0
  %or.cond = or i1 %i.ay, %i.az
  br i1 %or.cond, label %_ZNK4QSetIiE14const_iteratorneERKS1_.exit.thread, label %._crit_edge, !llvm.loop !28

bb.i:                                             ; preds = %_ZNK4QSetIiE4sizeEv.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %_ZNK17QArrayDataPointerIiE11needsDetachEv.exit.thread.i.i.i.i.i, %_ZNK4QSetIiE14const_iteratorneERKS1_.exit.thread
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

._crit_edge:                                      ; preds = %_ZN4QSetIiE14const_iteratorppEv.exit, %_ZNK4QSetIiE10constBeginEv.exit
  ret void

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.j ], [ %i.ba, %bb.i ]
  call void @_ZN5QListIiED2Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN5QListIiED2Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN17QArrayDataPointerIiED2Ev.exit, label %_ZN17QArrayDataPointerIiE5derefEv.exit.i

_ZN17QArrayDataPointerIiE5derefEv.exit.i:         ; preds = %bb.a
  %i.b = atomicrmw sub ptr %i.a, i32 1 acq_rel, align 4
  %.not.i = icmp eq i32 %i.b, 1
  br i1 %.not.i, label %bb.b, label %_ZN17QArrayDataPointerIiED2Ev.exit

bb.b:                                             ; preds = %_ZN17QArrayDataPointerIiE5derefEv.exit.i
  %i.c = load ptr, ptr %0, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.c, i64 noundef 4, i64 noundef 8) #21
  br label %_ZN17QArrayDataPointerIiED2Ev.exit

_ZN17QArrayDataPointerIiED2Ev.exit:               ; preds = %bb.a, %_ZN17QArrayDataPointerIiE5derefEv.exit.i, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @pcap_open_dead(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare i32 @pcap_compile(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @pcap_geterr(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare noundef ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @pcap_freecode(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @pcap_close(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZNK4QSetIjE6valuesEv(ptr dead_on_unwind noalias writable sret(%class.QList.6) align 8 %0, ptr noundef align 8 dereferenceable_or_null(8) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(24) dereferenceable_or_null(24) %0, i8 0, i64 24, i1 false)
  %i.b = load ptr, ptr %1, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %_ZNK4QSetIjE4sizeEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8
  br label %_ZNK4QSetIjE4sizeEv.exit

_ZNK4QSetIjE4sizeEv.exit:                         ; preds = %bb.a, %bb.b
  %i.e = phi i64 [ %i.d, %bb.b ], [ 0, %bb.a ]
  invoke void @_ZN5QListIjE7reserveEx(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %i.e)
          to label %bb.c unwind label %bb.i

bb.c:                                             ; preds = %_ZNK4QSetIjE4sizeEv.exit
  %i.f = load ptr, ptr %1, align 8, !noalias !29  ; 5 uses
  %.not.i.i5 = icmp eq ptr %i.f, null
  br i1 %.not.i.i5, label %_ZNK4QSetIjE10constBeginEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.f, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !noalias !29 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !noalias !29
  %.not.i.i.i.i = icmp eq i8 %i.i, -1
  br i1 %.not.i.i.i.i, label %bb.e, label %_ZNK4QSetIjE14const_iteratorneERKS1_.exit.thread.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %i.f, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !29 ; 2 uses
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %_ZNK4QSetIjE10constBeginEv.exit, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.m = add i64 %i.o, 1                          ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.k
  br i1 %i.n, label %_ZNK4QSetIjE10constBeginEv.exit, label %.lr.ph, !llvm.loop !32

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %i.o = phi i64 [ %i.m, %bb.f ], [ 1, %bb.e ]    ; 4 uses
  %i.p = lshr i64 %i.o, 7
  %i.q = getelementptr [144 x i8], ptr %i.h, i64 %i.p
  %i.r = and i64 %i.o, 127
  %i.s = getelementptr i8, ptr %i.q, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !noalias !29
  %.not.i.i.i.i.i = icmp eq i8 %i.t, -1
  br i1 %.not.i.i.i.i.i, label %bb.f, label %._ZNK4QSetIjE10constBeginEv.exit.loopexit_crit_edge, !llvm.loop !32

._ZNK4QSetIjE10constBeginEv.exit.loopexit_crit_edge: ; preds = %.lr.ph
  br label %_ZNK4QSetIjE10constBeginEv.exit, !llvm.loop !32

_ZNK4QSetIjE10constBeginEv.exit:                  ; preds = %bb.f, %bb.e, %._ZNK4QSetIjE10constBeginEv.exit.loopexit_crit_edge, %bb.c
  %.sroa.0.0.i.i = phi ptr [ null, %bb.c ], [ %i.f, %._ZNK4QSetIjE10constBeginEv.exit.loopexit_crit_edge ], [ null, %bb.e ], [ null, %bb.f ] ; 2 uses
  %.sroa.4.0.i.i = phi i64 [ 0, %bb.c ], [ %i.o, %._ZNK4QSetIjE10constBeginEv.exit.loopexit_crit_edge ], [ 0, %bb.e ], [ 0, %bb.f ] ; 2 uses
  %2 = icmp ne ptr %.sroa.0.0.i.i, null
  %3 = icmp ne i64 %.sroa.4.0.i.i, 0
  %or.cond14 = or i1 %2, %3
  br i1 %or.cond14, label %_ZNK4QSetIjE14const_iteratorneERKS1_.exit.thread.lr.ph, label %._crit_edge

_ZNK4QSetIjE14const_iteratorneERKS1_.exit.thread.lr.ph: ; preds = %bb.d, %_ZNK4QSetIjE10constBeginEv.exit
  %.sroa.4.0.i.i25 = phi i64 [ %.sroa.4.0.i.i, %_ZNK4QSetIjE10constBeginEv.exit ], [ 0, %bb.d ]
  %.sroa.0.0.i.i24 = phi ptr [ %.sroa.0.0.i.i, %_ZNK4QSetIjE10constBeginEv.exit ], [ %i.f, %bb.d ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %_ZNK4QSetIjE14const_iteratorneERKS1_.exit.thread

_ZNK4QSetIjE14const_iteratorneERKS1_.exit.thread: ; preds = %_ZNK4QSetIjE14const_iteratorneERKS1_.exit.thread.lr.ph, %_ZN4QSetIjE14const_iteratorppEv.exit
  %.sroa.8.016 = phi i64 [ %.sroa.4.0.i.i25, %_ZNK4QSetIjE14const_iteratorneERKS1_.exit.thread.lr.ph ], [ %.sroa.8.1, %_ZN4QSetIjE14const_iteratorppEv.exit ] ; 3 uses
  %.sroa.09.015 = phi ptr [ %.sroa.0.0.i.i24, %_ZNK4QSetIjE14const_iteratorneERKS1_.exit.thread.lr.ph ], [ %.sroa.09.1, %_ZN4QSetIjE14const_iteratorppEv.exit ] ; 3 uses
  %i.v = getelementptr i8, ptr %.sroa.09.015, i64 32 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = lshr i64 %.sroa.8.016, 7
  %i.y = getelementptr [144 x i8], ptr %i.w, i64 %i.x ; 2 uses
  %i.z = and i64 %.sroa.8.016, 127
  %i.aa = getelementptr i8, ptr %i.y, i64 128
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = getelementptr i8, ptr %i.y, i64 %i.z
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr [4 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.ag, ptr %i.a, align 4
  %i.ah = load i64, ptr %i.u, align 8
  invoke void @_ZN9QtPrivate12QPodArrayOpsIjE7emplaceIJRjEEEvxDpOT_(ptr noundef align 8 dereferenceable_or_null(24) %0, i64 noundef %i.ah, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %_ZNK4QSetIjE14const_iteratorneERKS1_.exit.thread
  %i.ai = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.thread.i.i.i.i.i, label %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i.i.i

_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i.i.i: ; preds = %.noexc
  %i.aj = load atomic i32, ptr %i.ai monotonic, align 4
  %i.ak = icmp sgt i32 %i.aj, 1
  br i1 %i.ak, label %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.thread.i.i.i.i.i, label %bb.g

_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.thread.i.i.i.i.i: ; preds = %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i.i.i, %.noexc
  invoke void @_ZN17QArrayDataPointerIjE17reallocateAndGrowEN10QArrayData14GrowthPositionExPS0_(ptr noundef align 8 dereferenceable_or_null(24) %0, i32 noundef 0, i64 noundef 0, ptr noundef null)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.i.i.i.i.i, %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.al = getelementptr i8, ptr %.sroa.09.015, i64 16
  %i.am = load i64, ptr %i.al, align 8            ; 2 uses
  %i.an = add i64 %.sroa.8.016, 1                 ; 2 uses
  %i.ao = icmp eq i64 %i.an, %i.am
  br i1 %i.ao, label %_ZN4QSetIjE14const_iteratorppEv.exit, label %.lr.ph32.preheader

.lr.ph32.preheader:                               ; preds = %bb.g
  %i.ap = load ptr, ptr %i.v, align 8
  br label %.lr.ph32

bb.h:                                             ; preds = %.lr.ph32
  %i.aq = add i64 %i.as, 1                        ; 2 uses
  %i.ar = icmp eq i64 %i.aq, %i.am
  br i1 %i.ar, label %_ZN4QSetIjE14const_iteratorppEv.exit, label %.lr.ph32, !llvm.loop !32

.lr.ph32:                                         ; preds = %.lr.ph32.preheader, %bb.h
  %i.as = phi i64 [ %i.aq, %bb.h ], [ %i.an, %.lr.ph32.preheader ] ; 4 uses
  %i.at = lshr i64 %i.as, 7
  %i.au = getelementptr [144 x i8], ptr %i.ap, i64 %i.at
  %i.av = and i64 %i.as, 127
  %i.aw = getelementptr i8, ptr %i.au, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1
  %.not.i.i.i.i8 = icmp eq i8 %i.ax, -1
  br i1 %.not.i.i.i.i8, label %bb.h, label %._ZN4QSetIjE14const_iteratorppEv.exit_crit_edge35, !llvm.loop !32

._ZN4QSetIjE14const_iteratorppEv.exit_crit_edge35: ; preds = %.lr.ph32
  br label %_ZN4QSetIjE14const_iteratorppEv.exit, !llvm.loop !32

_ZN4QSetIjE14const_iteratorppEv.exit:             ; preds = %bb.h, %._ZN4QSetIjE14const_iteratorppEv.exit_crit_edge35, %bb.g
  %.sroa.09.1 = phi ptr [ %.sroa.09.015, %._ZN4QSetIjE14const_iteratorppEv.exit_crit_edge35 ], [ null, %bb.g ], [ null, %bb.h ] ; 2 uses
  %.sroa.8.1 = phi i64 [ %i.as, %._ZN4QSetIjE14const_iteratorppEv.exit_crit_edge35 ], [ 0, %bb.g ], [ 0, %bb.h ] ; 2 uses
  %i.ay = icmp ne ptr %.sroa.09.1, null
  %i.az = icmp ne i64 %.sroa.8.1, 0
  %or.cond = or i1 %i.ay, %i.az
  br i1 %or.cond, label %_ZNK4QSetIjE14const_iteratorneERKS1_.exit.thread, label %._crit_edge, !llvm.loop !33

bb.i:                                             ; preds = %_ZNK4QSetIjE4sizeEv.exit
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.j:                                             ; preds = %_ZNK17QArrayDataPointerIjE11needsDetachEv.exit.thread.i.i.i.i.i, %_ZNK4QSetIjE14const_iteratorneERKS1_.exit.thread
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

._crit_edge:                                      ; preds = %_ZN4QSetIjE14const_iteratorppEv.exit, %_ZNK4QSetIjE10constBeginEv.exit
  ret void

bb.k:                                             ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.bb, %bb.j ], [ %i.ba, %bb.i ]
  call void @_ZN5QListIjED2Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) #21
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN5QListIjED2Ev(ptr noundef align 8 dead_on_return(24) dereferenceable_or_null(24) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %_ZN17QArrayDataPointerIjED2Ev.exit, label %_ZN17QArrayDataPointerIjE5derefEv.exit.i

_ZN17QArrayDataPointerIjE5derefEv.exit.i:         ; preds = %bb.a
  %i.b = atomicrmw sub ptr %i.a, i32 1 acq_rel, align 4
  %.not.i = icmp eq i32 %i.b, 1
  br i1 %.not.i, label %bb.b, label %_ZN17QArrayDataPointerIjED2Ev.exit

bb.b:                                             ; preds = %_ZN17QArrayDataPointerIjE5derefEv.exit.i
  %i.c = load ptr, ptr %0, align 8
  tail call void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef %i.c, i64 noundef 4, i64 noundef 8) #21
  br label %_ZN17QArrayDataPointerIjED2Ev.exit

_ZN17QArrayDataPointerIjED2Ev.exit:               ; preds = %bb.a, %_ZN17QArrayDataPointerIjE5derefEv.exit.i, %bb.b
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @extcap_verify_capture_filter(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @g_free(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN4QSetIjED2Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN5QHashIj15QHashDummyValueED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %_ZN5QHashIj15QHashDummyValueED2Ev.exit, label %_ZN9QtPrivate8RefCount5derefEv.exit.i

_ZN9QtPrivate8RefCount5derefEv.exit.i:            ; preds = %bb.b
  %i.d = atomicrmw sub ptr %i.a, i32 1 acq_rel, align 4
  %.not3.i = icmp eq i32 %i.d, 1
  br i1 %.not3.i, label %bb.c, label %_ZN5QHashIj15QHashDummyValueED2Ev.exit

bb.c:                                             ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i
  %i.e = load ptr, ptr %0, align 8                ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN5QHashIj15QHashDummyValueED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.e, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN12QHashPrivate4DataINS_4NodeIj15QHashDummyValueEEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %.idx.i.i = mul i64 %i.k, 144                   ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.loopexit.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.e
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 %.idx.i.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN12QHashPrivate4SpanINS_4NodeIj15QHashDummyValueEEED2Ev.exit.i.i, %.preheader.preheader.i.i
  %i.n = phi ptr [ %i.o, %_ZN12QHashPrivate4SpanINS_4NodeIj15QHashDummyValueEEED2Ev.exit.i.i ], [ %i.m, %.preheader.preheader.i.i ] ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -144 ; 2 uses
  %i.p = getelementptr i8, ptr %i.n, i64 -16
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN12QHashPrivate4SpanINS_4NodeIj15QHashDummyValueEEED2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.preheader.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.q) #23
  br label %_ZN12QHashPrivate4SpanINS_4NodeIj15QHashDummyValueEEED2Ev.exit.i.i

_ZN12QHashPrivate4SpanINS_4NodeIj15QHashDummyValueEEED2Ev.exit.i.i: ; preds = %bb.f, %.preheader.i.i
  %i.r = icmp eq ptr %i.o, %i.h
  br i1 %i.r, label %.loopexit.i.i, label %.preheader.i.i

.loopexit.i.i:                                    ; preds = %_ZN12QHashPrivate4SpanINS_4NodeIj15QHashDummyValueEEED2Ev.exit.i.i, %bb.e
  %i.s = or disjoint i64 %.idx.i.i, 8
  tail call void @_ZdaPvm(ptr noundef %i.j, i64 noundef %i.s) #23
  br label %_ZN12QHashPrivate4DataINS_4NodeIj15QHashDummyValueEEED2Ev.exit.i

_ZN12QHashPrivate4DataINS_4NodeIj15QHashDummyValueEEED2Ev.exit.i: ; preds = %.loopexit.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef 40) #23
  br label %_ZN5QHashIj15QHashDummyValueED2Ev.exit

_ZN5QHashIj15QHashDummyValueED2Ev.exit:           ; preds = %bb.a, %bb.b, %_ZN9QtPrivate8RefCount5derefEv.exit.i, %bb.c, %_ZN12QHashPrivate4DataINS_4NodeIj15QHashDummyValueEEED2Ev.exit.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr void @_ZN4QSetIiED2Ev(ptr noundef align 8 dead_on_return(8) dereferenceable_or_null(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %_ZN5QHashIi15QHashDummyValueED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load atomic i32, ptr %i.a monotonic, align 4
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %_ZN5QHashIi15QHashDummyValueED2Ev.exit, label %_ZN9QtPrivate8RefCount5derefEv.exit.i

_ZN9QtPrivate8RefCount5derefEv.exit.i:            ; preds = %bb.b
  %i.d = atomicrmw sub ptr %i.a, i32 1 acq_rel, align 4
  %.not3.i = icmp eq i32 %i.d, 1
  br i1 %.not3.i, label %bb.c, label %_ZN5QHashIi15QHashDummyValueED2Ev.exit

bb.c:                                             ; preds = %_ZN9QtPrivate8RefCount5derefEv.exit.i
  %i.e = load ptr, ptr %0, align 8                ; 3 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_ZN5QHashIi15QHashDummyValueED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %i.e, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_ZN12QHashPrivate4DataINS_4NodeIi15QHashDummyValueEEED2Ev.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 -8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %.idx.i.i = mul i64 %i.k, 144                   ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.loopexit.i.i, label %.preheader.preheader.i.i

.preheader.preheader.i.i:                         ; preds = %bb.e
  %i.m = getelementptr inbounds i8, ptr %i.h, i64 %.idx.i.i
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %_ZN12QHashPrivate4SpanINS_4NodeIi15QHashDummyValueEEED2Ev.exit.i.i, %.preheader.preheader.i.i
  %i.n = phi ptr [ %i.o, %_ZN12QHashPrivate4SpanINS_4NodeIi15QHashDummyValueEEED2Ev.exit.i.i ], [ %i.m, %.preheader.preheader.i.i ] ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -144 ; 2 uses
  %i.p = getelementptr i8, ptr %i.n, i64 -16
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %_ZN12QHashPrivate4SpanINS_4NodeIi15QHashDummyValueEEED2Ev.exit.i.i, label %bb.f

bb.f:                                             ; preds = %.preheader.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.q) #23
  br label %_ZN12QHashPrivate4SpanINS_4NodeIi15QHashDummyValueEEED2Ev.exit.i.i

_ZN12QHashPrivate4SpanINS_4NodeIi15QHashDummyValueEEED2Ev.exit.i.i: ; preds = %bb.f, %.preheader.i.i
  %i.r = icmp eq ptr %i.o, %i.h
  br i1 %i.r, label %.loopexit.i.i, label %.preheader.i.i

.loopexit.i.i:                                    ; preds = %_ZN12QHashPrivate4SpanINS_4NodeIi15QHashDummyValueEEED2Ev.exit.i.i, %bb.e
  %i.s = or disjoint i64 %.idx.i.i, 8
  tail call void @_ZdaPvm(ptr noundef %i.j, i64 noundef %i.s) #23
  br label %_ZN12QHashPrivate4DataINS_4NodeIi15QHashDummyValueEEED2Ev.exit.i

_ZN12QHashPrivate4DataINS_4NodeIi15QHashDummyValueEEED2Ev.exit.i: ; preds = %.loopexit.i.i, %bb.d
  tail call void @_ZdlPvm(ptr noundef %i.e, i64 noundef 40) #23
  br label %_ZN5QHashIi15QHashDummyValueED2Ev.exit

_ZN5QHashIi15QHashDummyValueED2Ev.exit:           ; preds = %bb.a, %bb.b, %_ZN9QtPrivate8RefCount5derefEv.exit.i, %bb.c, %_ZN12QHashPrivate4DataINS_4NodeIi15QHashDummyValueEEED2Ev.exit.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @_ZN11QBasicMutex15destroyInternalEP13QMutexPrivate(ptr noundef align 8 dereferenceable_or_null(8), ptr noundef) local_unnamed_addr #4

; Function Attrs: noinline noreturn nounwind null_pointer_is_valid sspstrong uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare void @_ZNK11QMetaObject2trEPKcS1_i(ptr dead_on_unwind writable sret(%class.QString) align 8, ptr noundef align 8 dereferenceable_or_null(56), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid
declare void @_ZN10QArrayData10deallocateEPS_xx(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare void @_ZN7QString13toUtf8_helperERKS_(ptr dead_on_unwind writable sret(%class.QByteArray) align 8, ptr noundef align 8 dereferenceable(24)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @_ZN10QByteArray11reallocDataExN10QArrayData16AllocationOptionE(ptr noundef align 8 dereferenceable_or_null(24), i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
end_hunk_0
