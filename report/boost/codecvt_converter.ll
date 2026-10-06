Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/codecvt_converter?download=true
inline.NumInlined: 429
inline.NumDeleted: 259
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN5boost6locale4util21simple_converter_implC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:vector.ph
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !39 ; 2 uses
  %.not.1 = icmp eq i32 %i.bw, -1
  br i1 %.not.1, label %bb.n, label %.preheader.1

.preheader.1:                                     ; preds = %bb.l, %.preheader.1
  %.0.in.1 = phi i32 [ %i.ca, %.preheader.1 ], [ %i.bw, %bb.l ]
  %.0.1 = and i32 %.0.in.1, 1023                  ; 2 uses
  %i.bx = zext nneg i32 %.0.1 to i64              ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !23
  %.not34.1 = icmp eq i8 %i.bz, 0
  %i.ca = add nuw nsw i32 %.0.1, 1
  br i1 %.not34.1, label %bb.m, label %.preheader.1, !llvm.loop !87

bb.m:                                             ; preds = %.preheader.1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.bx
  %i.cc = trunc i64 %indvars.iv.next59 to i8
  store i8 %i.cc, ptr %i.cb, align 1, !tbaa !23
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %indvars.iv.next59.1 = add nuw nsw i64 %indvars.iv58, 2
  br label %bb.i
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6locale4util16simple_converterD0Ev(ptr noundef nonnull align 8 dereferenceable(2056) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 2056) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK5boost6locale4util16simple_converter7max_lenEv(ptr noundef nonnull align 8 dereferenceable(2056) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5boost6locale4util16simple_converter14is_thread_safeEv(ptr noundef nonnull align 8 dereferenceable(2056) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK5boost6locale4util16simple_converter5cloneEv(ptr noundef nonnull align 8 dereferenceable(2056) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(2056) ptr @_Znwm(i64 noundef 2056) #21 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5boost6locale4util16simple_converterE, i64 16), ptr %i.a, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2048) %i.b, ptr noundef nonnull align 8 dereferenceable(2048) %i.c, i64 2048, i1 false), !tbaa.struct !95
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost6locale4util16simple_converter10to_unicodeERPKcS4_(ptr noundef nonnull align 8 dereferenceable(2056) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !21     ; 3 uses
  %i.b = icmp eq ptr %i.a, %2
  br i1 %i.b, label %_ZNK5boost6locale4util21simple_converter_impl10to_unicodeERPKcS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.d, ptr %1, align 8, !tbaa !21
  %i.e = load i8, ptr %i.a, align 1, !tbaa !23
  %i.f = zext i8 %i.e to i64
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !39
  br label %_ZNK5boost6locale4util21simple_converter_impl10to_unicodeERPKcS4_.exit

_ZNK5boost6locale4util21simple_converter_impl10to_unicodeERPKcS4_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.h, %bb.b ], [ -2, %bb.a ]
  ret i32 %.0.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost6locale4util16simple_converter12from_unicodeEjPcPKc(ptr noundef nonnull align 8 dereferenceable(2056) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = icmp eq ptr %2, %3
  br i1 %i.b, label %_ZNK5boost6locale4util21simple_converter_impl12from_unicodeEjPcPKc.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %1, 0
  br i1 %i.c, label %.loopexit.sink.split.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1032 ; 2 uses
  %.018.i = and i32 %1, 1023                      ; 2 uses
  %i.e = zext nneg i32 %.018.i to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.e
  %i.g = load i8, ptr %i.f, align 1, !tbaa !23    ; 2 uses
  %cond19.i = icmp eq i8 %i.g, 0
  br i1 %cond19.i, label %_ZNK5boost6locale4util21simple_converter_impl12from_unicodeEjPcPKc.exit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.h = add nuw nsw i32 %.020.i, 1
  %.0.i = and i32 %i.h, 1023                      ; 2 uses
  %i.i = zext nneg i32 %.0.i to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !23    ; 2 uses
  %cond.i = icmp eq i8 %i.k, 0
  br i1 %cond.i, label %_ZNK5boost6locale4util21simple_converter_impl12from_unicodeEjPcPKc.exit, label %.lr.ph.i, !llvm.loop !2

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.c
  %i.l = phi i8 [ %i.k, %bb.c ], [ %i.g, %.preheader.i ] ; 2 uses
  %.020.i = phi i32 [ %.0.i, %bb.c ], [ %.018.i, %.preheader.i ]
  %i.m = zext i8 %i.l to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !39
  %.not16.i = icmp eq i32 %i.o, %1
  br i1 %.not16.i, label %.loopexit.sink.split.i, label %bb.c

.loopexit.sink.split.i:                           ; preds = %.lr.ph.i, %bb.b
  %.lcssa.sink.i = phi i8 [ 0, %bb.b ], [ %i.l, %.lr.ph.i ]
  store i8 %.lcssa.sink.i, ptr %2, align 1, !tbaa !23
  br label %_ZNK5boost6locale4util21simple_converter_impl12from_unicodeEjPcPKc.exit

_ZNK5boost6locale4util21simple_converter_impl12from_unicodeEjPcPKc.exit: ; preds = %bb.c, %bb.a, %.preheader.i, %.loopexit.sink.split.i
  %.1.i = phi i32 [ -2, %bb.a ], [ -1, %.preheader.i ], [ 1, %.loopexit.sink.split.i ], [ -1, %bb.c ]
  ret i32 %.1.i
}

; Function Attrs: nounwind memory(none)
declare i32 @llvm.eh.typeid.for.p0(ptr) #15

declare void @_ZN5boost6locale4conv6detail16make_utf_encoderIwEESt10unique_ptrINS2_17charset_converterIcT_EESt14default_deleteIS7_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_11method_typeENS2_12conv_backendE(ptr dead_on_unwind writable sret(%"class.std::unique_ptr.30") align 8, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN5boost6locale4util14base_converterD2Ev(ptr nofree nonnull readnone align 8 captures(none) dead_on_return(8) %0) unnamed_addr #16 align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6locale4util14utf8_converterD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #20
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK5boost6locale4util14utf8_converter7max_lenEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 4
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5boost6locale4util14utf8_converter14is_thread_safeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNK5boost6locale4util14utf8_converter5cloneEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #21 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTVN5boost6locale4util14utf8_converterE, i64 16), ptr %i.a, align 8, !tbaa !25
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost6locale4util14utf8_converter10to_unicodeERPKcS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %i.b = load ptr, ptr %1, align 8, !tbaa !21
  store ptr %i.b, ptr %i.a, align 8, !tbaa !21
  %i.c = call noundef i32 @_ZN5boost6locale3utf10utf_traitsIcLi1EE6decodeIPKcEEjRT_S7_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %2) ; 2 uses
  %switch = icmp ugt i32 %i.c, -3
  br i1 %switch, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !21
  store ptr %i.d, ptr %1, align 8, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %i.c
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost6locale4util14utf8_converter12from_unicodeEjPcPKc(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 1114112
  %i.b = and i32 %1, 2095104
  %or.cond.i = icmp ne i32 %i.b, 55296
  %.0.i = and i1 %i.a, %or.cond.i
  br i1 %.0.i, label %bb.b, label %_ZN5boost6locale3utf10utf_traitsIcLi1EE6encodeIPcEET_jS6_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 128
  br i1 %i.c, label %_ZN5boost6locale3utf10utf_traitsIcLi1EE5widthEj.exit.thread, label %_ZN5boost6locale3utf10utf_traitsIcLi1EE5widthEj.exit

_ZN5boost6locale3utf10utf_traitsIcLi1EE5widthEj.exit: ; preds = %bb.b
  %i.d = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.e = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.e, i64 3, i64 4, !prof !43
  %.0.i9 = select i1 %i.d, i64 2, i64 %..i
  %i.f = ptrtoint ptr %3 to i64
  %i.g = ptrtoint ptr %2 to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = icmp slt i64 %i.h, %.0.i9
  br i1 %i.i, label %_ZN5boost6locale3utf10utf_traitsIcLi1EE6encodeIPcEET_jS6_.exit, label %bb.c

_ZN5boost6locale3utf10utf_traitsIcLi1EE5widthEj.exit.thread: ; preds = %bb.b
  %i.j = ptrtoint ptr %3 to i64
  %i.k = ptrtoint ptr %2 to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp slt i64 %i.l, 1
  br i1 %i.m, label %_ZN5boost6locale3utf10utf_traitsIcLi1EE6encodeIPcEET_jS6_.exit, label %.thread

.thread:                                          ; preds = %_ZN5boost6locale3utf10utf_traitsIcLi1EE5widthEj.exit.thread
  %i.n = trunc nuw nsw i32 %1 to i8
  store i8 %i.n, ptr %2, align 1, !tbaa !23
  br label %_ZN5boost6locale3utf10utf_traitsIcLi1EE6encodeIPcEET_jS6_.exit

bb.c:                                             ; preds = %_ZN5boost6locale3utf10utf_traitsIcLi1EE5widthEj.exit
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = lshr i32 %1, 6
  %i.p = trunc nuw nsw i32 %i.o to i8
  %i.q = or disjoint i8 %i.p, -64
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 1
  store i8 %i.q, ptr %2, align 1, !tbaa !23
  %i.s = trunc i32 %1 to i8
  %i.t = and i8 %i.s, 63
  %i.u = or disjoint i8 %i.t, -128
  store i8 %i.u, ptr %i.r, align 1, !tbaa !23
  br label %_ZN5boost6locale3utf10utf_traitsIcLi1EE6encodeIPcEET_jS6_.exit

bb.e:                                             ; preds = %bb.c
  br i1 %i.e, label %bb.f, label %bb.g, !prof !43

bb.f:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.x = lshr i32 %1, 12
  %i.y = trunc nuw nsw i32 %i.x to i8
  %i.z = or disjoint i8 %i.y, -32
  store i8 %i.z, ptr %2, align 1, !tbaa !23
  %i.aa = lshr i32 %1, 6
  %i.ab = trunc i32 %i.aa to i8
  %i.ac = and i8 %i.ab, 63
  %i.ad = or disjoint i8 %i.ac, -128
  store i8 %i.ad, ptr %i.w, align 1, !tbaa !23
  %i.ae = trunc i32 %1 to i8
  %i.af = and i8 %i.ae, 63
  %i.ag = or disjoint i8 %i.af, -128
  store i8 %i.ag, ptr %i.v, align 1, !tbaa !23
  br label %_ZN5boost6locale3utf10utf_traitsIcLi1EE6encodeIPcEET_jS6_.exit

bb.g:                                             ; preds = %bb.e
  %i.ah = lshr i32 %1, 18
  %i.ai = trunc nuw nsw i32 %i.ah to i8
  %i.aj = lshr i32 %1, 12
  %i.ak = trunc i32 %i.aj to i8
  %i.al = lshr i32 %1, 6
  %i.am = trunc i32 %i.al to i8
  %i.an = trunc i32 %1 to i8
  %i.ao = insertelement <4 x i8> poison, i8 %i.ai, i64 0
  %i.ap = insertelement <4 x i8> %i.ao, i8 %i.ak, i64 1
  %i.aq = insertelement <4 x i8> %i.ap, i8 %i.am, i64 2
  %i.ar = insertelement <4 x i8> %i.aq, i8 %i.an, i64 3
  %i.as = and <4 x i8> %i.ar, <i8 -1, i8 63, i8 63, i8 63>
  %i.at = or disjoint <4 x i8> %i.as, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.at, ptr %2, align 1, !tbaa !23
  br label %_ZN5boost6locale3utf10utf_traitsIcLi1EE6encodeIPcEET_jS6_.exit

_ZN5boost6locale3utf10utf_traitsIcLi1EE6encodeIPcEET_jS6_.exit: ; preds = %bb.g, %bb.f, %bb.d, %.thread, %_ZN5boost6locale3utf10utf_traitsIcLi1EE5widthEj.exit.thread, %_ZN5boost6locale3utf10utf_traitsIcLi1EE5widthEj.exit, %bb.a
  %.1 = phi i32 [ -1, %bb.a ], [ -2, %_ZN5boost6locale3utf10utf_traitsIcLi1EE5widthEj.exit.thread ], [ -2, %_ZN5boost6locale3utf10utf_traitsIcLi1EE5widthEj.exit ], [ 1, %.thread ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost6locale3utf10utf_traitsIcLi1EE6decodeIPKcEEjRT_S7_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !21     ; 4 uses
  %i.b = icmp eq ptr %i.a, %1
  br i1 %i.b, label %_ZN5boost6locale3utf10utf_traitsIcLi1EE12trail_lengthEc.exit, label %bb.b, !prof !96

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !21
  %i.d = load i8, ptr %i.a, align 1, !tbaa !23    ; 9 uses
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i8 %i.d, -62
  br i1 %i.f, label %_ZN5boost6locale3utf10utf_traitsIcLi1EE12trail_lengthEc.exit, label %bb.d, !prof !96

bb.d:                                             ; preds = %bb.c
  %i.g = icmp samesign ult i8 %i.d, -32
  br i1 %i.g, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = icmp samesign ult i8 %i.d, -16
  br i1 %i.h, label %.thread55, label %bb.f

.thread55:                                        ; preds = %bb.e
  %i.i = and i8 %i.d, 15
  %i.j = zext nneg i8 %i.i to i32
  br label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.k = icmp samesign ult i8 %i.d, -11
  br i1 %i.k, label %bb.i, label %_ZN5boost6locale3utf10utf_traitsIcLi1EE12trail_lengthEc.exit, !prof !43

bb.g:                                             ; preds = %bb.b
  %i.l = zext nneg i8 %i.d to i32
  br label %_ZN5boost6locale3utf10utf_traitsIcLi1EE12trail_lengthEc.exit

bb.h:                                             ; preds = %bb.d
  %i.m = and i8 %i.d, 31
  %i.n = zext nneg i8 %i.m to i32
  br label %bb.o

bb.i:                                             ; preds = %bb.f
  %i.o = and i8 %i.d, 7
  %i.p = zext nneg i8 %i.o to i32
  %i.q = icmp eq ptr %i.c, %1
  br i1 %i.q, label %_ZN5boost6locale3utf10utf_traitsIcLi1EE12trail_lengthEc.exit, label %bb.j, !prof !96

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !21
  %i.s = load i8, ptr %i.c, align 1, !tbaa !23    ; 2 uses
  %i.t = icmp slt i8 %i.s, -64
  br i1 %i.t, label %bb.k, label %_ZN5boost6locale3utf10utf_traitsIcLi1EE12trail_lengthEc.exit

bb.k:                                             ; preds = %bb.j
  %i.u = shl nuw nsw i32 %i.p, 6
  %i.v = and i8 %i.s, 63
  %i.w = zext nneg i8 %i.v to i32
  %i.x = or disjoint i32 %i.u, %i.w
  br label %bb.l

bb.l:                                             ; preds = %.thread55, %bb.k
  %i.y = phi ptr [ %i.r, %bb.k ], [ %i.c, %.thread55 ] ; 3 uses
  %.0.i.ph.ph52 = phi i32 [ 4, %bb.k ], [ 3, %.thread55 ]
  %.0 = phi i32 [ %i.x, %bb.k ], [ %i.j, %.thread55 ]
  %i.z = icmp eq ptr %i.y, %1
  br i1 %i.z, label %_ZN5boost6locale3utf10utf_traitsIcLi1EE12trail_lengthEc.exit, label %bb.m, !prof !96

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !21
  %i.ab = load i8, ptr %i.y, align 1, !tbaa !23   ; 2 uses
  %i.ac = icmp slt i8 %i.ab, -64
  br i1 %i.ac, label %bb.n, label %_ZN5boost6locale3utf10utf_traitsIcLi1EE12trail_lengthEc.exit

bb.n:                                             ; preds = %bb.m
  %i.ad = shl nuw nsw i32 %.0, 6
  %i.ae = and i8 %i.ab, 63
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = or disjoint i32 %i.ad, %i.af
  br label %bb.o

bb.o:                                             ; preds = %bb.h, %bb.n
  %i.ah = phi ptr [ %i.aa, %bb.n ], [ %i.c, %bb.h ] ; 3 uses
  %.0.i.ph.ph51 = phi i32 [ %.0.i.ph.ph52, %bb.n ], [ 2, %bb.h ]
  %.1 = phi i32 [ %i.ag, %bb.n ], [ %i.n, %bb.h ] ; 6 uses
  %i.ai = icmp eq ptr %i.ah, %1
  br i1 %i.ai, label %_ZN5boost6locale3utf10utf_traitsIcLi1EE12trail_lengthEc.exit, label %bb.p, !prof !96

bb.p:                                             ; preds = %bb.o
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store ptr %i.aj, ptr %0, align 8, !tbaa !21
  %i.ak = load i8, ptr %i.ah, align 1, !tbaa !23  ; 2 uses
  %i.al = icmp slt i8 %i.ak, -64
  br i1 %i.al, label %bb.q, label %_ZN5boost6locale3utf10utf_traitsIcLi1EE12trail_lengthEc.exit

bb.q:                                             ; preds = %bb.p
  %i.am = shl nuw nsw i32 %.1, 6
  %i.an = and i8 %i.ak, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao
  %i.aq = icmp samesign ult i32 %.1, 17408
  %i.ar = and i32 %.1, 32736
  %or.cond.i = icmp ne i32 %i.ar, 864
  %.0.i41 = and i1 %i.aq, %or.cond.i
  br i1 %.0.i41, label %bb.r, label %_ZN5boost6locale3utf10utf_traitsIcLi1EE12trail_lengthEc.exit, !prof !43

bb.r:                                             ; preds = %bb.q
  %i.as = icmp samesign ult i32 %.1, 2
  br i1 %i.as, label %_ZN5boost6locale3utf10utf_traitsIcLi1EE5widthEj.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.at = icmp samesign ult i32 %.1, 32
  br i1 %i.at, label %_ZN5boost6locale3utf10utf_traitsIcLi1EE5widthEj.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.au = icmp samesign ult i32 %.1, 1024
  %..i42 = select i1 %i.au, i32 3, i32 4, !prof !43
  br label %_ZN5boost6locale3utf10utf_traitsIcLi1EE5widthEj.exit

end_hunk_0
begin_hunk_1_@_ZNK5boost6locale15generic_codecvtIwNS0_4util14code_converterIwLb0EEELi4EE5do_inER11__mbstate_tPKcS9_RS9_PwSB_RSB_:bb.a
  %i.v = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.w = icmp ult ptr %i.v, %3
  %i.x = select i1 %i.u, i1 %i.w, i1 false
  br i1 %i.x, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.b
  store ptr %i.v, ptr %4, align 8, !tbaa !21
  store ptr %i.t, ptr %7, align 8, !tbaa !44
  %.not62 = icmp ne ptr %i.v, %3
  %spec.select63 = zext i1 %.not62 to i32
  br label %_ZNKSt14default_deleteIN5boost6locale4util14base_converterEEclEPS3_.exit.i27

.thread37.loopexit:                               ; preds = %_ZNK5boost6locale4util14code_converterIwLb0EE10to_unicodeERSt10unique_ptrINS1_14base_converterESt14default_deleteIS5_EERPKcSB_.exit
  br label %.thread37

.thread37:                                        ; preds = %_ZNK5boost6locale4util14code_converterIwLb0EE10to_unicodeERSt10unique_ptrINS1_14base_converterESt14default_deleteIS5_EERPKcSB_.exit, %.thread37.loopexit
  %.222.ph = phi i32 [ 2, %.thread37.loopexit ], [ 1, %_ZNK5boost6locale4util14code_converterIwLb0EE10to_unicodeERSt10unique_ptrINS1_14base_converterESt14default_deleteIS5_EERPKcSB_.exit ]
  store ptr %i.k, ptr %i.a, align 8, !tbaa !21
  store ptr %i.k, ptr %4, align 8, !tbaa !21
  store ptr %.01946, ptr %7, align 8, !tbaa !44
  br label %_ZNKSt14default_deleteIN5boost6locale4util14base_converterEEclEPS3_.exit.i27

._crit_edge:                                      ; preds = %bb.a
  store ptr %2, ptr %4, align 8, !tbaa !21
  store ptr %5, ptr %7, align 8, !tbaa !44
  %.not = icmp ne ptr %2, %3
  %spec.select = zext i1 %.not to i32             ; 2 uses
  %.not.i26 = icmp eq ptr %i.g, null
  br i1 %.not.i26, label %_ZNSt10unique_ptrIN5boost6locale4util14base_converterESt14default_deleteIS3_EED2Ev.exit28, label %_ZNKSt14default_deleteIN5boost6locale4util14base_converterEEclEPS3_.exit.i27

_ZNKSt14default_deleteIN5boost6locale4util14base_converterEEclEPS3_.exit.i27: ; preds = %._crit_edge.thread, %.thread37, %._crit_edge
  %i.y = phi i32 [ %.222.ph, %.thread37 ], [ %spec.select, %._crit_edge ], [ %spec.select63, %._crit_edge.thread ]
  %i.z = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #19, !inline_history !1
  br label %_ZNSt10unique_ptrIN5boost6locale4util14base_converterESt14default_deleteIS3_EED2Ev.exit28

_ZNSt10unique_ptrIN5boost6locale4util14base_converterESt14default_deleteIS3_EED2Ev.exit28: ; preds = %._crit_edge, %_ZNKSt14default_deleteIN5boost6locale4util14base_converterEEclEPS3_.exit.i27
  %i.ac = phi i32 [ %spec.select, %._crit_edge ], [ %i.y, %_ZNKSt14default_deleteIN5boost6locale4util14base_converterEEclEPS3_.exit.i27 ]
  ret i32 %i.ac
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK5boost6locale15generic_codecvtIwNS0_4util14code_converterIwLb0EEELi4EE11do_encodingEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5boost6locale15generic_codecvtIwNS0_4util14code_converterIwLb0EEELi4EE16do_always_noconvEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK5boost6locale15generic_codecvtIwNS0_4util14code_converterIwLb0EEELi4EE9do_lengthER11__mbstate_tPKcS9_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  store ptr %2, ptr %i.a, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !29, !noalias !116 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25, !noalias !116
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !116
  %i.g = tail call noundef ptr %i.f(ptr noundef nonnull align 8 dereferenceable(8) %i.c), !noalias !116, !inline_history !4 ; 7 uses
  %i.h = icmp ne i64 %4, 0
  %i.i = icmp ult ptr %2, %3
  %i.j = and i1 %i.h, %i.i
  br i1 %i.j, label %.lr.ph, label %._crit_edge

bb.b:                                             ; preds = %_ZNK5boost6locale4util14code_converterIwLb0EE10to_unicodeERSt10unique_ptrINS1_14base_converterESt14default_deleteIS5_EERPKcSB_.exit
  %i.k = add i64 %.01226, -1                      ; 2 uses
  %i.l = icmp ne i64 %i.k, 0
  %i.m = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.n = icmp ult ptr %i.m, %3
  %i.o = select i1 %i.l, i1 %i.n, i1 false
  br i1 %i.o, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.b
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = ptrtoint ptr %2 to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = trunc i64 %i.r to i32
  br label %_ZNKSt14default_deleteIN5boost6locale4util14base_converterEEclEPS3_.exit.i16

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.t = phi ptr [ %i.m, %bb.b ], [ %2, %bb.a ]   ; 2 uses
  %.01226 = phi i64 [ %i.k, %bb.b ], [ %4, %bb.a ]
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = invoke noundef i32 %i.w(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %3)
          to label %_ZNK5boost6locale4util14code_converterIwLb0EE10to_unicodeERSt10unique_ptrINS1_14base_converterESt14default_deleteIS5_EERPKcSB_.exit unwind label %_ZNSt10unique_ptrIN5boost6locale4util14base_converterESt14default_deleteIS3_EED2Ev.exit, !inline_history !5

_ZNK5boost6locale4util14code_converterIwLb0EE10to_unicodeERSt10unique_ptrINS1_14base_converterESt14default_deleteIS5_EERPKcSB_.exit: ; preds = %.lr.ph
  %or.cond = icmp ugt i32 %i.x, -3
  br i1 %or.cond, label %.thread22, label %bb.b

.thread22:                                        ; preds = %_ZNK5boost6locale4util14code_converterIwLb0EE10to_unicodeERSt10unique_ptrINS1_14base_converterESt14default_deleteIS5_EERPKcSB_.exit
  store ptr %i.t, ptr %i.a, align 8, !tbaa !21
  %i.y = ptrtoint ptr %i.t to i64
  %i.z = ptrtoint ptr %2 to i64
  %i.aa = sub i64 %i.y, %i.z
  %i.ab = trunc i64 %i.aa to i32
  br label %_ZNKSt14default_deleteIN5boost6locale4util14base_converterEEclEPS3_.exit.i16

_ZNSt10unique_ptrIN5boost6locale4util14base_converterESt14default_deleteIS3_EED2Ev.exit: ; preds = %.lr.ph
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #19, !inline_history !1
  resume { ptr, i32 } %i.ac

._crit_edge:                                      ; preds = %bb.a
  %.not.i15 = icmp eq ptr %i.g, null
  br i1 %.not.i15, label %_ZNSt10unique_ptrIN5boost6locale4util14base_converterESt14default_deleteIS3_EED2Ev.exit17, label %_ZNKSt14default_deleteIN5boost6locale4util14base_converterEEclEPS3_.exit.i16

_ZNKSt14default_deleteIN5boost6locale4util14base_converterEEclEPS3_.exit.i16: ; preds = %._crit_edge.thread, %.thread22, %._crit_edge
  %i.ag = phi i32 [ %i.ab, %.thread22 ], [ 0, %._crit_edge ], [ %i.s, %._crit_edge.thread ]
  %i.ah = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #19, !inline_history !1
  br label %_ZNSt10unique_ptrIN5boost6locale4util14base_converterESt14default_deleteIS3_EED2Ev.exit17

_ZNSt10unique_ptrIN5boost6locale4util14base_converterESt14default_deleteIS3_EED2Ev.exit17: ; preds = %._crit_edge, %_ZNKSt14default_deleteIN5boost6locale4util14base_converterEEclEPS3_.exit.i16
  %i.ak = phi i32 [ 0, %._crit_edge ], [ %i.ag, %_ZNKSt14default_deleteIN5boost6locale4util14base_converterEEclEPS3_.exit.i16 ]
  ret i32 %i.ak
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK5boost6locale15generic_codecvtIwNS0_4util14code_converterIwLb0EEELi4EE13do_max_lengthEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !29   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = invoke noundef i32 %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_ZNK5boost6locale4util14code_converterIwLb0EE19max_encoding_lengthEv.exit unwind label %bb.b, !inline_history !117

_ZNK5boost6locale4util14code_converterIwLb0EE19max_encoding_lengthEv.exit: ; preds = %bb.a
  ret i32 %i.f

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #24
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6locale12utf8_codecvtIcED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZNSt7codecvtIcc11__mbstate_tED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN5boost6locale12utf8_codecvtIwED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #13 comdat align 2 {
bb.a:
  tail call void @_ZNSt7codecvtIwc11__mbstate_tED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #19
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #20
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK5boost6locale15generic_codecvtIwNS0_12utf8_codecvtIwEELi4EE6do_outER11__mbstate_tPKwS8_RS8_PcSA_RSA_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %7) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = icmp ult ptr %5, %6
  %i.b = icmp ult ptr %2, %3
  %i.c = and i1 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = ptrtoint ptr %6 to i64                   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZN5boost6locale12utf8_codecvtIwE12from_unicodeERNS2_10state_typeEjPcPKc.exit
  %.02550 = phi ptr [ %2, %.lr.ph ], [ %i.ay, %_ZN5boost6locale12utf8_codecvtIwE12from_unicodeERNS2_10state_typeEjPcPKc.exit ] ; 3 uses
  %.02949 = phi ptr [ %5, %.lr.ph ], [ %i.ax, %_ZN5boost6locale12utf8_codecvtIwE12from_unicodeERNS2_10state_typeEjPcPKc.exit ] ; 11 uses
  %i.e = load i32, ptr %.02550, align 4, !tbaa !42 ; 15 uses
  %i.f = icmp ult i32 %i.e, 1114112
  %i.g = and i32 %i.e, 2095104
  %or.cond.i = icmp ne i32 %i.g, 55296
  %.0.i = and i1 %i.f, %or.cond.i
  br i1 %.0.i, label %bb.c, label %_ZN5boost6locale12utf8_codecvtIwE12from_unicodeERNS2_10state_typeEjPcPKc.exit.thread39.thread

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ult i32 %i.e, 128
  br i1 %i.h, label %_ZN5boost6locale3utf10utf_traitsIcLi1EE5widthEj.exit.thread.i, label %_ZN5boost6locale3utf10utf_traitsIcLi1EE5widthEj.exit.i

_ZN5boost6locale3utf10utf_traitsIcLi1EE5widthEj.exit.i: ; preds = %bb.c
  %i.i = icmp samesign ult i32 %i.e, 2048         ; 2 uses
  %i.j = icmp samesign ult i32 %i.e, 65536        ; 2 uses
  %..i.i = select i1 %i.j, i64 3, i64 4, !prof !43
  %.0.i.i = select i1 %i.i, i64 2, i64 %..i.i
  %i.k = ptrtoint ptr %.02949 to i64
  %i.l = sub i64 %i.d, %i.k
  %i.m = icmp slt i64 %i.l, %.0.i.i
  br i1 %i.m, label %_ZN5boost6locale12utf8_codecvtIwE12from_unicodeERNS2_10state_typeEjPcPKc.exit.thread39.thread, label %bb.d

_ZN5boost6locale3utf10utf_traitsIcLi1EE5widthEj.exit.thread.i: ; preds = %bb.c
  %i.n = ptrtoint ptr %.02949 to i64
  %i.o = sub i64 %i.d, %i.n
  %i.p = icmp slt i64 %i.o, 1
  br i1 %i.p, label %_ZN5boost6locale12utf8_codecvtIwE12from_unicodeERNS2_10state_typeEjPcPKc.exit.thread39.thread, label %.thread.i

.thread.i:                                        ; preds = %_ZN5boost6locale3utf10utf_traitsIcLi1EE5widthEj.exit.thread.i
  %i.q = trunc nuw nsw i32 %i.e to i8
  store i8 %i.q, ptr %.02949, align 1, !tbaa !23
  br label %_ZN5boost6locale12utf8_codecvtIwE12from_unicodeERNS2_10state_typeEjPcPKc.exit

bb.d:                                             ; preds = %_ZN5boost6locale3utf10utf_traitsIcLi1EE5widthEj.exit.i
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = lshr i32 %i.e, 6
  %i.s = trunc nuw nsw i32 %i.r to i8
  %i.t = or disjoint i8 %i.s, -64
  %i.u = getelementptr inbounds nuw i8, ptr %.02949, i64 1
  store i8 %i.t, ptr %.02949, align 1, !tbaa !23
  %i.v = trunc i32 %i.e to i8
  %i.w = and i8 %i.v, 63
  %i.x = or disjoint i8 %i.w, -128
  store i8 %i.x, ptr %i.u, align 1, !tbaa !23
  br label %_ZN5boost6locale12utf8_codecvtIwE12from_unicodeERNS2_10state_typeEjPcPKc.exit

bb.f:                                             ; preds = %bb.d
  br i1 %i.j, label %bb.g, label %bb.h, !prof !43

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %.02949, i64 2
  %i.z = getelementptr inbounds nuw i8, ptr %.02949, i64 1
  %i.aa = lshr i32 %i.e, 12
  %i.ab = trunc nuw nsw i32 %i.aa to i8
  %i.ac = or disjoint i8 %i.ab, -32
  store i8 %i.ac, ptr %.02949, align 1, !tbaa !23
  %i.ad = lshr i32 %i.e, 6
  %i.ae = trunc i32 %i.ad to i8
  %i.af = and i8 %i.ae, 63
  %i.ag = or disjoint i8 %i.af, -128
  store i8 %i.ag, ptr %i.z, align 1, !tbaa !23
  %i.ah = trunc i32 %i.e to i8
  %i.ai = and i8 %i.ah, 63
  %i.aj = or disjoint i8 %i.ai, -128
  store i8 %i.aj, ptr %i.y, align 1, !tbaa !23
  br label %_ZN5boost6locale12utf8_codecvtIwE12from_unicodeERNS2_10state_typeEjPcPKc.exit

bb.h:                                             ; preds = %bb.f
  %i.ak = lshr i32 %i.e, 18
  %i.al = trunc nuw nsw i32 %i.ak to i8
  %i.am = lshr i32 %i.e, 12
  %i.an = trunc i32 %i.am to i8
  %i.ao = lshr i32 %i.e, 6
  %i.ap = trunc i32 %i.ao to i8
  %i.aq = trunc i32 %i.e to i8
  %i.ar = insertelement <4 x i8> poison, i8 %i.al, i64 0
  %i.as = insertelement <4 x i8> %i.ar, i8 %i.an, i64 1
  %i.at = insertelement <4 x i8> %i.as, i8 %i.ap, i64 2
  %i.au = insertelement <4 x i8> %i.at, i8 %i.aq, i64 3
  %i.av = and <4 x i8> %i.au, <i8 -1, i8 63, i8 63, i8 63>
  %i.aw = or disjoint <4 x i8> %i.av, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.aw, ptr %.02949, align 1, !tbaa !23
  br label %_ZN5boost6locale12utf8_codecvtIwE12from_unicodeERNS2_10state_typeEjPcPKc.exit

_ZN5boost6locale12utf8_codecvtIwE12from_unicodeERNS2_10state_typeEjPcPKc.exit: ; preds = %bb.h, %bb.g, %bb.e, %.thread.i
  %.0.i35.ph = phi i64 [ 4, %bb.h ], [ 3, %bb.g ], [ 2, %bb.e ], [ 1, %.thread.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.02949, i64 %.0.i35.ph ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.02550, i64 4 ; 3 uses
  %i.az = icmp ult ptr %i.ax, %6
  %i.ba = icmp ult ptr %i.ay, %3
  %i.bb = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %i.bb, label %bb.b, label %._crit_edge

_ZN5boost6locale12utf8_codecvtIwE12from_unicodeERNS2_10state_typeEjPcPKc.exit.thread39.thread: ; preds = %_ZN5boost6locale3utf10utf_traitsIcLi1EE5widthEj.exit.i, %_ZN5boost6locale3utf10utf_traitsIcLi1EE5widthEj.exit.thread.i, %bb.b
  %.3.ph = phi i32 [ 2, %bb.b ], [ 1, %_ZN5boost6locale3utf10utf_traitsIcLi1EE5widthEj.exit.thread.i ], [ 1, %_ZN5boost6locale3utf10utf_traitsIcLi1EE5widthEj.exit.i ]
  store ptr %.02550, ptr %4, align 8, !tbaa !44
  store ptr %.02949, ptr %7, align 8, !tbaa !21
  br label %bb.i

._crit_edge:                                      ; preds = %_ZN5boost6locale12utf8_codecvtIwE12from_unicodeERNS2_10state_typeEjPcPKc.exit, %bb.a
  %.029.lcssa = phi ptr [ %5, %bb.a ], [ %i.ax, %_ZN5boost6locale12utf8_codecvtIwE12from_unicodeERNS2_10state_typeEjPcPKc.exit ]
  %.025.lcssa = phi ptr [ %2, %bb.a ], [ %i.ay, %_ZN5boost6locale12utf8_codecvtIwE12from_unicodeERNS2_10state_typeEjPcPKc.exit ] ; 2 uses
  store ptr %.025.lcssa, ptr %4, align 8, !tbaa !44
  store ptr %.029.lcssa, ptr %7, align 8, !tbaa !21
  %.not = icmp ne ptr %.025.lcssa, %3
  %spec.select = zext i1 %.not to i32
  br label %bb.i

bb.i:                                             ; preds = %_ZN5boost6locale12utf8_codecvtIwE12from_unicodeERNS2_10state_typeEjPcPKc.exit.thread39.thread, %._crit_edge
  %i.bc = phi i32 [ %spec.select, %._crit_edge ], [ %.3.ph, %_ZN5boost6locale12utf8_codecvtIwE12from_unicodeERNS2_10state_typeEjPcPKc.exit.thread39.thread ]
  ret i32 %i.bc
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK5boost6locale15generic_codecvtIwNS0_12utf8_codecvtIwEELi4EE10do_unshiftER11__mbstate_tPcS7_RS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #0 comdat align 2 {
bb.a:
  store ptr %2, ptr %4, align 8, !tbaa !21
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK5boost6locale15generic_codecvtIwNS0_12utf8_codecvtIwEELi4EE5do_inER11__mbstate_tPKcS8_RS8_PwSA_RSA_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %7) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = icmp ult ptr %5, %6
  %i.c = icmp ult ptr %2, %3
  %i.d = and i1 %i.b, %i.c
  br i1 %i.d, label %_ZN5boost6locale12utf8_codecvtIwE10to_unicodeERNS2_10state_typeERPKcS6_.exit, label %._crit_edge

_ZN5boost6locale12utf8_codecvtIwE10to_unicodeERNS2_10state_typeERPKcS6_.exit: ; preds = %bb.a, %bb.b
  %.01846 = phi ptr [ %i.g, %bb.b ], [ %5, %bb.a ] ; 3 uses
  %.02745 = phi ptr [ %i.f, %bb.b ], [ %2, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr %.02745, ptr %i.a, align 8, !tbaa !21
  %i.e = call noundef i32 @_ZN5boost6locale3utf10utf_traitsIcLi1EE6decodeIPKcEEjRT_S7_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %3) ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8              ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  switch i32 %i.e, label %bb.b [
    i32 -1, label %.thread.thread.loopexit
    i32 -2, label %.thread.thread
  ]

bb.b:                                             ; preds = %_ZN5boost6locale12utf8_codecvtIwE10to_unicodeERNS2_10state_typeERPKcS6_.exit
  %i.g = getelementptr inbounds nuw i8, ptr %.01846, i64 4 ; 3 uses
  store i32 %i.e, ptr %.01846, align 4, !tbaa !42
  %i.h = icmp ult ptr %i.g, %6
  %i.i = icmp ult ptr %i.f, %3
  %i.j = select i1 %i.h, i1 %i.i, i1 false
  br i1 %i.j, label %_ZN5boost6locale12utf8_codecvtIwE10to_unicodeERNS2_10state_typeERPKcS6_.exit, label %._crit_edge

.thread.thread.loopexit:                          ; preds = %_ZN5boost6locale12utf8_codecvtIwE10to_unicodeERNS2_10state_typeERPKcS6_.exit
  br label %.thread.thread

.thread.thread:                                   ; preds = %_ZN5boost6locale12utf8_codecvtIwE10to_unicodeERNS2_10state_typeERPKcS6_.exit, %.thread.thread.loopexit
  %.2.ph = phi i32 [ 2, %.thread.thread.loopexit ], [ 1, %_ZN5boost6locale12utf8_codecvtIwE10to_unicodeERNS2_10state_typeERPKcS6_.exit ]
  store ptr %.02745, ptr %4, align 8, !tbaa !21
  store ptr %.01846, ptr %7, align 8, !tbaa !44
  br label %bb.c

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.027.lcssa = phi ptr [ %2, %bb.a ], [ %i.f, %bb.b ] ; 2 uses
  %.018.lcssa = phi ptr [ %5, %bb.a ], [ %i.g, %bb.b ]
  store ptr %.027.lcssa, ptr %4, align 8, !tbaa !21
  store ptr %.018.lcssa, ptr %7, align 8, !tbaa !44
  %.not = icmp ne ptr %.027.lcssa, %3
  %spec.select = zext i1 %.not to i32
  br label %bb.c

bb.c:                                             ; preds = %.thread.thread, %._crit_edge
  %i.k = phi i32 [ %spec.select, %._crit_edge ], [ %.2.ph, %.thread.thread ]
  ret i32 %i.k
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK5boost6locale15generic_codecvtIwNS0_12utf8_codecvtIwEELi4EE11do_encodingEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK5boost6locale15generic_codecvtIwNS0_12utf8_codecvtIwEELi4EE16do_always_noconvEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK5boost6locale15generic_codecvtIwNS0_12utf8_codecvtIwEELi4EE9do_lengthER11__mbstate_tPKcS8_m(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = icmp ne i64 %4, 0
  %i.c = icmp ult ptr %2, %3
  %i.d = and i1 %i.b, %i.c
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.01025 = phi i64 [ %i.g, %bb.b ], [ %4, %bb.a ]
  %.01524 = phi ptr [ %i.f, %bb.b ], [ %2, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store ptr %.01524, ptr %i.a, align 8, !tbaa !21
  %i.e = call noundef i32 @_ZN5boost6locale3utf10utf_traitsIcLi1EE6decodeIPKcEEjRT_S7_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull %3)
  %or.cond.i = icmp ult i32 %i.e, -2
  br i1 %or.cond.i, label %bb.b, label %.thread

.thread:                                          ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !21   ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.g = add i64 %.01025, -1                      ; 2 uses
  %i.h = icmp ne i64 %i.g, 0
  %i.i = icmp ult ptr %i.f, %3
  %i.j = select i1 %i.h, i1 %i.i, i1 false
end_hunk_1
