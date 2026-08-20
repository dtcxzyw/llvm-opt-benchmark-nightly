inline.NumInlined: 8509
inline.NumDeleted: 3570
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 13
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
  %i.d = load i32, ptr %i.c, align 4, !tbaa !172
  store i32 %i.d, ptr %3, align 4, !tbaa !64
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
  %i.c = load atomic i8, ptr @_ZN6google8protobuf8internal28init_protobuf_defaults_stateE acquire, align 1, !range !86, !noundef !51
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZN6google8protobuf8internal14GetEmptyStringB5cxx11Ev.exit, label %bb.c, !prof !8

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN6google8protobuf8internal24InitProtobufDefaultsSlowEv()
  br label %_ZN6google8protobuf8internal14GetEmptyStringB5cxx11Ev.exit

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !178
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
  %i.g = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #39 ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.g, i8 0, i64 %i.f, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !179  ; 4 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !184  ; 3 uses
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
  %i.p = load i32, ptr %i.o, align 4, !tbaa !172
  %i.q = sub nsw i32 %i.p, %1
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.r ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !185
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.b, label %.preheader

bb.b:                                             ; preds = %.epil.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !178
  store ptr %i.w, ptr %i.s, align 8, !tbaa !185
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
  %wide.load = load <2 x ptr>, ptr %i.z, align 8, !tbaa !185 ; 2 uses
  %wide.load35 = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !185 ; 2 uses
  %i.ab = icmp eq <2 x ptr> %wide.load, splat (ptr null)
  %i.ac = icmp eq <2 x ptr> %wide.load35, splat (ptr null)
  %i.ad = select <2 x i1> %i.ab, <2 x ptr> <ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE>, <2 x ptr> %wide.load
  %i.ae = select <2 x i1> %i.ac, <2 x ptr> <ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE>, <2 x ptr> %wide.load35
  store <2 x ptr> %i.ad, ptr %i.z, align 8
  store <2 x ptr> %i.ae, ptr %i.aa, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !186

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
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !172
  %i.aj = sub nsw i32 %i.ai, %1
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !185
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !178
  store ptr %i.ap, ptr %i.al, align 8, !tbaa !185
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aq = getelementptr inbounds nuw [48 x i8], ptr %i.l, i64 %indvars.iv ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 52
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !172
  %i.at = sub nsw i32 %i.as, %1
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.au ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !185
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !178
  store ptr %i.az, ptr %i.av, align 8, !tbaa !185
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.c, !llvm.loop !190

._crit_edge:                                      ; preds = %.lr.ph28, %middle.block, %.preheader
  ret ptr %i.g

.lr.ph28:                                         ; preds = %.lr.ph28.preheader36, %.lr.ph28
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %.lr.ph28 ], [ %indvars.iv30.ph, %.lr.ph28.preheader36 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv30 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !185 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  %spec.store.select = select i1 %i.bc, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr %i.bb
  store ptr %spec.store.select, ptr %i.ba, align 8
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next31, %wide.trip.count33
  br i1 %exitcond34.not, label %._crit_edge, label %.lr.ph28, !llvm.loop !191
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: mustprogress noinline uwtable
define noundef nonnull align 8 dereferenceable(32) ptr @_ZN6google8protobuf8internal19NameOfDenseEnumSlowB5cxx11EiPNS1_18DenseEnumCacheInfoE(i32 noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !192
  %i.c = icmp slt i32 %0, %i.b
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !196
  %i.f = icmp sgt i32 %0, %i.e
  br i1 %i.f, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !197
  %i.i = tail call noundef ptr %i.h()             ; 2 uses
  %i.j = load i32, ptr %i.a, align 8, !tbaa !192  ; 4 uses
  %i.k = load i32, ptr %i.d, align 4, !tbaa !196
  %i.l = sub i32 %i.k, %i.j                       ; 3 uses
  %i.m = add i32 %i.l, 1                          ; 2 uses
  %i.n = zext i32 %i.m to i64                     ; 4 uses
  %i.o = icmp slt i32 %i.l, -1
  %i.p = shl nuw nsw i64 %i.n, 3
  %i.q = select i1 %i.o, i64 -1, i64 %i.p         ; 2 uses
  %i.r = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.q) #39 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.r, i8 0, i64 %i.q, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !179  ; 4 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !184  ; 3 uses
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
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !172
  %i.ab = sub nsw i32 %i.aa, %i.j
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.ac ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !185
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.d, label %.preheader.i

bb.d:                                             ; preds = %.epil.preheader
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !178
  store ptr %i.ah, ptr %i.ad, align 8, !tbaa !185
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
  %wide.load = load <2 x ptr>, ptr %i.ai, align 8, !tbaa !185 ; 2 uses
  %wide.load26 = load <2 x ptr>, ptr %i.aj, align 8, !tbaa !185 ; 2 uses
  %i.ak = icmp eq <2 x ptr> %wide.load, splat (ptr null)
  %i.al = icmp eq <2 x ptr> %wide.load26, splat (ptr null)
  %i.am = select <2 x i1> %i.ak, <2 x ptr> <ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE>, <2 x ptr> %wide.load
  %i.an = select <2 x i1> %i.al, <2 x ptr> <ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE>, <2 x ptr> %wide.load26
  store <2 x ptr> %i.am, ptr %i.ai, align 8
  store <2 x ptr> %i.an, ptr %i.aj, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !198

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
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !172
  %i.as = sub nsw i32 %i.ar, %i.j
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.at ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !185
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !178
  store ptr %i.ay, ptr %i.au, align 8, !tbaa !185
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.az = getelementptr inbounds nuw [48 x i8], ptr %i.w, i64 %indvars.iv.i ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 52
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !172
  %i.bc = sub nsw i32 %i.bb, %i.j
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.bd ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !185
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !178
  store ptr %i.bi, ptr %i.be, align 8, !tbaa !185
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.preheader.i.loopexit.unr-lcssa, label %bb.e, !llvm.loop !190

.lr.ph28.i:                                       ; preds = %.lr.ph28.i.preheader27, %.lr.ph28.i
  %indvars.iv30.i = phi i64 [ %indvars.iv.next31.i, %.lr.ph28.i ], [ %indvars.iv30.i.ph, %.lr.ph28.i.preheader27 ] ; 2 uses
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv30.i ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !185 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  %spec.store.select.i = select i1 %i.bl, ptr @_ZN6google8protobuf8internal26fixed_address_empty_stringE, ptr %i.bk
  store ptr %spec.store.select.i, ptr %i.bj, align 8
  %indvars.iv.next31.i = add nuw nsw i64 %indvars.iv30.i, 1 ; 2 uses
  %exitcond34.not.i = icmp eq i64 %indvars.iv.next31.i, %i.n
  br i1 %exitcond34.not.i, label %_ZN6google8protobuf8internal18MakeDenseEnumCacheB5cxx11EPKNS0_14EnumDescriptorEii.exit, label %.lr.ph28.i, !llvm.loop !199

_ZN6google8protobuf8internal18MakeDenseEnumCacheB5cxx11EPKNS0_14EnumDescriptorEii.exit: ; preds = %.lr.ph28.i, %middle.block, %.preheader.i
  %i.bm = cmpxchg ptr %1, ptr null, ptr %i.r release acquire, align 8 ; 2 uses
  %i.bn = extractvalue { ptr, i1 } %i.bm, 1
  br i1 %i.bn, label %bb.k, label %bb.j

bb.j:                                             ; preds = %_ZN6google8protobuf8internal18MakeDenseEnumCacheB5cxx11EPKNS0_14EnumDescriptorEii.exit
  %i.bo = extractvalue { ptr, i1 } %i.bm, 0
  tail call void @_ZdaPv(ptr noundef nonnull %i.r) #40
  br label %bb.k

bb.k:                                             ; preds = %_ZN6google8protobuf8internal18MakeDenseEnumCacheB5cxx11EPKNS0_14EnumDescriptorEii.exit, %bb.j
  %.sink = phi ptr [ %i.bo, %bb.j ], [ %i.r, %_ZN6google8protobuf8internal18MakeDenseEnumCacheB5cxx11EPKNS0_14EnumDescriptorEii.exit ]
  %i.bp = load i32, ptr %i.a, align 8, !tbaa !192
  %i.bq = sub nsw i32 %0, %i.bp
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %.sink, i64 %i.br
  %.0 = load ptr, ptr %i.bs, align 8, !tbaa !185
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
define noundef zeroext i1 @_ZN6google8protobuf8internal17AbslParseFlagImplESt17basic_string_viewIcSt11char_traitsIcEERiRKNS0_14EnumDescriptorERNSt7__cxx1112basic_stringIcS4_SaIcEEE(i64 %0, ptr %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2, ptr noundef nonnull align 8 dereferenceable(88) %3, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(32) %4) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca [3 x %"class.absl::lts_20250512::str_format_internal::FormatArgImpl"], align 8 ; 9 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %6 = alloca %"class.std::basic_string_view", align 8 ; 3 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %10 = alloca %"class.std::basic_string_view", align 8 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  store i64 %0, ptr %6, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %1, ptr %i.b, align 8
  %i.c = tail call noundef ptr @_ZNK6google8protobuf14EnumDescriptor15FindValueByNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(88) %3, i64 %0, ptr %1) ; 2 uses
  %.not.not = icmp eq ptr %i.c, null
  br i1 %.not.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !172
  store i32 %i.e, ptr %2, align 4, !tbaa !64
  br label %_ZNSt6vectorISt17basic_string_viewIcSt11char_traitsIcEESaIS3_EED2Ev.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 6 uses
  store ptr %i.f, ptr %7, align 8, !tbaa !200, !alias.scope !202
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.g, align 8, !tbaa !205, !alias.scope !202
  store i8 0, ptr %i.f, align 8, !tbaa !32, !alias.scope !202
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef %0, i8 noundef signext 0)
          to label %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i unwind label %bb.d

_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i: ; preds = %bb.c
  %i.h = load ptr, ptr %7, align 8, !tbaa !207, !alias.scope !202
  invoke void @_ZN4absl12lts_2025051214ascii_internal15AsciiStrToLowerEPcPKcm(ptr noundef nonnull %i.h, ptr noundef %1, i64 noundef %0)
          to label %_ZN4absl12lts_2025051215AsciiStrToLowerB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i, %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.j = load ptr, ptr %7, align 8, !tbaa !207, !alias.scope !202 ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.f
  br i1 %i.k, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.f, align 8, !tbaa !32, !alias.scope !202
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #40
  br label %common.resume

common.resume:                                    ; preds = %bb.g, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67, %bb.ae, %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.d ], [ %.pn53, %bb.ae ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56 ], [ %i.am, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit67 ], [ %.pn53, %bb.af ], [ %i.aa, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_ZN4absl12lts_2025051215AsciiStrToLowerB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i
  %i.n = load ptr, ptr %7, align 8, !tbaa !207    ; 3 uses
  %i.o = load i64, ptr %i.g, align 8, !tbaa !205  ; 2 uses
  %i.p = icmp eq i64 %i.o, %0
  br i1 %i.p, label %bb.e, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit

bb.e:                                             ; preds = %_ZN4absl12lts_2025051215AsciiStrToLowerB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.q = icmp eq i64 %0, 0
  br i1 %i.q, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.e
  %bcmp.i = call i32 @bcmp(ptr %i.n, ptr %1, i64 %0)
  %i.r = icmp eq i32 %bcmp.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i, label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.e
  br label %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit

_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit: ; preds = %_ZN4absl12lts_2025051215AsciiStrToLowerB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i
  %i.s = phi i1 [ false, %_ZN4absl12lts_2025051215AsciiStrToLowerB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit ], [ true, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i ], [ false, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i ]
  %i.t = icmp eq ptr %i.n, %i.f
  br i1 %i.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit
  %i.u = icmp ult i64 %i.o, 16
  call void @llvm.assume(i1 %i.u)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcEEbNSt15__type_identityISt17basic_string_viewIT_T0_EE4typeES6_.exit
  %i.v = load i64, ptr %i.f, align 8, !tbaa !32
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.w) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br i1 %i.s, label %bb.f, label %.thread103

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 8 uses
  store ptr %i.x, ptr %8, align 8, !tbaa !200, !alias.scope !208
  %i.y = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store i64 0, ptr %i.y, align 8, !tbaa !205, !alias.scope !208
  store i8 0, ptr %i.x, align 8, !tbaa !32, !alias.scope !208
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %0, i8 noundef signext 0)
          to label %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i59 unwind label %bb.g

_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i59: ; preds = %bb.f
  %i.z = load ptr, ptr %8, align 8, !tbaa !207, !alias.scope !208
  invoke void @_ZN4absl12lts_2025051214ascii_internal15AsciiStrToUpperEPcPKcm(ptr noundef nonnull %i.z, ptr noundef %1, i64 noundef %0)
          to label %_ZN4absl12lts_2025051215AsciiStrToUpperB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i59, %bb.f
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %8, align 8, !tbaa !207, !alias.scope !208 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.x
  br i1 %i.ac, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i56: ; preds = %bb.g
  %i.ad = load i64, ptr %i.x, align 8, !tbaa !32, !alias.scope !208
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #40
  br label %common.resume

_ZN4absl12lts_2025051215AsciiStrToUpperB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit: ; preds = %_ZN4absl12lts_2025051216strings_internal28STLStringResizeUninitializedINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEvEEvPT_m.exit.i59
  %i.af = load ptr, ptr %8, align 8, !tbaa !207
  %i.ag = load i64, ptr %i.y, align 8, !tbaa !205
  %i.ah = invoke noundef ptr @_ZNK6google8protobuf14EnumDescriptor15FindValueByNameESt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(88) %3, i64 %i.ag, ptr %i.af)
          to label %bb.h unwind label %bb.i       ; 2 uses

bb.h:                                             ; preds = %_ZN4absl12lts_2025051215AsciiStrToUpperB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.ai = load ptr, ptr %8, align 8, !tbaa !207   ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.x
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62: ; preds = %bb.h
  %i.ak = load i64, ptr %i.x, align 8, !tbaa !32
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i62
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  %.not48.not = icmp eq ptr %i.ah, null
  br i1 %.not48.not, label %.thread103, label %bb.j

bb.i:                                             ; preds = %_ZN4absl12lts_2025051215AsciiStrToUpperB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE.exit
  %i.am = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_ZNK6google8protobuf10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS2_16TcParseTableBase8FieldAuxE:bb.a
  %i.dj = load ptr, ptr %i.ag, align 8, !tbaa !590
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false)
  store ptr %i.ar, ptr %i.g, align 8, !tbaa !608
  call void @llvm.experimental.noalias.scope.decl(metadata !610)
  call void @llvm.experimental.noalias.scope.decl(metadata !613)
  call void @llvm.experimental.noalias.scope.decl(metadata !616)
  call void @llvm.experimental.noalias.scope.decl(metadata !619)
  call void @llvm.experimental.noalias.scope.decl(metadata !622)
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE30find_or_prepare_insert_non_sooIS7_EES4_INSP_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.226") align 8 %5, ptr noundef nonnull align 8 dereferenceable(32) %i.dj, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %.noexc.i unwind label %bb.ak

.noexc.i:                                         ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit.i
  %i.dk = load i8, ptr %i.h, align 8, !tbaa !625, !range !86, !alias.scope !628, !noundef !51
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.thread.i, label %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.i

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.thread.i: ; preds = %.noexc.i
  %.sroa.2.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !628 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 16, i1 false)
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i.i.i.i.i.i, i64 16
  %i.dn = load i64, ptr %i.g, align 8, !tbaa !592, !noalias !633
  store i64 %i.dn, ptr %i.dm, align 8, !tbaa !592
  br label %bb.ag

_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.i: ; preds = %.noexc.i
  %.pr45.i = load ptr, ptr %i.g, align 8, !tbaa !592 ; 3 uses
  %.not.i.i23.i = icmp eq ptr %.pr45.i, null
  br i1 %.not.i.i23.i, label %bb.ag, label %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoBaseEEclEPS3_.exit.i.i.i

_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoBaseEEclEPS3_.exit.i.i.i: ; preds = %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.i
  %i.do = load ptr, ptr %.pr45.i, align 8, !tbaa !151
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dereferenceable(8) %.pr45.i) #36, !inline_history !634
  br label %bb.ag

bb.ag:                                            ; preds = %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoBaseEEclEPS3_.exit.i.i.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.i, %_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt4pairIPKvS6_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteISC_EEEENS0_13hash_internal4HashIS7_EESt8equal_toIS7_ESaIS4_IKS7_SF_EEE6insertEOS4_IS7_SF_E.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i.i.i.i.i.i, align 8
  %i.dr = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload.i, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !592
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %"_ZN6google8protobuf14DescriptorPool17MemoizeProjectionINS0_14EnumDescriptorEZNKS0_10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS5_16TcParseTableBase8FieldAuxEE3$_0EERKDaPKT_T0_.exit" unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.du = landingpad { ptr, i32 }
          catch ptr null
  %i.dv = extractvalue { ptr, i32 } %i.du, 0
  call void @__clang_call_terminate(ptr %i.dv) #38
  unreachable

bb.ai:                                            ; preds = %bb.n
  %i.dw = landingpad { ptr, i32 }
          catch ptr null
  %i.dx = extractvalue { ptr, i32 } %i.dw, 0
  call void @__clang_call_terminate(ptr %i.dx) #38
  unreachable

.body.i:                                          ; preds = %.thread, %.thread.i.i.i, %bb.ae
  %.pn13.i.i.i88 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.thread ], [ %.pn13.i.i.i, %.thread.i.i.i ], [ %.pn13.i.i.i, %bb.ae ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  br label %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoDataISt6vectorIjSaIjEEEEEclEPS7_.exit.i30.i

bb.aj:                                            ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i
  %i.dy = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoDataISt6vectorIjSaIjEEEEEclEPS7_.exit.i30.i

bb.ak:                                            ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit.i
  %i.dz = landingpad { ptr, i32 }
          cleanup
  %i.ea = load ptr, ptr %i.g, align 8, !tbaa !592 ; 3 uses
  %.not.i.i25.i = icmp eq ptr %i.ea, null
  br i1 %.not.i.i25.i, label %_ZNSt4pairIS_IPKvS1_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteIS7_EEED2Ev.exit27.i, label %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoBaseEEclEPS3_.exit.i.i26.i

_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoBaseEEclEPS3_.exit.i.i26.i: ; preds = %bb.ak
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !151
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  %i.ed = load ptr, ptr %i.ec, align 8
  call void %i.ed(ptr noundef nonnull align 8 dereferenceable(8) %i.ea) #36, !inline_history !634
  br label %_ZNSt4pairIS_IPKvS1_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteIS7_EEED2Ev.exit27.i

_ZNSt4pairIS_IPKvS1_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteIS7_EEED2Ev.exit27.i: ; preds = %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoBaseEEclEPS3_.exit.i.i26.i, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.af)
          to label %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit24.i unwind label %bb.al

bb.al:                                            ; preds = %_ZNSt4pairIS_IPKvS1_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteIS7_EEED2Ev.exit27.i
  %i.ee = landingpad { ptr, i32 }
          catch ptr null
  %i.ef = extractvalue { ptr, i32 } %i.ee, 0
  call void @__clang_call_terminate(ptr %i.ef) #38
  unreachable

_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoDataISt6vectorIjSaIjEEEEEclEPS7_.exit.i30.i: ; preds = %bb.aj, %.body.i
  %.pn17.pn.pn.ph.i = phi { ptr, i32 } [ %i.dy, %bb.aj ], [ %.pn13.i.i.i88, %.body.i ]
  %i.eg = load ptr, ptr %i.ar, align 8, !tbaa !151
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8
  call void %i.ei(ptr noundef nonnull align 8 dereferenceable(32) %i.ar) #36, !inline_history !635
  br label %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit24.i

_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit24.i: ; preds = %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoDataISt6vectorIjSaIjEEEEEclEPS7_.exit.i30.i, %_ZNSt4pairIS_IPKvS1_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteIS7_EEED2Ev.exit27.i, %bb.n
  %.pn17.pn.pn.pn.i = phi { ptr, i32 } [ %i.ao, %bb.n ], [ %.pn17.pn.pn.ph.i, %_ZNKSt14default_deleteIN6google8protobuf14DescriptorPool8MemoDataISt6vectorIjSaIjEEEEEclEPS7_.exit.i30.i ], [ %i.dz, %_ZNSt4pairIS_IPKvS1_ESt10unique_ptrIN6google8protobuf14DescriptorPool8MemoBaseESt14default_deleteIS7_EEED2Ev.exit27.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  resume { ptr, i32 } %.pn17.pn.pn.pn.i

"_ZN6google8protobuf14DescriptorPool17MemoizeProjectionINS0_14EnumDescriptorEZNKS0_10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS5_16TcParseTableBase8FieldAuxEE3$_0EERKDaPKT_T0_.exit": ; preds = %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit.i, %bb.ag
  %.115.i = phi ptr [ %.014.i, %_ZN4absl12lts_2025051215ReaderMutexLockD2Ev.exit.i ], [ %i.dt, %bb.ag ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %i.ej = load ptr, ptr %.115.i, align 8, !tbaa !605
  %i.ek = getelementptr inbounds nuw i8, ptr %.053, i64 8
  store ptr %i.ej, ptr %.053, align 8, !tbaa !32
  br label %bb.an

bb.am:                                            ; preds = %bb.b
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.025.052, i64 8
  %i.em = load i32, ptr %i.el, align 8, !tbaa !32
  %i.en = getelementptr inbounds nuw i8, ptr %.053, i64 8
  store i32 %i.em, ptr %.053, align 8, !tbaa !32
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %"_ZN6google8protobuf14DescriptorPool17MemoizeProjectionINS0_14EnumDescriptorEZNKS0_10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS5_16TcParseTableBase8FieldAuxEE3$_0EERKDaPKT_T0_.exit", %bb.j, %bb.i, %bb.h, %bb.e, %bb.d, %bb.c, %bb.b
  %.1 = phi ptr [ %.053, %bb.b ], [ %i.l, %bb.c ], [ %i.n, %bb.d ], [ %i.p, %bb.e ], [ %i.r, %bb.h ], [ %i.v, %bb.i ], [ %i.x, %bb.j ], [ %i.ek, %"_ZN6google8protobuf14DescriptorPool17MemoizeProjectionINS0_14EnumDescriptorEZNKS0_10Reflection23PopulateTcParseFieldAuxERKNS0_8internal17TailCallTableInfoEPNS5_16TcParseTableBase8FieldAuxEE3$_0EERKDaPKT_T0_.exit" ], [ %i.en, %bb.am ]
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.025.052, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.eo, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZNK6google8protobuf10Reflection18CreateTcParseTableEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !252  ; 3 uses
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = icmp slt i32 %i.d, 0
  br i1 %i.f, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.139) #41
  unreachable

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %"._crit_edge._ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit_crit_edge", label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE7reserveEm.exit

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE7reserveEm.exit: ; preds = %bb.b
  %i.g = mul nuw nsw i64 %i.e, 24
  %i.h = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #39 ; 5 uses
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %i.e ; 2 uses
  %.pre = load i32, ptr %i.c, align 8, !tbaa !252
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
  %scevgep.i.i.i = getelementptr i8, ptr %.sroa.0155.3, i64 24 ; 2 uses
  br i1 %i.v, label %.lr.ph.i.i.i.i, label %bb.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c, %bb.h
  %.sroa.0.020.i.idx.i.i.i = phi i64 [ %.sroa.0.020.i.add.i.i.i, %bb.h ], [ 24, %bb.c ] ; 4 uses
  %.pn19.i.i.i.i = phi ptr [ %.sroa.0.020.i.ptr.i.i.i, %bb.h ], [ %.sroa.0155.3, %bb.c ] ; 4 uses
  %.sroa.0.020.i.ptr.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0155.3, i64 %.sroa.0.020.i.idx.i.i.i ; 5 uses
  %.val.i.i.i.i.i = load ptr, ptr %.sroa.0.020.i.ptr.i.i.i, align 8, !tbaa !636 ; 2 uses
  %.val1.i.i.i.i.i = load ptr, ptr %.sroa.0155.3, align 8, !tbaa !636
  %i.w = getelementptr i8, ptr %.val.i.i.i.i.i, i64 4 ; 2 uses
  %.val.val.i.i.i.i.i = load i32, ptr %i.w, align 4, !tbaa !43 ; 2 uses
  %i.x = getelementptr i8, ptr %.val1.i.i.i.i.i, i64 4
  %.val1.val.i.i.i.i.i = load i32, ptr %i.x, align 4, !tbaa !43
  %i.y = icmp slt i32 %.val.val.i.i.i.i.i, %.val1.val.i.i.i.i.i
  br i1 %i.y, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.020.i.ptr.i.i.i, i64 24, i1 false), !tbaa.struct !639
  %i.z = icmp samesign ugt i64 %.sroa.0.020.i.idx.i.i.i, 24
  br i1 %i.z, label %bb.e, label %bb.f, !prof !8

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i.i.i, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0155.3, i64 %.sroa.0.020.i.idx.i.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0155.3, i64 24, i1 false), !tbaa.struct !639
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0155.3, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !639
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  %.sroa.5.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !641
  %.val2.i11.i.i.i.i.i = load ptr, ptr %.pn19.i.i.i.i, align 8, !tbaa !636
  %i.ab = getelementptr i8, ptr %.val2.i11.i.i.i.i.i, i64 4
  %.val2.val.i12.i.i.i.i.i = load i32, ptr %i.ab, align 4, !tbaa !43
  %i.ac = icmp slt i32 %.val.val.i.i.i.i.i, %.val2.val.i12.i.i.i.i.i
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i.i.i.i"

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.g, %.lr.ph.i.i.i.i.i
  %.sroa.0.014.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.pn19.i.i.i.i, %bb.g ] ; 4 uses
  %.sroa.06.013.i.i.i.i.i = phi ptr [ %.sroa.0.014.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.020.i.ptr.i.i.i, %bb.g ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.013.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.014.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !639
  %.sroa.0.0.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.014.i.i.i.i.i, i64 -24 ; 2 uses
  %.val.val.i8.i.i.i.i = load i32, ptr %i.w, align 4, !tbaa !43
  %.val2.i.i.i.i.i.i = load ptr, ptr %.sroa.0.0.i.i.i.i.i, align 8, !tbaa !636
  %i.ad = getelementptr i8, ptr %.val2.i.i.i.i.i.i, i64 4
  %.val2.val.i.i.i.i.i.i = load i32, ptr %i.ad, align 4, !tbaa !43
  %i.ae = icmp slt i32 %.val.val.i8.i.i.i.i, %.val2.val.i.i.i.i.i.i
  br i1 %i.ae, label %.lr.ph.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i.i.i.i", !llvm.loop !642

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i, %bb.g
  %.sroa.06.0.lcssa.i.i.i.i.i = phi ptr [ %.sroa.0.020.i.ptr.i.i.i, %bb.g ], [ %.sroa.0.014.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 2 uses
  store ptr %.val.i.i.i.i.i, ptr %.sroa.06.0.lcssa.i.i.i.i.i, align 8, !tbaa !34
  %.sroa.5.0..sroa_idx5.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx5.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !641
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i.i.i)
  br label %bb.h

bb.h:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i.i.i.i
  %.sroa.0.020.i.add.i.i.i = add nuw nsw i64 %.sroa.0.020.i.idx.i.i.i, 24 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.020.i.add.i.i.i, 384
  br i1 %.not.i.i.i.i, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_SH_T0_.exit.i.i.i", label %.lr.ph.i.i.i.i, !llvm.loop !643

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_SH_T0_.exit.i.i.i": ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0155.3, i64 384 ; 2 uses
  %.not6.i.i.i.i = icmp eq ptr %i.af, %.sroa.15.2
  br i1 %.not6.i.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit", label %.lr.ph.i13.i.i.i

.lr.ph.i13.i.i.i:                                 ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_SH_T0_.exit.i.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i17.i.i.i"
  %.sroa.0.07.i.i.i.i = phi ptr [ %i.al, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i17.i.i.i" ], [ %i.af, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops15_Iter_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_SH_T0_.exit.i.i.i" ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i12.i.i.i)
  %.sroa.03.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.0.07.i.i.i.i, align 8, !tbaa !34 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i14.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i12.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i14.i.i.i, i64 16, i1 false), !tbaa.struct !641
  %i.ag = getelementptr i8, ptr %.sroa.03.0.copyload.i.i.i.i.i, i64 4 ; 2 uses
  %.sroa.0.09.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i.i, i64 -24 ; 2 uses
  %.val.val10.i.i.i.i.i = load i32, ptr %i.ag, align 4, !tbaa !43
  %.val2.i11.i.i15.i.i.i = load ptr, ptr %.sroa.0.09.i.i.i.i.i, align 8, !tbaa !636
  %i.ah = getelementptr i8, ptr %.val2.i11.i.i15.i.i.i, i64 4
  %.val2.val.i12.i.i16.i.i.i = load i32, ptr %i.ah, align 4, !tbaa !43
  %i.ai = icmp slt i32 %.val.val10.i.i.i.i.i, %.val2.val.i12.i.i16.i.i.i
  br i1 %i.ai, label %.lr.ph.i.i21.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i17.i.i.i"

.lr.ph.i.i21.i.i.i:                               ; preds = %.lr.ph.i13.i.i.i, %.lr.ph.i.i21.i.i.i
  %.sroa.0.014.i.i22.i.i.i = phi ptr [ %.sroa.0.0.i.i24.i.i.i, %.lr.ph.i.i21.i.i.i ], [ %.sroa.0.09.i.i.i.i.i, %.lr.ph.i13.i.i.i ] ; 4 uses
  %.sroa.06.013.i.i23.i.i.i = phi ptr [ %.sroa.0.014.i.i22.i.i.i, %.lr.ph.i.i21.i.i.i ], [ %.sroa.0.07.i.i.i.i, %.lr.ph.i13.i.i.i ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.013.i.i23.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.014.i.i22.i.i.i, i64 24, i1 false), !tbaa.struct !639
  %.sroa.0.0.i.i24.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.014.i.i22.i.i.i, i64 -24 ; 2 uses
  %.val.val.i.i25.i.i.i = load i32, ptr %i.ag, align 4, !tbaa !43
  %.val2.i.i.i26.i.i.i = load ptr, ptr %.sroa.0.0.i.i24.i.i.i, align 8, !tbaa !636
  %i.aj = getelementptr i8, ptr %.val2.i.i.i26.i.i.i, i64 4
  %.val2.val.i.i.i27.i.i.i = load i32, ptr %i.aj, align 4, !tbaa !43
  %i.ak = icmp slt i32 %.val.val.i.i25.i.i.i, %.val2.val.i.i.i27.i.i.i
  br i1 %i.ak, label %.lr.ph.i.i21.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i17.i.i.i", !llvm.loop !642

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i17.i.i.i": ; preds = %.lr.ph.i.i21.i.i.i, %.lr.ph.i13.i.i.i
  %.sroa.06.0.lcssa.i.i18.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i, %.lr.ph.i13.i.i.i ], [ %.sroa.0.014.i.i22.i.i.i, %.lr.ph.i.i21.i.i.i ] ; 2 uses
  store ptr %.sroa.03.0.copyload.i.i.i.i.i, ptr %.sroa.06.0.lcssa.i.i18.i.i.i, align 8, !tbaa !34
  %.sroa.5.0..sroa_idx5.i.i19.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i18.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx5.i.i19.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i12.i.i.i, i64 16, i1 false), !tbaa.struct !641
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i12.i.i.i)
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i, i64 24
  %.not.i20.i.i.i = icmp eq ptr %.sroa.0.07.i.i.i.i, %.pn
  br i1 %.not.i20.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit", label %.lr.ph.i13.i.i.i, !llvm.loop !644

bb.i:                                             ; preds = %bb.c
  %.not18.i31.i.i.i = icmp eq ptr %.sroa.0155.3, %.pn
  br i1 %.not18.i31.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit", label %.lr.ph.i32.i.i.i

.lr.ph.i32.i.i.i:                                 ; preds = %bb.i, %bb.o
  %.sroa.0.020.i33.i.i.i = phi ptr [ %.sroa.0.0.i45.i.i.i, %bb.o ], [ %scevgep.i.i.i, %bb.i ] ; 8 uses
  %.pn19.i34.i.i.i = phi ptr [ %.sroa.0.020.i33.i.i.i, %bb.o ], [ %.sroa.0155.3, %bb.i ] ; 5 uses
  %.val.i.i35.i.i.i = load ptr, ptr %.sroa.0.020.i33.i.i.i, align 8, !tbaa !636 ; 2 uses
  %.val1.i.i36.i.i.i = load ptr, ptr %.sroa.0155.3, align 8, !tbaa !636
  %i.am = getelementptr i8, ptr %.val.i.i35.i.i.i, i64 4 ; 2 uses
  %.val.val.i.i37.i.i.i = load i32, ptr %i.am, align 4, !tbaa !43 ; 2 uses
  %i.an = getelementptr i8, ptr %.val1.i.i36.i.i.i, i64 4
  %.val1.val.i.i38.i.i.i = load i32, ptr %i.an, align 4, !tbaa !43
  %i.ao = icmp slt i32 %.val.val.i.i37.i.i.i, %.val1.val.i.i38.i.i.i
  br i1 %i.ao, label %bb.j, label %bb.n

bb.j:                                             ; preds = %.lr.ph.i32.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.020.i33.i.i.i, i64 24, i1 false), !tbaa.struct !639
  %i.ap = ptrtoint ptr %.sroa.0.020.i33.i.i.i to i64
  %i.aq = sub i64 %i.ap, %i.p                     ; 4 uses
  %i.ar = icmp sgt i64 %i.aq, 24
  br i1 %i.ar, label %bb.k, label %bb.l, !prof !8

bb.k:                                             ; preds = %bb.j
  %7 = getelementptr inbounds nuw i8, ptr %.pn19.i34.i.i.i, i64 48
  %.neg24.i55.i.i.i = udiv exact i64 %i.aq, 24
  %.neg24.neg.i56.i.i.i = sub nsw i64 0, %.neg24.i55.i.i.i
  %8 = getelementptr inbounds [24 x i8], ptr %7, i64 %.neg24.neg.i56.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.0155.3, i64 %i.aq, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i54.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.as = icmp eq i64 %i.aq, 24
  br i1 %i.as, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i54.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %.pn19.i34.i.i.i, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0155.3, i64 24, i1 false), !tbaa.struct !639
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i54.i.i.i

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i54.i.i.i: ; preds = %bb.m, %bb.l, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0155.3, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !639
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph.i32.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i28.i.i.i)
  %.sroa.5.0..sroa_idx.i.i39.i.i.i = getelementptr inbounds nuw i8, ptr %.pn19.i34.i.i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i28.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i39.i.i.i, i64 16, i1 false), !tbaa.struct !641
  %.val2.i11.i.i40.i.i.i = load ptr, ptr %.pn19.i34.i.i.i, align 8, !tbaa !636
  %i.au = getelementptr i8, ptr %.val2.i11.i.i40.i.i.i, i64 4
  %.val2.val.i12.i.i41.i.i.i = load i32, ptr %i.au, align 4, !tbaa !43
  %i.av = icmp slt i32 %.val.val.i.i37.i.i.i, %.val2.val.i12.i.i41.i.i.i
  br i1 %i.av, label %.lr.ph.i.i47.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i42.i.i.i"

.lr.ph.i.i47.i.i.i:                               ; preds = %bb.n, %.lr.ph.i.i47.i.i.i
  %.sroa.0.014.i.i48.i.i.i = phi ptr [ %.sroa.0.0.i.i50.i.i.i, %.lr.ph.i.i47.i.i.i ], [ %.pn19.i34.i.i.i, %bb.n ] ; 4 uses
  %.sroa.06.013.i.i49.i.i.i = phi ptr [ %.sroa.0.014.i.i48.i.i.i, %.lr.ph.i.i47.i.i.i ], [ %.sroa.0.020.i33.i.i.i, %bb.n ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.06.013.i.i49.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0.014.i.i48.i.i.i, i64 24, i1 false), !tbaa.struct !639
  %.sroa.0.0.i.i50.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.014.i.i48.i.i.i, i64 -24 ; 2 uses
  %.val.val.i8.i51.i.i.i = load i32, ptr %i.am, align 4, !tbaa !43
  %.val2.i.i.i52.i.i.i = load ptr, ptr %.sroa.0.0.i.i50.i.i.i, align 8, !tbaa !636
  %i.aw = getelementptr i8, ptr %.val2.i.i.i52.i.i.i, i64 4
  %.val2.val.i.i.i53.i.i.i = load i32, ptr %i.aw, align 4, !tbaa !43
  %i.ax = icmp slt i32 %.val.val.i8.i51.i.i.i, %.val2.val.i.i.i53.i.i.i
  br i1 %i.ax, label %.lr.ph.i.i47.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i42.i.i.i", !llvm.loop !642

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i42.i.i.i": ; preds = %.lr.ph.i.i47.i.i.i, %bb.n
  %.sroa.06.0.lcssa.i.i43.i.i.i = phi ptr [ %.sroa.0.020.i33.i.i.i, %bb.n ], [ %.sroa.0.014.i.i48.i.i.i, %.lr.ph.i.i47.i.i.i ] ; 2 uses
  store ptr %.val.i.i35.i.i.i, ptr %.sroa.06.0.lcssa.i.i43.i.i.i, align 8, !tbaa !34
  %.sroa.5.0..sroa_idx5.i.i44.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.06.0.lcssa.i.i43.i.i.i, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx5.i.i44.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i28.i.i.i, i64 16, i1 false), !tbaa.struct !641
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i28.i.i.i)
  br label %bb.o

bb.o:                                             ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEENS0_5__ops14_Val_comp_iterIZNKS3_10Reflection18CreateTcParseTableEvE3$_0EEEvT_T0_.exit.i42.i.i.i", %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEESB_ET0_T_SD_SC_.exit.i54.i.i.i
  %.sroa.0.0.i45.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.020.i33.i.i.i, i64 24
  %.not.i46.i.i.i = icmp eq ptr %.sroa.0.020.i33.i.i.i, %.pn
  br i1 %.not.i46.i.i.i, label %"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESt6vectorIS6_SaIS6_EEEEZNKS3_10Reflection18CreateTcParseTableEvE3$_0EvT_SE_T0_.exit", label %.lr.ph.i32.i.i.i, !llvm.loop !643

bb.p:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE9push_backEOS4_.exit
  %.pre222226 = phi ptr [ %i.b, %.lr.ph ], [ %.pre222227, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE9push_backEOS4_.exit ] ; 2 uses
  %i.ay = phi ptr [ %i.b, %.lr.ph ], [ %i.eu, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE9push_backEOS4_.exit ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE9push_backEOS4_.exit ] ; 2 uses
  %.sroa.0155.0211 = phi ptr [ %i.h, %.lr.ph ], [ %.sroa.0155.3, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE9push_backEOS4_.exit ] ; 7 uses
  %.sroa.15.0210 = phi ptr [ %i.h, %.lr.ph ], [ %.sroa.15.2, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE9push_backEOS4_.exit ] ; 14 uses
  %.sroa.27.0209 = phi ptr [ %i.i, %.lr.ph ], [ %.sroa.27.3, %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo12FieldOptionsESaIS4_EE9push_backEOS4_.exit ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !254
  %i.bb = getelementptr inbounds nuw [88 x i8], ptr %i.ba, i64 %indvars.iv ; 20 uses
  %i.bc = load ptr, ptr %i.k, align 8, !tbaa !102 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = and i8 %i.be, 8
  %.not.i.i.i = icmp eq i8 %i.bf, 0               ; 4 uses
  br i1 %.not.i.i.i, label %bb.q, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !103
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i: ; preds = %bb.p
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !32 ; 2 uses
  %.not1.i.i.i = icmp eq ptr %i.bk, null
  br i1 %.not1.i.i.i, label %bb.r, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 104
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i

bb.r:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !104
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 136
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i

_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i: ; preds = %bb.r, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i, %bb.q
  %.sink7.in.i.i.i = phi ptr [ %i.bo, %bb.r ], [ %i.bl, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i.i ], [ %i.bi, %bb.q ]
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bb, i64 2
  %i.bq = load i8, ptr %i.bp, align 2, !tbaa !98  ; 2 uses
  switch i8 %i.bq, label %_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit [
    i8 12, label %bb.s
    i8 9, label %bb.s
  ]

bb.s:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i, %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i
  %i.br = ptrtoint ptr %i.bb to i64
  %.sink7.i.i.i = load ptr, ptr %.sink7.in.i.i.i, align 8, !tbaa !34
  %i.bs = ptrtoint ptr %.sink7.i.i.i to i64
  %i.bt = sub i64 %i.br, %i.bs
  %.0.in.i.i.i = sdiv exact i64 %i.bt, 88
  %sext.i.i = shl i64 %.0.in.i.i.i, 32
  %i.bu = ashr exact i64 %sext.i.i, 30
  %i.bv = getelementptr inbounds i8, ptr %i.bc, i64 %i.bu
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !64
  %i.bx = trunc i32 %i.bw to i8
  %i.by = and i8 %i.bx, 1
  br label %_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit: ; preds = %bb.s, %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i
  %.0.i3.i.i = phi i8 [ %i.by, %bb.s ], [ 0, %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i.i ] ; 2 uses
  %i.bz = load i32, ptr %i.l, align 8, !tbaa !148
  %i.ca = icmp eq i32 %i.bz, -1
  br i1 %i.ca, label %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit, label %bb.t

bb.t:                                             ; preds = %_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit
  %i.cb = load ptr, ptr %i.m, align 8, !tbaa !149
  br i1 %.not.i.i.i, label %bb.u, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i

bb.u:                                             ; preds = %bb.t
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !103
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i: ; preds = %bb.t
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !32 ; 2 uses
  %.not1.i.i = icmp eq ptr %i.cg, null
  br i1 %.not1.i.i, label %bb.v, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 104
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i

bb.v:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !104
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 136
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i

_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i: ; preds = %bb.v, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i, %bb.u
  %.sink7.in.i.i = phi ptr [ %i.ck, %bb.v ], [ %i.ch, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i ], [ %i.ce, %bb.u ]
  %.sink7.i.i = load ptr, ptr %.sink7.in.i.i, align 8, !tbaa !34
  %i.cl = ptrtoint ptr %i.bb to i64
  %i.cm = ptrtoint ptr %.sink7.i.i to i64
  %i.cn = sub i64 %i.cl, %i.cm
  %.0.in.i.i = sdiv exact i64 %i.cn, 88
  %sext.i = shl i64 %.0.in.i.i, 32
  %i.co = ashr exact i64 %sext.i, 30
  %i.cp = getelementptr inbounds i8, ptr %i.cb, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !64
  br label %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit

_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit: ; preds = %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i, %_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit
  %.0.i = phi i32 [ %i.cq, %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i ], [ -1, %_ZNK6google8protobuf10Reflection9IsInlinedEPKNS0_15FieldDescriptorE.exit ] ; 2 uses
  %i.cr = load i32, ptr %i.n, align 4, !tbaa !101
  %.not.i = icmp eq i32 %i.cr, -1
  br i1 %.not.i, label %bb.z, label %bb.w

bb.w:                                             ; preds = %_ZNK6google8protobuf8internal16ReflectionSchema11HasBitIndexEPKNS0_15FieldDescriptorE.exit
  br i1 %.not.i.i.i, label %bb.x, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i68

bb.x:                                             ; preds = %bb.w
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !103
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 64
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i71

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i68: ; preds = %bb.w
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !32 ; 2 uses
  %.not1.i.i69 = icmp eq ptr %i.cw, null
  br i1 %.not1.i.i69, label %bb.y, label %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i70

_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i70: ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i68
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 104
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i71

bb.y:                                             ; preds = %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit.i.i68
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !104
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 136
  br label %_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i71

_ZNK6google8protobuf15FieldDescriptor5indexEv.exit.i71: ; preds = %bb.y, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i70, %bb.x
  %.sink7.in.i.i72 = phi ptr [ %i.da, %bb.y ], [ %i.cx, %_ZNK6google8protobuf15FieldDescriptor15extension_scopeEv.exit4.i.i70 ], [ %i.cu, %bb.x ]
  %.sink7.i.i73 = load ptr, ptr %.sink7.in.i.i72, align 8, !tbaa !34
  %i.db = ptrtoint ptr %i.bb to i64
  %i.dc = ptrtoint ptr %.sink7.i.i73 to i64
  %i.dd = sub i64 %i.db, %i.dc
  %.0.in.i.i74 = sdiv exact i64 %i.dd, 88
  %sext.i75 = shl i64 %.0.in.i.i74, 32
  %i.de = ashr exact i64 %sext.i75, 30
  %i.df = getelementptr inbounds i8, ptr %i.bc, i64 %i.de
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !64
end_hunk_1
begin_hunk_2_@_ZN6google8protobuf23AssignDescriptorsHelper23AssignMessageDescriptorEPKNS0_10DescriptorE:bb.a

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa47.unr = phi ptr [ poison, %scalar.ph.preheader ], [ %i.dr, %scalar.ph.prol ]
  %indvars.iv37.unr = phi i64 [ %indvars.iv37.ph, %scalar.ph.preheader ], [ %indvars.iv.next38.prol, %scalar.ph.prol ]
  %.unr = phi ptr [ %.ph, %scalar.ph.preheader ], [ %i.dr, %scalar.ph.prol ]
  %i.ds = sub nsw i64 %indvars.iv37.ph, %wide.trip.count
  %i.dt = icmp ugt i64 %i.ds, -4
  br i1 %i.dt, label %._crit_edge35, label %scalar.ph

._crit_edge35:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa = phi ptr [ %i.dj, %middle.block ], [ %.lcssa47.unr, %scalar.ph.prol.loopexit ], [ %i.em, %scalar.ph ]
  store ptr %.lcssa, ptr %i.dg, align 8, !tbaa !756
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge35, %bb.r
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dv = load <2 x ptr>, ptr %i.du, align 8, !tbaa !96
  %i.dw = getelementptr inbounds nuw i8, <2 x ptr> %i.dv, i64 8
  store <2 x ptr> %i.dw, ptr %i.du, align 8, !tbaa !96
  ret void

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv37 = phi i64 [ %indvars.iv.next38.3, %scalar.ph ], [ %indvars.iv37.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.dx = phi ptr [ %i.em, %scalar.ph ], [ %.unr, %scalar.ph.prol.loopexit ] ; 5 uses
  %i.dy = load ptr, ptr %i.df, align 8, !tbaa !834
  %i.dz = getelementptr inbounds nuw [88 x i8], ptr %i.dy, i64 %indvars.iv37
  store ptr %i.dz, ptr %i.dx, align 8, !tbaa !764
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.eb = load ptr, ptr %i.df, align 8, !tbaa !834
  %i.ec = getelementptr inbounds nuw [88 x i8], ptr %i.eb, i64 %indvars.iv37
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 88
  store ptr %i.ed, ptr %i.ea, align 8, !tbaa !764
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.ef = load ptr, ptr %i.df, align 8, !tbaa !834
  %i.eg = getelementptr inbounds nuw [88 x i8], ptr %i.ef, i64 %indvars.iv37
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 176
  store ptr %i.eh, ptr %i.ee, align 8, !tbaa !764
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dx, i64 24
  %i.ej = load ptr, ptr %i.df, align 8, !tbaa !834
  %i.ek = getelementptr inbounds nuw [88 x i8], ptr %i.ej, i64 %indvars.iv37
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 264
  store ptr %i.el, ptr %i.ei, align 8, !tbaa !764
  %i.em = getelementptr inbounds nuw i8, ptr %i.dx, i64 32 ; 2 uses
  %indvars.iv.next38.3 = add nuw nsw i64 %indvars.iv37, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next38.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge35, label %scalar.ph, !llvm.loop !842
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
  %i.e = load ptr, ptr %3, align 8, !tbaa !743
  %i.f = load i8, ptr %4, align 1, !tbaa !305, !range !86, !noundef !51
  %i.g = trunc nuw i8 %i.f to i1
  tail call void %2(ptr noundef %i.e, i1 noundef zeroext %i.g), !inline_history !843
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
  tail call void @_ZN6google8protobuf10ReflectionD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %0) #36
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 96) #40
  br label %_ZZN6google8protobuf8internal16OnShutdownDeleteINS0_10ReflectionEEEPT_S5_ENKUlPKvE_clES7_.exit

_ZZN6google8protobuf8internal16OnShutdownDeleteINS0_10ReflectionEEEPT_S5_ENKUlPKvE_clES7_.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK6google8protobuf16MapValueConstRef4typeEv(ptr noundef nonnull align 8 dereferenceable(12) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20250512::log_internal::LogMessageFatal", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !546  ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = load ptr, ptr %0, align 8
  %i.e = icmp eq ptr %i.d, null
  %or.cond = select i1 %i.c, i1 true, i1 %i.e
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #36
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull @.str.144, i32 noundef 735) #37
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 33, ptr nonnull @.str.145)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit unwind label %bb.c

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit: ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16) %1, i64 59, ptr nonnull @.str.151)
          to label %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi60EEERS2_RAT__Kc.exit unwind label %bb.c

_ZN4absl12lts_2025051212log_internal10LogMessagelsILi60EEERS2_RAT__Kc.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.c

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi60EEERS2_RAT__Kc.exit
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #38
  unreachable

bb.c:                                             ; preds = %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi60EEERS2_RAT__Kc.exit, %_ZN4absl12lts_2025051212log_internal10LogMessagelsILi34EEERS2_RAT__Kc.exit, %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %1) #38
  unreachable

bb.d:                                             ; preds = %bb.a
  ret i32 %i.b
}

declare void @_ZN6google8protobuf8internal24InitProtobufDefaultsSlowEv() local_unnamed_addr #3

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare noundef ptr @_ZNK6google8protobuf8internal12ExtensionSet10FindOrNullEi(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef) local_unnamed_addr #3

declare noundef ptr @_ZN6google8protobuf8internal16InternalMetadata27mutable_unknown_fields_slowINS0_15UnknownFieldSetEEEPT_v(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf8internal20RepeatedPtrFieldBase13ClearNonEmptyINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEvv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !300  ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !283
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
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !96   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 0, ptr %i.n, align 8, !tbaa !205
  %i.o = load ptr, ptr %i.m, align 8, !tbaa !207
  store i8 0, ptr %i.o, align 1, !tbaa !32
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !96   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store i64 0, ptr %i.s, align 8, !tbaa !205
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !207
  store i8 0, ptr %i.t, align 1, !tbaa !32
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !96   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 0, ptr %i.x, align 8, !tbaa !205
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !207
  store i8 0, ptr %i.y, align 1, !tbaa !32
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !96 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 0, ptr %i.ac, align 8, !tbaa !205
  %i.ad = load ptr, ptr %i.ab, align 8, !tbaa !207
  store i8 0, ptr %i.ad, align 1, !tbaa !32
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %bb.b, !llvm.loop !844

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
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !96 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  store i64 0, ptr %i.ag, align 8, !tbaa !205
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !207
  store i8 0, ptr %i.ah, align 1, !tbaa !32
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %bb.c, !llvm.loop !845

.epilog-lcssa:                                    ; preds = %bb.c, %.unr-lcssa
  store i32 0, ptr %i.a, align 8, !tbaa !64
  ret void
}

declare noundef zeroext i1 @_ZN4absl12lts_2025051216numbers_internal17safe_strto32_baseESt17basic_string_viewIcSt11char_traitsIcEEPii(i64, ptr, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN4absl12lts_2025051219str_format_internal10FormatPackB5cxx11ENS1_21UntypedFormatSpecImplENS0_4SpanIKNS1_13FormatArgImplEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr, i64, ptr, i64) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchISt17basic_string_viewIcSt11char_traitsIcEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #0 align 2

; Function Attrs: mustprogress uwtable
declare noundef zeroext i1 @_ZN4absl12lts_2025051219str_format_internal13FormatArgImpl8DispatchINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEbNS2_4DataENS1_24FormatConversionSpecImplEPv(ptr, i64, i32, ptr noundef) #0 align 2

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden noundef i64 @_ZNK6google8protobuf8internal20RepeatedPtrFieldBase26SpaceUsedExcludingSelfLongINS1_18GenericTypeHandlerINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEEmv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #11 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !283    ; 2 uses
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
  %i.h = load i32, ptr %i.g, align 8, !tbaa !286
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 3
  %i.k = add nsw i64 %i.j, 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !288
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
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !96
  %i.u = tail call noundef i64 @_ZN6google8protobuf8internal32StringSpaceUsedExcludingSelfLongERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %i.t)
  %i.v = add i64 %.078, 32
  %i.w = add i64 %i.v, %i.u                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !846
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiE20SwapFallbackWithTempEPNS0_5ArenaERS2_S4_S5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !106
  %i.b = and i32 %i.a, 1
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !298  ; 5 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !298  ; 3 uses
  %i.h = add nsw i32 %i.g, %i.e                   ; 3 uses
  %i.i = load i32, ptr %4, align 8, !tbaa !106
  %i.j = and i32 %i.i, 1                          ; 2 uses
  %i.k = icmp eq i32 %i.j, 0                      ; 2 uses
  br i1 %i.k, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !32
  %i.n = load i32, ptr %i.m, align 8, !tbaa !32
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i: ; preds = %bb.c, %bb.b
  %i.o = phi i32 [ %i.n, %bb.c ], [ 2, %bb.b ]
  %i.p = icmp sgt i32 %i.h, %i.o
  br i1 %i.p, label %bb.d, label %_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit.i, !prof !39

bb.d:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE4GrowINS2_9SelfArenaEEEvT_bii(ptr noundef nonnull align 8 dereferenceable(16) %4, i1 noundef zeroext %i.k, i32 noundef %i.g, i32 noundef %i.h)
  %.pre.i = load i32, ptr %4, align 8, !tbaa !106
  %.pre12.i = load i32, ptr %i.f, align 4, !tbaa !298
  %.pre13.i = and i32 %.pre.i, 1
  br label %_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit.i

_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit.i: ; preds = %bb.d, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i
  %.pre-phi.i = phi i32 [ %i.j, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i ], [ %.pre13.i, %bb.d ]
  %i.q = phi i32 [ %i.g, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i ], [ %.pre12.i, %bb.d ]
  %i.r = icmp eq i32 %.pre-phi.i, 0
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %.0.v.i.i.i.i = select i1 %i.r, ptr %4, ptr %i.t
  %.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i, i64 8
  store i32 %i.h, ptr %i.f, align 4, !tbaa !298
  %i.u = sext i32 %i.q to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %.0.i.i.i.i, i64 %i.u ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load ptr, ptr %i.w, align 8
  %.0.v.i.i.i.i.i = select i1 %i.c, ptr %0, ptr %i.x
  %.0.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i.i.i, i64 8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !847)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !850)
  %i.y = icmp sgt i32 %i.e, 1
  br i1 %i.y, label %bb.e, label %bb.f, !prof !8

bb.e:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit.i
  %i.z = zext nneg i32 %i.e to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %i.z, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.v, ptr nonnull align 4 %.0.i.i.i.i.i, i64 %.idx.i.i.i.i, i1 false), !alias.scope !852
  br label %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit

bb.f:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIiE7ReserveEi.exit.i
  %i.aa = icmp eq i32 %i.e, 1
  br i1 %i.aa, label %bb.g, label %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit

bb.g:                                             ; preds = %bb.f
  %i.ab = load i32, ptr %.0.i.i.i.i.i, align 4, !tbaa !64, !alias.scope !847, !noalias !850
  store i32 %i.ab, ptr %i.v, align 4, !tbaa !64, !alias.scope !850, !noalias !847
  br label %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit

_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit: ; preds = %bb.a, %bb.e, %bb.f, %bb.g
  %i.ac = icmp eq ptr %2, %0
  br i1 %i.ac, label %_ZN6google8protobuf13RepeatedFieldIiE8CopyFromERKS2_.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIiE9MergeFromERKS2_.exit
  store i32 0, ptr %i.d, align 4, !tbaa !298
  %i.ad = load i32, ptr %2, align 8, !tbaa !106
  %i.ae = and i32 %i.ad, 1
  %i.af = icmp eq i32 %i.ae, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !298 ; 7 uses
  %.not.i.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i, label %_ZN6google8protobuf13RepeatedFieldIiE8CopyFromERKS2_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load i32, ptr %0, align 8, !tbaa !106
  %i.aj = and i32 %i.ai, 1                        ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0                    ; 2 uses
  br i1 %i.ak, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !32
  %i.an = load i32, ptr %i.am, align 8, !tbaa !32
  br label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.i.i.i.i

end_hunk_2
