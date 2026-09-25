Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/console_buffer?download=true
inline.NumInlined: 155
inline.NumDeleted: 80
begin_hunk_0_@_ZN5boost6nowide6detail26console_output_buffer_base8overflowEi:bb.a
  %i.aj = zext nneg i32 %.0 to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  %i.al = sub nsw i32 %i.j, %.0                   ; 2 uses
  %i.am = zext nneg i32 %i.al to i64
  call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ai, ptr align 1 %i.ak, i64 %i.am, i1 false)
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %.pre-phi = phi i32 [ %.pre, %._crit_edge ], [ %i.al, %bb.f ] ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1088
  store ptr %i.an, ptr %i.e, align 8, !tbaa !40
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !42
  %i.aq = sext i32 %.pre-phi to i64
  %i.ar = getelementptr inbounds i8, ptr %i.an, i64 %i.aq ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8, !tbaa !39
  %.not = icmp eq i32 %1, -1
  br i1 %.not, label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sputcEc.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = icmp slt i32 %.pre-phi, 1024
  br i1 %i.as, label %bb.i, label %bb.j, !prof !22

bb.i:                                             ; preds = %bb.h
  %i.at = trunc i32 %1 to i8
  store i8 %i.at, ptr %i.ar, align 1, !tbaa !23
  %i.au = load ptr, ptr %i.c, align 8, !tbaa !39
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 1
  store ptr %i.av, ptr %i.c, align 8, !tbaa !39
  br label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sputcEc.exit

bb.j:                                             ; preds = %bb.h
  %i.aw = and i32 %1, 255
  %i.ax = load ptr, ptr %0, align 8, !tbaa !10
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = call noundef i32 %i.az(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %i.aw), !inline_history !38 ; 0 uses
  br label %_ZNSt15basic_streambufIcSt11char_traitsIcEE5sputcEc.exit

_ZNSt15basic_streambufIcSt11char_traitsIcEE5sputcEc.exit: ; preds = %bb.j, %bb.i, %_ZN5boost6nowide6detail26console_output_buffer_base5writeEPKci.exit.thread, %bb.g, %_ZN5boost6nowide6detail26console_output_buffer_base5writeEPKci.exit
  %.010 = phi i32 [ -1, %_ZN5boost6nowide6detail26console_output_buffer_base5writeEPKci.exit ], [ -1, %_ZN5boost6nowide6detail26console_output_buffer_base5writeEPKci.exit.thread ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.j ]
  ret i32 %.010
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN5boost6nowide6detail26console_output_buffer_base5writeEPKci(ptr noundef nonnull align 8 dereferenceable(5184) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !16
  %i.c = sext i32 %2 to i64
  %i.d = getelementptr inbounds i8, ptr %1, i64 %i.c ; 2 uses
  %i.e = icmp sgt i32 %2, 1024
  br i1 %i.e, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 4 uses
  %i.g = call noundef i32 @_ZN5boost6nowide3utf10utf_traitsIcLi1EE6decodeIPKcEEjRT_S7_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.d) ; 2 uses
  %.not13 = icmp eq i32 %i.g, -2
  br i1 %.not13, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %i.h = phi i32 [ %i.l, %.lr.ph ], [ %i.g, %bb.b ] ; 2 uses
  %.01014 = phi ptr [ %i.j, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %i.i = icmp eq i32 %i.h, -1
  %spec.store.select = select i1 %i.i, i32 65533, i32 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %.01014, i64 4 ; 2 uses
  store i32 %spec.store.select, ptr %.01014, align 4, !tbaa !18
  %i.k = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.l = call noundef i32 @_ZN5boost6nowide3utf10utf_traitsIcLi1EE6decodeIPKcEEjRT_S7_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef %i.d) ; 2 uses
  %.not = icmp eq i32 %i.l, -2
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %1 to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = trunc i64 %i.o to i32
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.010.lcssa = phi ptr [ %i.j, %._crit_edge ], [ %i.f, %bb.b ]
  %.0.lcssa = phi i32 [ %i.p, %._crit_edge ], [ 0, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store i64 0, ptr %i.b, align 8, !tbaa !21
  %i.q = ptrtoint ptr %.010.lcssa to i64
  %i.r = ptrtoint ptr %i.f to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = load ptr, ptr %0, align 8, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 112
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call noundef zeroext i1 %i.w(ptr noundef nonnull align 8 dereferenceable(5184) %0, ptr noundef nonnull %i.f, i64 noundef %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
  %.011 = select i1 %i.x, i32 %.0.lcssa, i32 -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %.1 = phi i32 [ %.011, %bb.c ], [ -1, %bb.a ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN5boost6nowide3utf10utf_traitsIcLi1EE6decodeIPKcEEjRT_S7_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16     ; 4 uses
  %i.b = icmp eq ptr %i.a, %1
  br i1 %i.b, label %_ZN5boost6nowide3utf10utf_traitsIcLi1EE12trail_lengthEc.exit, label %bb.b, !prof !43

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 5 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !16
  %i.d = load i8, ptr %i.a, align 1, !tbaa !23    ; 9 uses
  %i.e = icmp sgt i8 %i.d, -1
  br i1 %i.e, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = icmp samesign ult i8 %i.d, -62
  br i1 %i.f, label %_ZN5boost6nowide3utf10utf_traitsIcLi1EE12trail_lengthEc.exit, label %bb.d, !prof !43

bb.d:                                             ; preds = %bb.c
  %i.g = icmp samesign ult i8 %i.d, -32
  br i1 %i.g, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = icmp samesign ult i8 %i.d, -16
  br i1 %i.h, label %.thread57, label %bb.f

.thread57:                                        ; preds = %bb.e
  %i.i = and i8 %i.d, 15
  %i.j = zext nneg i8 %i.i to i32
  br label %bb.l

bb.f:                                             ; preds = %bb.e
  %i.k = icmp samesign ult i8 %i.d, -11
  br i1 %i.k, label %bb.i, label %_ZN5boost6nowide3utf10utf_traitsIcLi1EE12trail_lengthEc.exit, !prof !22

bb.g:                                             ; preds = %bb.b
  %i.l = zext nneg i8 %i.d to i32
  br label %_ZN5boost6nowide3utf10utf_traitsIcLi1EE12trail_lengthEc.exit

bb.h:                                             ; preds = %bb.d
  %i.m = and i8 %i.d, 31
  %i.n = zext nneg i8 %i.m to i32
  br label %bb.o

bb.i:                                             ; preds = %bb.f
  %i.o = and i8 %i.d, 7
  %i.p = zext nneg i8 %i.o to i32
  %i.q = icmp eq ptr %i.c, %1
  br i1 %i.q, label %_ZN5boost6nowide3utf10utf_traitsIcLi1EE12trail_lengthEc.exit, label %bb.j, !prof !43

bb.j:                                             ; preds = %bb.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  store ptr %i.r, ptr %0, align 8, !tbaa !16
  %i.s = load i8, ptr %i.c, align 1, !tbaa !23    ; 2 uses
  %i.t = icmp slt i8 %i.s, -64
  br i1 %i.t, label %bb.k, label %_ZN5boost6nowide3utf10utf_traitsIcLi1EE12trail_lengthEc.exit

bb.k:                                             ; preds = %bb.j
  %i.u = shl nuw nsw i32 %i.p, 6
  %i.v = and i8 %i.s, 63
  %i.w = zext nneg i8 %i.v to i32
  %i.x = or disjoint i32 %i.u, %i.w
  br label %bb.l

bb.l:                                             ; preds = %.thread57, %bb.k
  %i.y = phi ptr [ %i.r, %bb.k ], [ %i.c, %.thread57 ] ; 3 uses
  %.0.i.ph.ph54 = phi i32 [ 3, %bb.k ], [ 2, %.thread57 ]
  %.0 = phi i32 [ %i.x, %bb.k ], [ %i.j, %.thread57 ]
  %i.z = icmp eq ptr %i.y, %1
  br i1 %i.z, label %_ZN5boost6nowide3utf10utf_traitsIcLi1EE12trail_lengthEc.exit, label %bb.m, !prof !43

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 2 uses
  store ptr %i.aa, ptr %0, align 8, !tbaa !16
  %i.ab = load i8, ptr %i.y, align 1, !tbaa !23   ; 2 uses
  %i.ac = icmp slt i8 %i.ab, -64
  br i1 %i.ac, label %bb.n, label %_ZN5boost6nowide3utf10utf_traitsIcLi1EE12trail_lengthEc.exit

bb.n:                                             ; preds = %bb.m
  %i.ad = shl nuw nsw i32 %.0, 6
  %i.ae = and i8 %i.ab, 63
  %i.af = zext nneg i8 %i.ae to i32
  %i.ag = or disjoint i32 %i.ad, %i.af
  br label %bb.o

bb.o:                                             ; preds = %bb.h, %bb.n
  %i.ah = phi ptr [ %i.aa, %bb.n ], [ %i.c, %bb.h ] ; 3 uses
  %.0.i.ph.ph53 = phi i32 [ %.0.i.ph.ph54, %bb.n ], [ 1, %bb.h ] ; 2 uses
  %.1 = phi i32 [ %i.ag, %bb.n ], [ %i.n, %bb.h ] ; 5 uses
  %i.ai = icmp eq ptr %i.ah, %1
  br i1 %i.ai, label %_ZN5boost6nowide3utf10utf_traitsIcLi1EE12trail_lengthEc.exit, label %bb.p, !prof !43

bb.p:                                             ; preds = %bb.o
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 1 ; 2 uses
  store ptr %i.aj, ptr %0, align 8, !tbaa !16
  %i.ak = load i8, ptr %i.ah, align 1, !tbaa !23  ; 2 uses
  %i.al = icmp slt i8 %i.ak, -64
  br i1 %i.al, label %bb.q, label %_ZN5boost6nowide3utf10utf_traitsIcLi1EE12trail_lengthEc.exit

bb.q:                                             ; preds = %bb.p
  %i.am = and i32 %.1, 32736
  %or.cond.i = icmp eq i32 %i.am, 864
  %2 = add nsw i32 %.1, -17408
  %i.an = icmp ult i32 %2, -17406
  %or.cond = or i1 %i.an, %or.cond.i
  br i1 %or.cond, label %_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.thread, label %_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit, !prof !44

_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit: ; preds = %bb.q
  %i.ao = shl nuw nsw i32 %.1, 6
  %i.ap = and i8 %i.ak, 63
  %i.aq = zext nneg i8 %i.ap to i32
  %i.ar = or disjoint i32 %i.ao, %i.aq
  %i.as = icmp samesign ult i32 %.1, 32
  %i.at = icmp samesign ult i32 %.1, 1024
  %..i44 = select i1 %i.at, i32 3, i32 4, !prof !22
  %.0.i45 = select i1 %i.as, i32 2, i32 %..i44
  %i.au = add nuw nsw i32 %.0.i.ph.ph53, 1
  %.not = icmp eq i32 %.0.i45, %i.au
  br i1 %.not, label %_ZN5boost6nowide3utf10utf_traitsIcLi1EE12trail_lengthEc.exit, label %_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.thread, !prof !45

_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.thread: ; preds = %_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit, %bb.q
  %i.av = zext nneg i32 %.0.i.ph.ph53 to i64
  %i.aw = sub nsw i64 0, %i.av
  %i.ax = getelementptr inbounds i8, ptr %i.aj, i64 %i.aw
  store ptr %i.ax, ptr %0, align 8, !tbaa !16
  br label %_ZN5boost6nowide3utf10utf_traitsIcLi1EE12trail_lengthEc.exit

_ZN5boost6nowide3utf10utf_traitsIcLi1EE12trail_lengthEc.exit: ; preds = %bb.c, %bb.f, %bb.g, %_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit, %bb.p, %bb.o, %bb.m, %bb.l, %bb.j, %bb.i, %_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.thread, %bb.a
  %.236 = phi i32 [ -2, %bb.a ], [ %i.ar, %_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit ], [ %i.l, %bb.g ], [ -1, %_ZN5boost6nowide3utf10utf_traitsIcLi1EE5widthEj.exit.thread ], [ -1, %bb.p ], [ -2, %bb.i ], [ -1, %bb.j ], [ -1, %bb.m ], [ -2, %bb.o ], [ -2, %bb.l ], [ -1, %bb.f ], [ -1, %bb.c ]
  ret i32 %.236
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef i32 @_ZN5boost6nowide6detail25console_input_buffer_base4syncEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8289) initializes((8, 32), (8256, 8264), (8288, 8289)) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8256
  store i64 0, ptr %i.a, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8288
  store i8 1, ptr %i.b, align 8, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8264
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !32   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8272 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !33
  %.not.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i, label %_ZNSt6vectorIcSaIcEE5clearEv.exit, label %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.d, ptr %i.e, align 8, !tbaa !33
  br label %_ZNSt6vectorIcSaIcEE5clearEv.exit

_ZNSt6vectorIcSaIcEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPccEvT_S1_RSaIT0_E.exit.i.i
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, i8 0, i64 24, i1 false)
  ret i32 0
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 1) i32 @_ZN5boost6nowide6detail25console_input_buffer_base9pbackfailEi(ptr noundef nonnull align 8 dereferenceable(8289) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = icmp eq i32 %1, -1
  br i1 %i.b, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !34   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !35
  %.not = icmp eq ptr %i.d, %i.f
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.d, i64 -1 ; 2 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !34
  %i.h = trunc i32 %1 to i8
  store i8 %i.h, ptr %i.g, align 1, !tbaa !23
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8264 ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8272 ; 5 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !16   ; 2 uses
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.n = trunc i32 %1 to i8                       ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8280 ; 3 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !36
  %.not.i.i = icmp eq ptr %i.j, %i.p
  br i1 %.not.i.i, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i8 %i.n, ptr %i.l, align 1, !tbaa !23
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !33
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 2 uses
  store ptr %i.r, ptr %i.k, align 8, !tbaa !33
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.e
  %i.s = tail call noalias noundef nonnull dereferenceable(1) ptr @_Znwm(i64 noundef 1) #15 ; 3 uses
  store i8 %i.n, ptr %i.s, align 1, !tbaa !23
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 3 uses
  %.not.i17.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  %i.u = ptrtoint ptr %i.j to i64
  %i.v = load ptr, ptr %i.o, align 8, !tbaa !36
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.x) #16
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i: ; preds = %bb.g, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i.i
  store ptr %i.s, ptr %i.i, align 8, !tbaa !32
  store ptr %i.t, ptr %i.k, align 8, !tbaa !33
  store ptr %i.t, ptr %i.o, align 8, !tbaa !36
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit

bb.h:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.y = trunc i32 %1 to i8
  store i8 %i.y, ptr %i.a, align 1, !tbaa !23
  %i.z = call ptr @_ZNSt6vectorIcSaIcEE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKcS1_EEOc(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr %i.j, ptr noundef nonnull align 1 dereferenceable(1) %i.a) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !33
  br label %_ZNSt6vectorIcSaIcEE9push_backEOc.exit

_ZNSt6vectorIcSaIcEE9push_backEOc.exit:           ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i, %bb.f, %bb.h
  %i.aa = phi ptr [ %i.t, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i.i ], [ %i.r, %bb.f ], [ %.pre, %bb.h ]
  %i.ab = load ptr, ptr %i.i, align 8, !tbaa !32  ; 4 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ae
  store ptr %i.ab, ptr %i.e, align 8, !tbaa !35
  store ptr %i.ab, ptr %i.c, align 8, !tbaa !34
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !37
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit, %bb.c
  %.0 = phi i32 [ 0, %_ZNSt6vectorIcSaIcEE9push_backEOc.exit ], [ 0, %bb.c ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef range(i32 -1, 256) i32 @_ZN5boost6nowide6detail25console_input_buffer_base9underflowEv(ptr noundef nonnull align 8 dereferenceable(8289) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8264
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8272 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZNSt6vectorIcSaIcEE5clearEv.exit

_ZNSt6vectorIcSaIcEE5clearEv.exit:                ; preds = %bb.a
  store ptr %i.b, ptr %i.c, align 8, !tbaa !33
  br label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIcSaIcEE5clearEv.exit, %bb.a
  %i.f = tail call noundef i64 @_ZN5boost6nowide6detail25console_input_buffer_base4readEv(ptr noundef nonnull align 8 dereferenceable(8289) %0) ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %i.i, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.j, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.h, ptr %i.k, align 8, !tbaa !37
  %i.l = icmp eq i64 %i.f, 0
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load i8, ptr %i.g, align 8, !tbaa !23
  %i.n = zext i8 %i.m to i32
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0 = phi i32 [ %i.n, %bb.c ], [ -1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define noundef range(i64 -9223372036854775808, 9223372036854775744) i64 @_ZN5boost6nowide6detail25console_input_buffer_base4readEv(ptr noundef nonnull align 8 dereferenceable(8289) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 0, ptr %i.a, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4160 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8256 ; 4 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !30   ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.d
  %i.f = sub i64 1024, %i.d
  %i.g = load ptr, ptr %0, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(8289) %0, ptr noundef nonnull %i.e, i64 noundef %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br i1 %i.j, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.a, align 8, !tbaa !21
  %i.l = load i64, ptr %i.c, align 8, !tbaa !30
end_hunk_0
