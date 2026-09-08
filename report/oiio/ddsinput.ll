Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/ddsinput?download=true
inline.NumInlined: 3419
inline.NumDeleted: 947
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN11OpenImageIO4v3_18DDSInput13readimg_tilesEv:bb.a
  %i.n = load i32, ptr %i.m, align 8, !tbaa !134
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.p = load i32, ptr %i.o, align 4, !tbaa !135
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load i32, ptr %i.q, align 8, !tbaa !136
  %i.s = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_18DDSInput16internal_readimgEPhiii(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef nonnull %i.l, i32 noundef %i.n, i32 noundef %i.p, i32 noundef %i.r)
  ret i1 %i.s
}

; Function Attrs: nounwind
declare noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec10tile_bytesEb(ptr noundef nonnull align 8 dereferenceable(160), i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #14

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18DDSInput5closeEv(ptr noundef nonnull align 8 dereferenceable(448) initializes((240, 248)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 -1, ptr %i.a, align 8, !tbaa !104
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 244
  store i32 -1, ptr %i.b, align 4, !tbaa !105
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !106  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !124
  %.not.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i, label %_ZN11OpenImageIO4v3_18DDSInput4initEv.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.a
  store ptr %i.d, ptr %i.e, align 8, !tbaa !124
  br label %_ZN11OpenImageIO4v3_18DDSInput4initEv.exit

_ZN11OpenImageIO4v3_18DDSInput4initEv.exit:       ; preds = %bb.a, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i
  tail call void @_ZN11OpenImageIO4v3_110ImageInput13ioproxy_clearEv(ptr noundef nonnull align 8 dereferenceable(448) %0)
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18DDSInput20read_native_scanlineEiiiiPv(ptr noundef nonnull align 8 dereferenceable(448) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput4lockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.a = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_18DDSInput13seek_subimageEii(ptr noundef nonnull align 8 dereferenceable(448) %0, i32 noundef %1, i32 noundef %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.e, label %bb.k

bb.c:                                             ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, %bb.h, %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #36
  unreachable

_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.b

bb.e:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.f = load i32, ptr %i.e, align 8, !tbaa !113
  %i.g = and i32 %i.f, 512
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 5 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !140
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !140
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.g, label %_ZN11OpenImageIO4v3_18DDSInput17readimg_scanlinesEv.exit

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.m, i1 noundef zeroext false) #34
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !153  ; 4 uses
  %i.q = sext i32 %i.p to i64
  %i.r = mul i64 %i.n, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !133  ; 4 uses
  %i.u = sext i32 %i.t to i64
  %i.v = mul i64 %i.r, %i.u                       ; 4 uses
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !124  ; 2 uses
  %i.x = load ptr, ptr %i.h, align 8, !tbaa !106  ; 5 uses
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 3 uses
  %i.ab = icmp ugt i64 %i.v, %i.aa
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = sub nuw i64 %i.v, %i.aa
  invoke void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.ac)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !106
  %.pre1.i = load i32, ptr %i.o, align 8, !tbaa !153
  %.pre2.i = load i32, ptr %i.s, align 4, !tbaa !133
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ad = icmp ult i64 %i.v, %i.aa
  br i1 %i.ad, label %bb.j, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.v ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.w, %i.ae
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.j
  store ptr %i.ae, ptr %i.j, align 8, !tbaa !124
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i

_ZNSt6vectorIhSaIhEE6resizeEm.exit.i:             ; preds = %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i, %bb.j, %bb.i, %.noexc
  %i.af = phi i32 [ %.pre2.i, %.noexc ], [ %i.t, %bb.i ], [ %i.t, %bb.j ], [ %i.t, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i ]
  %i.ag = phi i32 [ %.pre1.i, %.noexc ], [ %i.p, %bb.i ], [ %i.p, %bb.j ], [ %i.p, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i ]
  %i.ah = phi ptr [ %.pre.i, %.noexc ], [ %i.x, %bb.i ], [ %i.x, %bb.j ], [ %i.x, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !154
  %i.ak = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_18DDSInput16internal_readimgEPhiii(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef nonnull %i.ah, i32 noundef %i.aj, i32 noundef %i.ag, i32 noundef %i.af)
          to label %_ZN11OpenImageIO4v3_18DDSInput17readimg_scanlinesEv.exit unwind label %bb.c ; 0 uses

_ZN11OpenImageIO4v3_18DDSInput17readimg_scanlinesEv.exit: ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit.i, %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.am = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.al, i1 noundef zeroext false) #34 ; 3 uses
  %i.an = load ptr, ptr %i.h, align 8, !tbaa !106
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !153
  %i.aq = mul nsw i32 %i.ap, %4
  %i.ar = sext i32 %i.aq to i64
  %i.as = mul i64 %i.am, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.as
  %i.au = sext i32 %3 to i64
  %i.av = mul i64 %i.am, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.av
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr nonnull align 1 %i.aw, i64 %i.am, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.e, %bb.b, %_ZN11OpenImageIO4v3_18DDSInput17readimg_scanlinesEv.exit
  %.0 = phi i1 [ false, %bb.b ], [ true, %_ZN11OpenImageIO4v3_18DDSInput17readimg_scanlinesEv.exit ], [ false, %bb.e ]
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit12 unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #36
  unreachable

_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit12: ; preds = %bb.k
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18DDSInput16read_native_tileEiiiiiPv(ptr noundef nonnull align 8 dereferenceable(448) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef writeonly captures(none) %6) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput4lockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.d = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_18DDSInput13seek_subimageEii(ptr noundef nonnull align 8 dereferenceable(448) %0, i32 noundef %1, i32 noundef %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.d, label %bb.d, label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.g = load i32, ptr %i.f, align 8, !tbaa !113
  %i.h = and i32 %i.g, 512
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = load i32, ptr %i.j, align 8, !tbaa !134  ; 2 uses
  %i.l = srem i32 %3, %i.k
  %.not21 = icmp eq i32 %i.l, 0
  br i1 %.not21, label %bb.f, label %bb.q

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.n = load i32, ptr %i.m, align 4, !tbaa !135  ; 2 uses
  %i.o = srem i32 %4, %i.n
  %i.p = sdiv exact i32 %4, %i.n
  %.not22 = icmp eq i32 %i.o, 0
  br i1 %.not22, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.q = srem i32 %5, %i.k
  %.not23 = icmp eq i32 %i.q, 0
  br i1 %.not23, label %bb.h, label %bb.q

bb.h:                                             ; preds = %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !140  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !140
  %i.v = icmp ne ptr %i.s, %i.u
  %i.w = load i32, ptr @_ZZN11OpenImageIO4v3_18DDSInput16read_native_tileEiiiiiPvE5lastx, align 4
  %.not24 = icmp eq i32 %3, %i.w
  %or.cond29 = select i1 %i.v, i1 %.not24, i1 false
  %i.x = load i32, ptr @_ZZN11OpenImageIO4v3_18DDSInput16read_native_tileEiiiiiPvE5lasty, align 4
  %.not25 = icmp eq i32 %4, %i.x
  %or.cond30 = select i1 %or.cond29, i1 %.not25, i1 false
  %i.y = load i32, ptr @_ZZN11OpenImageIO4v3_18DDSInput16read_native_tileEiiiiiPvE5lastz, align 4
  %.not26 = icmp eq i32 %5, %i.y
  %or.cond31 = select i1 %or.cond30, i1 %.not26, i1 false
  br i1 %or.cond31, label %bb.p, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %3, ptr @_ZZN11OpenImageIO4v3_18DDSInput16read_native_tileEiiiiiPvE5lastx, align 4, !tbaa !44
  store i32 %4, ptr @_ZZN11OpenImageIO4v3_18DDSInput16read_native_tileEiiiiiPvE5lasty, align 4, !tbaa !44
  store i32 %5, ptr @_ZZN11OpenImageIO4v3_18DDSInput16read_native_tileEiiiiiPvE5lastz, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i32 0, ptr %i.a, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  store i32 0, ptr %i.b, align 4, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  store i32 0, ptr %i.c, align 4, !tbaa !44
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !105
  invoke void @_ZN11OpenImageIO4v3_18DDSInput22internal_seek_subimageEiiRjS2_S2_(ptr noundef nonnull align 8 dereferenceable(448) %0, i32 noundef %i.p, i32 noundef %i.aa, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ab = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec10tile_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.i, i1 noundef zeroext false) #34
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 noundef %i.ab)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ac = load i32, ptr %i.a, align 4, !tbaa !44
  %i.ad = icmp ne i32 %i.ac, 0
  %i.ae = load i32, ptr %i.b, align 4
  %i.af = icmp ne i32 %i.ae, 0
  %or.cond = select i1 %i.ad, i1 true, i1 %i.af
  %i.ag = load i32, ptr %i.c, align 4
  %i.ah = icmp ne i32 %i.ag, 0
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.ah
  br i1 %or.cond3, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = load ptr, ptr %i.r, align 8, !tbaa !106
  %i.aj = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec10tile_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.i, i1 noundef zeroext false) #34
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ai, i8 0, i64 %i.aj, i1 false)
  br label %bb.o

bb.m:                                             ; preds = %bb.n, %bb.j, %bb.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  br label %bb.s

bb.n:                                             ; preds = %bb.k
  %i.al = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_18DDSInput13readimg_tilesEv(ptr noundef nonnull align 8 dereferenceable(448) %0)
          to label %bb.o unwind label %bb.m       ; 0 uses

bb.o:                                             ; preds = %bb.n, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !106
  br label %bb.p

bb.p:                                             ; preds = %bb.h, %bb.o
  %i.am = phi ptr [ %i.s, %bb.h ], [ %.pre, %bb.o ]
  %i.an = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec10tile_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.i, i1 noundef zeroext false) #34
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %6, ptr nonnull align 1 %i.am, i64 %i.an, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.e, %bb.f, %bb.g, %bb.d, %bb.b, %bb.p
  %.020 = phi i1 [ false, %bb.d ], [ true, %bb.p ], [ false, %bb.b ], [ false, %bb.g ], [ false, %bb.f ], [ false, %bb.e ]
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #36
  unreachable

_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit: ; preds = %bb.q
  ret i1 %.020

bb.s:                                             ; preds = %bb.m, %bb.c
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.m ], [ %i.e, %bb.c ]
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit32 unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  tail call void @__clang_call_terminate(ptr %i.ar) #36
  unreachable

_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit32: ; preds = %bb.s
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_18DDSInputD2Ev(ptr noundef nonnull align 8 dereferenceable(448) %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 -1, ptr %i.a, align 8, !tbaa !104
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 244
  store i32 -1, ptr %i.b, align 4, !tbaa !105
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !106  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !124
  %.not.i.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i.i, label %_ZN11OpenImageIO4v3_18DDSInput4initEv.exit.i, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i:    ; preds = %bb.a
  store ptr %i.d, ptr %i.e, align 8, !tbaa !124
  br label %_ZN11OpenImageIO4v3_18DDSInput4initEv.exit.i

_ZN11OpenImageIO4v3_18DDSInput4initEv.exit.i:     ; preds = %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i, %bb.a
  invoke void @_ZN11OpenImageIO4v3_110ImageInput13ioproxy_clearEv(ptr noundef nonnull align 8 dereferenceable(448) %0)
          to label %_ZN11OpenImageIO4v3_18DDSInput5closeEv.exit unwind label %bb.c

_ZN11OpenImageIO4v3_18DDSInput5closeEv.exit:      ; preds = %_ZN11OpenImageIO4v3_18DDSInput4initEv.exit.i
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !106  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_18DDSInput5closeEv.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !107
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef %i.l) #35
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZN11OpenImageIO4v3_18DDSInput5closeEv.exit, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !108  ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.q = load i64, ptr %i.o, align 8, !tbaa !47
  %i.r = add i64 %i.q, 1
  tail call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZN11OpenImageIO4v3_110ImageInputD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) #34
  ret void

bb.c:                                             ; preds = %_ZN11OpenImageIO4v3_18DDSInput4initEv.exit.i
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #36
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_18DDSInputD0Ev(ptr noundef nonnull align 8 dereferenceable(448) %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 -1, ptr %i.a, align 8, !tbaa !104
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 244
  store i32 -1, ptr %i.b, align 4, !tbaa !105
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !106  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !124
  %.not.i.i.i.i.i = icmp eq ptr %i.f, %i.d
  br i1 %.not.i.i.i.i.i, label %_ZN11OpenImageIO4v3_18DDSInput4initEv.exit.i.i, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i.i:  ; preds = %bb.a
  store ptr %i.d, ptr %i.e, align 8, !tbaa !124
  br label %_ZN11OpenImageIO4v3_18DDSInput4initEv.exit.i.i

end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail9dragonbox10to_decimalIdEENS2_10decimal_fpIT_EES5_:bb.a
  %.sroa.0108.1 = phi i64 [ %i.bz, %.preheader173 ], [ %i.bj, %bb.e ] ; 5 uses
  %.0.i = phi i32 [ %i.cb, %.preheader173 ], [ 0, %bb.e ] ; 2 uses
  %i.by = mul i64 %.sroa.0108.1, -8116567392432202711
  %i.bz = tail call i64 @llvm.fshl.i64(i64 %.sroa.0108.1, i64 %i.by, i64 62) ; 2 uses
  %i.ca = icmp ugt i64 %i.bz, 184467440737095516
  %i.cb = add nuw nsw i32 %.0.i, 2
  br i1 %i.ca, label %bb.h, label %.preheader173

bb.h:                                             ; preds = %.preheader173
  %i.cc = mul i64 %.sroa.0108.1, -3689348814741910323
  %i.cd = tail call i64 @llvm.fshl.i64(i64 %.sroa.0108.1, i64 %i.cc, i64 63) ; 2 uses
  %.not.i53 = icmp ult i64 %i.cd, 1844674407370955162 ; 2 uses
  %spec.select155 = select i1 %.not.i53, i64 %i.cd, i64 %.sroa.0108.1
  %i.ce = zext i1 %.not.i53 to i32
  %spec.select156 = or disjoint i32 %.0.i, %i.ce
  br label %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit

_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit: ; preds = %bb.h, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i
  %.sroa.0108.3 = phi i64 [ %i.bx, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i ], [ %spec.select155, %bb.h ]
  %.018.i = phi i32 [ %spec.select154, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i ], [ %spec.select156, %bb.h ]
  %i.cf = add nsw i32 %i.bl, %.018.i
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit

bb.i:                                             ; preds = %_ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit
  %i.cg = sub nsw i32 10, %i.n
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = lshr i64 %.sroa.3.0.i, %i.ch
  %i.cj = add i64 %i.ci, 1
  %i.ck = lshr i64 %i.cj, 1                       ; 3 uses
  %or.cond.i = icmp eq i32 %i.f, -77
  br i1 %or.cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cl = and i64 %i.ck, 9223372036854775806
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit

bb.k:                                             ; preds = %bb.i
  %i.cm = icmp ult i64 %i.ck, %spec.select.i
  %i.cn = zext i1 %i.cm to i64
  %spec.select157 = add nuw i64 %i.ck, %i.cn
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit

bb.l:                                             ; preds = %bb.b
  %i.co = or disjoint i64 %i.b, 4503599627370496
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  %i.cp = icmp eq i64 %i.b, 0
  br i1 %i.cp, label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.042 = phi i64 [ %i.co, %bb.l ], [ %i.b, %bb.m ] ; 2 uses
  %.041 = phi i32 [ %i.f, %bb.l ], [ -1074, %bb.m ] ; 2 uses
  %i.cq = trunc i64 %.042 to i32                  ; 2 uses
  %i.cr = mul nsw i32 %.041, 315653
  %i.cs = ashr i32 %i.cr, 20                      ; 6 uses
  %i.ct = sub nsw i32 2, %i.cs                    ; 4 uses
  %i.cu = trunc nsw i32 %i.cs to i16
  %.lhs.trunc = sub nsw i16 294, %i.cu
  %i.cv = udiv i16 %.lhs.trunc, 27                ; 2 uses
  %narrow163 = mul nuw nsw i16 %i.cv, 27
  %i.cw = zext nneg i16 %narrow163 to i32
  %i.cx = add nsw i32 %i.cw, -292                 ; 3 uses
  %i.cy = zext nneg i16 %i.cv to i64
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr @_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE18pow10_significands, i64 %i.cy ; 2 uses
  %.sroa.037.0.copyload.i68 = load i64, ptr %i.cz, align 16, !tbaa !139 ; 2 uses
  %.sroa.5.0..sroa_idx.i69 = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %.sroa.5.0.copyload.i70 = load i64, ptr %.sroa.5.0..sroa_idx.i69, align 8, !tbaa !139 ; 2 uses
  %i.da = icmp eq i32 %i.ct, %i.cx
  br i1 %i.da, label %._ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit75_crit_edge, label %bb.o

._ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit75_crit_edge: ; preds = %bb.n
  %.pre = mul nsw i32 %i.ct, 1741647
  %.pre174 = ashr i32 %.pre, 19
  br label %_ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit75

bb.o:                                             ; preds = %bb.n
  %i.db = sub nsw i32 %i.ct, %i.cx                ; 2 uses
  %i.dc = mul nsw i32 %i.ct, 1741647
  %i.dd = ashr i32 %i.dc, 19                      ; 2 uses
  %i.de = mul nsw i32 %i.cx, 1741647
  %i.df = ashr i32 %i.de, 19
  %i.dg = add nsw i32 %i.db, %i.df
  %i.dh = sub nsw i32 %i.dd, %i.dg                ; 2 uses
  %i.di = sext i32 %i.db to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr @_ZZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEiE14powers_of_5_64, i64 %i.di
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !139
  %i.dl = zext i64 %.sroa.5.0.copyload.i70 to i128
  %i.dm = zext i64 %i.dk to i128                  ; 2 uses
  %i.dn = mul nuw i128 %i.dm, %i.dl               ; 2 uses
  %i.do = lshr i128 %i.dn, 64
  %i.dp = trunc nuw i128 %i.do to i64
  %i.dq = trunc i128 %i.dn to i64
  %i.dr = zext i64 %.sroa.037.0.copyload.i68 to i128
  %i.ds = mul nuw i128 %i.dm, %i.dr               ; 2 uses
  %i.dt = lshr i128 %i.ds, 64
  %i.du = trunc nuw i128 %i.dt to i64
  %i.dv = trunc i128 %i.ds to i64
  %i.dw = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.dq, i64 %i.du) ; 2 uses
  %i.dx = extractvalue { i64, i1 } %i.dw, 1
  %i.dy = extractvalue { i64, i1 } %i.dw, 0       ; 2 uses
  %i.dz = zext i1 %i.dx to i64
  %i.ea = add nuw i64 %i.dz, %i.dp
  %i.eb = sub nsw i32 64, %i.dh
  %i.ec = zext i32 %i.eb to i64                   ; 2 uses
  %i.ed = shl i64 %i.ea, %i.ec
  %i.ee = shl i64 %i.dy, %i.ec
  %i.ef = zext i32 %i.dh to i64                   ; 2 uses
  %i.eg = lshr i64 %i.dy, %i.ef
  %i.eh = or i64 %i.ed, %i.eg
  %i.ei = lshr i64 %i.dv, %i.ef
  %i.ej = or i64 %i.ee, %i.ei
  %i.ek = add i64 %i.ej, 1
  br label %_ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit75

_ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit75: ; preds = %._ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit75_crit_edge, %bb.o
  %.pre-phi175 = phi i32 [ %.pre174, %._ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit75_crit_edge ], [ %i.dd, %bb.o ]
  %.sroa.041.0.i71 = phi i64 [ %.sroa.037.0.copyload.i68, %._ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit75_crit_edge ], [ %i.ek, %bb.o ]
  %.sroa.3.0.i72 = phi i64 [ %.sroa.5.0.copyload.i70, %._ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit75_crit_edge ], [ %i.eh, %bb.o ] ; 4 uses
  %i.el = add nsw i32 %.pre-phi175, %.041         ; 4 uses
  %i.em = sub nsw i32 63, %i.el
  %i.en = zext nneg i32 %i.em to i64
  %i.eo = lshr i64 %.sroa.3.0.i72, %i.en
  %i.ep = trunc i64 %i.eo to i32                  ; 3 uses
  %i.eq = shl nuw nsw i64 %.042, 1                ; 4 uses
  %i.er = or disjoint i64 %i.eq, 1
  %i.es = zext nneg i32 %i.el to i64              ; 3 uses
  %i.et = shl i64 %i.er, %i.es
  %i.eu = zext i64 %i.et to i128                  ; 2 uses
  %i.ev = zext i64 %.sroa.3.0.i72 to i128
  %i.ew = mul nuw i128 %i.ev, %i.eu               ; 2 uses
  %i.ex = lshr i128 %i.ew, 64
  %i.ey = trunc nuw i128 %i.ex to i64
  %i.ez = trunc i128 %i.ew to i64
  %i.fa = zext i64 %.sroa.041.0.i71 to i128       ; 3 uses
  %i.fb = mul nuw i128 %i.fa, %i.eu
  %i.fc = lshr i128 %i.fb, 64
  %i.fd = trunc nuw i128 %i.fc to i64
  %i.fe = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ez, i64 %i.fd) ; 2 uses
  %i.ff = extractvalue { i64, i1 } %i.fe, 1
  %i.fg = extractvalue { i64, i1 } %i.fe, 0
  %i.fh = zext i1 %i.ff to i64
  %i.fi = add nuw i64 %i.fh, %i.ey                ; 2 uses
  %i.fj = icmp ne i64 %i.fg, 0
  %i.fk = zext i64 %i.fi to i128
  %i.fl = mul nuw nsw i128 %i.fk, 2361183241434822607
  %sum.shift.i = lshr i128 %i.fl, 71
  %i.fm = trunc nuw nsw i128 %sum.shift.i to i64  ; 7 uses
  %.neg = mul i64 %i.fm, 4294966296
  %i.fn = add i64 %.neg, %i.fi
  %i.fo = trunc i64 %i.fn to i32                  ; 5 uses
  %i.fp = icmp ugt i32 %i.ep, %i.fo
  br i1 %i.fp, label %bb.p, label %bb.s

bb.p:                                             ; preds = %_ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit75
  %i.fq = icmp eq i32 %i.fo, 0
  br i1 %i.fq, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.fr = and i32 %i.cq, 1
  %.not49164 = icmp eq i32 %i.fr, 0
  %.not49 = select i1 %i.fj, i1 true, i1 %.not49164
  br i1 %.not49, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.fs = add nsw i64 %i.fm, -1
  br label %bb.y

bb.s:                                             ; preds = %_ZN3fmt3v126detail9dragonbox14cache_accessorIdE16get_cached_powerEi.exit75
  %i.ft = icmp ult i32 %i.ep, %i.fo
  br i1 %i.ft, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.fu = add nsw i64 %i.eq, -1                   ; 2 uses
  %i.fv = mul i64 %.sroa.3.0.i72, %i.fu
  %i.fw = zext nneg i64 %i.fu to i128
  %i.fx = mul nuw nsw i128 %i.fa, %i.fw           ; 2 uses
  %i.fy = lshr i128 %i.fx, 64
  %i.fz = trunc nuw nsw i128 %i.fy to i64
  %i.ga = trunc i128 %i.fx to i64
  %i.gb = add i64 %i.fv, %i.fz                    ; 2 uses
  %i.gc = sub nsw i32 64, %i.el
  %i.gd = zext i32 %i.gc to i64                   ; 2 uses
  %i.ge = lshr i64 %i.gb, %i.gd
  %i.gf = trunc i64 %i.ge to i32
  %.sroa.06.0.insert.ext.i = and i32 %i.gf, 1
  %i.gg = shl i64 %i.gb, %i.es
  %i.gh = lshr i64 %i.ga, %i.gd
  %i.gi = or i64 %i.gg, %i.gh
  %i.gj = icmp eq i64 %i.gi, 0
  %i.gk = and i32 %i.cq, 1
  %i.gl = xor i32 %i.gk, 1
  %i.gm = select i1 %i.gj, i32 %i.gl, i32 0
  %i.gn = or i32 %i.gm, %.sroa.06.0.insert.ext.i
  %.not48 = icmp eq i32 %i.gn, 0
  br i1 %.not48, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.p, %bb.q
  %i.go = add nsw i32 %i.cs, 1
  %i.gp = urem i64 %i.fm, 100000000
  %i.gq = udiv exact i64 %i.fm, 100000000
  %i.gr = icmp eq i64 %i.gp, 0
  br i1 %i.gr, label %bb.v, label %.preheader

bb.v:                                             ; preds = %bb.u
  %i.gs = trunc nuw nsw i64 %i.gq to i32
  br label %bb.w

bb.w:                                             ; preds = %bb.w, %bb.v
  %.0125 = phi i32 [ %i.gs, %bb.v ], [ %i.gu, %bb.w ] ; 3 uses
  %.012.i.i59 = phi i32 [ 8, %bb.v ], [ %i.gw, %bb.w ] ; 2 uses
  %i.gt = mul i32 %.0125, -1030792151             ; 2 uses
  %i.gu = tail call i32 @llvm.fshl.i32(i32 %i.gt, i32 %i.gt, i32 30) ; 2 uses
  %i.gv = icmp ugt i32 %i.gu, 42949672
  %i.gw = add nuw nsw i32 %.012.i.i59, 2
  br i1 %i.gv, label %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i63, label %bb.w

_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i63: ; preds = %bb.w
  %i.gx = mul i32 %.0125, -858993459              ; 2 uses
  %i.gy = tail call i32 @llvm.fshl.i32(i32 %i.gx, i32 %i.gx, i32 31) ; 2 uses
  %.not.i.i62 = icmp ult i32 %i.gy, 429496730     ; 2 uses
  %spec.select158 = select i1 %.not.i.i62, i32 %i.gy, i32 %.0125
  %i.gz = zext i1 %.not.i.i62 to i32
  %spec.select159 = or disjoint i32 %.012.i.i59, %i.gz
  %i.ha = zext nneg i32 %spec.select158 to i64
  br label %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit65

.preheader:                                       ; preds = %bb.u, %.preheader
  %.sroa.094.4 = phi i64 [ %i.hc, %.preheader ], [ %i.fm, %bb.u ] ; 5 uses
  %.0.i54 = phi i32 [ %i.he, %.preheader ], [ 0, %bb.u ] ; 2 uses
  %i.hb = mul i64 %.sroa.094.4, -8116567392432202711
  %i.hc = tail call i64 @llvm.fshl.i64(i64 %.sroa.094.4, i64 %i.hb, i64 62) ; 2 uses
  %i.hd = icmp ugt i64 %i.hc, 184467440737095516
  %i.he = add nuw nsw i32 %.0.i54, 2
  br i1 %i.hd, label %bb.x, label %.preheader

bb.x:                                             ; preds = %.preheader
  %i.hf = mul i64 %.sroa.094.4, -3689348814741910323
  %i.hg = tail call i64 @llvm.fshl.i64(i64 %.sroa.094.4, i64 %i.hf, i64 63) ; 2 uses
  %.not.i57 = icmp ult i64 %i.hg, 1844674407370955162 ; 2 uses
  %spec.select160 = select i1 %.not.i57, i64 %i.hg, i64 %.sroa.094.4
  %i.hh = zext i1 %.not.i57 to i32
  %spec.select161 = or disjoint i32 %.0.i54, %i.hh
  br label %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit65

_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit65: ; preds = %bb.x, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i63
  %.sroa.094.6 = phi i64 [ %i.ha, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i63 ], [ %spec.select160, %bb.x ]
  %.018.i58 = phi i32 [ %spec.select159, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERji.exit.i63 ], [ %spec.select161, %bb.x ]
  %i.hi = add nsw i32 %i.go, %.018.i58
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit

bb.y:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.sroa.094.0 = phi i64 [ %i.fs, %bb.r ], [ %i.fm, %bb.s ], [ %i.fm, %bb.t ]
  %.0 = phi i32 [ 1000, %bb.r ], [ %i.fo, %bb.s ], [ %i.fo, %bb.t ]
  %i.hj = mul nsw i64 %.sroa.094.0, 10
  %i.hk = lshr i32 %i.ep, 1
  %i.hl = sub i32 %.0, %i.hk                      ; 2 uses
  %i.hm = mul i32 %i.hl, 656
  %i.hn = add i32 %i.hm, 32800                    ; 3 uses
  %i.ho = and i32 %i.hn, 65520
  %i.hp = icmp samesign ult i32 %i.ho, 656
  %i.hq = lshr i32 %i.hn, 16
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = add nsw i64 %i.hj, %i.hr                ; 3 uses
  br i1 %i.hp, label %bb.z, label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit

bb.z:                                             ; preds = %bb.y
  %i.ht = mul i64 %.sroa.3.0.i72, %i.eq
  %i.hu = zext nneg i64 %i.eq to i128
  %i.hv = mul nuw nsw i128 %i.fa, %i.hu           ; 2 uses
  %i.hw = lshr i128 %i.hv, 64
  %i.hx = trunc nuw nsw i128 %i.hw to i64
  %i.hy = add i64 %i.ht, %i.hx                    ; 2 uses
  %i.hz = sub nsw i32 64, %i.el
  %i.ia = zext i32 %i.hz to i64                   ; 2 uses
  %i.ib = lshr i64 %i.hy, %i.ia
  %i.ic = trunc i64 %i.ib to i32
  %i.id = xor i32 %i.hl, %i.ic
  %i.ie = and i32 %i.id, 1
  %.not50 = icmp eq i32 %i.ie, 0
  br i1 %.not50, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.if = add nsw i64 %i.hs, -1
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit

bb.ab:                                            ; preds = %bb.z
  %i.ig = shl i64 %i.hy, %i.es
  %i.ih = trunc i128 %i.hv to i64
  %i.ii = lshr i64 %i.ih, %i.ia
  %i.ij = or i64 %i.ig, %i.ii
  %i.ik = icmp eq i64 %i.ij, 0
  %i.il = and i32 %i.hn, 65536
  %.not52165 = icmp ne i32 %i.il, 0
  %.not52.not = and i1 %i.ik, %.not52165
  %i.im = sext i1 %.not52.not to i64
  %spec.select162 = add nsw i64 %i.hs, %i.im
  br label %_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit

_ZN3fmt3v126detail9dragonbox21shorter_interval_caseIdEENS2_10decimal_fpIT_EEi.exit: ; preds = %bb.j, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit, %bb.k, %bb.ab, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit65, %bb.aa, %bb.y, %bb.m
  %.sroa.21.1 = phi i32 [ %i.cs, %bb.ab ], [ 0, %bb.m ], [ %i.hi, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit65 ], [ %i.cs, %bb.aa ], [ %i.cs, %bb.y ], [ %i.j, %bb.j ], [ %i.cf, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit ], [ %i.j, %bb.k ]
  %.sroa.094.3 = phi i64 [ %spec.select162, %bb.ab ], [ 0, %bb.m ], [ %.sroa.094.6, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit65 ], [ %i.if, %bb.aa ], [ %i.hs, %bb.y ], [ %i.cl, %bb.j ], [ %.sroa.0108.3, %_ZN3fmt3v126detail9dragonbox21remove_trailing_zerosERm.exit ], [ %spec.select157, %bb.k ]
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.094.3, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.21.1, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIdEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2, i8 noundef signext %3, ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %5, i64 %6) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %7 = alloca %"class.fmt::v12::detail::fallback_digit_grouping", align 1 ; 3 uses
  %8 = alloca %class.anon.68, align 8             ; 10 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.fmt::v12::detail::fallback_digit_grouping", align 1 ; 3 uses
  %10 = alloca %class.anon.69, align 8            ; 10 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i8, align 1                       ; 6 uses
  %11 = alloca %class.anon.70, align 8            ; 9 uses
  store i32 %2, ptr %i.a, align 4, !tbaa !44
  store i8 %3, ptr %i.b, align 1, !tbaa !47
  store i32 %5, ptr %i.c, align 4, !tbaa !233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !244  ; 3 uses
  %i.k = add nsw i32 %i.j, %2                     ; 4 uses
  store i32 %i.k, ptr %i.d, align 4, !tbaa !44
  %.not = icmp ne i32 %5, 0
  %i.l = zext i1 %.not to i32
  %i.m = add nsw i32 %2, %i.l
  %i.n = sext i32 %i.m to i64                     ; 3 uses
  %i.o = icmp sgt i32 %i.j, -1
  br i1 %i.o, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.p = zext nneg i32 %i.j to i64
  %i.q = add nsw i64 %i.p, %i.n                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !184
  %i.t = sub nsw i32 %i.s, %i.k                   ; 3 uses
  store i32 %i.t, ptr %i.e, align 4, !tbaa !44
  %i.u = load i32, ptr %4, align 4, !tbaa !182    ; 4 uses
  %i.v = and i32 %i.u, 8192
  %.not58 = icmp eq i32 %i.v, 0
  br i1 %.not58, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = add nsw i64 %i.q, 1                      ; 3 uses
  %i.x = icmp sgt i32 %i.t, 0                     ; 2 uses
  %i.y = and i32 %i.u, 7
  %.not41 = icmp eq i32 %i.y, 2
  %or.cond53 = or i1 %i.x, %.not41
  br i1 %or.cond53, label %bb.d, label %.thread

.thread:                                          ; preds = %bb.c
  store i32 0, ptr %i.e, align 4, !tbaa !44
  br label %bb.f

bb.d:                                             ; preds = %bb.c
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.z = zext nneg i32 %i.t to i64
  %i.aa = add nsw i64 %i.w, %i.z
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.d, %bb.e, %bb.b
  %.0 = phi i64 [ %i.aa, %bb.e ], [ %i.w, %bb.d ], [ %i.q, %bb.b ], [ %i.w, %.thread ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #34
  store ptr %i.c, ptr %8, align 8, !tbaa !150
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %1, ptr %i.ab, align 8, !tbaa !246
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %i.a, ptr %i.ac, align 8, !tbaa !144
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %7, ptr %i.ad, align 8, !tbaa !239
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 32
  store ptr %4, ptr %i.ae, align 8, !tbaa !208
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 40
  store ptr %i.b, ptr %i.af, align 8, !tbaa !140
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %i.e, ptr %i.ag, align 8, !tbaa !144
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !206
  %i.aj = zext i32 %i.ai to i64
  %i.ak = call i64 @llvm.usub.sat.i64(i64 %i.aj, i64 %.0) ; 4 uses
  %i.al = lshr i32 %i.u, 3
  %i.am = and i32 %i.al, 7
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @.str.50, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !47
  %i.aq = sext i8 %i.ap to i64
  %i.ar = and i64 %i.aq, 4294967295
  %i.as = lshr i64 %i.ak, %i.ar                   ; 4 uses
  %i.at = sub nsw i64 %i.ak, %i.as
end_hunk_1
