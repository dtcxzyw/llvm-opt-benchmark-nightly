Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/TargetSchedule?download=true
begin_hunk_0
@_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE = external unnamed_addr constant { [13 x ptr] }, align 8
@_ZTVN4llvm2cl6OptionE = external unnamed_addr constant { [13 x ptr] }, align 8
@_ZTVN4llvm2cl11OptionValueIbEE = linkonce_odr unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr null, ptr @_ZNK4llvm2cl15OptionValueCopyIbE7compareERKNS0_18GenericOptionValueE, ptr @_ZN4llvm2cl18GenericOptionValue6anchorEv] }, comdat, align 8
@_ZTVN4llvm2cl6parserIbEE = external unnamed_addr constant { [6 x ptr] }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_TargetSchedule.cpp, ptr null }]

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN4llvm2cl3optIbLb0ENS0_6parserIbEEED2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl3optIbLb0ENS0_6parserIbEEEE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt14_Function_baseD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.d = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i32 noundef 3) #13, !inline_history !13 ; 0 uses
  br label %_ZNSt14_Function_baseD2Ev.exit

_ZNSt14_Function_baseD2Ev.exit:                   ; preds = %bb.a, %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN4llvm2cl6OptionE, i64 16), ptr %0, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i8, ptr %i.e, align 8, !tbaa !14, !range !18, !noundef !19
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt14_Function_baseD2Ev.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !20
  tail call void @free(ptr noundef %i.i) #13
  br label %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i

_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i:         ; preds = %bb.c, %_ZNSt14_Function_baseD2Ev.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZN4llvm2cl6OptionD2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i
  tail call void @free(ptr noundef %i.k) #13
  br label %_ZN4llvm2cl6OptionD2Ev.exit

_ZN4llvm2cl6OptionD2Ev.exit:                      ; preds = %_ZN4llvm19SmallPtrSetImplBaseD2Ev.exit.i, %bb.d
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16TargetSchedModel18hasInstrSchedModelEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(298) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load i8, ptr %i.a, align 8, !tbaa !23, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp ne ptr %i.e, null
  %i.g = select i1 %i.c, i1 %i.f, i1 false
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16TargetSchedModel19hasInstrItinerariesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(298) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 297
  %i.b = load i8, ptr %i.a, align 1, !tbaa !41, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = icmp ne ptr %i.e, null
  %i.g = select i1 %i.c, i1 %i.f, i1 false
  ret i1 %i.g
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm16TargetSchedModel4initEPKNS_19TargetSubtargetInfoEbb(ptr noundef nonnull align 8 dereferenceable(298) initializes((0, 80), (192, 208)) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = zext i1 %3 to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.e, i64 80, i1 false), !tbaa.struct !68
  %i.f = load ptr, ptr %1, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef ptr %i.h(ptr noundef nonnull align 8 dereferenceable(344) %1) #13
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.i, ptr %i.j, align 8, !tbaa !76
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_ZNK4llvm15MCSubtargetInfo14initInstrItinsERNS_18InstrItineraryDataE(ptr noundef nonnull align 8 dereferenceable(320) %i.k, ptr noundef nonnull align 8 dereferenceable(112) %i.l) #13
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 296
  store i8 %i.a, ptr %i.m, align 8, !tbaa !23
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 297
  store i8 %i.b, ptr %i.n, align 1, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i32, ptr %i.o, align 8, !tbaa !77   ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.r = zext i32 %i.p to i64                     ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !78   ; 3 uses
  %i.u = icmp eq i32 %i.p, %i.t
  br i1 %i.u, label %_ZN4llvm15SmallVectorImplIjE6resizeEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.v = icmp ult i32 %i.p, %i.t
  br i1 %i.v, label %.sink.split.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.x = load i32, ptr %i.w, align 4, !tbaa !79
  %i.y = icmp ugt i32 %i.p, %i.x
  br i1 %i.y, label %bb.d, label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 224
  tail call void @_ZN4llvm15SmallVectorBaseIjE8grow_podEPvmm(ptr noundef nonnull align 8 dereferenceable(16) %i.q, ptr noundef nonnull %i.z, i64 noundef %i.r, i64 noundef 4) #13
  %.pre.i.i = load i32, ptr %i.s, align 8, !tbaa !78
  br label %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i

_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i:  ; preds = %bb.d, %bb.c
  %.pre-phi.i.i.in = phi i32 [ %i.t, %bb.c ], [ %.pre.i.i, %bb.d ] ; 2 uses
  %.not11.i.i = icmp eq i32 %i.p, %.pre-phi.i.i.in
  br i1 %.not11.i.i, label %.sink.split.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i
  %.pre-phi.i.i = zext i32 %.pre-phi.i.i.in to i64 ; 2 uses
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !21
  %i.ab = getelementptr [4 x i8], ptr %i.aa, i64 %.pre-phi.i.i
  %i.ac = sub nsw i64 %i.r, %.pre-phi.i.i
  %i.ad = shl nsw i64 %i.ac, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ab, i8 0, i64 %i.ad, i1 false), !tbaa !69
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %.lr.ph.preheader.i.i, %_ZN4llvm15SmallVectorImplIjE7reserveEm.exit.i.i, %bb.b
  store i32 %i.p, ptr %i.s, align 8, !tbaa !78
  br label %_ZN4llvm15SmallVectorImplIjE6resizeEm.exit

_ZN4llvm15SmallVectorImplIjE6resizeEm.exit:       ; preds = %bb.a, %.sink.split.i.i
  %i.ae = load i32, ptr %0, align 8, !tbaa !80    ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 5 uses
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !81
  %.not29 = icmp eq i32 %i.p, 0
  br i1 %.not29, label %._crit_edge.thread, label %.lr.ph

._crit_edge.thread:                               ; preds = %_ZN4llvm15SmallVectorImplIjE6resizeEm.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i32 1, ptr %i.ag, align 8, !tbaa !82
  br label %._crit_edge28

.lr.ph:                                           ; preds = %_ZN4llvm15SmallVectorImplIjE6resizeEm.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !83
  br label %bb.e

._crit_edge:                                      ; preds = %bb.h
  %i.aj = udiv i32 %i.bh, %i.ae
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !82
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !83 ; 3 uses
  %i.an = load ptr, ptr %i.q, align 8, !tbaa !21  ; 3 uses
  %xtraiter = and i64 %i.r, 1
  %i.ao = icmp eq i32 %i.p, 1
  br i1 %i.ao, label %.epil.preheader, label %._crit_edge.new

._crit_edge.new:                                  ; preds = %._crit_edge
  %unroll_iter = and i64 %i.r, 4294967294
  br label %bb.j

bb.e:                                             ; preds = %.lr.ph, %bb.h
  %i.ap = phi i32 [ %i.ae, %.lr.ph ], [ %i.bh, %bb.h ] ; 5 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.ai, i64 %indvars.iv
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !84 ; 4 uses
  %.not23 = icmp eq i32 %i.as, 0
  br i1 %.not23, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.at = icmp eq i32 %i.ap, 0
  br i1 %i.at, label %_ZSt3lcmIjjENSt11common_typeIJT_T0_EE4typeES1_S2_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.au = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ap, i1 true) ; 2 uses
  %i.av = lshr exact i32 %i.ap, %i.au             ; 3 uses
  %i.aw = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.as, i1 true) ; 2 uses
  %i.ax = lshr exact i32 %i.as, %i.aw             ; 3 uses
  %i.ay = tail call i32 @llvm.umin.i32(i32 %i.au, i32 %i.aw)
  %spec.select3334.i.i = tail call i32 @llvm.umin.i32(i32 %i.av, i32 %i.ax) ; 2 uses
  %i.az = icmp eq i32 %i.av, %i.ax
  br i1 %i.az, label %_ZNSt8__detail5__gcdIjEET_S1_S1_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %spec.select3337.i.i = phi i32 [ %spec.select33.i.i, %.lr.ph.i.i ], [ %spec.select3334.i.i, %bb.g ] ; 4 uses
  %.02736.i.i = phi i32 [ %spec.select3337.i.i, %.lr.ph.i.i ], [ %i.av, %bb.g ]
  %.02835.i.i = phi i32 [ %i.bc, %.lr.ph.i.i ], [ %i.ax, %bb.g ]
  %spec.select.i.i.a = tail call i32 @llvm.umax.i32(i32 %.02736.i.i, i32 %.02835.i.i)
  %i.ba = sub i32 %spec.select.i.i.a, %spec.select3337.i.i ; 2 uses
  %i.bb = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.ba, i1 true)
  %i.bc = lshr exact i32 %i.ba, %i.bb             ; 3 uses
  %spec.select33.i.i = tail call i32 @llvm.umin.i32(i32 %spec.select3337.i.i, i32 %i.bc) ; 2 uses
  %i.bd = icmp eq i32 %spec.select3337.i.i, %i.bc
  br i1 %i.bd, label %_ZNSt8__detail5__gcdIjEET_S1_S1_.exit.i, label %.lr.ph.i.i, !llvm.loop !86

_ZNSt8__detail5__gcdIjEET_S1_S1_.exit.i:          ; preds = %.lr.ph.i.i, %bb.g
  %spec.select33.lcssa.i.i = phi i32 [ %spec.select3334.i.i, %bb.g ], [ %spec.select33.i.i, %.lr.ph.i.i ]
  %i.be = shl i32 %spec.select33.lcssa.i.i, %i.ay
  %i.bf = udiv i32 %i.ap, %i.be
  %i.bg = mul i32 %i.bf, %i.as
  br label %_ZSt3lcmIjjENSt11common_typeIJT_T0_EE4typeES1_S2_.exit

_ZSt3lcmIjjENSt11common_typeIJT_T0_EE4typeES1_S2_.exit: ; preds = %bb.f, %_ZNSt8__detail5__gcdIjEET_S1_S1_.exit.i
  %.0.i = phi i32 [ %i.bg, %_ZNSt8__detail5__gcdIjEET_S1_S1_.exit.i ], [ 0, %bb.f ] ; 2 uses
  store i32 %.0.i, ptr %i.af, align 4, !tbaa !81
  br label %bb.h

bb.h:                                             ; preds = %_ZSt3lcmIjjENSt11common_typeIJT_T0_EE4typeES1_S2_.exit, %bb.e
  %i.bh = phi i32 [ %.0.i, %_ZSt3lcmIjjENSt11common_typeIJT_T0_EE4typeES1_S2_.exit ], [ %i.ap, %bb.e ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.r
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !88

._crit_edge28.loopexit.unr-lcssa:                 ; preds = %bb.n
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge28, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge28.loopexit.unr-lcssa, %._crit_edge
  %indvars.iv32.epil.init = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next33.1, %._crit_edge28.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod43 = trunc i32 %i.p to i1
  tail call void @llvm.assume(i1 %lcmp.mod43)
  %i.bi = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %indvars.iv32.epil.init
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !84 ; 2 uses
  %.not.epil = icmp eq i32 %i.bk, 0
  br i1 %.not.epil, label %._crit_edge28.loopexit.epilog-lcssa, label %bb.i

bb.i:                                             ; preds = %.epil.preheader
  %i.bl = load i32, ptr %i.af, align 4, !tbaa !81
  %i.bm = udiv i32 %i.bl, %i.bk
  br label %._crit_edge28.loopexit.epilog-lcssa

._crit_edge28.loopexit.epilog-lcssa:              ; preds = %bb.i, %.epil.preheader
  %i.bn = phi i32 [ %i.bm, %bb.i ], [ 0, %.epil.preheader ]
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv32.epil.init
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !69
  br label %._crit_edge28

._crit_edge28:                                    ; preds = %._crit_edge28.loopexit.epilog-lcssa, %._crit_edge28.loopexit.unr-lcssa, %._crit_edge.thread
  ret void

bb.j:                                             ; preds = %bb.n, %._crit_edge.new
  %indvars.iv32 = phi i64 [ 0, %._crit_edge.new ], [ %indvars.iv.next33.1, %bb.n ] ; 4 uses
  %niter = phi i64 [ 0, %._crit_edge.new ], [ %niter.next.1, %bb.n ]
  %i.bp = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %indvars.iv32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !84 ; 2 uses
  %.not = icmp eq i32 %i.br, 0
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bs = load i32, ptr %i.af, align 4, !tbaa !81
  %i.bt = udiv i32 %i.bs, %i.br
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.bu = phi i32 [ %i.bt, %bb.k ], [ 0, %bb.j ]
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv32
  store i32 %i.bu, ptr %i.bv, align 4, !tbaa !69
  %indvars.iv.next33 = or disjoint i64 %indvars.iv32, 1 ; 2 uses
  %i.bw = getelementptr inbounds nuw [32 x i8], ptr %i.am, i64 %indvars.iv.next33
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !84 ; 2 uses
  %.not.1 = icmp eq i32 %i.by, 0
  br i1 %.not.1, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bz = load i32, ptr %i.af, align 4, !tbaa !81
  %i.ca = udiv i32 %i.bz, %i.by
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.cb = phi i32 [ %i.ca, %bb.m ], [ 0, %bb.l ]
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.next33
  store i32 %i.cb, ptr %i.cc, align 4, !tbaa !69
  %indvars.iv.next33.1 = add nuw nsw i64 %indvars.iv32, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge28.loopexit.unr-lcssa, label %bb.j, !llvm.loop !89
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare void @_ZNK4llvm15MCSubtargetInfo14initInstrItinsERNS_18InstrItineraryDataE(ptr noundef nonnull align 8 dereferenceable(320), ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm16TargetSchedModel14mustBeginGroupEPKNS_12MachineInstrEPKNS_16MCSchedClassDescE(ptr noundef nonnull align 8 dereferenceable(298) %0, ptr noundef %1, ptr nofree noundef readonly captures(address_is_null) %2) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load i8, ptr %i.a, align 8, !tbaa !23, !range !18, !noundef !19
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp ne ptr %i.e, null
  %i.g = select i1 %i.c, i1 %i.f, i1 false
  br i1 %i.g, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %._ZNK4llvm16TargetSchedModel17resolveSchedClassEPKNS_12MachineInstrE.exit_crit_edge

._ZNK4llvm16TargetSchedModel17resolveSchedClassEPKNS_12MachineInstrE.exit_crit_edge: ; preds = %bb.b
  %.pre = load i16, ptr %2, align 2               ; 2 uses
  %.pre9 = and i16 %.pre, 8191
  br label %_ZNK4llvm16TargetSchedModel17resolveSchedClassEPKNS_12MachineInstrE.exit

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !90
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load i16, ptr %i.j, align 8, !tbaa !107  ; 2 uses
  %i.l = zext i16 %i.k to i64
  %i.m = getelementptr inbounds nuw [14 x i8], ptr %i.e, i64 %i.l
  %i.n = load i16, ptr %i.m, align 2              ; 2 uses
  %i.o = and i16 %i.n, 8191                       ; 2 uses
  %cond.i = icmp eq i16 %i.o, 8190
  br i1 %cond.i, label %.lr.ph.i, label %_ZNK4llvm16TargetSchedModel17resolveSchedClassEPKNS_12MachineInstrE.exit

.lr.ph.i:                                         ; preds = %bb.c
  %i.p = zext i16 %i.k to i32
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i
  %.01012.i = phi i32 [ %i.p, %.lr.ph.i ], [ %i.v, %bb.d ]
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !42   ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 232
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = tail call noundef i32 %i.u(ptr noundef nonnull align 8 dereferenceable(344) %i.r, i32 noundef %.01012.i, ptr noundef nonnull %1, ptr noundef nonnull align 8 dereferenceable(298) %0) #13, !inline_history !110 ; 2 uses
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !111
  %i.x = zext i32 %i.v to i64
  %i.y = getelementptr inbounds nuw [14 x i8], ptr %i.w, i64 %i.x
  %i.z = load i16, ptr %i.y, align 2              ; 2 uses
  %i.aa = and i16 %i.z, 8191                      ; 2 uses
  %i.ab = icmp eq i16 %i.aa, 8190
  br i1 %i.ab, label %bb.d, label %_ZNK4llvm16TargetSchedModel17resolveSchedClassEPKNS_12MachineInstrE.exit, !llvm.loop !112

_ZNK4llvm16TargetSchedModel17resolveSchedClassEPKNS_12MachineInstrE.exit: ; preds = %bb.d, %._ZNK4llvm16TargetSchedModel17resolveSchedClassEPKNS_12MachineInstrE.exit_crit_edge, %bb.c
  %.pre-phi = phi i16 [ %.pre9, %._ZNK4llvm16TargetSchedModel17resolveSchedClassEPKNS_12MachineInstrE.exit_crit_edge ], [ %i.o, %bb.c ], [ %i.aa, %bb.d ]
  %i.ac = phi i16 [ %.pre, %._ZNK4llvm16TargetSchedModel17resolveSchedClassEPKNS_12MachineInstrE.exit_crit_edge ], [ %i.n, %bb.c ], [ %i.z, %bb.d ]
  %.not8 = icmp eq i16 %.pre-phi, 8191
  br i1 %.not8, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK4llvm16TargetSchedModel17resolveSchedClassEPKNS_12MachineInstrE.exit
  %i.ad = and i16 %i.ac, 8192
  %i.ae = icmp ne i16 %i.ad, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_ZNK4llvm16TargetSchedModel17resolveSchedClassEPKNS_12MachineInstrE.exit, %bb.e
  %.06 = phi i1 [ %i.ae, %bb.e ], [ false, %_ZNK4llvm16TargetSchedModel17resolveSchedClassEPKNS_12MachineInstrE.exit ], [ false, %bb.a ]
  ret i1 %.06
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local noundef ptr @_ZNK4llvm16TargetSchedModel17resolveSchedClassEPKNS_12MachineInstrE(ptr noundef nonnull align 8 dereferenceable(298) %0, ptr noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i16, ptr %i.c, align 8, !tbaa !107  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !111
  %i.g = zext i16 %i.d to i64
  %i.h = getelementptr inbounds nuw [14 x i8], ptr %i.f, i64 %i.g ; 2 uses
  %i.i = load i16, ptr %i.h, align 2
  %i.j = and i16 %i.i, 8191
  %cond = icmp eq i16 %i.j, 8190
  br i1 %cond, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.k = zext i16 %i.d to i32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.01012 = phi i32 [ %i.k, %.lr.ph ], [ %i.q, %bb.b ]
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !42   ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 232
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef i32 %i.p(ptr noundef nonnull align 8 dereferenceable(344) %i.m, i32 noundef %.01012, ptr noundef nonnull %1, ptr noundef nonnull %0) #13 ; 2 uses
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !111
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr inbounds nuw [14 x i8], ptr %i.r, i64 %i.s ; 2 uses
  %i.u = load i16, ptr %i.t, align 2
  %i.v = and i16 %i.u, 8191
end_hunk_0
