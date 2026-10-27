Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/pyexpat?download=true
inline.NumInlined: 237
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@my_ProcessingInstructionHandler:bb.a
bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 60         ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !47   ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %flush_character_buffer.exit.thread, label %flush_character_buffer.exit

flush_character_buffer.exit:                      ; preds = %bb.d
  %i.k = tail call fastcc i32 @call_character_handler(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i32 noundef %i.i), !inline_history !1
  store i32 0, ptr %i.h, align 4, !tbaa !47
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %Py_DECREF.exit, label %flush_character_buffer.exit.thread

flush_character_buffer.exit.thread:               ; preds = %bb.c, %bb.d, %flush_character_buffer.exit
  %i.m = tail call fastcc ptr @string_intern(ptr noundef nonnull %0, ptr noundef %1)
  %i.n = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.46, ptr noundef %i.m, ptr noundef nonnull @conv_string_to_unicode_void, ptr noundef %2) #8 ; 5 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %bb.i

bb.e:                                             ; preds = %flush_character_buffer.exit.thread
  %i.p = load ptr, ptr @handler_info, align 16, !tbaa !55
  %.not15.i.i = icmp eq ptr %i.p, null
  br i1 %.not15.i.i, label %flag_error.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.q = getelementptr i8, ptr %0, i64 16
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %Py_DECREF.exit.us.i.i, %.lr.ph.i.i
  %.016.us.i.i = phi i64 [ %i.aa, %Py_DECREF.exit.us.i.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.r = getelementptr [64 x i8], ptr @handler_info, i64 %.016.us.i.i
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.t = getelementptr [8 x i8], ptr %i.s, i64 %.016.us.i.i ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !26   ; 4 uses
  %.not14.us.i.i = icmp eq ptr %i.u, null
  br i1 %.not14.us.i.i, label %Py_DECREF.exit.us.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us.i.i
  store ptr null, ptr %i.t, align 8, !tbaa !26
  %i.v = load i32, ptr %i.u, align 8, !tbaa !25   ; 2 uses
  %.not.i.us.i.i = icmp sgt i32 %i.v, -1
  br i1 %.not.i.us.i.i, label %bb.g, label %Py_DECREF.exit.us.i.i

bb.g:                                             ; preds = %bb.f
  %i.w = add nsw i32 %i.v, -1                     ; 2 uses
  store i32 %i.w, ptr %i.u, align 8, !tbaa !25
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.h, label %Py_DECREF.exit.us.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.u) #8, !inline_history !2
  br label %Py_DECREF.exit.us.i.i

Py_DECREF.exit.us.i.i:                            ; preds = %bb.h, %bb.g, %bb.f, %.lr.ph.split.us.i.i
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !51
  %i.z = getelementptr i8, ptr %i.r, i64 8
  %.val.us.i.i = load ptr, ptr %i.z, align 8, !tbaa !59
  tail call void %.val.us.i.i(ptr noundef %i.y, ptr noundef null) #8, !inline_history !3
  %i.aa = add i64 %.016.us.i.i, 1                 ; 2 uses
  %i.ab = getelementptr [64 x i8], ptr @handler_info, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 16, !tbaa !55
  %.not.us.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.us.i.i, label %flag_error.exit, label %.lr.ph.split.us.i.i, !llvm.loop !0

flag_error.exit:                                  ; preds = %Py_DECREF.exit.us.i.i, %bb.e
  %i.ad = getelementptr i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !51
  tail call void @PyExpat_XML_SetExternalEntityRefHandler(ptr noundef %i.ae, ptr noundef nonnull @error_external_entity_ref_handler) #8, !inline_history !60
  br label %Py_DECREF.exit

bb.i:                                             ; preds = %flush_character_buffer.exit.thread
  %i.af = getelementptr i8, ptr %0, i64 40        ; 2 uses
  store i32 1, ptr %i.af, align 8, !tbaa !61
  %i.ag = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.ah = getelementptr i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !26
  %i.aj = tail call ptr @PyObject_Call(ptr noundef %i.ai, ptr noundef nonnull %i.n, ptr noundef null) #8 ; 4 uses
  %i.ak = icmp eq ptr %i.aj, null                 ; 2 uses
  br i1 %i.ak, label %bb.j, label %call_with_frame.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_PyTraceback_Add(ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.43, i32 noundef 565) #8
  %i.al = getelementptr i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !51
  %i.an = tail call i32 @PyExpat_XML_StopParser(ptr noundef %i.am, i8 noundef zeroext 0) #8 ; 0 uses
  br label %call_with_frame.exit

call_with_frame.exit:                             ; preds = %bb.i, %bb.j
  store i32 0, ptr %i.af, align 8, !tbaa !61
  %i.ao = load i32, ptr %i.n, align 8, !tbaa !25  ; 2 uses
  %.not.i19 = icmp sgt i32 %i.ao, -1
  br i1 %.not.i19, label %bb.k, label %Py_DECREF.exit20

bb.k:                                             ; preds = %call_with_frame.exit
  %i.ap = add nsw i32 %i.ao, -1                   ; 2 uses
  store i32 %i.ap, ptr %i.n, align 8, !tbaa !25
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.l, label %Py_DECREF.exit20

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.n) #8
  br label %Py_DECREF.exit20

Py_DECREF.exit20:                                 ; preds = %call_with_frame.exit, %bb.k, %bb.l
  br i1 %i.ak, label %bb.m, label %bb.q

bb.m:                                             ; preds = %Py_DECREF.exit20
  %i.ar = load ptr, ptr @handler_info, align 16, !tbaa !55
  %.not15.i.i22 = icmp eq ptr %i.ar, null
  br i1 %.not15.i.i22, label %flag_error.exit31, label %.lr.ph.i.i23

.lr.ph.i.i23:                                     ; preds = %bb.m
  %i.as = getelementptr i8, ptr %0, i64 16
  br label %.lr.ph.split.us.i.i24

.lr.ph.split.us.i.i24:                            ; preds = %Py_DECREF.exit.us.i.i28, %.lr.ph.i.i23
  %.016.us.i.i25 = phi i64 [ %i.bc, %Py_DECREF.exit.us.i.i28 ], [ 0, %.lr.ph.i.i23 ] ; 3 uses
  %i.at = getelementptr [64 x i8], ptr @handler_info, i64 %.016.us.i.i25
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.av = getelementptr [8 x i8], ptr %i.au, i64 %.016.us.i.i25 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !26 ; 4 uses
  %.not14.us.i.i26 = icmp eq ptr %i.aw, null
  br i1 %.not14.us.i.i26, label %Py_DECREF.exit.us.i.i28, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.us.i.i24
  store ptr null, ptr %i.av, align 8, !tbaa !26
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !25 ; 2 uses
  %.not.i.us.i.i27 = icmp sgt i32 %i.ax, -1
  br i1 %.not.i.us.i.i27, label %bb.o, label %Py_DECREF.exit.us.i.i28

bb.o:                                             ; preds = %bb.n
  %i.ay = add nsw i32 %i.ax, -1                   ; 2 uses
  store i32 %i.ay, ptr %i.aw, align 8, !tbaa !25
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.p, label %Py_DECREF.exit.us.i.i28

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.aw) #8, !inline_history !2
  br label %Py_DECREF.exit.us.i.i28

Py_DECREF.exit.us.i.i28:                          ; preds = %bb.p, %bb.o, %bb.n, %.lr.ph.split.us.i.i24
  %i.ba = load ptr, ptr %i.as, align 8, !tbaa !51
  %i.bb = getelementptr i8, ptr %i.at, i64 8
  %.val.us.i.i29 = load ptr, ptr %i.bb, align 8, !tbaa !59
  tail call void %.val.us.i.i29(ptr noundef %i.ba, ptr noundef null) #8, !inline_history !3
  %i.bc = add i64 %.016.us.i.i25, 1               ; 2 uses
  %i.bd = getelementptr [64 x i8], ptr @handler_info, i64 %i.bc
  %i.be = load ptr, ptr %i.bd, align 16, !tbaa !55
  %.not.us.i.i30 = icmp eq ptr %i.be, null
  br i1 %.not.us.i.i30, label %flag_error.exit31, label %.lr.ph.split.us.i.i24, !llvm.loop !0

flag_error.exit31:                                ; preds = %Py_DECREF.exit.us.i.i28, %bb.m
  %i.bf = getelementptr i8, ptr %0, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !51
  tail call void @PyExpat_XML_SetExternalEntityRefHandler(ptr noundef %i.bg, ptr noundef nonnull @error_external_entity_ref_handler) #8, !inline_history !60
  br label %Py_DECREF.exit

bb.q:                                             ; preds = %Py_DECREF.exit20
  %i.bh = load i32, ptr %i.aj, align 8, !tbaa !25 ; 2 uses
  %.not.i = icmp sgt i32 %i.bh, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit

bb.r:                                             ; preds = %bb.q
  %i.bi = add nsw i32 %i.bh, -1                   ; 2 uses
  store i32 %i.bi, ptr %i.aj, align 8, !tbaa !25
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.s, label %Py_DECREF.exit

bb.s:                                             ; preds = %bb.r
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.aj) #8
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.s, %bb.r, %bb.q, %flag_error.exit, %flag_error.exit31, %flush_character_buffer.exit, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @pyexpat_SetCharacterDataHandler(ptr noundef %0, ptr noundef %1) #4 {
bb.a:
  tail call void @PyExpat_XML_SetCharacterDataHandler(ptr noundef %0, ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @my_CharacterDataHandler(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @PyErr_Occurred() #8
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 48         ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45   ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = tail call fastcc i32 @call_character_handler(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 60         ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !47   ; 4 uses
  %i.h = add i32 %i.g, %2
  %i.i = getelementptr i8, ptr %0, i64 56         ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !46   ; 2 uses
  %i.k = icmp sgt i32 %i.h, %i.j
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = icmp eq i32 %i.g, 0
  br i1 %i.l, label %flush_character_buffer.exit.thread, label %flush_character_buffer.exit

flush_character_buffer.exit:                      ; preds = %bb.e
  %i.m = tail call fastcc i32 @call_character_handler(ptr noundef nonnull %0, ptr noundef nonnull %i.c, i32 noundef %i.g), !inline_history !1
  store i32 0, ptr %i.f, align 4, !tbaa !47
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.i, label %flush_character_buffer.exit.thread

flush_character_buffer.exit.thread:               ; preds = %bb.e, %flush_character_buffer.exit
  %i.o = getelementptr i8, ptr %0, i64 80
  %.val = load ptr, ptr %i.o, align 8, !tbaa !48
  %i.p = getelementptr i8, ptr %.val, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !26
  %.not23 = icmp eq ptr %i.q, null
  br i1 %.not23, label %bb.i, label %flush_character_buffer.exit.thread._crit_edge

flush_character_buffer.exit.thread._crit_edge:    ; preds = %flush_character_buffer.exit.thread
  %.pre = load i32, ptr %i.i, align 8, !tbaa !46
  br label %bb.f

bb.f:                                             ; preds = %flush_character_buffer.exit.thread._crit_edge, %bb.d
  %i.r = phi i32 [ 0, %flush_character_buffer.exit.thread._crit_edge ], [ %i.g, %bb.d ]
  %i.s = phi i32 [ %.pre, %flush_character_buffer.exit.thread._crit_edge ], [ %i.j, %bb.d ]
  %i.t = icmp sgt i32 %2, %i.s
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = tail call fastcc i32 @call_character_handler(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2) ; 0 uses
  br label %.sink.split

bb.h:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.w = sext i32 %i.r to i64
  %i.x = getelementptr i8, ptr %i.v, i64 %i.w
  %i.y = sext i32 %2 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.x, ptr align 1 %1, i64 %i.y, i1 false)
  %i.z = load i32, ptr %i.f, align 4, !tbaa !47
  %i.aa = add i32 %i.z, %2
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.g
  %.sink = phi i32 [ 0, %bb.g ], [ %i.aa, %bb.h ]
  store i32 %.sink, ptr %i.f, align 4, !tbaa !47
  br label %bb.i

bb.i:                                             ; preds = %.sink.split, %bb.c, %flush_character_buffer.exit.thread, %flush_character_buffer.exit, %bb.a
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @pyexpat_SetUnparsedEntityDeclHandler(ptr noundef %0, ptr noundef %1) #4 {
bb.a:
  tail call void @PyExpat_XML_SetUnparsedEntityDeclHandler(ptr noundef %0, ptr noundef %1) #8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @my_UnparsedEntityDeclHandler(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 80         ; 4 uses
  %.val = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.b = getelementptr i8, ptr %.val, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !26
  %.not40 = icmp eq ptr %i.c, null
  br i1 %.not40, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @PyErr_Occurred() #8
  %.not25 = icmp eq ptr %i.d, null
  br i1 %.not25, label %bb.c, label %Py_DECREF.exit

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 48
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !45   ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %flush_character_buffer.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 60         ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !47   ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %flush_character_buffer.exit.thread, label %flush_character_buffer.exit

flush_character_buffer.exit:                      ; preds = %bb.d
  %i.k = tail call fastcc i32 @call_character_handler(ptr noundef nonnull %0, ptr noundef nonnull %i.f, i32 noundef %i.i), !inline_history !1
  store i32 0, ptr %i.h, align 4, !tbaa !47
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %Py_DECREF.exit, label %flush_character_buffer.exit.thread

flush_character_buffer.exit.thread:               ; preds = %bb.c, %bb.d, %flush_character_buffer.exit
  %i.m = tail call fastcc ptr @string_intern(ptr noundef nonnull %0, ptr noundef %1)
  %i.n = tail call fastcc ptr @string_intern(ptr noundef nonnull %0, ptr noundef %2)
  %i.o = tail call fastcc ptr @string_intern(ptr noundef nonnull %0, ptr noundef %3)
  %i.p = tail call fastcc ptr @string_intern(ptr noundef nonnull %0, ptr noundef %4)
  %i.q = tail call fastcc ptr @string_intern(ptr noundef nonnull %0, ptr noundef %5)
  %i.r = tail call ptr (ptr, ...) @Py_BuildValue(ptr noundef nonnull @.str.48, ptr noundef %i.m, ptr noundef %i.n, ptr noundef %i.o, ptr noundef %i.p, ptr noundef %i.q) #8 ; 5 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.e, label %bb.i

bb.e:                                             ; preds = %flush_character_buffer.exit.thread
  %i.t = load ptr, ptr @handler_info, align 16, !tbaa !55
  %.not15.i.i = icmp eq ptr %i.t, null
  br i1 %.not15.i.i, label %flag_error.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.u = getelementptr i8, ptr %0, i64 16
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %Py_DECREF.exit.us.i.i, %.lr.ph.i.i
  %.016.us.i.i = phi i64 [ %i.ae, %Py_DECREF.exit.us.i.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.v = getelementptr [64 x i8], ptr @handler_info, i64 %.016.us.i.i
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.x = getelementptr [8 x i8], ptr %i.w, i64 %.016.us.i.i ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !26   ; 4 uses
  %.not14.us.i.i = icmp eq ptr %i.y, null
  br i1 %.not14.us.i.i, label %Py_DECREF.exit.us.i.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.us.i.i
  store ptr null, ptr %i.x, align 8, !tbaa !26
  %i.z = load i32, ptr %i.y, align 8, !tbaa !25   ; 2 uses
  %.not.i.us.i.i = icmp sgt i32 %i.z, -1
  br i1 %.not.i.us.i.i, label %bb.g, label %Py_DECREF.exit.us.i.i

bb.g:                                             ; preds = %bb.f
  %i.aa = add nsw i32 %i.z, -1                    ; 2 uses
  store i32 %i.aa, ptr %i.y, align 8, !tbaa !25
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.h, label %Py_DECREF.exit.us.i.i

bb.h:                                             ; preds = %bb.g
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.y) #8, !inline_history !2
  br label %Py_DECREF.exit.us.i.i

Py_DECREF.exit.us.i.i:                            ; preds = %bb.h, %bb.g, %bb.f, %.lr.ph.split.us.i.i
  %i.ac = load ptr, ptr %i.u, align 8, !tbaa !51
  %i.ad = getelementptr i8, ptr %i.v, i64 8
  %.val.us.i.i = load ptr, ptr %i.ad, align 8, !tbaa !59
  tail call void %.val.us.i.i(ptr noundef %i.ac, ptr noundef null) #8, !inline_history !3
  %i.ae = add i64 %.016.us.i.i, 1                 ; 2 uses
  %i.af = getelementptr [64 x i8], ptr @handler_info, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 16, !tbaa !55
  %.not.us.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.us.i.i, label %flag_error.exit, label %.lr.ph.split.us.i.i, !llvm.loop !0

flag_error.exit:                                  ; preds = %Py_DECREF.exit.us.i.i, %bb.e
  %i.ah = getelementptr i8, ptr %0, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !51
  tail call void @PyExpat_XML_SetExternalEntityRefHandler(ptr noundef %i.ai, ptr noundef nonnull @error_external_entity_ref_handler) #8, !inline_history !60
  br label %Py_DECREF.exit

bb.i:                                             ; preds = %flush_character_buffer.exit.thread
  %i.aj = getelementptr i8, ptr %0, i64 40        ; 2 uses
  store i32 1, ptr %i.aj, align 8, !tbaa !61
  %i.ak = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.al = getelementptr i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !26
  %i.an = tail call ptr @PyObject_Call(ptr noundef %i.am, ptr noundef nonnull %i.r, ptr noundef null) #8 ; 4 uses
  %i.ao = icmp eq ptr %i.an, null                 ; 2 uses
  br i1 %i.ao, label %bb.j, label %call_with_frame.exit

bb.j:                                             ; preds = %bb.i
  tail call void @_PyTraceback_Add(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.43, i32 noundef 577) #8
  %i.ap = getelementptr i8, ptr %0, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !51
  %i.ar = tail call i32 @PyExpat_XML_StopParser(ptr noundef %i.aq, i8 noundef zeroext 0) #8 ; 0 uses
  br label %call_with_frame.exit

call_with_frame.exit:                             ; preds = %bb.i, %bb.j
  store i32 0, ptr %i.aj, align 8, !tbaa !61
  %i.as = load i32, ptr %i.r, align 8, !tbaa !25  ; 2 uses
  %.not.i26 = icmp sgt i32 %i.as, -1
  br i1 %.not.i26, label %bb.k, label %Py_DECREF.exit27

bb.k:                                             ; preds = %call_with_frame.exit
  %i.at = add nsw i32 %i.as, -1                   ; 2 uses
  store i32 %i.at, ptr %i.r, align 8, !tbaa !25
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.l, label %Py_DECREF.exit27

bb.l:                                             ; preds = %bb.k
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.r) #8
  br label %Py_DECREF.exit27

Py_DECREF.exit27:                                 ; preds = %call_with_frame.exit, %bb.k, %bb.l
  br i1 %i.ao, label %bb.m, label %bb.q

bb.m:                                             ; preds = %Py_DECREF.exit27
  %i.av = load ptr, ptr @handler_info, align 16, !tbaa !55
  %.not15.i.i29 = icmp eq ptr %i.av, null
  br i1 %.not15.i.i29, label %flag_error.exit38, label %.lr.ph.i.i30

.lr.ph.i.i30:                                     ; preds = %bb.m
  %i.aw = getelementptr i8, ptr %0, i64 16
  br label %.lr.ph.split.us.i.i31

.lr.ph.split.us.i.i31:                            ; preds = %Py_DECREF.exit.us.i.i35, %.lr.ph.i.i30
  %.016.us.i.i32 = phi i64 [ %i.bg, %Py_DECREF.exit.us.i.i35 ], [ 0, %.lr.ph.i.i30 ] ; 3 uses
  %i.ax = getelementptr [64 x i8], ptr @handler_info, i64 %.016.us.i.i32
  %i.ay = load ptr, ptr %i.a, align 8, !tbaa !48
  %i.az = getelementptr [8 x i8], ptr %i.ay, i64 %.016.us.i.i32 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !26 ; 4 uses
  %.not14.us.i.i33 = icmp eq ptr %i.ba, null
  br i1 %.not14.us.i.i33, label %Py_DECREF.exit.us.i.i35, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.us.i.i31
  store ptr null, ptr %i.az, align 8, !tbaa !26
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !25 ; 2 uses
  %.not.i.us.i.i34 = icmp sgt i32 %i.bb, -1
  br i1 %.not.i.us.i.i34, label %bb.o, label %Py_DECREF.exit.us.i.i35

bb.o:                                             ; preds = %bb.n
  %i.bc = add nsw i32 %i.bb, -1                   ; 2 uses
  store i32 %i.bc, ptr %i.ba, align 8, !tbaa !25
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.p, label %Py_DECREF.exit.us.i.i35

bb.p:                                             ; preds = %bb.o
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.ba) #8, !inline_history !2
  br label %Py_DECREF.exit.us.i.i35

Py_DECREF.exit.us.i.i35:                          ; preds = %bb.p, %bb.o, %bb.n, %.lr.ph.split.us.i.i31
  %i.be = load ptr, ptr %i.aw, align 8, !tbaa !51
  %i.bf = getelementptr i8, ptr %i.ax, i64 8
  %.val.us.i.i36 = load ptr, ptr %i.bf, align 8, !tbaa !59
  tail call void %.val.us.i.i36(ptr noundef %i.be, ptr noundef null) #8, !inline_history !3
  %i.bg = add i64 %.016.us.i.i32, 1               ; 2 uses
  %i.bh = getelementptr [64 x i8], ptr @handler_info, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 16, !tbaa !55
  %.not.us.i.i37 = icmp eq ptr %i.bi, null
  br i1 %.not.us.i.i37, label %flag_error.exit38, label %.lr.ph.split.us.i.i31, !llvm.loop !0

flag_error.exit38:                                ; preds = %Py_DECREF.exit.us.i.i35, %bb.m
  %i.bj = getelementptr i8, ptr %0, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !51
  tail call void @PyExpat_XML_SetExternalEntityRefHandler(ptr noundef %i.bk, ptr noundef nonnull @error_external_entity_ref_handler) #8, !inline_history !60
  br label %Py_DECREF.exit

bb.q:                                             ; preds = %Py_DECREF.exit27
  %i.bl = load i32, ptr %i.an, align 8, !tbaa !25 ; 2 uses
  %.not.i = icmp sgt i32 %i.bl, -1
  br i1 %.not.i, label %bb.r, label %Py_DECREF.exit

bb.r:                                             ; preds = %bb.q
  %i.bm = add nsw i32 %i.bl, -1                   ; 2 uses
  store i32 %i.bm, ptr %i.an, align 8, !tbaa !25
  %i.bn = icmp eq i32 %i.bm, 0
end_hunk_0
