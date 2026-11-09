Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pugixml/original/pugixml?download=true
inline.NumInlined: 2249
inline.NumDeleted: 424
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4pugi4impl12_GLOBAL__N_114load_file_implEPNS1_19xml_document_structEP8_IO_FILEjNS_12xml_encodingEPPc:bb.a

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4pugi16xml_parse_resultC1Ev(ptr noundef nonnull align 8 dereferenceable(20) %0)
  store i32 1, ptr %0, align 8, !tbaa !128, !alias.scope !447
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.a, align 8, !tbaa !129, !alias.scope !447
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #49
  %i.b = tail call i32 @fileno(ptr noundef nonnull %2) #49
  %i.c = call i32 @fstat(i32 noundef %i.b, ptr noundef nonnull %6) #49
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.e = load i32, ptr %i.d, align 8, !tbaa !450
  %i.f = and i32 %i.e, 61440
  %i.g = icmp eq i32 %i.f, 32768
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.i = load i64, ptr %i.h, align 8, !tbaa !451  ; 7 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  tail call void @_ZN4pugi16xml_parse_resultC1Ev(ptr noundef nonnull align 8 dereferenceable(20) %0)
  store i32 2, ptr %0, align 8, !tbaa !128, !alias.scope !452
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.k, align 8, !tbaa !129, !alias.scope !452
  br label %bb.m

bb.g:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #49
  %i.l = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  %i.m = add nuw i64 %i.i, 1                      ; 2 uses
  %i.n = tail call noundef ptr %i.l(i64 noundef %i.m) ; 6 uses
  %.not25 = icmp eq ptr %i.n, null
  br i1 %.not25, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN4pugi16xml_parse_resultC1Ev(ptr noundef nonnull align 8 dereferenceable(20) %0)
  store i32 3, ptr %0, align 8, !tbaa !128, !alias.scope !453
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.o, align 8, !tbaa !129, !alias.scope !453
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.p = tail call i64 @fread(ptr noundef nonnull %i.n, i64 noundef 1, i64 noundef %i.i, ptr noundef nonnull %2)
  %.not26 = icmp eq i64 %i.p, %i.i
  br i1 %.not26, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  tail call void %i.q(ptr noundef nonnull %i.n)
  tail call void @_ZN4pugi16xml_parse_resultC1Ev(ptr noundef nonnull align 8 dereferenceable(20) %0)
  store i32 2, ptr %0, align 8, !tbaa !128, !alias.scope !454
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !129, !alias.scope !454
  br label %bb.m

bb.k:                                             ; preds = %bb.i
  %i.s = tail call fastcc noundef i32 @_ZN4pugi4impl12_GLOBAL__N_119get_buffer_encodingENS_12xml_encodingEPKvm(i32 noundef %4, ptr noundef nonnull %i.n, i64 noundef %i.i) ; 2 uses
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %bb.l, label %_ZN4pugi4impl12_GLOBAL__N_121zero_terminate_bufferEPvmNS_12xml_encodingE.exit

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.i
  store i8 0, ptr %i.u, align 1, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_121zero_terminate_bufferEPvmNS_12xml_encodingE.exit

_ZN4pugi4impl12_GLOBAL__N_121zero_terminate_bufferEPvmNS_12xml_encodingE.exit: ; preds = %bb.k, %bb.l
  %.0.i27 = phi i64 [ %i.m, %bb.l ], [ %i.i, %bb.k ]
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_116load_buffer_implEPNS1_19xml_document_structEPNS_15xml_node_structEPvmjNS_12xml_encodingEbbPPc(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %1, ptr noundef %1, ptr noundef nonnull %i.n, i64 noundef %.0.i27, i32 noundef %3, i32 noundef %i.s, i1 noundef zeroext true, i1 noundef zeroext true, ptr noundef %5)
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.h, %_ZN4pugi4impl12_GLOBAL__N_121zero_terminate_bufferEPvmNS_12xml_encodingE.exit, %bb.j, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4pugi12xml_document9load_fileEPKwjNS_12xml_encodingE(ptr dead_on_unwind noalias writable sret(%"struct.pugi::xml_parse_result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  tail call void %i.c(ptr noundef nonnull %i.b), !inline_history !168
  store ptr null, ptr %i.a, align 8, !tbaa !165
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !111    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %.016.i.i = load ptr, ptr %i.e, align 8, !tbaa !167 ; 2 uses
  %.not1317.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not1317.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %bb.e
  %.pre.i.i = load ptr, ptr %1, align 8, !tbaa !111
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.c
  %i.f = phi ptr [ %.pre.i.i, %._crit_edge.loopexit.i.i ], [ %i.d, %bb.c ] ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !117
  %i.h = lshr i64 %i.g, 8
  %i.i = sub nsw i64 0, %i.h
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !104  ; 2 uses
  %.not1419.i.i = icmp eq ptr %i.l, null
  br i1 %.not1419.i.i, label %_ZN4pugi12xml_document5resetEv.exit, label %.lr.ph22.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.e
  %.018.i.i = phi ptr [ %.0.i.i, %bb.e ], [ %.016.i.i, %bb.c ] ; 2 uses
  %i.m = load ptr, ptr %.018.i.i, align 8, !tbaa !132 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.m, null
  br i1 %.not15.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.n = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  tail call void %i.n(ptr noundef nonnull %i.m), !inline_history !168
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 8
  %.0.i.i = load ptr, ptr %i.o, align 8, !tbaa !167 ; 2 uses
  %.not13.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not13.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !24

.lr.ph22.i.i:                                     ; preds = %._crit_edge.i.i, %.lr.ph22.i.i
  %.01020.i.i = phi ptr [ %i.q, %.lr.ph22.i.i ], [ %i.l, %._crit_edge.i.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.01020.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !104  ; 2 uses
  %i.r = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  tail call void %i.r(ptr noundef nonnull %.01020.i.i), !inline_history !28
  %.not14.i.i = icmp eq ptr %i.q, null
  br i1 %.not14.i.i, label %_ZN4pugi12xml_document5resetEv.exit, label %.lr.ph22.i.i, !llvm.loop !25

_ZN4pugi12xml_document5resetEv.exit:              ; preds = %.lr.ph22.i.i, %._crit_edge.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.t, i8 0, i64 32, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 32728, ptr %i.u, align 8, !tbaa !99
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.w, i8 0, i64 56, i1 false)
  store i64 10241, ptr %i.v, align 8, !tbaa !117
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 2 uses
  store ptr %i.s, ptr %i.x, align 8, !tbaa !101
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 128
  store i64 32728, ptr %i.y, align 8, !tbaa !102
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, i8 0, i64 16, i1 false)
  store ptr %i.v, ptr %1, align 8, !tbaa !111
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %i.v, ptr %i.aa, align 8, !tbaa !121
  store ptr %i.x, ptr %i.s, align 8, !tbaa !93
  %i.ab = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_114open_file_wideEPKwS3_(ptr noundef %2, ptr noundef nonnull @.str.21) ; 5 uses
  %i.ac = load ptr, ptr %1, align 8, !tbaa !111
  invoke fastcc void @_ZN4pugi4impl12_GLOBAL__N_114load_file_implEPNS1_19xml_document_structEP8_IO_FILEjNS_12xml_encodingEPPc(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %i.ac, ptr noundef %i.ab, i32 noundef %3, i32 noundef %4, ptr noundef %i.a)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZN4pugi12xml_document5resetEv.exit
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = tail call i32 @fclose(ptr noundef nonnull %i.ab) ; 0 uses
  br label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit

_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit: ; preds = %bb.g, %bb.f
  ret void

bb.h:                                             ; preds = %_ZN4pugi12xml_document5resetEv.exit
  %i.ae = landingpad { ptr, i32 }
          cleanup
  %.not.i8 = icmp eq ptr %i.ab, null
  br i1 %.not.i8, label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit9, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = tail call i32 @fclose(ptr noundef nonnull %i.ab) ; 0 uses
  br label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit9

_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit9: ; preds = %bb.i, %bb.h
  resume { ptr, i32 } %i.ae
}

; Function Attrs: mustprogress uwtable
define internal fastcc noalias noundef ptr @_ZN4pugi4impl12_GLOBAL__N_114open_file_wideEPKwS3_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 5 uses
  %wcslen.i.i = tail call i64 @wcslen(ptr noundef nonnull readonly dereferenceable(4) %0) ; 2 uses
  %i.b = shl i64 %wcslen.i.i, 2                   ; 2 uses
  %i.c = ashr exact i64 %i.b, 2                   ; 4 uses
  %.not17.i.i.i.i = icmp eq i64 %i.b, 0           ; 2 uses
  br i1 %.not17.i.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_113as_utf8_beginEPKwm.exit.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.c, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.preheader24, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.preheader
  %i.d = and i64 %wcslen.i.i, 3                   ; 3 uses
  %n.vec = sub nuw nsw i64 %i.c, %i.d             ; 2 uses
  %i.e = shl i64 %n.vec, 2
  %i.f = getelementptr i8, ptr %0, i64 %i.e
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.u, %vector.body ]
  %vec.phi21 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %i.g = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %0, i64 %i.g  ; 2 uses
  %i.h = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 1, !tbaa !136 ; 3 uses
  %wide.load22 = load <2 x i32>, ptr %i.h, align 1, !tbaa !136 ; 3 uses
  %i.i = icmp ult <2 x i32> %wide.load, splat (i32 65536)
  %i.j = icmp ult <2 x i32> %wide.load22, splat (i32 65536)
  %i.k = icmp ult <2 x i32> %wide.load, splat (i32 128)
  %i.l = icmp ult <2 x i32> %wide.load22, splat (i32 128)
  %i.m = icmp ult <2 x i32> %wide.load, splat (i32 2048)
  %i.n = icmp ult <2 x i32> %wide.load22, splat (i32 2048)
  %i.o = select <2 x i1> %i.m, <2 x i64> splat (i64 2), <2 x i64> splat (i64 3)
  %i.p = select <2 x i1> %i.n, <2 x i64> splat (i64 2), <2 x i64> splat (i64 3)
  %i.q = select <2 x i1> %i.k, <2 x i64> splat (i64 1), <2 x i64> %i.o
  %i.r = select <2 x i1> %i.l, <2 x i64> splat (i64 1), <2 x i64> %i.p
  %i.s = select <2 x i1> %i.i, <2 x i64> %i.q, <2 x i64> splat (i64 4)
  %i.t = select <2 x i1> %i.j, <2 x i64> %i.r, <2 x i64> splat (i64 4)
  %i.u = add <2 x i64> %i.s, %vec.phi             ; 2 uses
  %i.v = add <2 x i64> %i.t, %vec.phi21           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !455

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.v, %i.u
  %i.x = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.d, 0
  br i1 %cmp.n, label %_ZN4pugi4impl12_GLOBAL__N_113as_utf8_beginEPKwm.exit.i, label %.lr.ph.i.i.i.i.preheader24

.lr.ph.i.i.i.i.preheader24:                       ; preds = %.lr.ph.i.i.i.i.preheader, %middle.block
  %.020.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %i.x, %middle.block ]
  %.01119.i.i.i.i.ph = phi i64 [ %i.c, %.lr.ph.i.i.i.i.preheader ], [ %i.d, %middle.block ]
  %.01318.i.i.i.i.ph = phi ptr [ %0, %.lr.ph.i.i.i.i.preheader ], [ %i.f, %middle.block ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader24, %.lr.ph.i.i.i.i
  %.020.i.i.i.i = phi i64 [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.020.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader24 ]
  %.01119.i.i.i.i = phi i64 [ %.112.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.01119.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader24 ]
  %.01318.i.i.i.i = phi ptr [ %.114.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.01318.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader24 ] ; 2 uses
  %i.y = load i32, ptr %.01318.i.i.i.i, align 1, !tbaa !136 ; 3 uses
  %i.z = icmp ult i32 %i.y, 65536
  %i.aa = icmp samesign ult i32 %i.y, 128
  %i.ab = icmp samesign ult i32 %i.y, 2048
  %..i.i.i.i.i = select i1 %i.ab, i64 2, i64 3
  %.sink.i.i.i.i.i = select i1 %i.aa, i64 1, i64 %..i.i.i.i.i
  %.sink.i.pn.i.i.i.i = select i1 %i.z, i64 %.sink.i.i.i.i.i, i64 4
  %.1.i.i.i.i = add i64 %.sink.i.pn.i.i.i.i, %.020.i.i.i.i ; 2 uses
  %.112.i.i.i.i = add i64 %.01119.i.i.i.i, -1     ; 2 uses
  %.114.i.i.i.i = getelementptr inbounds nuw i8, ptr %.01318.i.i.i.i, i64 4
  %.not.i.i.i.i = icmp eq i64 %.112.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_113as_utf8_beginEPKwm.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !456

_ZN4pugi4impl12_GLOBAL__N_113as_utf8_beginEPKwm.exit.i: ; preds = %.lr.ph.i.i.i.i, %middle.block, %bb.a
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %bb.a ], [ %i.x, %middle.block ], [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.ac = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  %i.ad = add i64 %.0.lcssa.i.i.i.i, 1
  %i.ae = tail call noundef ptr %i.ac(i64 noundef %i.ad), !inline_history !457 ; 5 uses
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %_ZN4pugi4impl12_GLOBAL__N_117convert_path_heapEPKw.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_113as_utf8_beginEPKwm.exit.i
  br i1 %.not17.i.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_117convert_path_heapEPKw.exit.thread15, label %.lr.ph.i.i.i14.i

.lr.ph.i.i.i14.i:                                 ; preds = %bb.b, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i.i
  %.020.i.i.i15.i = phi ptr [ %i.bq, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i.i ], [ %i.ae, %bb.b ] ; 8 uses
  %.01119.i.i.i16.i = phi i64 [ %.112.i.i.i18.i, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i.i ], [ %i.c, %bb.b ]
  %.01318.i.i.i17.i = phi ptr [ %.114.i.i.i19.i, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i.i ], [ %0, %bb.b ] ; 2 uses
  %i.af = load i32, ptr %.01318.i.i.i17.i, align 1, !tbaa !136 ; 13 uses
  %i.ag = icmp ult i32 %i.af, 65536
  br i1 %i.ag, label %bb.c, label %bb.h

bb.c:                                             ; preds = %.lr.ph.i.i.i14.i
  %i.ah = icmp samesign ult i32 %i.af, 128
  br i1 %i.ah, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ai = trunc nuw nsw i32 %i.af to i8
  store i8 %i.ai, ptr %.020.i.i.i15.i, align 1, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.aj = icmp samesign ult i32 %i.af, 2048
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = lshr i32 %i.af, 6
  %i.al = trunc nuw nsw i32 %i.ak to i8
  %i.am = or disjoint i8 %i.al, -64
  store i8 %i.am, ptr %.020.i.i.i15.i, align 1, !tbaa !86
  %i.an = trunc i32 %i.af to i8
  %i.ao = and i8 %i.an, 63
  %i.ap = or disjoint i8 %i.ao, -128
  %i.aq = getelementptr inbounds nuw i8, ptr %.020.i.i.i15.i, i64 1
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.ar = lshr i32 %i.af, 12
  %i.as = trunc nuw nsw i32 %i.ar to i8
  %i.at = or disjoint i8 %i.as, -32
  store i8 %i.at, ptr %.020.i.i.i15.i, align 1, !tbaa !86
  %i.au = lshr i32 %i.af, 6
  %i.av = trunc i32 %i.au to i8
  %i.aw = and i8 %i.av, 63
  %i.ax = or disjoint i8 %i.aw, -128
  %i.ay = getelementptr inbounds nuw i8, ptr %.020.i.i.i15.i, i64 1
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !86
  %i.az = trunc i32 %i.af to i8
  %i.ba = and i8 %i.az, 63
  %i.bb = or disjoint i8 %i.ba, -128
  %i.bc = getelementptr inbounds nuw i8, ptr %.020.i.i.i15.i, i64 2
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i14.i
  %i.bd = lshr i32 %i.af, 18
  %i.be = trunc i32 %i.bd to i8
  %i.bf = lshr i32 %i.af, 12
  %i.bg = trunc i32 %i.bf to i8
  %i.bh = lshr i32 %i.af, 6
  %i.bi = trunc i32 %i.bh to i8
  %i.bj = trunc i32 %i.af to i8
  %i.bk = insertelement <4 x i8> poison, i8 %i.be, i64 0
  %i.bl = insertelement <4 x i8> %i.bk, i8 %i.bg, i64 1
  %i.bm = insertelement <4 x i8> %i.bl, i8 %i.bi, i64 2
  %i.bn = insertelement <4 x i8> %i.bm, i8 %i.bj, i64 3
  %i.bo = and <4 x i8> %i.bn, <i8 -1, i8 63, i8 63, i8 63>
  %i.bp = or <4 x i8> %i.bo, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.bp, ptr %.020.i.i.i15.i, align 1, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i.i

_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.d
  %.sink.i.i.i.i = phi i64 [ 4, %bb.h ], [ 3, %bb.g ], [ 2, %bb.f ], [ 1, %bb.d ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.020.i.i.i15.i, i64 %.sink.i.i.i.i
  %.112.i.i.i18.i = add i64 %.01119.i.i.i16.i, -1 ; 2 uses
  %.114.i.i.i19.i = getelementptr inbounds nuw i8, ptr %.01318.i.i.i17.i, i64 4
  %.not.i.i.i20.i = icmp eq i64 %.112.i.i.i18.i, 0
  br i1 %.not.i.i.i20.i, label %_ZN4pugi4impl12_GLOBAL__N_117convert_path_heapEPKw.exit.thread15, label %.lr.ph.i.i.i14.i, !llvm.loop !19

_ZN4pugi4impl12_GLOBAL__N_117convert_path_heapEPKw.exit.thread15: ; preds = %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i.i, %bb.b
  %i.br = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.0.lcssa.i.i.i.i
  store i8 0, ptr %i.br, align 1, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #49
  store i32 0, ptr %i.a, align 4
  %i.bs = load i32, ptr %1, align 4, !tbaa !179   ; 2 uses
  %.not1416 = icmp eq i32 %i.bs, 0
  br i1 %.not1416, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZN4pugi4impl12_GLOBAL__N_117convert_path_heapEPKw.exit.thread15
  %i.bt = call noalias ptr @fopen(ptr noundef nonnull %i.ae, ptr noundef nonnull %i.a)
  %i.bu = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE10deallocateE, align 8, !tbaa !106
  tail call void %i.bu(ptr noundef nonnull %i.ae)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #49
  br label %_ZN4pugi4impl12_GLOBAL__N_117convert_path_heapEPKw.exit.thread

.lr.ph:                                           ; preds = %_ZN4pugi4impl12_GLOBAL__N_117convert_path_heapEPKw.exit.thread15, %.lr.ph
  %i.bv = phi i32 [ %i.ca, %.lr.ph ], [ %i.bs, %_ZN4pugi4impl12_GLOBAL__N_117convert_path_heapEPKw.exit.thread15 ]
  %.01117 = phi i64 [ %i.by, %.lr.ph ], [ 0, %_ZN4pugi4impl12_GLOBAL__N_117convert_path_heapEPKw.exit.thread15 ] ; 2 uses
  %i.bw = trunc i32 %i.bv to i8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 %.01117
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !86
  %i.by = add nuw nsw i64 %.01117, 1              ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.by
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !179 ; 2 uses
  %.not14 = icmp eq i32 %i.ca, 0
  br i1 %.not14, label %._crit_edge, label %.lr.ph, !llvm.loop !458

_ZN4pugi4impl12_GLOBAL__N_117convert_path_heapEPKw.exit.thread: ; preds = %_ZN4pugi4impl12_GLOBAL__N_113as_utf8_beginEPKwm.exit.i, %._crit_edge
  %.0 = phi ptr [ %i.bt, %._crit_edge ], [ null, %_ZN4pugi4impl12_GLOBAL__N_113as_utf8_beginEPKwm.exit.i ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define void @_ZN4pugi12xml_document19load_buffer_inplaceEPvmjNS_12xml_encodingE(ptr dead_on_unwind noalias writable sret(%"struct.pugi::xml_parse_result") align 8 %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165  ; 2 uses
  %.not.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

end_hunk_0
begin_hunk_1_@_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_stringEPKc:bb.a

_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i: ; preds = %.preheader.3.i.i, %.preheader.2.i.i, %.preheader.1.i.i, %.lr.ph.i
  %.3.i.i = phi i64 [ %spec.select.i.i, %.preheader.3.i.i ], [ 2047, %.lr.ph.i ], [ 2045, %.preheader.2.i.i ], [ 2046, %.preheader.1.i.i ] ; 3 uses
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer5flushEPKcm(ptr noundef nonnull align 8 dereferenceable(10260) %0, ptr noundef nonnull %.019.i, i64 noundef %.3.i.i)
  %i.ba = getelementptr inbounds nuw i8, ptr %.019.i, i64 %.3.i.i ; 2 uses
  %i.bb = sub nuw i64 %.01418.i, %.3.i.i          ; 3 uses
  %i.bc = icmp ugt i64 %i.bb, 2048
  br i1 %i.bc, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !22

._crit_edge.i:                                    ; preds = %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit.i
  store i64 0, ptr %i.a, align 8, !tbaa !151
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i, %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit
  %.115.i = phi i64 [ %i.bb, %._crit_edge.i ], [ %i.ai, %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit ] ; 2 uses
  %.1.i = phi ptr [ %i.ba, %._crit_edge.i ], [ %i.ag, %_ZN4pugi4impl12_GLOBAL__N_116get_valid_lengthEPKcm.exit ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 dereferenceable(10260) %0, ptr nonnull align 1 %.1.i, i64 %.115.i, i1 false)
  %i.bd = load i64, ptr %i.a, align 8, !tbaa !151
  %i.be = add i64 %i.bd, %.115.i
  store i64 %i.be, ptr %i.a, align 8, !tbaa !151
  br label %_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_directEPKcm.exit

_ZN4pugi4impl12_GLOBAL__N_119xml_buffered_writer12write_directEPKcm.exit: ; preds = %bb.f, %bb.e, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4pugi12xml_document4saveERSoPKcjNS_12xml_encodingE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.pugi::xml_writer_stream", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  call void @_ZN4pugi17xml_writer_streamC1ERSo(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @_ZNK4pugi12xml_document4saveERNS_10xml_writerEPKcjNS_12xml_encodingE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %2, i32 noundef %3, i32 noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK4pugi12xml_document4saveERSt13basic_ostreamIwSt11char_traitsIwEEPKcj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.pugi::xml_writer_stream", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #49
  call void @_ZN4pugi17xml_writer_streamC1ERSt13basic_ostreamIwSt11char_traitsIwEE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @_ZNK4pugi12xml_document4saveERNS_10xml_writerEPKcjNS_12xml_encodingE(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %2, i32 noundef %3, i32 noundef 8)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #49
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4pugi12xml_document9save_fileEPKcS2_jNS_12xml_encodingE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.pugi::xml_writer_file", align 8 ; 5 uses
  %i.a = and i32 %3, 32
  %.not = icmp eq i32 %i.a, 0
  %i.b = select i1 %.not, ptr @.str.25, ptr @.str.24
  %i.c = tail call noalias noundef ptr @fopen(ptr noundef readonly %1, ptr noundef nonnull readonly %i.b) ; 7 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  invoke void @_ZN4pugi15xml_writer_fileC1EPv(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.c)
          to label %.noexc unwind label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit13

.noexc:                                           ; preds = %bb.b
  invoke void @_ZNK4pugi12xml_document4saveERNS_10xml_writerEPKcjNS_12xml_encodingE(ptr noundef nonnull readonly align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %2, i32 noundef %3, i32 noundef %4)
          to label %.noexc10 unwind label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit13

.noexc10:                                         ; preds = %.noexc
  %i.d = call i32 @fflush(ptr noundef nonnull %i.c)
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4pugi4impl12_GLOBAL__N_114save_file_implERKNS_12xml_documentEP8_IO_FILEPKcjNS_12xml_encodingE.exit, label %_ZN4pugi4impl12_GLOBAL__N_114save_file_implERKNS_12xml_documentEP8_IO_FILEPKcjNS_12xml_encodingE.exit.thread16

_ZN4pugi4impl12_GLOBAL__N_114save_file_implERKNS_12xml_documentEP8_IO_FILEPKcjNS_12xml_encodingE.exit.thread16: ; preds = %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  br label %bb.d

_ZN4pugi4impl12_GLOBAL__N_114save_file_implERKNS_12xml_documentEP8_IO_FILEPKcjNS_12xml_encodingE.exit: ; preds = %.noexc10
  %i.f = call i32 @ferror(ptr noundef nonnull %i.c) #49
  %i.g = icmp eq i32 %i.f, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_114save_file_implERKNS_12xml_documentEP8_IO_FILEPKcjNS_12xml_encodingE.exit
  %i.h = call i32 @fclose(ptr noundef nonnull %i.c)
  %i.i = icmp eq i32 %i.h, 0
  br label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit

bb.d:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_114save_file_implERKNS_12xml_documentEP8_IO_FILEPKcjNS_12xml_encodingE.exit, %_ZN4pugi4impl12_GLOBAL__N_114save_file_implERKNS_12xml_documentEP8_IO_FILEPKcjNS_12xml_encodingE.exit.thread16
  %i.j = call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  br label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit

_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit: ; preds = %bb.d, %bb.a, %bb.c
  %i.k = phi i1 [ false, %bb.d ], [ %i.i, %bb.c ], [ false, %bb.a ]
  ret i1 %i.k

_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit13: ; preds = %bb.b, %.noexc
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  resume { ptr, i32 } %i.l
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4pugi12xml_document9save_fileEPKwPKcjNS_12xml_encodingE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.pugi::xml_writer_file", align 8 ; 5 uses
  %i.a = and i32 %3, 32
  %.not = icmp eq i32 %i.a, 0
  %i.b = select i1 %.not, ptr @.str.27, ptr @.str.26
  %i.c = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_114open_file_wideEPKwS3_(ptr noundef %1, ptr noundef nonnull %i.b) ; 7 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #49
  invoke void @_ZN4pugi15xml_writer_fileC1EPv(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %i.c)
          to label %.noexc unwind label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit13

.noexc:                                           ; preds = %bb.b
  invoke void @_ZNK4pugi12xml_document4saveERNS_10xml_writerEPKcjNS_12xml_encodingE(ptr noundef nonnull readonly align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %2, i32 noundef %3, i32 noundef %4)
          to label %.noexc10 unwind label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit13

.noexc10:                                         ; preds = %.noexc
  %i.d = call i32 @fflush(ptr noundef nonnull %i.c)
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_ZN4pugi4impl12_GLOBAL__N_114save_file_implERKNS_12xml_documentEP8_IO_FILEPKcjNS_12xml_encodingE.exit, label %_ZN4pugi4impl12_GLOBAL__N_114save_file_implERKNS_12xml_documentEP8_IO_FILEPKcjNS_12xml_encodingE.exit.thread16

_ZN4pugi4impl12_GLOBAL__N_114save_file_implERKNS_12xml_documentEP8_IO_FILEPKcjNS_12xml_encodingE.exit.thread16: ; preds = %.noexc10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  br label %bb.d

_ZN4pugi4impl12_GLOBAL__N_114save_file_implERKNS_12xml_documentEP8_IO_FILEPKcjNS_12xml_encodingE.exit: ; preds = %.noexc10
  %i.f = call i32 @ferror(ptr noundef nonnull %i.c) #49
  %i.g = icmp eq i32 %i.f, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #49
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_114save_file_implERKNS_12xml_documentEP8_IO_FILEPKcjNS_12xml_encodingE.exit
  %i.h = call i32 @fclose(ptr noundef nonnull %i.c)
  %i.i = icmp eq i32 %i.h, 0
  br label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit

bb.d:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_114save_file_implERKNS_12xml_documentEP8_IO_FILEPKcjNS_12xml_encodingE.exit, %_ZN4pugi4impl12_GLOBAL__N_114save_file_implERKNS_12xml_documentEP8_IO_FILEPKcjNS_12xml_encodingE.exit.thread16
  %i.j = call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  br label %_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit

_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit: ; preds = %bb.d, %bb.a, %bb.c
  %i.k = phi i1 [ false, %bb.d ], [ %i.i, %bb.c ], [ false, %bb.a ]
  ret i1 %i.k

_ZN4pugi4impl12_GLOBAL__N_112auto_deleterI8_IO_FILEED2Ev.exit13: ; preds = %bb.b, %.noexc
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  resume { ptr, i32 } %i.l
}

; Function Attrs: mustprogress uwtable
define ptr @_ZNK4pugi12xml_document16document_elementEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %1 = alloca %"class.pugi::xml_node", align 8    ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !111
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.058 = load ptr, ptr %i.b, align 8, !tbaa !115 ; 2 uses
  %.not9 = icmp eq ptr %.058, null
  br i1 %.not9, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0510 = phi ptr [ %.05, %bb.b ], [ %.058, %bb.a ] ; 3 uses
  %i.c = load i64, ptr %.0510, align 8, !tbaa !117
  %i.d = and i64 %i.c, 15
  %i.e = icmp eq i64 %i.d, 2
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.0510, i64 48
  %.05 = load ptr, ptr %i.f, align 8, !tbaa !115  ; 2 uses
  %.not = icmp eq ptr %.05, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !461

bb.c:                                             ; preds = %.lr.ph
  call void @_ZN4pugi8xml_nodeC1EPNS_15xml_node_structE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %.0510)
  br label %bb.d

._crit_edge:                                      ; preds = %bb.b, %bb.a
  call void @_ZN4pugi8xml_nodeC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.g = load ptr, ptr %1, align 8
  ret ptr %i.g
}

; Function Attrs: mustprogress uwtable
define void @_ZN4pugi7as_utf8B5cxx11EPKw(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %wcslen.i = tail call i64 @wcslen(ptr noundef nonnull readonly dereferenceable(4) %1)
  %i.a = shl i64 %wcslen.i, 2
  %i.b = ashr exact i64 %i.a, 2
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_112as_utf8_implB5cxx11EPKwm(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef nonnull %1, i64 noundef %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4pugi4impl12_GLOBAL__N_112as_utf8_implB5cxx11EPKwm(ptr dead_on_unwind noalias writable align 8 %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not17.i.i.i = icmp eq i64 %2, 0               ; 2 uses
  br i1 %.not17.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_113as_utf8_beginEPKwm.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.a
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader23, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.preheader
  %n.vec = and i64 %2, -4                         ; 3 uses
  %i.a = and i64 %2, 3
  %i.b = shl i64 %n.vec, 2
  %i.c = getelementptr i8, ptr %1, i64 %i.b
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.r, %vector.body ]
  %vec.phi20 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.s, %vector.body ]
  %i.d = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %1, i64 %i.d  ; 2 uses
  %i.e = getelementptr i8, ptr %next.gep, i64 8
  %wide.load = load <2 x i32>, ptr %next.gep, align 1, !tbaa !136 ; 3 uses
  %wide.load21 = load <2 x i32>, ptr %i.e, align 1, !tbaa !136 ; 3 uses
  %i.f = icmp ult <2 x i32> %wide.load, splat (i32 65536)
  %i.g = icmp ult <2 x i32> %wide.load21, splat (i32 65536)
  %i.h = icmp ult <2 x i32> %wide.load, splat (i32 128)
  %i.i = icmp ult <2 x i32> %wide.load21, splat (i32 128)
  %i.j = icmp ult <2 x i32> %wide.load, splat (i32 2048)
  %i.k = icmp ult <2 x i32> %wide.load21, splat (i32 2048)
  %i.l = select <2 x i1> %i.j, <2 x i64> splat (i64 2), <2 x i64> splat (i64 3)
  %i.m = select <2 x i1> %i.k, <2 x i64> splat (i64 2), <2 x i64> splat (i64 3)
  %i.n = select <2 x i1> %i.h, <2 x i64> splat (i64 1), <2 x i64> %i.l
  %i.o = select <2 x i1> %i.i, <2 x i64> splat (i64 1), <2 x i64> %i.m
  %i.p = select <2 x i1> %i.f, <2 x i64> %i.n, <2 x i64> splat (i64 4)
  %i.q = select <2 x i1> %i.g, <2 x i64> %i.o, <2 x i64> splat (i64 4)
  %i.r = add <2 x i64> %i.p, %vec.phi             ; 2 uses
  %i.s = add <2 x i64> %i.q, %vec.phi20           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.t = icmp eq i64 %index.next, %n.vec
  br i1 %i.t, label %middle.block, label %vector.body, !llvm.loop !462

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.s, %i.r
  %i.u = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %_ZN4pugi4impl12_GLOBAL__N_113as_utf8_beginEPKwm.exit, label %.lr.ph.i.i.i.preheader23

.lr.ph.i.i.i.preheader23:                         ; preds = %.lr.ph.i.i.i.preheader, %middle.block
  %.020.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.preheader ], [ %i.u, %middle.block ]
  %.01119.i.i.i.ph = phi i64 [ %2, %.lr.ph.i.i.i.preheader ], [ %i.a, %middle.block ]
  %.01318.i.i.i.ph = phi ptr [ %1, %.lr.ph.i.i.i.preheader ], [ %i.c, %middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader23, %.lr.ph.i.i.i
  %.020.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %.020.i.i.i.ph, %.lr.ph.i.i.i.preheader23 ]
  %.01119.i.i.i = phi i64 [ %.112.i.i.i, %.lr.ph.i.i.i ], [ %.01119.i.i.i.ph, %.lr.ph.i.i.i.preheader23 ]
  %.01318.i.i.i = phi ptr [ %.114.i.i.i, %.lr.ph.i.i.i ], [ %.01318.i.i.i.ph, %.lr.ph.i.i.i.preheader23 ] ; 2 uses
  %i.v = load i32, ptr %.01318.i.i.i, align 1, !tbaa !136 ; 3 uses
  %i.w = icmp ult i32 %i.v, 65536
  %i.x = icmp samesign ult i32 %i.v, 128
  %i.y = icmp samesign ult i32 %i.v, 2048
  %..i.i.i.i = select i1 %i.y, i64 2, i64 3
  %.sink.i.i.i.i = select i1 %i.x, i64 1, i64 %..i.i.i.i
  %.sink.i.pn.i.i.i = select i1 %i.w, i64 %.sink.i.i.i.i, i64 4
  %.1.i.i.i = add i64 %.sink.i.pn.i.i.i, %.020.i.i.i ; 2 uses
  %.112.i.i.i = add i64 %.01119.i.i.i, -1         ; 2 uses
  %.114.i.i.i = getelementptr inbounds nuw i8, ptr %.01318.i.i.i, i64 4
  %.not.i.i.i = icmp eq i64 %.112.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZN4pugi4impl12_GLOBAL__N_113as_utf8_beginEPKwm.exit, label %.lr.ph.i.i.i, !llvm.loop !463

_ZN4pugi4impl12_GLOBAL__N_113as_utf8_beginEPKwm.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %bb.a
  %.0.lcssa.i.i.i = phi i64 [ 0, %bb.a ], [ %i.u, %middle.block ], [ %.1.i.i.i, %.lr.ph.i.i.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.z, ptr %0, align 8, !tbaa !144
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.aa, align 8, !tbaa !146
  store i8 0, ptr %i.z, align 8, !tbaa !86
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %.0.lcssa.i.i.i, i8 noundef signext 0)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit unwind label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit: ; preds = %_ZN4pugi4impl12_GLOBAL__N_113as_utf8_beginEPKwm.exit
  %.not = icmp eq i64 %.0.lcssa.i.i.i, 0
  %brmerge = or i1 %.not, %.not17.i.i.i
  br i1 %brmerge, label %_ZN4pugi4impl12_GLOBAL__N_111as_utf8_endEPcmPKwm.exit, label %.lr.ph.i.i.i10.preheader

.lr.ph.i.i.i10.preheader:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  %i.ab = load ptr, ptr %0, align 8, !tbaa !147
  br label %.lr.ph.i.i.i10

.lr.ph.i.i.i10:                                   ; preds = %.lr.ph.i.i.i10.preheader, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i
  %.020.i.i.i11 = phi ptr [ %i.bn, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i ], [ %i.ab, %.lr.ph.i.i.i10.preheader ] ; 8 uses
  %.01119.i.i.i12 = phi i64 [ %.112.i.i.i14, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i ], [ %2, %.lr.ph.i.i.i10.preheader ]
  %.01318.i.i.i13 = phi ptr [ %.114.i.i.i15, %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i ], [ %1, %.lr.ph.i.i.i10.preheader ] ; 2 uses
  %i.ac = load i32, ptr %.01318.i.i.i13, align 1, !tbaa !136 ; 13 uses
  %i.ad = icmp ult i32 %i.ac, 65536
  br i1 %i.ad, label %bb.b, label %bb.g

bb.b:                                             ; preds = %.lr.ph.i.i.i10
  %i.ae = icmp samesign ult i32 %i.ac, 128
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.af = trunc nuw nsw i32 %i.ac to i8
  store i8 %i.af, ptr %.020.i.i.i11, align 1, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.ag = icmp samesign ult i32 %i.ac, 2048
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = lshr i32 %i.ac, 6
  %i.ai = trunc nuw nsw i32 %i.ah to i8
  %i.aj = or disjoint i8 %i.ai, -64
  store i8 %i.aj, ptr %.020.i.i.i11, align 1, !tbaa !86
  %i.ak = trunc i32 %i.ac to i8
  %i.al = and i8 %i.ak, 63
  %i.am = or disjoint i8 %i.al, -128
  %i.an = getelementptr inbounds nuw i8, ptr %.020.i.i.i11, i64 1
  store i8 %i.am, ptr %i.an, align 1, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ao = lshr i32 %i.ac, 12
  %i.ap = trunc nuw nsw i32 %i.ao to i8
  %i.aq = or disjoint i8 %i.ap, -32
  store i8 %i.aq, ptr %.020.i.i.i11, align 1, !tbaa !86
  %i.ar = lshr i32 %i.ac, 6
  %i.as = trunc i32 %i.ar to i8
  %i.at = and i8 %i.as, 63
  %i.au = or disjoint i8 %i.at, -128
  %i.av = getelementptr inbounds nuw i8, ptr %.020.i.i.i11, i64 1
  store i8 %i.au, ptr %i.av, align 1, !tbaa !86
  %i.aw = trunc i32 %i.ac to i8
  %i.ax = and i8 %i.aw, 63
  %i.ay = or disjoint i8 %i.ax, -128
  %i.az = getelementptr inbounds nuw i8, ptr %.020.i.i.i11, i64 2
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i10
  %i.ba = lshr i32 %i.ac, 18
  %i.bb = trunc i32 %i.ba to i8
  %i.bc = lshr i32 %i.ac, 12
  %i.bd = trunc i32 %i.bc to i8
  %i.be = lshr i32 %i.ac, 6
  %i.bf = trunc i32 %i.be to i8
  %i.bg = trunc i32 %i.ac to i8
  %i.bh = insertelement <4 x i8> poison, i8 %i.bb, i64 0
  %i.bi = insertelement <4 x i8> %i.bh, i8 %i.bd, i64 1
  %i.bj = insertelement <4 x i8> %i.bi, i8 %i.bf, i64 2
  %i.bk = insertelement <4 x i8> %i.bj, i8 %i.bg, i64 3
  %i.bl = and <4 x i8> %i.bk, <i8 -1, i8 63, i8 63, i8 63>
  %i.bm = or <4 x i8> %i.bl, <i8 -16, i8 -128, i8 -128, i8 -128>
  store <4 x i8> %i.bm, ptr %.020.i.i.i11, align 1, !tbaa !86
  br label %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i

_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i: ; preds = %bb.g, %bb.f, %bb.e, %bb.c
  %.sink.i.i.i = phi i64 [ 4, %bb.g ], [ 3, %bb.f ], [ 2, %bb.e ], [ 1, %bb.c ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.020.i.i.i11, i64 %.sink.i.i.i
  %.112.i.i.i14 = add i64 %.01119.i.i.i12, -1     ; 2 uses
  %.114.i.i.i15 = getelementptr inbounds nuw i8, ptr %.01318.i.i.i13, i64 4
  %.not.i.i.i16 = icmp eq i64 %.112.i.i.i14, 0
  br i1 %.not.i.i.i16, label %_ZN4pugi4impl12_GLOBAL__N_111as_utf8_endEPcmPKwm.exit, label %.lr.ph.i.i.i10, !llvm.loop !19

bb.h:                                             ; preds = %_ZN4pugi4impl12_GLOBAL__N_113as_utf8_beginEPKwm.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  %i.bp = load ptr, ptr %0, align 8, !tbaa !147   ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.z
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.br = load i64, ptr %i.z, align 8, !tbaa !86
  %i.bs = add i64 %i.br, 1
  tail call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #51
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.bo

_ZN4pugi4impl12_GLOBAL__N_111as_utf8_endEPcmPKwm.exit: ; preds = %_ZN4pugi4impl12_GLOBAL__N_111utf8_writer3lowEPhj.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4pugi7as_utf8ERKNSt7__cxx1112basic_stringIwSt11char_traitsIwESaIwEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !183
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !184
  tail call fastcc void @_ZN4pugi4impl12_GLOBAL__N_112as_utf8_implB5cxx11EPKwm(ptr dead_on_unwind noalias writable align 8 %0, ptr noundef %i.a, i64 noundef %i.c)
  ret void
}
end_hunk_1
