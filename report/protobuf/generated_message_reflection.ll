inline.NumInlined: 8096
inline.NumDeleted: 3435
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZNK6google8protobuf10Reflection9SwapFieldEPNS0_7MessageES3_PKNS0_15FieldDescriptorE:bb.a

bb.dr:                                            ; preds = %bb.dk
  tail call void @_ZN6google8protobuf8internal15SwapFieldHelper28SwapNonMessageNonStringFieldEPKNS0_10ReflectionEPNS0_7MessageES7_PKNS0_15FieldDescriptorE(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3)
  br label %bb.ds

bb.ds:                                            ; preds = %_ZN6google8protobuf8internal15SwapFieldHelper16SwapMessageFieldILb0EEEvPKNS0_10ReflectionEPNS0_7MessageES8_PKNS0_15FieldDescriptorE.exit, %bb.dq, %bb.dr, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIiEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit77, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIlEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit127, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIjEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit177, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldImEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit227, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIfEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit277, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIdEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit327, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIbEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit377, %_ZNK6google8protobuf10Reflection10MutableRawINS0_13RepeatedFieldIiEEEEPT_PNS0_7MessageEPKNS0_15FieldDescriptorE.exit429, %bb.dc, %bb.dd
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN6google8protobuf8internal40InitializeFileDescriptorDefaultInstancesEv() local_unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN6google8protobuf8internal26InitializeLazyExtensionSetEv() local_unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6google8protobuf8internal14ParseNamedEnumEPKNS0_14EnumDescriptorESt17basic_string_viewIcSt11char_traitsIcEEPi(ptr noundef nonnull %0, i64 %1, ptr %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf14EnumDescriptor15FindValueByNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 %1, ptr %2) ; 2 uses
  %i.b = icmp ne ptr %i.a, null                   ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !170
  store i32 %i.d, ptr %3, align 4, !tbaa !3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.b
}

declare noundef ptr @_ZNK6google8protobuf14EnumDescriptor15FindValueByNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(88), i64, ptr) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN6google8protobuf8internal10NameOfEnumB5cxx11EPKNS0_14EnumDescriptorEi(ptr noundef nonnull %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef ptr @_ZNK6google8protobuf14EnumDescriptor17FindValueByNumberEi(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1) ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load atomic i8, ptr @_ZN6google8protobuf8internal28init_protobuf_defaults_stateE acquire, align 1, !range !84, !noundef !50
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZN6google8protobuf8internal14GetEmptyStringB5cxx11Ev.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6google8protobuf8internal24InitProtobufDefaultsSlowEv()
  br label %_ZN6google8protobuf8internal14GetEmptyStringB5cxx11Ev.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !176
  br label %_ZN6google8protobuf8internal14GetEmptyStringB5cxx11Ev.exit

_ZN6google8protobuf8internal14GetEmptyStringB5cxx11Ev.exit: ; preds = %bb.c, %bb.b, %bb.d
  %i.g = phi ptr [ %i.f, %bb.d ], [ @_ZN6google8protobuf8internal26fixed_address_empty_stringE, %bb.b ], [ @_ZN6google8protobuf8internal26fixed_address_empty_stringE, %bb.c ]
  ret ptr %i.g
}

declare noundef ptr @_ZNK6google8protobuf14EnumDescriptor17FindValueByNumberEi(ptr noundef nonnull align 8 dereferenceable(88), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden noalias noundef nonnull ptr @_ZN6google8protobuf8internal18MakeDenseEnumCacheB5cxx11EPKNS0_14EnumDescriptorEii(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = sub nsw i32 %2, %1                       ; 3 uses
  %i.b = add nsw i32 %i.a, 1
  %i.c = zext nneg i32 %i.b to i64
  %i.d = icmp slt i32 %i.a, -1
  %i.e = shl nuw nsw i64 %i.c, 3
  %i.f = select i1 %i.d, i64 -1, i64 %i.e         ; 2 uses
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #38 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.g, i8 0, i64 %i.f, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !177  ; 4 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !182  ; 3 uses
  %wide.trip.count = zext nneg i32 %i.i to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.m = icmp eq i32 %i.i, 1
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.c

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.preheader.loopexit.unr-lcssa ]
  %lcmp.mod37 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod37)
  %i.n = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %indvars.iv.epil.init ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !170
  %i.q = sub nsw i32 %i.p, %1
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.r ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !183
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.b, label %.preheader

bb.b:                                             ; preds = %.epil.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !176
  store ptr %i.w, ptr %i.s, align 8, !tbaa !183
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit.unr-lcssa, %bb.b, %.epil.preheader, %bb.a
  %.not26 = icmp slt i32 %i.a, 0
  br i1 %.not26, label %._crit_edge, label %.lr.ph28.preheader

.lr.ph28.preheader:                               ; preds = %.preheader
  %i.x = add i32 %2, 1
  %i.y = sub i32 %i.x, %1                         ; 2 uses
  %wide.trip.count33 = zext i32 %i.y to i64       ; 3 uses
  %min.iters.check = icmp ult i32 %i.y, 4
  br i1 %min.iters.check, label %.lr.ph28.preheader36, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph28.preheader
  %n.vec = and i64 %wide.trip.count33, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %index ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.z, align 8, !tbaa !183 ; 2 uses
  %wide.load35 = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !183 ; 2 uses
  %i.ab = icmp eq <2 x ptr> %wide.load, splat (ptr null)
  %i.ac = icmp eq <2 x ptr> %wide.load35, splat (ptr null)
  %i.ad = select <2 x i1> %i.ab, <2 x ptr> <ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE>, <2 x ptr> %wide.load
  %i.ae = select <2 x i1> %i.ac, <2 x ptr> <ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE>, <2 x ptr> %wide.load35
  store <2 x ptr> %i.ad, ptr %i.z, align 8
  store <2 x ptr> %i.ae, ptr %i.aa, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !184

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count33
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph28.preheader36

.lr.ph28.preheader36:                             ; preds = %.lr.ph28.preheader, %middle.block
  %indvars.iv30.ph = phi i64 [ 0, %.lr.ph28.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph28

bb.c:                                             ; preds = %bb.g, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.g ]
  %i.ag = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !170
  %i.aj = sub nsw i32 %i.ai, %1
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !183
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !176
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !183
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aq = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 52
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !170
  %i.at = sub nsw i32 %i.as, %1
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.au ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !183
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !176
  store ptr %i.az, ptr %i.av, align 8, !tbaa !183
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.c, !llvm.loop !188

._crit_edge:                                      ; preds = %.lr.ph28, %middle.block, %.preheader
  ret ptr %i.g

.lr.ph28:                                         ; preds = %.lr.ph28.preheader36, %.lr.ph28
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %.lr.ph28 ], [ %indvars.iv30.ph, %.lr.ph28.preheader36 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv30 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !183 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  %spec.store.select = select i1 %i.bc, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr %i.bb
  store ptr %spec.store.select, ptr %i.ba, align 8
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next31, %wide.trip.count33
  br i1 %exitcond34.not, label %._crit_edge, label %.lr.ph28, !llvm.loop !189
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress noinline uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN6google8protobuf8internal19NameOfDenseEnumSlowB5cxx11EiPNS1_18DenseEnumCacheInfoE(i32 noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !190
  %i.c = icmp slt i32 %0, %i.b
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !194
  %i.f = icmp sgt i32 %0, %i.e
  br i1 %i.f, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !195
  %i.i = tail call noundef ptr %i.h()             ; 2 uses
  %i.j = load i32, ptr %i.a, align 8, !tbaa !190  ; 4 uses
  %i.k = load i32, ptr %i.d, align 4, !tbaa !194
  %i.l = sub i32 %i.k, %i.j                       ; 3 uses
  %i.m = add i32 %i.l, 1                          ; 2 uses
  %i.n = zext i32 %i.m to i64                     ; 4 uses
  %i.o = icmp slt i32 %i.l, -1
  %i.p = shl nuw nsw i64 %i.n, 3
  %i.q = select i1 %i.o, i64 -1, i64 %i.p         ; 2 uses
  %i.r = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.q) #38 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.r, i8 0, i64 %i.q, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !177  ; 4 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !182  ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.t to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.x = icmp eq i32 %i.t, 1
  br i1 %i.x, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %bb.e

.preheader.i.loopexit.unr-lcssa:                  ; preds = %bb.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.i.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.1, %.preheader.i.loopexit.unr-lcssa ]
  %lcmp.mod28 = trunc i32 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.y = getelementptr inbounds nuw [48 x i8], ptr %i.w, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !170
  %i.ab = sub nsw i32 %i.aa, %i.j
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ac ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !183
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.d, label %.preheader.i

bb.d:                                             ; preds = %.epil.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !176
  store ptr %i.ah, ptr %i.ad, align 8, !tbaa !183
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.loopexit.unr-lcssa, %bb.d, %.epil.preheader, %bb.c
  %.not26.i = icmp slt i32 %i.l, 0
  br i1 %.not26.i, label %_ZN6google8protobuf8internal18MakeDenseEnumCacheB5cxx11EPKNS0_14EnumDescriptorEii.exit, label %.lr.ph28.i.preheader

.lr.ph28.i.preheader:                             ; preds = %.preheader.i
  %min.iters.check = icmp ult i32 %i.m, 4
  br i1 %min.iters.check, label %.lr.ph28.i.preheader27, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph28.i.preheader
  %n.vec = and i64 %i.n, 4294967292               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %index ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16 ; 2 uses
  %wide.load = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !183 ; 2 uses
  %wide.load26 = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !183 ; 2 uses
  %i.ak = icmp eq <2 x ptr> %wide.load, splat (ptr null)
  %i.al = icmp eq <2 x ptr> %wide.load26, splat (ptr null)
  %i.am = select <2 x i1> %i.ak, <2 x ptr> <ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE>, <2 x ptr> %wide.load
  %i.an = select <2 x i1> %i.al, <2 x ptr> <ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE>, <2 x ptr> %wide.load26
  store <2 x ptr> %i.am, ptr %i.ai, align 8
  store <2 x ptr> %i.an, ptr %i.aj, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !196

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.n
  br i1 %cmp.n, label %_ZN6google8protobuf8internal18MakeDenseEnumCacheB5cxx11EPKNS0_14EnumDescriptorEii.exit, label %.lr.ph28.i.preheader27

.lr.ph28.i.preheader27:                           ; preds = %.lr.ph28.i.preheader, %middle.block
  %indvars.iv30.i.ph = phi i64 [ 0, %.lr.ph28.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph28.i

bb.e:                                             ; preds = %bb.i, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.i ]
  %i.ap = getelementptr inbounds nuw [48 x i8], ptr %i.w, i64 %indvars.iv.i ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !170
  %i.as = sub nsw i32 %i.ar, %i.j
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.at ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !183
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !176
  store ptr %i.ay, ptr %i.au, align 8, !tbaa !183
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.az = getelementptr inbounds nuw [48 x i8], ptr %i.w, i64 %indvars.iv.i ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 52
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !170
  %i.bc = sub nsw i32 %i.bb, %i.j
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.bd ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !183
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !176
  store ptr %i.bi, ptr %i.be, align 8, !tbaa !183
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.loopexit.unr-lcssa, label %bb.e, !llvm.loop !188

.lr.ph28.i:                                       ; preds = %.lr.ph28.i.preheader27, %.lr.ph28.i
  %indvars.iv30.i = phi i64 [ %indvars.iv.next31.i, %.lr.ph28.i ], [ %indvars.iv30.i.ph, %.lr.ph28.i.preheader27 ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv30.i ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !183 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  %spec.store.select.i = select i1 %i.bl, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr %i.bk
  store ptr %spec.store.select.i, ptr %i.bj, align 8
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %exitcond34.not.i = icmp eq i64 %indvars.iv.next31.i, %i.n
  br i1 %exitcond34.not.i, label %_ZN6google8protobuf8internal18MakeDenseEnumCacheB5cxx11EPKNS0_14EnumDescriptorEii.exit, label %.lr.ph28.i, !llvm.loop !197

_ZN6google8protobuf8internal18MakeDenseEnumCacheB5cxx11EPKNS0_14EnumDescriptorEii.exit: ; preds = %.lr.ph28.i, %middle.block, %.preheader.i
  %i.bm = cmpxchg ptr %1, ptr null, ptr %i.r release acquire, align 8 ; 2 uses
  %i.bn = extractvalue { ptr, i1 } %i.bm, 1
  br i1 %i.bn, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18MakeDenseEnumCacheB5cxx11EPKNS0_14EnumDescriptorEii.exit
  %i.bo = extractvalue { ptr, i1 } %i.bm, 0
  tail call void @_ZdaPv(ptr noundef nonnull %i.r) #39
  br label %bb.k

bb.k:                                             ; preds = %_ZN6google8protobuf8internal18MakeDenseEnumCacheB5cxx11EPKNS0_14EnumDescriptorEii.exit, %bb.j
  %.sink = phi ptr [ %i.bo, %bb.j ], [ %i.r, %_ZN6google8protobuf8internal18MakeDenseEnumCacheB5cxx11EPKNS0_14EnumDescriptorEii.exit ]
  %i.bp = load i32, ptr %i.a, align 8, !tbaa !190
  %i.bq = sub nsw i32 %0, %i.bp
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %.sink, i64 %i.br
  %.0 = load ptr, ptr %i.bs, align 8, !tbaa !183
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.b, %bb.k
  %.1 = phi ptr [ %.0, %bb.k ], [ @_ZN6google8protobuf8internal26fixed_address_empty_stringE, %bb.b ], [ @_ZN6google8protobuf8internal26fixed_address_empty_stringE, %bb.a ]
  ret ptr %.1
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN6google8protobuf8internal15IsMatchingCTypeEPKNS0_15FieldDescriptorEi(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 7
  %i.d = icmp eq i8 %i.c, 2
  %.0.v = zext i1 %i.d to i32
  %.0 = icmp eq i32 %1, %.0.v
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN6google8protobuf10ReflectionC2EPKNS0_10DescriptorERKNS0_8internal16ReflectionSchemaEPKNS0_14DescriptorPoolEPNS0_14MessageFactoryE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(96) initializes((0, 96)) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 align 2 {
bb.a:
  store i32 -1, ptr %0, align 8, !tbaa !198
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !199
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %1, ptr %i.b, align 8, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %4, ptr %i.c, align 8, !tbaa !148
  %i.d = icmp eq ptr %3, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_ZN6google8protobuf14DescriptorPool23internal_generated_poolEv()
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.f = phi ptr [ %.pre, %bb.b ], [ %1, %bb.a ]
  %i.g = phi ptr [ %i.e, %bb.b ], [ %3, %bb.a ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.g, ptr %i.h, align 8, !tbaa !200
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %2, i64 56, i1 false), !tbaa.struct !201
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.j, align 8, !tbaa !203
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !204
  %i.m = add nsw i32 %i.l, -1
  store i32 %i.m, ptr %0, align 8, !tbaa !198
  ret void
}

declare noundef ptr @_ZN6google8protobuf14DescriptorPool23internal_generated_poolEv() local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6google8protobuf10ReflectionD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(96) dereferenceable(96) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !203
  tail call void @_ZdlPv(ptr noundef %i.b) #35
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6google8protobuf10Reflection16GetUnknownFieldsERKNS0_7MessageE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit, !prof !38

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i64 %i.b, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit

_ZNK6google8protobuf8internal16InternalMetadata14unknown_fieldsINS0_15UnknownFieldSetEEERKT_PFS7_vE.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.f, %bb.b ], [ @_ZZN6google8protobuf15UnknownFieldSet16default_instanceEvE8instance, %bb.a ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK6google8protobuf10Reflection20MutableUnknownFieldsEPNS0_7MessageE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(96) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !36   ; 2 uses
  %i.c = trunc i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.d = add nsw i64 %i.b, -1
  %i.e = inttoptr i64 %i.d to ptr
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINS0_15UnknownFieldSetEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit

_ZN6google8protobuf8internal16InternalMetadata22mutable_unknown_fieldsINS0_15UnknownFieldSetEEEPT_v.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.f, %bb.b ], [ %i.g, %bb.c ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK6google8protobuf10Reflection15IsLazyExtensionERKNS0_7MessageEPKNS0_15FieldDescriptorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.b = load i8, ptr %i.a, align 1
  %i.c = and i8 %i.b, 8
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.e = load i32, ptr %i.d, align 4, !tbaa !35
  %i.f = zext i32 %i.e to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !42
  %i.j = tail call noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet7HasLazyEi(ptr noundef nonnull align 8 dereferenceable(16) %i.g, i32 noundef %i.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.a ], [ %i.j, %bb.b ]
  ret i1 %i.k
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef nonnull align 8 dereferenceable(16) ptr @_ZNK6google8protobuf10Reflection15GetExtensionSetERKNS0_7MessageE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(16) %1) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load i32, ptr %i.a, align 4, !tbaa !35
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  ret ptr %i.d
}

declare noundef zeroext i1 @_ZNK6google8protobuf8internal12ExtensionSet7HasLazyEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZNK6google8protobuf10Reflection25IsLazilyVerifiedLazyFieldEPKNS0_15FieldDescriptorE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #8 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZNK6google8protobuf10Reflection26IsEagerlyVerifiedLazyFieldEPKNS0_15FieldDescriptorE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #8 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i16 @_ZNK6google8protobuf10Reflection12GetLazyStyleEPKNS0_15FieldDescriptorE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(96) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #8 align 2 {
bb.a:
  ret i16 0
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6google8protobuf10Reflection13SpaceUsedLongERKNS0_7MessageE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase8FieldAuxE:bb.a
  %i.dj = load ptr, ptr %i.ag, align 8, !tbaa !549
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #35
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  store ptr %i.ar, ptr %i.g, align 8, !tbaa !567
  call void @llvm.experimental.noalias.scope.decl(metadata !569)
  call void @llvm.experimental.noalias.scope.decl(metadata !572)
  call void @llvm.experimental.noalias.scope.decl(metadata !575)
  call void @llvm.experimental.noalias.scope.decl(metadata !578)
  call void @llvm.experimental.noalias.scope.decl(metadata !581)
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE30find_or_prepare_insert_non_sooIS7_EES4_INSP_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.222") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %i.dj, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %.noexc.i unwind label %bb.ak

.noexc.i:                                         ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit.i
  %i.dk = load i8, ptr %i.h, align 8, !tbaa !584, !range !84, !alias.scope !587, !noundef !50
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.thread.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.thread.i: ; preds = %.noexc.i
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !587 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 16, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.dn = load i64, ptr %i.g, align 8, !tbaa !551, !noalias !592
  store i64 %i.dn, ptr %i.dm, align 8, !tbaa !551
  br label %bb.ag

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.i: ; preds = %.noexc.i
  %.pr45.i = load ptr, ptr %i.g, align 8, !tbaa !551 ; 3 uses
  %.not.i.i23.i = icmp eq ptr %.pr45.i, null
  br i1 %.not.i.i23.i, label %bb.ag, label %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoBaseEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoBaseEEclEPS3_.exit.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.i
  %i.do = load ptr, ptr %.pr45.i, align 8, !tbaa !149
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.pr45.i) #35, !inline_history !593
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoBaseEEclEPS3_.exit.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !551
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %"_ZN6google8protobuf14DescriptorPool17MemoizeProjectionINS0_14EnumDescriptorEZNKS0_10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS5_16TcParseTableBase8FieldAuxEE3$_0EERKDaPKT_T0_.exit" unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #37
  unreachable

bb.ai:                                            ; preds = %bb.n
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #37
  unreachable

.body.i:                                          ; preds = %.thread, %.thread.i.i.i, %bb.ae
  %.pn13.i.i.i88 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.thread ], [ %.pn13.i.i.i, %.thread.i.i.i ], [ %.pn13.i.i.i, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  br label %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoDataISt6vectorIjSaIjEEEEEclEPS7_.exit.i30.i

bb.aj:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoDataISt6vectorIjSaIjEEEEEclEPS7_.exit.i30.i

bb.ak:                                            ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit.i
  %i.dz = landingpad { ptr, i32 }
          cleanup
  %i.ea = load ptr, ptr %i.g, align 8, !tbaa !551 ; 3 uses
  %.not.i.i25.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i25.i, label %_ZNSt4pairIS_IPKvS1_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteIS7_EEED2Ev.exit27.i, label %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoBaseEEclEPS3_.exit.i.i26.i

_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoBaseEEclEPS3_.exit.i.i26.i: ; preds = %bb.ak
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !149
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ea) #35, !inline_history !593
  br label %_ZNSt4pairIS_IPKvS1_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteIS7_EEED2Ev.exit27.i

_ZNSt4pairIS_IPKvS1_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteIS7_EEED2Ev.exit27.i: ; preds = %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoBaseEEclEPS3_.exit.i.i26.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit24.i unwind label %bb.al

bb.al:                                            ; preds = %_ZNSt4pairIS_IPKvS1_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteIS7_EEED2Ev.exit27.i
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #37
  unreachable

_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoDataISt6vectorIjSaIjEEEEEclEPS7_.exit.i30.i: ; preds = %bb.aj, %.body.i
  %.pn17.pn.pn.ph.i = phi { ptr, i32 } [ %i.dy, %bb.aj ], [ %.pn13.i.i.i88, %.body.i ]
  %i.eg = load ptr, ptr %i.ar, align 8, !tbaa !149
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(32) %i.ar) #35, !inline_history !594
  br label %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit24.i

_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit24.i: ; preds = %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoDataISt6vectorIjSaIjEEEEEclEPS7_.exit.i30.i, %_ZNSt4pairIS_IPKvS1_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteIS7_EEED2Ev.exit27.i, %bb.n
  %.pn17.pn.pn.pn.i = phi { ptr, i32 } [ %i.ao, %bb.n ], [ %.pn17.pn.pn.ph.i, %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoDataISt6vectorIjSaIjEEEEEclEPS7_.exit.i30.i ], [ %i.dz, %_ZNSt4pairIS_IPKvS1_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteIS7_EEED2Ev.exit27.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  resume { ptr, i32 } %.pn17.pn.pn.pn.i

"_ZN6google8protobuf14DescriptorPool17MemoizeProjectionINS0_14EnumDescriptorEZNKS0_10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS5_16TcParseTableBase8FieldAuxEE3$_0EERKDaPKT_T0_.exit": ; preds = %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit.i, %bb.ag
  %.115.i = phi ptr [ %.014.i, %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit.i ], [ %i.dt, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #35
  %i.ej = load ptr, ptr %.115.i, align 8, !tbaa !564
  %i.ek = getelementptr inbounds nuw i8, ptr %.053, i64 8
  store ptr %i.ej, ptr %.053, align 8, !tbaa !31
  br label %bb.an

bb.am:                                            ; preds = %bb.b
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.025.052, i64 8
  %i.em = load i32, ptr %i.el, align 8, !tbaa !31
  %i.en = getelementptr inbounds nuw i8, ptr %.053, i64 8
  store i32 %i.em, ptr %.053, align 8, !tbaa !31
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %"_ZN6google8protobuf14DescriptorPool17MemoizeProjectionINS0_14EnumDescriptorEZNKS0_10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS5_16TcParseTableBase8FieldAuxEE3$_0EERKDaPKT_T0_.exit", %bb.j, %bb.i, %bb.h, %bb.e, %bb.d, %bb.c, %bb.b
  %.1 = phi ptr [ %.053, %bb.b ], [ %i.l, %bb.c ], [ %i.n, %bb.d ], [ %i.p, %bb.e ], [ %i.r, %bb.h ], [ %i.v, %bb.i ], [ %i.x, %bb.j ], [ %i.ek, %"_ZN6google8protobuf14DescriptorPool17MemoizeProjectionINS0_14EnumDescriptorEZNKS0_10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS5_16TcParseTableBase8FieldAuxEE3$_0EERKDaPKT_T0_.exit" ], [ %i.en, %bb.am ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.025.052, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.eo, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZNK6google8protobuf10Reflection18CreateTcParseTableEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(96) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.5.i.i28.i.i.i = alloca { i32, float, i16, i8, i8, i8, i8, i8 }, align 8 ; 4 uses
  %1 = alloca %"struct.google::protobuf::internal::TailCallTableInfo::FieldOptions", align 8 ; 4 uses
  %.sroa.5.i.i12.i.i.i = alloca { i32, float, i16, i8, i8, i8, i8, i8 }, align 8 ; 4 uses
  %.sroa.5.i.i.i.i.i = alloca { i32, float, i16, i8, i8, i8, i8, i8 }, align 8 ; 4 uses
  %2 = alloca %"struct.google::protobuf::internal::TailCallTableInfo::FieldOptions", align 8 ; 4 uses
  %3 = alloca %"struct.google::protobuf::internal::TailCallTableInfo", align 8 ; 20 uses
  %4 = alloca %"struct.google::protobuf::internal::TailCallTableInfo::MessageOptions", align 1 ; 6 uses
  %5 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 6 uses
  %6 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !204  ; 3 uses
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = icmp slt i32 %i.d, 0
  br i1 %i.f, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.135) #40
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %"._crit_edge._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit_crit_edge", label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE7reserveEm.exit

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE7reserveEm.exit: ; preds = %bb.b
  %i.g = mul nuw nsw i64 %i.e, 24
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #38 ; 5 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.e ; 2 uses
  %.pre = load i32, ptr %i.c, align 8, !tbaa !204
  %i.j = icmp sgt i32 %.pre, 0
  br i1 %i.j, label %.lr.ph, label %"._crit_edge._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit_crit_edge"

.lr.ph:                                           ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE7reserveEm.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 76
  br label %bb.p

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE9push_backEOS4_.exit
  %.not.i.i = icmp eq ptr %.sroa.0155.3, %.sroa.15.2
  br i1 %.not.i.i, label %"._crit_edge._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit_crit_edge", label %bb.c

"._crit_edge._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit_crit_edge": ; preds = %bb.b, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE7reserveEm.exit, %._crit_edge
  %.sroa.0155.0.lcssa281 = phi ptr [ %.sroa.0155.3, %._crit_edge ], [ %i.h, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE7reserveEm.exit ], [ null, %bb.b ] ; 2 uses
  %.sroa.15.0.lcssa278 = phi ptr [ %.sroa.15.2, %._crit_edge ], [ %i.h, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE7reserveEm.exit ], [ null, %bb.b ] ; 2 uses
  %.sroa.27.0.lcssa275 = phi ptr [ %.sroa.27.3, %._crit_edge ], [ %i.i, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE7reserveEm.exit ], [ null, %bb.b ]
  %.pre229 = ptrtoint ptr %.sroa.15.0.lcssa278 to i64
  %.pre230 = ptrtoint ptr %.sroa.0155.0.lcssa281 to i64 ; 2 uses
  %.pre232 = sub i64 %.pre229, %.pre230
  %.pre234 = sdiv exact i64 %.pre232, 24
  br label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit"

bb.c:                                             ; preds = %._crit_edge
  %i.o = ptrtoint ptr %.sroa.15.2 to i64
  %i.p = ptrtoint ptr %.sroa.0155.3 to i64        ; 6 uses
  %i.q = sub i64 %i.o, %i.p                       ; 2 uses
  %i.r = sdiv exact i64 %i.q, 24                  ; 5 uses
  %i.s = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 true)
  %i.t = shl nuw nsw i64 %i.s, 1
  %i.u = xor i64 %i.t, 126
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEElNS0_5__ops15_Iter_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_SH_T0_T1_"(ptr %.sroa.0155.3, ptr nonnull %.sroa.15.2, i64 noundef %i.u)
  %i.v = icmp sgt i64 %i.q, 384
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.0155.3, i64 24 ; 3 uses
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %bb.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.h
  %.sroa.0.020.i.idx.i.i.i = phi i64 [ %.sroa.0.020.i.add.i.i.i, %bb.h ], [ 24, %bb.c ] ; 4 uses
  %.pn19.i.i.i.i = phi ptr [ %.sroa.0.020.i.ptr.i.i.i, %bb.h ], [ %.sroa.0155.3, %bb.c ] ; 4 uses
  %.sroa.0.020.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0155.3, i64 %.sroa.0.020.i.idx.i.i.i ; 5 uses
  %.val.i.i.i.i.i = load ptr, ptr %.sroa.0.020.i.ptr.i.i.i, align 8, !tbaa !595 ; 2 uses
  %.val1.i.i.i.i.i = load ptr, ptr %.sroa.0155.3, align 8, !tbaa !595
  %i.w = getelementptr i8, ptr %.val.i.i.i.i.i, i64 4 ; 2 uses
  %.val.val.i.i.i.i.i = load i32, ptr %i.w, align 4, !tbaa !42 ; 2 uses
  %i.x = getelementptr i8, ptr %.val1.i.i.i.i.i, i64 4
  %.val1.val.i.i.i.i.i = load i32, ptr %i.x, align 4, !tbaa !42
  %i.y = icmp slt i32 %.val.val.i.i.i.i.i, %.val1.val.i.i.i.i.i
  br i1 %i.y, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.020.i.ptr.i.i.i, i64 24, i1 false), !tbaa.struct !598
  %i.z = icmp samesign ugt i64 %.sroa.0.020.i.idx.i.i.i, 24
  br i1 %i.z, label %bb.e, label %bb.f, !prof !7

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0155.3, i64 %.sroa.0.020.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0155.3, i64 24, i1 false), !tbaa.struct !598
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0155.3, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !598
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !600
  %.val2.i11.i.i.i.i.i = load ptr, ptr %.pn19.i.i.i.i, align 8, !tbaa !595
  %i.ab = getelementptr i8, ptr %.val2.i11.i.i.i.i.i, i64 4
  %.val2.val.i12.i.i.i.i.i = load i32, ptr %i.ab, align 4, !tbaa !42
  %i.ac = icmp slt i32 %.val.val.i.i.i.i.i, %.val2.val.i12.i.i.i.i.i
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.sroa.0.014.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.pn19.i.i.i.i, %bb.g ] ; 4 uses
  %.sroa.06.013.i.i.i.i.i = phi ptr [ %.sroa.0.014.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.020.i.ptr.i.i.i, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.013.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.014.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !598
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.014.i.i.i.i.i, i64 -24 ; 2 uses
  %.val.val.i8.i.i.i.i = load i32, ptr %i.w, align 4, !tbaa !42
  %.val2.i.i.i.i.i.i = load ptr, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !595
  %i.ad = getelementptr i8, ptr %.val2.i.i.i.i.i.i, i64 4
  %.val2.val.i.i.i.i.i.i = load i32, ptr %i.ad, align 4, !tbaa !42
  %i.ae = icmp slt i32 %.val.val.i8.i.i.i.i, %.val2.val.i.i.i.i.i.i
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i.i.i.i", !llvm.loop !601

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i, %bb.g
  %.sroa.06.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.020.i.ptr.i.i.i, %bb.g ], [ %.sroa.0.014.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  store ptr %.val.i.i.i.i.i, ptr %.sroa.06.0.lcssa.i.i.i.i.i, align 8, !tbaa !33
  %.sroa.5.0..sroa_idx5.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx5.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !600
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  br label %bb.h

bb.h:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i
  %.sroa.0.020.i.add.i.i.i = add nuw nsw i64 %.sroa.0.020.i.idx.i.i.i, 24 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.020.i.add.i.i.i, 384
  br i1 %.not.i.i.i.i, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_SH_T0_.exit.i.i.i", label %.lr.ph.i.i.i.i, !llvm.loop !602

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_SH_T0_.exit.i.i.i": ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0155.3, i64 384 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.af, %.sroa.15.2
  br i1 %.not6.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit", label %.lr.ph.i13.i.i.i

.lr.ph.i13.i.i.i:                                 ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_SH_T0_.exit.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i17.i.i.i"
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.al, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i17.i.i.i" ], [ %i.af, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_SH_T0_.exit.i.i.i" ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i12.i.i.i)
  %.sroa.03.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.0.07.i.i.i.i, align 8, !tbaa !33 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i14.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i12.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i14.i.i.i, i64 16, i1 false), !tbaa.struct !600
  %i.ag = getelementptr i8, ptr %.sroa.03.0.copyload.i.i.i.i.i, i64 4 ; 2 uses
  %.sroa.0.09.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i.i, i64 -24 ; 2 uses
  %.val.val10.i.i.i.i.i = load i32, ptr %i.ag, align 4, !tbaa !42
  %.val2.i11.i.i15.i.i.i = load ptr, ptr %.sroa.0.09.i.i.i.i.i, align 8, !tbaa !595
  %i.ah = getelementptr i8, ptr %.val2.i11.i.i15.i.i.i, i64 4
  %.val2.val.i12.i.i16.i.i.i = load i32, ptr %i.ah, align 4, !tbaa !42
  %i.ai = icmp slt i32 %.val.val10.i.i.i.i.i, %.val2.val.i12.i.i16.i.i.i
  br i1 %i.ai, label %.lr.ph.i.i21.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i17.i.i.i"

.lr.ph.i.i21.i.i.i:                               ; preds = %.lr.ph.i13.i.i.i, %.lr.ph.i.i21.i.i.i
  %.sroa.0.014.i.i22.i.i.i = phi ptr [ %.sroa.0.0.i.i24.i.i.i, %.lr.ph.i.i21.i.i.i ], [ %.sroa.0.09.i.i.i.i.i, %.lr.ph.i13.i.i.i ] ; 4 uses
  %.sroa.06.013.i.i23.i.i.i = phi ptr [ %.sroa.0.014.i.i22.i.i.i, %.lr.ph.i.i21.i.i.i ], [ %.sroa.0.07.i.i.i.i, %.lr.ph.i13.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.013.i.i23.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.014.i.i22.i.i.i, i64 24, i1 false), !tbaa.struct !598
  %.sroa.0.0.i.i24.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.014.i.i22.i.i.i, i64 -24 ; 2 uses
  %.val.val.i.i25.i.i.i = load i32, ptr %i.ag, align 4, !tbaa !42
  %.val2.i.i.i26.i.i.i = load ptr, ptr %.sroa.0.0.i.i24.i.i.i, align 8, !tbaa !595
  %i.aj = getelementptr i8, ptr %.val2.i.i.i26.i.i.i, i64 4
  %.val2.val.i.i.i27.i.i.i = load i32, ptr %i.aj, align 4, !tbaa !42
  %i.ak = icmp slt i32 %.val.val.i.i25.i.i.i, %.val2.val.i.i.i27.i.i.i
  br i1 %i.ak, label %.lr.ph.i.i21.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i17.i.i.i", !llvm.loop !601

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i17.i.i.i": ; preds = %.lr.ph.i.i21.i.i.i, %.lr.ph.i13.i.i.i
  %.sroa.06.0.lcssa.i.i18.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i, %.lr.ph.i13.i.i.i ], [ %.sroa.0.014.i.i22.i.i.i, %.lr.ph.i.i21.i.i.i ] ; 2 uses
  store ptr %.sroa.03.0.copyload.i.i.i.i.i, ptr %.sroa.06.0.lcssa.i.i18.i.i.i, align 8, !tbaa !33
  %.sroa.5.0..sroa_idx5.i.i19.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i18.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx5.i.i19.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i12.i.i.i, i64 16, i1 false), !tbaa.struct !600
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i12.i.i.i)
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 24
  %.not.i20.i.i.i = icmp eq ptr %.sroa.0.07.i.i.i.i, %.pn
  br i1 %.not.i20.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit", label %.lr.ph.i13.i.i.i, !llvm.loop !603

bb.i:                                             ; preds = %bb.c
  %.not18.i31.i.i.i = icmp eq ptr %.sroa.0155.3, %.pn
  br i1 %.not18.i31.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit", label %.lr.ph.i32.i.i.i

.lr.ph.i32.i.i.i:                                 ; preds = %bb.i, %bb.o
  %.sroa.0.020.i33.i.i.i = phi ptr [ %.sroa.0.0.i45.i.i.i, %bb.o ], [ %scevgep.i.i.i, %bb.i ] ; 8 uses
  %.pn19.i34.i.i.i = phi ptr [ %.sroa.0.020.i33.i.i.i, %bb.o ], [ %.sroa.0155.3, %bb.i ] ; 4 uses
  %.val.i.i35.i.i.i = load ptr, ptr %.sroa.0.020.i33.i.i.i, align 8, !tbaa !595 ; 2 uses
  %.val1.i.i36.i.i.i = load ptr, ptr %.sroa.0155.3, align 8, !tbaa !595
  %i.am = getelementptr i8, ptr %.val.i.i35.i.i.i, i64 4 ; 2 uses
  %.val.val.i.i37.i.i.i = load i32, ptr %i.am, align 4, !tbaa !42 ; 2 uses
  %i.an = getelementptr i8, ptr %.val1.i.i36.i.i.i, i64 4
  %.val1.val.i.i38.i.i.i = load i32, ptr %i.an, align 4, !tbaa !42
  %i.ao = icmp slt i32 %.val.val.i.i37.i.i.i, %.val1.val.i.i38.i.i.i
  br i1 %i.ao, label %bb.j, label %bb.n

bb.j:                                             ; preds = %.lr.ph.i32.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.020.i33.i.i.i, i64 24, i1 false), !tbaa.struct !598
  %i.ap = ptrtoint ptr %.sroa.0.020.i33.i.i.i to i64
  %i.aq = sub i64 %i.ap, %i.p                     ; 3 uses
  %i.ar = icmp sgt i64 %i.aq, 24
  br i1 %i.ar, label %bb.k, label %bb.l, !prof !7

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0155.3, i64 %i.aq, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i54.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.as = icmp eq i64 %i.aq, 24
  br i1 %i.as, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i54.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %.pn19.i34.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0155.3, i64 24, i1 false), !tbaa.struct !598
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i54.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i54.i.i.i: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0155.3, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !598
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph.i32.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i28.i.i.i)
  %.sroa.5.0..sroa_idx.i.i39.i.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i34.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i28.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i39.i.i.i, i64 16, i1 false), !tbaa.struct !600
  %.val2.i11.i.i40.i.i.i = load ptr, ptr %.pn19.i34.i.i.i, align 8, !tbaa !595
  %i.au = getelementptr i8, ptr %.val2.i11.i.i40.i.i.i, i64 4
  %.val2.val.i12.i.i41.i.i.i = load i32, ptr %i.au, align 4, !tbaa !42
  %i.av = icmp slt i32 %.val.val.i.i37.i.i.i, %.val2.val.i12.i.i41.i.i.i
  br i1 %i.av, label %.lr.ph.i.i47.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i42.i.i.i"

.lr.ph.i.i47.i.i.i:                               ; preds = %bb.n, %.lr.ph.i.i47.i.i.i
  %.sroa.0.014.i.i48.i.i.i = phi ptr [ %.sroa.0.0.i.i50.i.i.i, %.lr.ph.i.i47.i.i.i ], [ %.pn19.i34.i.i.i, %bb.n ] ; 4 uses
  %.sroa.06.013.i.i49.i.i.i = phi ptr [ %.sroa.0.014.i.i48.i.i.i, %.lr.ph.i.i47.i.i.i ], [ %.sroa.0.020.i33.i.i.i, %bb.n ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.013.i.i49.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.014.i.i48.i.i.i, i64 24, i1 false), !tbaa.struct !598
  %.sroa.0.0.i.i50.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.014.i.i48.i.i.i, i64 -24 ; 2 uses
  %.val.val.i8.i51.i.i.i = load i32, ptr %i.am, align 4, !tbaa !42
  %.val2.i.i.i52.i.i.i = load ptr, ptr %.sroa.0.0.i.i50.i.i.i, align 8, !tbaa !595
  %i.aw = getelementptr i8, ptr %.val2.i.i.i52.i.i.i, i64 4
  %.val2.val.i.i.i53.i.i.i = load i32, ptr %i.aw, align 4, !tbaa !42
  %i.ax = icmp slt i32 %.val.val.i8.i51.i.i.i, %.val2.val.i.i.i53.i.i.i
  br i1 %i.ax, label %.lr.ph.i.i47.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i42.i.i.i", !llvm.loop !601

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i42.i.i.i": ; preds = %.lr.ph.i.i47.i.i.i, %bb.n
  %.sroa.06.0.lcssa.i.i43.i.i.i = phi ptr [ %.sroa.0.020.i33.i.i.i, %bb.n ], [ %.sroa.0.014.i.i48.i.i.i, %.lr.ph.i.i47.i.i.i ] ; 2 uses
  store ptr %.val.i.i35.i.i.i, ptr %.sroa.06.0.lcssa.i.i43.i.i.i, align 8, !tbaa !33
  %.sroa.5.0..sroa_idx5.i.i44.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i43.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx5.i.i44.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i28.i.i.i, i64 16, i1 false), !tbaa.struct !600
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i28.i.i.i)
  br label %bb.o

bb.o:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i42.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i54.i.i.i
  %.sroa.0.0.i45.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i33.i.i.i, i64 24
  %.not.i46.i.i.i = icmp eq ptr %.sroa.0.020.i33.i.i.i, %.pn
  br i1 %.not.i46.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit", label %.lr.ph.i32.i.i.i, !llvm.loop !602

bb.p:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE9push_backEOS4_.exit
  %.pre222226 = phi ptr [ %i.b, %.lr.ph ], [ %.pre222227, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE9push_backEOS4_.exit ] ; 2 uses
  %i.ay = phi ptr [ %i.b, %.lr.ph ], [ %i.eu, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE9push_backEOS4_.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE9push_backEOS4_.exit ] ; 2 uses
  %.sroa.0155.0211 = phi ptr [ %i.h, %.lr.ph ], [ %.sroa.0155.3, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE9push_backEOS4_.exit ] ; 7 uses
  %.sroa.15.0210 = phi ptr [ %i.h, %.lr.ph ], [ %.sroa.15.2, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE9push_backEOS4_.exit ] ; 14 uses
  %.sroa.27.0209 = phi ptr [ %i.i, %.lr.ph ], [ %.sroa.27.3, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE9push_backEOS4_.exit ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !206
  %i.bb = getelementptr inbounds nuw [88 x i8], ptr %i.ba, i64 %indvars.iv ; 20 uses
  %i.bc = load ptr, ptr %i.k, align 8, !tbaa !100 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = and i8 %i.be, 8
  %.not.i.i.i = icmp eq i8 %i.bf, 0               ; 4 uses
  br i1 %.not.i.i.i, label %bb.q, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !101
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i: ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not1.i.i.i, label %bb.r, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 104
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i

bb.r:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !102
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 136
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i

_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i: ; preds = %bb.r, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i, %bb.q
  %.sink7.in.i.i.i = phi ptr [ %i.bo, %bb.r ], [ %i.bl, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i ], [ %i.bi, %bb.q ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %i.bq = load i8, ptr %i.bp, align 2, !tbaa !96  ; 2 uses
  switch i8 %i.bq, label %_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit [
    i8 12, label %bb.s
    i8 9, label %bb.s
  ]

bb.s:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i, %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i
  %i.br = ptrtoint ptr %i.bb to i64
  %.sink7.i.i.i = load ptr, ptr %.sink7.in.i.i.i, align 8, !tbaa !33
  %i.bs = ptrtoint ptr %.sink7.i.i.i to i64
  %i.bt = sub i64 %i.br, %i.bs
  %.0.in.i.i.i = sdiv exact i64 %i.bt, 88
  %sext.i.i = shl i64 %.0.in.i.i.i, 32
  %i.bu = ashr exact i64 %sext.i.i, 30
  %i.bv = getelementptr inbounds i8, ptr %i.bc, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !3
  %i.bx = trunc i32 %i.bw to i8
  %i.by = and i8 %i.bx, 1
  br label %_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.s, %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i
  %.0.i3.i.i = phi i8 [ %i.by, %bb.s ], [ 0, %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i ] ; 2 uses
  %i.bz = load i32, ptr %i.l, align 8, !tbaa !146
  %i.ca = icmp eq i32 %i.bz, -1
  br i1 %i.ca, label %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit, label %bb.t

bb.t:                                             ; preds = %_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit
  %i.cb = load ptr, ptr %i.m, align 8, !tbaa !147
  br i1 %.not.i.i.i, label %bb.u, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i

bb.u:                                             ; preds = %bb.t
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !101
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i: ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i = icmp eq ptr %i.cg, null
  br i1 %.not1.i.i, label %bb.v, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 104
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i

bb.v:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !102
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 136
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i

_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i: ; preds = %bb.v, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i, %bb.u
  %.sink7.in.i.i = phi ptr [ %i.ck, %bb.v ], [ %i.ch, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i ], [ %i.ce, %bb.u ]
  %.sink7.i.i = load ptr, ptr %.sink7.in.i.i, align 8, !tbaa !33
  %i.cl = ptrtoint ptr %i.bb to i64
  %i.cm = ptrtoint ptr %.sink7.i.i to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %.0.in.i.i = sdiv exact i64 %i.cn, 88
  %sext.i = shl i64 %.0.in.i.i, 32
  %i.co = ashr exact i64 %sext.i, 30
  %i.cp = getelementptr inbounds i8, ptr %i.cb, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !3
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit: ; preds = %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i, %_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit
  %.0.i = phi i32 [ %i.cq, %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i ], [ -1, %_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit ] ; 2 uses
  %i.cr = load i32, ptr %i.n, align 4, !tbaa !99
  %.not.i = icmp eq i32 %i.cr, -1
  br i1 %.not.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit
  br i1 %.not.i.i.i, label %bb.x, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i68

bb.x:                                             ; preds = %bb.w
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !101
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 64
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i71

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i68: ; preds = %bb.w
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !31 ; 2 uses
  %.not1.i.i69 = icmp eq ptr %i.cw, null
  br i1 %.not1.i.i69, label %bb.y, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i70

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i70: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i68
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 104
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i71

bb.y:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i68
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !102
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 136
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i71

_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i71: ; preds = %bb.y, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i70, %bb.x
  %.sink7.in.i.i72 = phi ptr [ %i.da, %bb.y ], [ %i.cx, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i70 ], [ %i.cu, %bb.x ]
  %.sink7.i.i73 = load ptr, ptr %.sink7.in.i.i72, align 8, !tbaa !33
  %i.db = ptrtoint ptr %i.bb to i64
  %i.dc = ptrtoint ptr %.sink7.i.i73 to i64
  %i.dd = sub i64 %i.db, %i.dc
  %.0.in.i.i74 = sdiv exact i64 %i.dd, 88
  %sext.i75 = shl i64 %.0.in.i.i74, 32
  %i.de = ashr exact i64 %sext.i75, 30
  %i.df = getelementptr inbounds i8, ptr %i.bc, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !3
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf23AssignDescriptorsHelper23AssignMessageDescriptorEPKNS0_10DescriptorE:bb.a
  %i.ds = sub nsw i64 %indvars.iv36.ph, %wide.trip.count
  %i.dt = icmp ugt i64 %i.ds, -4
  br i1 %i.dt, label %._crit_edge34, label %scalar.ph

._crit_edge34:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa = phi ptr [ %i.dj, %middle.block ], [ %.lcssa46.unr, %scalar.ph.prol.loopexit ], [ %i.em, %scalar.ph ]
  store ptr %.lcssa, ptr %i.dg, align 8, !tbaa !714
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge34, %bb.r
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dv = load <2 x ptr>, ptr %i.du, align 8, !tbaa !94
  %i.dw = getelementptr inbounds nuw i8, <2 x ptr> %i.dv, i64 8
  store <2 x ptr> %i.dw, ptr %i.du, align 8, !tbaa !94
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv36 = phi i64 [ %indvars.iv.next37.3, %scalar.ph ], [ %indvars.iv36.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.dx = phi ptr [ %i.em, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.dy = load ptr, ptr %i.df, align 8, !tbaa !789
  %i.dz = getelementptr inbounds nuw [88 x i8], ptr %i.dy, i64 %indvars.iv36
  store ptr %i.dz, ptr %i.dx, align 8, !tbaa !722
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.eb = load ptr, ptr %i.df, align 8, !tbaa !789
  %i.ec = getelementptr inbounds nuw [88 x i8], ptr %i.eb, i64 %indvars.iv36
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 88
  store ptr %i.ed, ptr %i.ea, align 8, !tbaa !722
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.ef = load ptr, ptr %i.df, align 8, !tbaa !789
  %i.eg = getelementptr inbounds nuw [88 x i8], ptr %i.ef, i64 %indvars.iv36
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 176
  store ptr %i.eh, ptr %i.ee, align 8, !tbaa !722
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.ej = load ptr, ptr %i.df, align 8, !tbaa !789
  %i.ek = getelementptr inbounds nuw [88 x i8], ptr %i.ej, i64 %indvars.iv36
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 264
  store ptr %i.el, ptr %i.ei, align 8, !tbaa !722
  %i.em = getelementptr inbounds nuw i8, ptr %i.dx, i64 32 ; 2 uses
  %indvars.iv.next37.3 = add nuw nsw i64 %indvars.iv36, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next37.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge34, label %scalar.ph, !llvm.loop !797
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN4absl12lts_2025051213base_internal12CallOnceImplIRFvPKN6google8protobuf8internal15DescriptorTableEbEJRKS8_bEEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = cmpxchg ptr %0, i32 0, i32 1707250555 monotonic monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit: ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZN4absl12lts_2025051213base_internal12SpinLockWaitEPSt6atomicIjEiPKNS1_22SpinLockWaitTransitionENS1_14SchedulingModeE(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @_ZZN4absl12lts_2025051213base_internal12CallOnceImplIRFvPKN6google8protobuf8internal15DescriptorTableEbEJRKS8_bEEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_E5trans, i32 noundef %1)
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread, label %_ZN4absl12lts_2025051213base_internal12SpinLockWakeEPSt6atomicIjEb.exit

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread: ; preds = %bb.a, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit
  %i.e = load ptr, ptr %3, align 8, !tbaa !701
  %i.f = load i8, ptr %4, align 1, !tbaa !263, !range !84, !noundef !50
  %i.g = trunc nuw i8 %i.f to i1
  tail call void %2(ptr noundef %i.e, i1 noundef zeroext %i.g), !inline_history !798
  %i.h = atomicrmw xchg ptr %0, i32 221 release, align 4
  %i.i = icmp eq i32 %i.h, 94570706
  br i1 %i.i, label %bb.b, label %_ZN4absl12lts_2025051213base_internal12SpinLockWakeEPSt6atomicIjEb.exit

bb.b:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread
  tail call void @AbslInternalSpinLockWake_lts_20250512(ptr noundef nonnull %0, i1 noundef zeroext true)
  br label %_ZN4absl12lts_2025051213base_internal12SpinLockWakeEPSt6atomicIjEb.exit

_ZN4absl12lts_2025051213base_internal12SpinLockWakeEPSt6atomicIjEb.exit: ; preds = %bb.b, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit
  ret void
}

declare noundef i32 @_ZN4absl12lts_2025051213base_internal12SpinLockWaitEPSt6atomicIjEiPKNS1_22SpinLockWaitTransitionENS1_14SchedulingModeE(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @AbslInternalSpinLockWake_lts_20250512(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @_ZN6google8protobuf8internal13OnShutdownRunEPFvPKvES3_(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZZN6google8protobuf8internal16OnShutdownDeleteINS0_10ReflectionEEEPT_S5_ENUlPKvE_8__invokeES7_(ptr noundef %0) #6 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %_ZZN6google8protobuf8internal16OnShutdownDeleteINS0_10ReflectionEEEPT_S5_ENKUlPKvE_clES7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6google8protobuf10ReflectionD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) #35
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #39
  br label %_ZZN6google8protobuf8internal16OnShutdownDeleteINS0_10ReflectionEEEPT_S5_ENKUlPKvE_clES7_.exit

_ZZN6google8protobuf8internal16OnShutdownDeleteINS0_10ReflectionEEEPT_S5_ENKUlPKvE_clES7_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK6google8protobuf16MapValueConstRef4typeEv(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !505  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = load ptr, ptr %0, align 8
  %i.e = icmp eq ptr %i.d, null
  %or.cond = select i1 %i.c, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #35
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.140, i32 noundef 780) #36
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 33, ptr nonnull @.str.141)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit unwind label %bb.c

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit: ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 59, ptr nonnull @.str.147)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi60EEERS2_RAT__Kc.exit unwind label %bb.c

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi60EEERS2_RAT__Kc.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi60EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #37
  unreachable

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi60EEERS2_RAT__Kc.exit, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %1) #37
  unreachable

bb.d:                                             ; preds = %bb.a
  ret i32 %i.b
}

declare void @_ZN6google8protobuf8internal24InitProtobufDefaultsSlowEv() local_unnamed_addr #3

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #29

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #3

declare noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINS0_15UnknownFieldSetEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13ClearNonEmptyINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !258  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !235
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 1
  %i.f = icmp eq i64 %i.e, 0
  %i.g = add i64 %i.d, -1
  %i.h = inttoptr i64 %i.g to ptr
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = select i1 %i.f, ptr %0, ptr %i.i         ; 5 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.k = icmp slt i32 %i.b, 4
  br i1 %i.k, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.a
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.3, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.b ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !94   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !252
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !250
  store i8 0, ptr %i.o, align 1, !tbaa !31
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !94   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !252
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !250
  store i8 0, ptr %i.t, align 1, !tbaa !31
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !94   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !252
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !250
  store i8 0, ptr %i.y, align 1, !tbaa !31
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !94 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 0, ptr %i.ac, align 8, !tbaa !252
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !250
  store i8 0, ptr %i.ad, align 1, !tbaa !31
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.b, !llvm.loop !799

.unr-lcssa:                                       ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa, %bb.a
  %indvars.iv.epil.init = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.3, %.unr-lcssa ]
  %lcmp.mod5 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod5)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %bb.c ], [ %indvars.iv.epil.init, %.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.c ], [ 0, %.epil.preheader ]
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv.epil
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !94 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 0, ptr %i.ag, align 8, !tbaa !252
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !250
  store i8 0, ptr %i.ah, align 1, !tbaa !31
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.c, !llvm.loop !800

.epilog-lcssa:                                    ; preds = %bb.c, %.unr-lcssa
  store i32 0, ptr %i.a, align 8, !tbaa !3
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef i64 @_ZNK6google8protobuf8internal20RepeatedPtrFieldBase26SpaceUsedExcludingSelfLongINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEmv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !235    ; 2 uses
  %i.b = ptrtoint ptr %i.a to i64                 ; 3 uses
  %i.c = and i64 %i.b, 1
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ne ptr %i.a, null
  %i.e = zext i1 %.not.i to i32
  %.pre = add i64 %i.b, -1
  %.pre11 = inttoptr i64 %.pre to ptr
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit

bb.c:                                             ; preds = %bb.a
  %i.f = add nsw i64 %i.b, -1
  %i.g = inttoptr i64 %i.f to ptr                 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !238
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 3
  %i.k = add nsw i64 %i.j, 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !240
  br label %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit

_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit: ; preds = %bb.b, %bb.c
  %.pre-phi12 = phi ptr [ %.pre11, %bb.b ], [ %i.g, %bb.c ]
  %i.n = phi i64 [ 0, %bb.b ], [ %i.k, %bb.c ]    ; 2 uses
  %i.o = phi i32 [ %i.e, %bb.b ], [ %i.m, %bb.c ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.pre-phi12, i64 8
  %i.q = select i1 %i.d, ptr %0, ptr %i.p
  %i.r = icmp sgt i32 %i.o, 0
  br i1 %i.r, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit
  %wide.trip.count = zext nneg i32 %i.o to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit
  %.07.lcssa = phi i64 [ %i.n, %_ZNK6google8protobuf8internal20RepeatedPtrFieldBase14allocated_sizeEv.exit ], [ %i.w, %.lr.ph ]
  ret i64 %.07.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %.078 = phi i64 [ %i.n, %.lr.ph.preheader ], [ %i.w, %.lr.ph ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !94
  %i.u = tail call noundef i64 @_ZN6google8protobuf8internal32StringSpaceUsedExcludingSelfLongERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.t)
  %i.v = add i64 %.078, 32
  %i.w = add i64 %i.v, %i.u                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !801
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiE20SwapFallbackWithTempEPNS0_5ArenaERS2_S4_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !104
  %i.b = and i32 %i.a, 1
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !256  ; 5 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !256  ; 3 uses
  %i.h = add nsw i32 %i.g, %i.e                   ; 3 uses
  %i.i = load i32, ptr %4, align 8, !tbaa !104    ; 2 uses
  %i.j = and i32 %i.i, -2                         ; 2 uses
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sext i32 %i.j to i64
  %i.m = getelementptr inbounds i8, ptr %4, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !36   ; 3 uses
  %i.o = trunc i64 %i.n to i1
  br i1 %i.o, label %bb.d, label %bb.e, !prof !38

bb.d:                                             ; preds = %bb.c
  %i.p = add nsw i64 %i.n, -1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !39
  br label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.s = inttoptr i64 %i.n to ptr
  br label %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i

_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i: ; preds = %bb.e, %bb.d, %bb.b
  %.0.i.i.i.i.i.i = phi ptr [ null, %bb.b ], [ %i.r, %bb.d ], [ %i.s, %bb.e ]
  %i.t = and i32 %i.i, 1                          ; 2 uses
  %i.u = icmp eq i32 %i.t, 0                      ; 2 uses
  br i1 %i.u, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !31
  %i.x = load i32, ptr %i.w, align 8, !tbaa !31
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i: ; preds = %bb.f, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i
  %i.y = phi i32 [ %i.x, %bb.f ], [ 2, %_ZN6google8protobuf13RepeatedFieldIiE8GetArenaEv.exit.i.i ]
  %i.z = icmp sgt i32 %i.h, %i.y
  br i1 %i.z, label %bb.g, label %_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit.i, !prof !38

bb.g:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %.0.i.i.i.i.i.i, i1 noundef zeroext %i.u, i32 noundef %i.g, i32 noundef %i.h)
  %.pre.i = load i32, ptr %4, align 8, !tbaa !104
  %.pre14.i = load i32, ptr %i.f, align 4, !tbaa !256
  %.pre15.i = and i32 %.pre.i, 1
  br label %_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit.i

_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit.i: ; preds = %bb.g, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i
  %.pre-phi.i = phi i32 [ %i.t, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i ], [ %.pre15.i, %bb.g ]
  %i.aa = phi i32 [ %i.g, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i ], [ %.pre14.i, %bb.g ]
  %i.ab = icmp eq i32 %.pre-phi.i, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  %.0.v.i.i.i.i = select i1 %i.ab, ptr %4, ptr %i.ad
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  store i32 %i.h, ptr %i.f, align 4, !tbaa !256
  %i.ae = sext i32 %i.aa to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %.0.i.i.i.i, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8
  %.0.v.i.i.i.i.i = select i1 %i.c, ptr %0, ptr %i.ah
  %.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !802)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !805)
  %i.ai = icmp sgt i32 %i.e, 1
  br i1 %i.ai, label %bb.h, label %bb.i, !prof !7

bb.h:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit.i
  %i.aj = zext nneg i32 %i.e to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.aj, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.af, ptr nonnull align 4 %.0.i.i.i.i.i, i64 %.idx.i.i.i.i, i1 false), !alias.scope !807
  br label %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit

bb.i:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit.i
  %i.ak = icmp eq i32 %i.e, 1
  br i1 %i.ak, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit

bb.j:                                             ; preds = %bb.i
  %i.al = load i32, ptr %.0.i.i.i.i.i, align 4, !tbaa !3, !alias.scope !802, !noalias !805
  store i32 %i.al, ptr %i.af, align 4, !tbaa !3, !alias.scope !805, !noalias !802
  br label %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit: ; preds = %bb.a, %bb.h, %bb.i, %bb.j
  %i.am = icmp eq ptr %2, %0
  br i1 %i.am, label %_ZN6google8protobuf13RepeatedFieldIiE8CopyFromERKS2_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit
  store i32 0, ptr %i.d, align 4, !tbaa !256
  %i.an = load i32, ptr %2, align 8, !tbaa !104
  %i.ao = and i32 %i.an, 1
  %i.ap = icmp eq i32 %i.ao, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !256 ; 7 uses
  %.not.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf13RepeatedFieldIiE8CopyFromERKS2_.exit, label %bb.l
end_hunk_2
