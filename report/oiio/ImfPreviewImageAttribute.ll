inline.NumInlined: 35
inline.NumDeleted: 14
begin_hunk_0_@_ZN7Iex_3_37TypeExcD1Ev

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define weak_odr noundef ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_12PreviewImageEE4castEPKNS_9AttributeE(ptr noundef %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_59AttributeE, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_12PreviewImageEEE, i64 0) #13 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.a, %bb.b
  %i.d = tail call ptr @__cxa_allocate_exception(i64 72) #13 ; 3 uses
  invoke void @_ZN7Iex_3_37TypeExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull @.str)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %.thread
  tail call void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN7Iex_3_37TypeExcE, ptr nonnull @_ZN7Iex_3_37TypeExcD1Ev) #16
  unreachable

bb.d:                                             ; preds = %.thread
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.d) #13
  resume { ptr, i32 } %i.e

bb.e:                                             ; preds = %bb.b
  ret ptr %i.b
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr noundef nonnull align 8 dereferenceable(24) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_12PreviewImageEE4castERNS_9AttributeE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call ptr @__dynamic_cast(ptr nonnull %0, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_59AttributeE, ptr nonnull @_ZTIN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_12PreviewImageEEE, i64 0) #13 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %.thread.i, label %_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_12PreviewImageEE4castEPNS_9AttributeE.exit

.thread.i:                                        ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 72) #13 ; 3 uses
  invoke void @_ZN7Iex_3_37TypeExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull @.str)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.thread.i
  tail call void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN7Iex_3_37TypeExcE, ptr nonnull @_ZN7Iex_3_37TypeExcD1Ev) #16
  unreachable

bb.c:                                             ; preds = %.thread.i
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.c) #13
  resume { ptr, i32 } %i.d

_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_12PreviewImageEE4castEPNS_9AttributeE.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_12PreviewImageEE21registerAttributeTypeEv() local_unnamed_addr #10 align 2 {
bb.a:
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_59Attribute21registerAttributeTypeEPKcPFPS0_vE(ptr noundef nonnull @.str.1, ptr noundef nonnull @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_12PreviewImageEE16makeNewAttributeEv)
  ret void
}

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_59Attribute21registerAttributeTypeEPKcPFPS0_vE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define weak_odr void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_12PreviewImageEE23unRegisterAttributeTypeEv() local_unnamed_addr #10 align 2 {
bb.a:
  tail call void @_ZN27OpenImageIO_v3_1_Imf__3_3_59Attribute23unRegisterAttributeTypeEPKc(ptr noundef nonnull @.str.1)
  ret void
}

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_59Attribute23unRegisterAttributeTypeEPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZNK27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_12PreviewImageEE12writeValueToERNS_7OStreamEi(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca [4 x i8], align 4                 ; 4 uses
  %i.f = alloca [4 x i8], align 4                 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  store i32 %i.h, ptr %i.f, align 4
  %i.i = load ptr, ptr %1, align 8, !tbaa !7
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.f, i32 noundef 4), !inline_history !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  store i32 %i.m, ptr %i.e, align 4
  %i.n = load ptr, ptr %1, align 8, !tbaa !7
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.e, i32 noundef 4), !inline_history !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  %i.q = load i32, ptr %i.g, align 8, !tbaa !10
  %i.r = load i32, ptr %i.l, align 4, !tbaa !15
  %i.s = mul i32 %i.r, %i.q                       ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !16
  %i.v = icmp sgt i32 %i.s, 0
  br i1 %i.v, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.s to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv ; 4 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 %i.x, ptr %i.d, align 1, !tbaa !19
  %i.y = load ptr, ptr %1, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, i32 noundef 1), !inline_history !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 %i.ac, ptr %i.c, align 1, !tbaa !19
  %i.ad = load ptr, ptr %1, align 8, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.c, i32 noundef 1), !inline_history !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 %i.ah, ptr %i.b, align 1, !tbaa !19
  %i.ai = load ptr, ptr %1, align 8, !tbaa !7
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.b, i32 noundef 1), !inline_history !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.al = getelementptr inbounds nuw i8, ptr %i.w, i64 3
  %i.am = load i8, ptr %i.al, align 1, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.am, ptr %i.a, align 1, !tbaa !19
  %i.an = load ptr, ptr %1, align 8, !tbaa !7
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.a, i32 noundef 1), !inline_history !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !24
}

; Function Attrs: mustprogress uwtable
define void @_ZN27OpenImageIO_v3_1_Imf__3_3_514TypedAttributeINS_12PreviewImageEE13readValueFromERNS_7IStreamEii(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %2, i32 %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %4 = alloca %"class.OpenImageIO_v3_1_Imf__3_3_5::PreviewImage", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.c = load ptr, ptr %1, align 8, !tbaa !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = call noundef zeroext i1 %i.e(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.b, i32 noundef 4), !inline_history !26 ; 0 uses
  %i.g = load i32, ptr %i.b, align 4              ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.h = load ptr, ptr %1, align 8, !tbaa !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = call noundef zeroext i1 %i.j(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.a, i32 noundef 4), !inline_history !26 ; 0 uses
  %i.l = load i32, ptr %i.a, align 4              ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.m = icmp slt i32 %i.g, 0
  %i.n = icmp slt i32 %i.l, 0
  %or.cond = select i1 %i.m, i1 true, i1 %i.n
  br i1 %or.cond, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.o = call ptr @__cxa_allocate_exception(i64 72) #13 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.o, ptr noundef nonnull @.str.2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @__cxa_throw(ptr nonnull %i.o, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #16
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  %i.q = zext nneg i32 %i.g to i64
  %i.r = zext nneg i32 %i.l to i64
  %i.s = shl nuw nsw i64 %i.q, 2
  %i.t = mul nuw i64 %i.s, %i.r
  %i.u = add nuw i64 %i.t, 8
  %i.v = sext i32 %2 to i64
  %.not = icmp eq i64 %i.u, %i.v
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = call ptr @__cxa_allocate_exception(i64 72) #13 ; 3 uses
  invoke void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72) %i.w, ptr noundef nonnull @.str.3)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTIN7Iex_3_38InputExcE, ptr nonnull @_ZN7Iex_3_38InputExcD1Ev) #16
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_512PreviewImageC1EjjPKNS_11PreviewRgbaE(ptr noundef nonnull align 8 dereferenceable(16) %4, i32 noundef %i.g, i32 noundef %i.l, ptr noundef null)
  %i.y = load i32, ptr %4, align 8, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !15
  %i.ab = mul i32 %i.aa, %i.y                     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !16
  %i.ae = icmp sgt i32 %i.ab, 0
  br i1 %i.ae, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.i
  %wide.trip.count = zext nneg i32 %i.ab to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4readINS_8StreamIOENS_7IStreamEEEvRT0_Rh.exit31, %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN27OpenImageIO_v3_1_Imf__3_3_512PreviewImageaSERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %bb.l unwind label %bb.j       ; 0 uses

bb.j:                                             ; preds = %._crit_edge
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4readINS_8StreamIOENS_7IStreamEEEvRT0_Rh.exit31
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4readINS_8StreamIOENS_7IStreamEEEvRT0_Rh.exit31 ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv ; 4 uses
  %i.aj = load ptr, ptr %1, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = invoke noundef zeroext i1 %i.al(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.ai, i32 noundef 1)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4readINS_8StreamIOENS_7IStreamEEEvRT0_Rh.exit unwind label %bb.k, !inline_history !27 ; 0 uses

_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4readINS_8StreamIOENS_7IStreamEEEvRT0_Rh.exit: ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  %i.ao = load ptr, ptr %1, align 8, !tbaa !7
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = invoke noundef zeroext i1 %i.aq(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.an, i32 noundef 1)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4readINS_8StreamIOENS_7IStreamEEEvRT0_Rh.exit29 unwind label %bb.k, !inline_history !27 ; 0 uses

_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4readINS_8StreamIOENS_7IStreamEEEvRT0_Rh.exit29: ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4readINS_8StreamIOENS_7IStreamEEEvRT0_Rh.exit
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 2
  %i.at = load ptr, ptr %1, align 8, !tbaa !7
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = invoke noundef zeroext i1 %i.av(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.as, i32 noundef 1)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4readINS_8StreamIOENS_7IStreamEEEvRT0_Rh.exit30 unwind label %bb.k, !inline_history !27 ; 0 uses

_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4readINS_8StreamIOENS_7IStreamEEEvRT0_Rh.exit30: ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4readINS_8StreamIOENS_7IStreamEEEvRT0_Rh.exit29
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 3
  %i.ay = load ptr, ptr %1, align 8, !tbaa !7
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = invoke noundef zeroext i1 %i.ba(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.ax, i32 noundef 1)
          to label %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4readINS_8StreamIOENS_7IStreamEEEvRT0_Rh.exit31 unwind label %bb.k, !inline_history !27 ; 0 uses

_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4readINS_8StreamIOENS_7IStreamEEEvRT0_Rh.exit31: ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4readINS_8StreamIOENS_7IStreamEEEvRT0_Rh.exit30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !28

bb.k:                                             ; preds = %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4readINS_8StreamIOENS_7IStreamEEEvRT0_Rh.exit30, %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4readINS_8StreamIOENS_7IStreamEEEvRT0_Rh.exit29, %_ZN27OpenImageIO_v3_1_Imf__3_3_53Xdr4readINS_8StreamIOENS_7IStreamEEEvRT0_Rh.exit, %.lr.ph
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %._crit_edge
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_512PreviewImageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void

bb.m:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.bc, %bb.k ], [ %i.ah, %bb.j ]
  call void @_ZN27OpenImageIO_v3_1_Imf__3_3_512PreviewImageD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  br label %bb.n

.sink.split:                                      ; preds = %bb.d, %bb.h
  %.sink = phi ptr [ %i.w, %bb.h ], [ %i.o, %bb.d ]
  %.pn27.ph = phi { ptr, i32 } [ %i.x, %bb.h ], [ %i.p, %bb.d ]
  call void @__cxa_free_exception(ptr nonnull %.sink) #13
  br label %bb.n

bb.n:                                             ; preds = %.sink.split, %bb.m
  %.pn27 = phi { ptr, i32 } [ %.pn, %bb.m ], [ %.pn27.ph, %.sink.split ]
  resume { ptr, i32 } %.pn27
}

declare void @_ZN7Iex_3_38InputExcC1EPKc(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN7Iex_3_38InputExcD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #2

declare void @_ZN27OpenImageIO_v3_1_Imf__3_3_512PreviewImageC1EjjPKNS_11PreviewRgbaE(ptr noundef nonnull align 8 dereferenceable(16), i32 noundef, i32 noundef, ptr noundef) unnamed_addr #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #12 = { cold noreturn }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = distinct !{null}
!10 = !{!11, !4, i64 0}
!11 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_512PreviewImageE", !4, i64 0, !4, i64 4, !12, i64 8}
!12 = !{!"p1 _ZTSN27OpenImageIO_v3_1_Imf__3_3_511PreviewRgbaE", !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = distinct !{null, null, null}
!15 = !{!11, !4, i64 4}
!16 = !{!11, !12, i64 8}
!17 = !{!18, !5, i64 0}
!18 = !{!"_ZTSN27OpenImageIO_v3_1_Imf__3_3_511PreviewRgbaE", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3}
!19 = !{!5, !5, i64 0}
!20 = distinct !{null, null, null}
!21 = !{!18, !5, i64 1}
!22 = !{!18, !5, i64 2}
!23 = !{!18, !5, i64 3}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = distinct !{null, null, null}
!27 = distinct !{null}
!28 = distinct !{!28, !25}
end_hunk_0
