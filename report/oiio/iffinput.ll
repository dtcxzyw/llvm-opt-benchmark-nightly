inline.NumInlined: 3630
inline.NumDeleted: 1092
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN11OpenImageIO4v3_18IffInput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_9ImageSpecE:bb.a

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i82:  ; preds = %bb.r
  store ptr %i.gs, ptr %i.gt, align 8, !tbaa !20
  br label %_ZN11OpenImageIO4v3_18IffInput5closeEv.exit83

bb.s:                                             ; preds = %bb.q
  store ptr @.str.29, ptr %9, align 8, !tbaa !32
  %i.gv = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 11, ptr %i.gv, align 8, !tbaa !34
  store ptr @.str.30, ptr %10, align 8, !tbaa !32
  %i.gw = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 3, ptr %i.gw, align 8, !tbaa !34
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %i.ai, ptr noundef nonnull dead_on_return %9, ptr noundef nonnull dead_on_return %10)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.gy = load i64, ptr %i.gx, align 8, !tbaa !13 ; 2 uses
  %.not37 = icmp eq i64 %i.gy, 0
  br i1 %.not37, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 256
  store ptr @.str.31, ptr %11, align 8, !tbaa !32
  %i.ha = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 6, ptr %i.ha, align 8, !tbaa !34
  %i.hb = load ptr, ptr %i.gz, align 8, !tbaa !17
  store ptr %i.hb, ptr %12, align 8, !tbaa !32
  %i.hc = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.gy, ptr %i.hc, align 8, !tbaa !34
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %i.ai, ptr noundef nonnull dead_on_return %11, ptr noundef nonnull dead_on_return %12)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !13 ; 2 uses
  %.not38 = icmp eq i64 %i.he, 0
  br i1 %.not38, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr @.str.32, ptr %13, align 8, !tbaa !32
  %i.hg = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 8, ptr %i.hg, align 8, !tbaa !34
  %i.hh = load ptr, ptr %i.hf, align 8, !tbaa !17
  store ptr %i.hh, ptr %14, align 8, !tbaa !32
  %i.hi = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i64 %i.he, ptr %i.hi, align 8, !tbaa !34
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %i.ai, ptr noundef nonnull dead_on_return %13, ptr noundef nonnull dead_on_return %14)
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !98
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 352
  store i32 %i.hk, ptr %i.hl, align 8, !tbaa !99
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %2, ptr noundef nonnull align 8 dereferenceable(160) %i.ai, i64 72, i1 false)
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.ho = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.hm, ptr noundef nonnull align 8 dereferenceable(24) %i.hn) ; 0 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.hr = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.hp, ptr noundef nonnull align 8 dereferenceable(24) %i.hq) ; 0 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.hs, ptr noundef nonnull align 8 dereferenceable(9) %i.ht, i64 9, i1 false)
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.hw = call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.hu, ptr noundef nonnull align 8 dereferenceable(24) %i.hv) ; 0 uses
  br label %_ZN11OpenImageIO4v3_18IffInput5closeEv.exit83

_ZN11OpenImageIO4v3_18IffInput5closeEv.exit83:    ; preds = %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i82, %bb.r, %bb.x
  %.023 = phi i1 [ true, %bb.x ], [ false, %bb.r ], [ false, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i82 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %_ZN11OpenImageIO4v3_18IffInput5closeEv.exit

bb.y:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.2
  %.pn33.pn = phi { ptr, i32 } [ %i.fv, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ], [ %i.ev, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65 ], [ %i.ed, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit59.2 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %.pn33.pn

_ZN11OpenImageIO4v3_18IffInput5closeEv.exit:      ; preds = %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i, %bb.c, %bb.a, %_ZN11OpenImageIO4v3_18IffInput5closeEv.exit83
  %.124 = phi i1 [ %.023, %_ZN11OpenImageIO4v3_18IffInput5closeEv.exit83 ], [ false, %bb.a ], [ false, %bb.c ], [ false, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i ]
  ret i1 %.124
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput19ioproxy_use_or_openENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef dead_on_return) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184), i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18IffInput11read_headerEv(ptr noundef nonnull align 8 dereferenceable(360) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 19 uses
  %i.b = alloca i32, align 4                      ; 17 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i16, align 2                      ; 7 uses
  %i.e = alloca i16, align 2                      ; 6 uses
  %i.f = alloca i16, align 2                      ; 6 uses
  %1 = alloca %"class.std::vector.24", align 8    ; 9 uses
  %2 = alloca %"class.std::allocator.12", align 1 ; 4 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %4 = alloca %"class.std::allocator.12", align 1 ; 4 uses
  %5 = alloca %"class.std::vector.24", align 8    ; 9 uses
  %6 = alloca %"class.std::allocator.12", align 1 ; 4 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %8 = alloca %"class.std::allocator.12", align 1 ; 4 uses
  %i.g = alloca i16, align 2                      ; 6 uses
  %i.h = alloca i16, align 2                      ; 6 uses
  %i.i = alloca i16, align 2                      ; 6 uses
  %i.j = alloca i16, align 2                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  %i.k = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 4)
  br i1 %i.k, label %.lr.ph, label %_ZN11OpenImageIO4v3_18IffInput4readIjEEbPT_m.exit

.lr.ph:                                           ; preds = %bb.a, %bb.bq
  %i.l = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i64 noundef 4, i64 noundef 1)
  br i1 %i.l, label %bb.b, label %_ZN11OpenImageIO4v3_18IffInput4readIjEEbPT_m.exit

bb.b:                                             ; preds = %.lr.ph
  %i.m = load i32, ptr %i.b, align 4, !tbaa !3
  %i.n = call noundef i32 @llvm.bswap.i32(i32 %i.m) ; 3 uses
  store i32 %i.n, ptr %i.b, align 4, !tbaa !3
  %i.o = load i32, ptr %i.a, align 1
  %i.p = icmp ne i32 %i.o, 877809478
  %i.q = zext i1 %i.p to i32
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.c, label %bb.bp

bb.c:                                             ; preds = %bb.b
  %i.s = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 4)
  br i1 %i.s, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.33)
  br label %_ZN11OpenImageIO4v3_18IffInput4readIjEEbPT_m.exit

bb.e:                                             ; preds = %bb.c
  %i.t = load i32, ptr %i.a, align 1
  %i.u = icmp ne i32 %i.t, 1196247363
  %i.v = zext i1 %i.u to i32
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %.preheader, label %bb.bq

.preheader:                                       ; preds = %bb.e, %bb.bo
  %i.x = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 4)
  br i1 %i.x, label %bb.f, label %_ZN11OpenImageIO4v3_18IffInput4readIjEEbPT_m.exit

bb.f:                                             ; preds = %.preheader
  %i.y = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i64 noundef 4, i64 noundef 1)
  br i1 %i.y, label %bb.g, label %_ZN11OpenImageIO4v3_18IffInput4readIjEEbPT_m.exit

bb.g:                                             ; preds = %bb.f
  %i.z = load i32, ptr %i.b, align 4, !tbaa !3
  %i.aa = call noundef i32 @llvm.bswap.i32(i32 %i.z) ; 4 uses
  store i32 %i.aa, ptr %i.b, align 4, !tbaa !3
  %i.ab = load i32, ptr %i.a, align 1
  %i.ac = icmp ne i32 %i.ab, 1145586260
  %i.ad = zext i1 %i.ac to i32
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %bb.bo

bb.h:                                             ; preds = %bb.g
  switch i32 %i.aa, label %bb.i [
    i32 32, label %bb.j
    i32 24, label %bb.j
  ]

bb.i:                                             ; preds = %bb.h
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJjEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.34, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br label %_ZN11OpenImageIO4v3_18IffInput4readIjEEbPT_m.exit

bb.j:                                             ; preds = %bb.h, %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 4 uses
  %i.ah = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.ag, i64 noundef 4, i64 noundef 1)
  br i1 %i.ah, label %.lr.ph.i.i.preheader, label %_ZN11OpenImageIO4v3_18IffInput4readIjEEbPT_m.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.j
  %i.ai = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.aj = call noundef i32 @llvm.bswap.i32(i32 %i.ai)
  store i32 %i.aj, ptr %i.ag, align 4, !tbaa !3
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 4 uses
  %i.al = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.ak, i64 noundef 4, i64 noundef 1)
  br i1 %i.al, label %.lr.ph.i.i65.preheader, label %_ZN11OpenImageIO4v3_18IffInput4readIjEEbPT_m.exit

.lr.ph.i.i65.preheader:                           ; preds = %.lr.ph.i.i.preheader
  %i.am = load i32, ptr %i.ak, align 8, !tbaa !3
  %i.an = call noundef i32 @llvm.bswap.i32(i32 %i.am)
  store i32 %i.an, ptr %i.ak, align 8, !tbaa !3
  %i.ao = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.e, i64 noundef 2, i64 noundef 1)
  br i1 %i.ao, label %.lr.ph.i.i71.preheader, label %_ZN11OpenImageIO4v3_18IffInput4readIjEEbPT_m.exit

.lr.ph.i.i71.preheader:                           ; preds = %.lr.ph.i.i65.preheader
  %.promoted = load i16, ptr %i.e, align 2, !tbaa !24
  %i.ap = call i16 @llvm.bswap.i16(i16 %.promoted)
  store i16 %i.ap, ptr %i.e, align 2, !tbaa !24
  %i.aq = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.f, i64 noundef 2, i64 noundef 1)
  br i1 %i.aq, label %.lr.ph.i.i76.preheader, label %_ZN11OpenImageIO4v3_18IffInput4readIjEEbPT_m.exit

.lr.ph.i.i76.preheader:                           ; preds = %.lr.ph.i.i71.preheader
  %.promoted162 = load i16, ptr %i.f, align 2, !tbaa !24
  %i.ar = call i16 @llvm.bswap.i16(i16 %.promoted162)
  store i16 %i.ar, ptr %i.f, align 2, !tbaa !24
  %i.as = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.c, i64 noundef 4, i64 noundef 1)
  br i1 %i.as, label %.lr.ph.i.i82.preheader, label %_ZN11OpenImageIO4v3_18IffInput4readIjEEbPT_m.exit

.lr.ph.i.i82.preheader:                           ; preds = %.lr.ph.i.i76.preheader
  %.promoted164 = load i32, ptr %i.c, align 4, !tbaa !3
  %i.at = call i32 @llvm.bswap.i32(i32 %.promoted164)
  store i32 %i.at, ptr %i.c, align 4, !tbaa !3
  %i.au = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.d, i64 noundef 2, i64 noundef 1)
  br i1 %i.au, label %.lr.ph.i.i88.preheader, label %_ZN11OpenImageIO4v3_18IffInput4readIjEEbPT_m.exit

.lr.ph.i.i88.preheader:                           ; preds = %.lr.ph.i.i82.preheader
  %.promoted166 = load i16, ptr %i.d, align 2, !tbaa !24
  %i.av = call i16 @llvm.bswap.i16(i16 %.promoted166)
  store i16 %i.av, ptr %i.d, align 2, !tbaa !24
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 242 ; 6 uses
  %i.ax = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.aw, i64 noundef 2, i64 noundef 1)
  br i1 %i.ax, label %.lr.ph.i.i94.preheader, label %_ZN11OpenImageIO4v3_18IffInput4readIjEEbPT_m.exit

.lr.ph.i.i94.preheader:                           ; preds = %.lr.ph.i.i88.preheader
  %i.ay = load i16, ptr %i.aw, align 2, !tbaa !24
  %i.az = call noundef i16 @llvm.bswap.i16(i16 %i.ay)
  store i16 %i.az, ptr %i.aw, align 2, !tbaa !24
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 4 uses
  %i.bb = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.ba, i64 noundef 4, i64 noundef 1)
  br i1 %i.bb, label %.lr.ph.i.i100.preheader, label %_ZN11OpenImageIO4v3_18IffInput4readIjEEbPT_m.exit

.lr.ph.i.i100.preheader:                          ; preds = %.lr.ph.i.i94.preheader
  %i.bc = load i32, ptr %i.ba, align 4, !tbaa !3
  %i.bd = call noundef i32 @llvm.bswap.i32(i32 %i.bc)
  store i32 %i.bd, ptr %i.ba, align 4, !tbaa !3
  %i.be = load i32, ptr %i.b, align 4, !tbaa !3
  %i.bf = icmp eq i32 %i.be, 32
  br i1 %i.bf, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.i.i100.preheader
  %i.bg = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.af, i64 noundef 4, i64 noundef 1)
  br i1 %i.bg, label %.lr.ph.i.i106.preheader, label %_ZN11OpenImageIO4v3_18IffInput4readIjEEbPT_m.exit

.lr.ph.i.i106.preheader:                          ; preds = %bb.k
  %i.bh = load i32, ptr %i.af, align 8, !tbaa !3
  %i.bi = call noundef i32 @llvm.bswap.i32(i32 %i.bh)
  store i32 %i.bi, ptr %i.af, align 8, !tbaa !3
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 3 uses
  %i.bk = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.bj, i64 noundef 4, i64 noundef 1)
  br i1 %i.bk, label %.lr.ph.i.i112.preheader, label %_ZN11OpenImageIO4v3_18IffInput4readIjEEbPT_m.exit

.lr.ph.i.i112.preheader:                          ; preds = %.lr.ph.i.i106.preheader
  %i.bl = load i32, ptr %i.bj, align 4, !tbaa !3
  %i.bm = call noundef i32 @llvm.bswap.i32(i32 %i.bl)
  store i32 %i.bm, ptr %i.bj, align 4, !tbaa !3
  br label %_ZN11OpenImageIO4v3_18IffInput4readIjEEbPT_m.exit116.thread

bb.l:                                             ; preds = %.lr.ph.i.i100.preheader
  store i32 0, ptr %i.af, align 8, !tbaa !100
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 220
  store i32 0, ptr %i.bn, align 4, !tbaa !101
  br label %_ZN11OpenImageIO4v3_18IffInput4readIjEEbPT_m.exit116.thread

_ZN11OpenImageIO4v3_18IffInput4readIjEEbPT_m.exit116.thread: ; preds = %.lr.ph.i.i112.preheader, %bb.l
  %i.bo = load i16, ptr %i.aw, align 2, !tbaa !102
  %i.bp = icmp eq i16 %i.bo, 0
  br i1 %i.bp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZN11OpenImageIO4v3_18IffInput4readIjEEbPT_m.exit116.thread
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.35)
  br label %_ZN11OpenImageIO4v3_18IffInput4readIjEEbPT_m.exit

bb.n:                                             ; preds = %_ZN11OpenImageIO4v3_18IffInput4readIjEEbPT_m.exit116.thread
  %i.bq = load i32, ptr %i.ba, align 4, !tbaa !97
  %i.br = icmp ugt i32 %i.bq, 1
  br i1 %i.br, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.36)
  br label %_ZN11OpenImageIO4v3_18IffInput4readIjEEbPT_m.exit

bb.p:                                             ; preds = %bb.n
  %i.bs = load i32, ptr %i.c, align 4, !tbaa !3   ; 5 uses
  %i.bt = and i32 %i.bs, 3
  %.not = icmp eq i32 %i.bt, 0
  br i1 %.not, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = and i32 %i.bs, 1
  %.not42 = icmp eq i32 %i.bu, 0
  br i1 %.not42, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 241
  store i8 3, ptr %i.bv, align 1, !tbaa !74
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.bw = and i32 %i.bs, 2
  %.not43 = icmp eq i32 %i.bw, 0
  br i1 %.not43, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 241 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !74
  %i.bz = add i8 %i.by, 1
  store i8 %i.bz, ptr %i.bx, align 1, !tbaa !74
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.ca = load i16, ptr %i.d, align 2, !tbaa !24
  %.not44 = icmp eq i16 %i.ca, 0
  %i.cb = select i1 %.not44, i8 8, i8 16
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 %i.cb, ptr %i.cc, align 8, !tbaa !35
  %i.cd = and i32 %i.bs, 4
  %.not45 = icmp eq i32 %i.cd, 0
  br i1 %.not45, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 1, ptr %i.ce, align 8, !tbaa !75
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 249
  store i8 32, ptr %i.cf, align 1, !tbaa !103
  br label %bb.z

bb.x:                                             ; preds = %bb.p
  %i.cg = and i32 %i.bs, 4
  %.not41 = icmp eq i32 %i.cg, 0
  br i1 %.not41, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 241
  store i8 1, ptr %i.ch, align 1, !tbaa !74
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i8 32, ptr %i.ci, align 8, !tbaa !35
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.w
  %i.cj = call noundef zeroext i1 @_ZN11OpenImageIO4v3_18IffInput10read_chunkEPhRj(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br i1 %i.cj, label %.lr.ph172, label %._crit_edge

.lr.ph172:                                        ; preds = %bb.z
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.cm = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br label %bb.aa

._crit_edge:                                      ; preds = %.loopexit, %bb.z
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.37)
  br label %_ZN11OpenImageIO4v3_18IffInput4readIjEEbPT_m.exit

bb.aa:                                            ; preds = %.lr.ph172, %.loopexit
  %i.cr = load i32, ptr %i.b, align 4, !tbaa !3   ; 2 uses
  %i.cs = and i32 %i.cr, 3                        ; 2 uses
  %.not.i117 = icmp eq i32 %i.cs, 0
  %i.ct = sub nuw nsw i32 4, %i.cs
  %i.cu = select i1 %.not.i117, i32 0, i32 %i.ct
  %.0.i118 = add i32 %i.cu, %i.cr                 ; 4 uses
  %i.cv = load i32, ptr %i.a, align 1
  %i.cw = icmp ne i32 %i.cv, 1213486401
  %i.cx = zext i1 %i.cw to i32
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %bb.ab, label %bb.an

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.cz = zext i32 %.0.i118 to i64                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30
  invoke void @_ZNSt6vectorIcSaIcEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.cz, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  %i.da = load ptr, ptr %1, align 8, !tbaa !104
  %i.db = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %i.da, i64 noundef 1, i64 noundef %i.cz)
          to label %bb.ad unwind label %bb.af     ; 2 uses

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.db, label %bb.ag, label %bb.ai

bb.ae:                                            ; preds = %bb.ab
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit120

bb.af:                                            ; preds = %bb.ac
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.ag:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  %i.de = load ptr, ptr %1, align 8, !tbaa !104
  %i.df = load i32, ptr %i.b, align 4, !tbaa !3
  %i.dg = zext i32 %i.df to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.de, i64 noundef %i.dg, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.ah unwind label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.dh = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.co, ptr noundef nonnull align 8 dereferenceable(32) %3) #30 ; 0 uses
  %i.di = load ptr, ptr %3, align 8, !tbaa !17    ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.cp
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.ah
  %i.dk = load i64, ptr %i.cp, align 8, !tbaa !16
  %i.dl = add i64 %i.dk, 1
  call void @_ZdlPvm(ptr noundef %i.di, i64 noundef %i.dl) #31
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_18IffInput11read_headerEv:bb.a

bb.ai:                                            ; preds = %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.dm = load ptr, ptr %1, align 8, !tbaa !104   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dn = load ptr, ptr %i.cq, align 8, !tbaa !106
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = ptrtoint ptr %i.dm to i64
  %i.dq = sub i64 %i.do, %i.dp
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dq) #31
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.ai, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br i1 %i.db, label %.loopexit, label %_ZN11OpenImageIO4v3_18IffInput4readIjEEbPT_m.exit

bb.ak:                                            ; preds = %bb.ag
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.af
  %.pn56 = phi { ptr, i32 } [ %i.dr, %bb.ak ], [ %i.dd, %bb.af ] ; 2 uses
  %i.ds = load ptr, ptr %1, align 8, !tbaa !104   ; 3 uses
  %.not.i.i.i119 = icmp eq ptr %i.ds, null
  br i1 %.not.i.i.i119, label %_ZNSt6vectorIcSaIcEED2Ev.exit120, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.dt = load ptr, ptr %i.cq, align 8, !tbaa !106
  %i.du = ptrtoint ptr %i.dt to i64
  %i.dv = ptrtoint ptr %i.ds to i64
  %i.dw = sub i64 %i.du, %i.dv
  call void @_ZdlPvm(ptr noundef nonnull %i.ds, i64 noundef %i.dw) #31
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit120

_ZNSt6vectorIcSaIcEED2Ev.exit120:                 ; preds = %bb.am, %bb.al, %bb.ae
  %.pn56.pn = phi { ptr, i32 } [ %i.dc, %bb.ae ], [ %.pn56, %bb.al ], [ %.pn56, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %bb.br

bb.an:                                            ; preds = %bb.aa
  %i.dx = load i32, ptr %i.a, align 1
  %i.dy = icmp ne i32 %i.dx, 1163149636
  %i.dz = zext i1 %i.dy to i32
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %bb.ao, label %bb.ba

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.eb = zext i32 %.0.i118 to i64                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  invoke void @_ZNSt6vectorIcSaIcEEC2EmRKS0_(ptr noundef nonnull align 8 dereferenceable(24) %5, i64 noundef %i.eb, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.ap unwind label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  %i.ec = load ptr, ptr %5, align 8, !tbaa !104
  %i.ed = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %i.ec, i64 noundef 1, i64 noundef %i.eb)
          to label %bb.aq unwind label %bb.as     ; 2 uses

bb.aq:                                            ; preds = %bb.ap
  br i1 %i.ed, label %bb.at, label %bb.av

bb.ar:                                            ; preds = %bb.ao
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit127

bb.as:                                            ; preds = %bb.ap
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.at:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.eg = load ptr, ptr %5, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.eg, i64 noundef %i.eb, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.au unwind label %bb.ax

bb.au:                                            ; preds = %bb.at
  %i.eh = call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.cl, ptr noundef nonnull align 8 dereferenceable(32) %7) #30 ; 0 uses
  %i.ei = load ptr, ptr %7, align 8, !tbaa !17    ; 2 uses
  %i.ej = icmp eq ptr %i.ei, %i.cm
  br i1 %i.ej, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121: ; preds = %bb.au
  %i.ek = load i64, ptr %i.cm, align 8, !tbaa !16
  %i.el = add i64 %i.ek, 1
  call void @_ZdlPvm(ptr noundef %i.ei, i64 noundef %i.el) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123: ; preds = %bb.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.av

bb.av:                                            ; preds = %bb.aq, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit123
  %i.em = load ptr, ptr %5, align 8, !tbaa !104   ; 3 uses
  %.not.i.i.i124 = icmp eq ptr %i.em, null
  br i1 %.not.i.i.i124, label %_ZNSt6vectorIcSaIcEED2Ev.exit125, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.en = load ptr, ptr %i.cn, align 8, !tbaa !106
  %i.eo = ptrtoint ptr %i.en to i64
  %i.ep = ptrtoint ptr %i.em to i64
  %i.eq = sub i64 %i.eo, %i.ep
  call void @_ZdlPvm(ptr noundef nonnull %i.em, i64 noundef %i.eq) #31
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit125

_ZNSt6vectorIcSaIcEED2Ev.exit125:                 ; preds = %bb.av, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br i1 %i.ed, label %.loopexit, label %_ZN11OpenImageIO4v3_18IffInput4readIjEEbPT_m.exit

bb.ax:                                            ; preds = %bb.at
  %i.er = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.as
  %.pn = phi { ptr, i32 } [ %i.er, %bb.ax ], [ %i.ef, %bb.as ] ; 2 uses
  %i.es = load ptr, ptr %5, align 8, !tbaa !104   ; 3 uses
  %.not.i.i.i126 = icmp eq ptr %i.es, null
  br i1 %.not.i.i.i126, label %_ZNSt6vectorIcSaIcEED2Ev.exit127, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.et = load ptr, ptr %i.cn, align 8, !tbaa !106
  %i.eu = ptrtoint ptr %i.et to i64
  %i.ev = ptrtoint ptr %i.es to i64
  %i.ew = sub i64 %i.eu, %i.ev
  call void @_ZdlPvm(ptr noundef nonnull %i.es, i64 noundef %i.ew) #31
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit127

_ZNSt6vectorIcSaIcEED2Ev.exit127:                 ; preds = %bb.az, %bb.ay, %bb.ar
  %.pn.pn = phi { ptr, i32 } [ %i.ee, %bb.ar ], [ %.pn, %bb.ay ], [ %.pn, %bb.az ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %bb.br

bb.ba:                                            ; preds = %bb.an
  %i.ex = load i32, ptr %i.a, align 1
  %i.ey = icmp ne i32 %i.ex, 877809478
  %i.ez = zext i1 %i.ey to i32
  %i.fa = icmp eq i32 %i.ez, 0
  br i1 %i.fa, label %bb.bb, label %bb.bn

bb.bb:                                            ; preds = %bb.ba
  %i.fb = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 4)
  br i1 %i.fb, label %bb.bc, label %_ZN11OpenImageIO4v3_18IffInput4readIjEEbPT_m.exit

bb.bc:                                            ; preds = %bb.bb
  %i.fc = load i32, ptr %i.a, align 1
  %i.fd = icmp ne i32 %i.fc, 1347240532
  %i.fe = zext i1 %i.fd to i32
  %i.ff = icmp eq i32 %i.fe, 0
  br i1 %i.ff, label %bb.bd, label %bb.bm

bb.bd:                                            ; preds = %bb.bc
  %i.fg = call noundef i64 @_ZNK11OpenImageIO4v3_110ImageInput6iotellEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.fh = trunc i64 %i.fg to i32
  store i32 %i.fh, ptr %i.ck, align 8, !tbaa !98
  %i.fi = load i16, ptr %i.aw, align 2, !tbaa !102
  %.not53168.not = icmp eq i16 %i.fi, 0
  br i1 %.not53168.not, label %.loopexit, label %.lr.ph170

bb.be:                                            ; preds = %bb.bl
  %i.fj = add nuw nsw i32 %.0169, 1               ; 2 uses
  %i.fk = load i16, ptr %i.aw, align 2, !tbaa !102
  %i.fl = zext i16 %i.fk to i32
  %.not53 = icmp samesign ult i32 %i.fj, %i.fl
  br i1 %.not53, label %.lr.ph170, label %.loopexit, !llvm.loop !107

.lr.ph170:                                        ; preds = %bb.bd, %bb.be
  %.0169 = phi i32 [ %i.fj, %bb.be ], [ 0, %bb.bd ]
  %i.fm = call noundef zeroext i1 @_ZN11OpenImageIO4v3_18IffInput10read_chunkEPhRj(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br i1 %i.fm, label %bb.bf, label %_ZN11OpenImageIO4v3_18IffInput4readIjEEbPT_m.exit

bb.bf:                                            ; preds = %.lr.ph170
  %i.fn = load i32, ptr %i.a, align 1
  %i.fo = icmp ne i32 %i.fn, 1094862674
  %i.fp = zext i1 %i.fo to i32
  %i.fq = icmp eq i32 %i.fp, 0
  br i1 %i.fq, label %bb.bg, label %bb.bl

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #30
  %i.fr = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.g, i64 noundef 2, i64 noundef 1)
  br i1 %i.fr, label %.lr.ph.i.i131.preheader, label %_ZN11OpenImageIO4v3_18IffInput4readItEEbPT_m.exit135

.lr.ph.i.i131.preheader:                          ; preds = %bb.bg
  %.promoted173 = load i16, ptr %i.g, align 2, !tbaa !24
  %i.fs = call i16 @llvm.bswap.i16(i16 %.promoted173)
  store i16 %i.fs, ptr %i.g, align 2, !tbaa !24
  %i.ft = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.i, i64 noundef 2, i64 noundef 1)
  br i1 %i.ft, label %.lr.ph.i.i137.preheader, label %_ZN11OpenImageIO4v3_18IffInput4readItEEbPT_m.exit135

.lr.ph.i.i137.preheader:                          ; preds = %.lr.ph.i.i131.preheader
  %.promoted175 = load i16, ptr %i.i, align 2, !tbaa !24
  %i.fu = call i16 @llvm.bswap.i16(i16 %.promoted175)
  store i16 %i.fu, ptr %i.i, align 2, !tbaa !24
  %i.fv = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.h, i64 noundef 2, i64 noundef 1)
  br i1 %i.fv, label %.lr.ph.i.i143.preheader, label %_ZN11OpenImageIO4v3_18IffInput4readItEEbPT_m.exit135

.lr.ph.i.i143.preheader:                          ; preds = %.lr.ph.i.i137.preheader
  %.promoted177 = load i16, ptr %i.h, align 2, !tbaa !24
  %i.fw = call i16 @llvm.bswap.i16(i16 %.promoted177)
  store i16 %i.fw, ptr %i.h, align 2, !tbaa !24
  %i.fx = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.j, i64 noundef 2, i64 noundef 1)
  br i1 %i.fx, label %.lr.ph.i.i149.preheader, label %_ZN11OpenImageIO4v3_18IffInput4readItEEbPT_m.exit135

.lr.ph.i.i149.preheader:                          ; preds = %.lr.ph.i.i143.preheader
  %.promoted179 = load i16, ptr %i.j, align 2, !tbaa !24
  %i.fy = call i16 @llvm.bswap.i16(i16 %.promoted179) ; 3 uses
  %i.fz = load i16, ptr %i.g, align 2, !tbaa !24  ; 2 uses
  %i.ga = load i16, ptr %i.h, align 2, !tbaa !24  ; 3 uses
  %i.gb = zext i16 %i.ga to i32
  %i.gc = icmp ugt i16 %i.fz, %i.ga
  br i1 %i.gc, label %_ZN11OpenImageIO4v3_18IffInput4readItEEbPT_m.exit135, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph.i.i149.preheader
  %i.gd = load i16, ptr %i.i, align 2, !tbaa !24  ; 2 uses
  %i.ge = zext i16 %i.fy to i32
  %i.gf = icmp ugt i16 %i.gd, %i.fy
  br i1 %i.gf, label %_ZN11OpenImageIO4v3_18IffInput4readItEEbPT_m.exit135, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gg = load i32, ptr %i.ag, align 4, !tbaa !76
  %.not51 = icmp ugt i32 %i.gg, %i.gb
  br i1 %.not51, label %bb.bj, label %_ZN11OpenImageIO4v3_18IffInput4readItEEbPT_m.exit135

bb.bj:                                            ; preds = %bb.bi
  %i.gh = load i32, ptr %i.ak, align 8, !tbaa !77
  %.not52 = icmp ugt i32 %i.gh, %i.ge
  br i1 %.not52, label %bb.bk, label %_ZN11OpenImageIO4v3_18IffInput4readItEEbPT_m.exit135

bb.bk:                                            ; preds = %bb.bj
  %reass.sub = sub i16 %i.ga, %i.fz
  %i.gi = add i16 %reass.sub, 1
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 244
  store i16 %i.gi, ptr %i.gj, align 4, !tbaa !92
  %reass.sub181 = sub i16 %i.fy, %i.gd
  %i.gk = add i16 %reass.sub181, 1
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 246
  store i16 %i.gk, ptr %i.gl, align 2, !tbaa !93
  br label %_ZN11OpenImageIO4v3_18IffInput4readItEEbPT_m.exit135

_ZN11OpenImageIO4v3_18IffInput4readItEEbPT_m.exit135: ; preds = %.lr.ph.i.i143.preheader, %.lr.ph.i.i137.preheader, %.lr.ph.i.i131.preheader, %bb.bg, %.lr.ph.i.i149.preheader, %bb.bh, %bb.bi, %bb.bj, %bb.bk
  %.334 = phi i1 [ false, %.lr.ph.i.i149.preheader ], [ true, %bb.bk ], [ false, %.lr.ph.i.i137.preheader ], [ false, %.lr.ph.i.i131.preheader ], [ false, %bb.bg ], [ false, %bb.bj ], [ false, %bb.bi ], [ false, %bb.bh ], [ false, %.lr.ph.i.i143.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  br label %_ZN11OpenImageIO4v3_18IffInput4readIjEEbPT_m.exit

bb.bl:                                            ; preds = %bb.bf
  %i.gm = load i32, ptr %i.b, align 4, !tbaa !3   ; 2 uses
  %i.gn = and i32 %i.gm, 3                        ; 2 uses
  %.not.i128 = icmp eq i32 %i.gn, 0
  %i.go = sub nuw nsw i32 4, %i.gn
  %i.gp = select i1 %.not.i128, i32 0, i32 %i.go
  %.0.i129 = add i32 %i.gp, %i.gm
  %i.gq = zext i32 %.0.i129 to i64
  %i.gr = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.gq, i32 noundef 1)
  br i1 %i.gr, label %bb.be, label %_ZN11OpenImageIO4v3_18IffInput4readIjEEbPT_m.exit

bb.bm:                                            ; preds = %bb.bc
  %i.gs = zext i32 %.0.i118 to i64
  %i.gt = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.gs, i32 noundef 1)
  br i1 %i.gt, label %.loopexit, label %_ZN11OpenImageIO4v3_18IffInput4readIjEEbPT_m.exit

bb.bn:                                            ; preds = %bb.ba
  %i.gu = zext i32 %.0.i118 to i64
  %i.gv = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.gu, i32 noundef 1)
  br i1 %i.gv, label %.loopexit, label %_ZN11OpenImageIO4v3_18IffInput4readIjEEbPT_m.exit

.loopexit:                                        ; preds = %bb.be, %bb.bd, %_ZNSt6vectorIcSaIcEED2Ev.exit125, %bb.bn, %bb.bm, %_ZNSt6vectorIcSaIcEED2Ev.exit
  %i.gw = call noundef zeroext i1 @_ZN11OpenImageIO4v3_18IffInput10read_chunkEPhRj(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  br i1 %i.gw, label %bb.aa, label %._crit_edge, !llvm.loop !108

bb.bo:                                            ; preds = %bb.g
  %i.gx = and i32 %i.aa, 3                        ; 2 uses
  %.not.i62 = icmp eq i32 %i.gx, 0
  %i.gy = sub nuw nsw i32 4, %i.gx
  %i.gz = select i1 %.not.i62, i32 0, i32 %i.gy
  %.0.i63 = add i32 %i.gz, %i.aa
  %i.ha = zext i32 %.0.i63 to i64
  %i.hb = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.ha, i32 noundef 1)
  br i1 %i.hb, label %.preheader, label %_ZN11OpenImageIO4v3_18IffInput4readIjEEbPT_m.exit, !llvm.loop !109

bb.bp:                                            ; preds = %bb.b
  %i.hc = and i32 %i.n, 3                         ; 2 uses
  %.not.i = icmp eq i32 %i.hc, 0
  %i.hd = sub nuw nsw i32 4, %i.hc
  %i.he = select i1 %.not.i, i32 0, i32 %i.hd
  %.0.i = add i32 %i.he, %i.n
  %i.hf = zext i32 %.0.i to i64
  %i.hg = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.hf, i32 noundef 1)
  br i1 %i.hg, label %bb.bq, label %_ZN11OpenImageIO4v3_18IffInput4readIjEEbPT_m.exit

bb.bq:                                            ; preds = %bb.bp, %bb.e
  %i.hh = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 4)
  br i1 %i.hh, label %.lr.ph, label %_ZN11OpenImageIO4v3_18IffInput4readIjEEbPT_m.exit, !llvm.loop !110

_ZN11OpenImageIO4v3_18IffInput4readIjEEbPT_m.exit: ; preds = %bb.bp, %bb.bq, %.lr.ph, %bb.f, %.preheader, %bb.bo, %bb.bn, %bb.bm, %bb.bb, %_ZNSt6vectorIcSaIcEED2Ev.exit, %_ZNSt6vectorIcSaIcEED2Ev.exit125, %.lr.ph170, %bb.bl, %bb.a, %_ZN11OpenImageIO4v3_18IffInput4readItEEbPT_m.exit135, %.lr.ph.i.i106.preheader, %bb.k, %.lr.ph.i.i94.preheader, %.lr.ph.i.i88.preheader, %.lr.ph.i.i82.preheader, %.lr.ph.i.i76.preheader, %.lr.ph.i.i71.preheader, %.lr.ph.i.i65.preheader, %.lr.ph.i.i.preheader, %bb.j, %._crit_edge, %bb.o, %bb.m, %bb.i, %bb.d
  %.6 = phi i1 [ false, %bb.i ], [ false, %bb.m ], [ false, %bb.o ], [ false, %bb.k ], [ false, %.lr.ph.i.i71.preheader ], [ false, %.lr.ph.i.i.preheader ], [ false, %bb.j ], [ false, %.lr.ph.i.i94.preheader ], [ %.334, %_ZN11OpenImageIO4v3_18IffInput4readItEEbPT_m.exit135 ], [ false, %._crit_edge ], [ false, %.lr.ph.i.i65.preheader ], [ false, %.lr.ph170 ], [ false, %bb.f ], [ false, %.lr.ph.i.i106.preheader ], [ false, %bb.d ], [ false, %bb.bn ], [ false, %.lr.ph.i.i88.preheader ], [ false, %.lr.ph.i.i82.preheader ], [ false, %.lr.ph.i.i76.preheader ], [ false, %bb.a ], [ false, %bb.bl ], [ false, %_ZNSt6vectorIcSaIcEED2Ev.exit125 ], [ false, %_ZNSt6vectorIcSaIcEED2Ev.exit ], [ false, %bb.bb ], [ false, %bb.bm ], [ false, %bb.bo ], [ false, %.preheader ], [ false, %.lr.ph ], [ false, %bb.bq ], [ false, %bb.bp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i1 %.6

bb.br:                                            ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit127, %_ZNSt6vectorIcSaIcEED2Ev.exit120
  %.pn56.pn.pn = phi { ptr, i32 } [ %.pn56.pn, %_ZNSt6vectorIcSaIcEED2Ev.exit120 ], [ %.pn.pn, %_ZNSt6vectorIcSaIcEED2Ev.exit127 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  resume { ptr, i32 } %.pn56.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.47", align 16 ; 3 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30, !noalias !111
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #30, !noalias !111
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull %1, i64 %i.a, i64 0, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30, !noalias !111
  %i.b = load ptr, ptr %4, align 8, !tbaa !17
  store ptr %i.b, ptr %3, align 8, !tbaa !32
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !13
  store i64 %i.e, ptr %i.c, align 8, !tbaa !34
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !17     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !tbaa !16
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !17     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !16
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %i.k
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18IffInput5closeEv(ptr noundef nonnull align 8 dereferenceable(360) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN11OpenImageIO4v3_110ImageInput13ioproxy_clearEv(ptr noundef nonnull align 8 dereferenceable(360) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i64 0, ptr %i.b, align 8, !tbaa !13
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !17
  store i8 0, ptr %i.c, align 1, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  %.not.i.i.i = icmp eq ptr %i.g, %i.e
  br i1 %.not.i.i.i, label %_ZN11OpenImageIO4v3_18IffInput4initEv.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i:      ; preds = %bb.a
  store ptr %i.e, ptr %i.f, align 8, !tbaa !20
  br label %_ZN11OpenImageIO4v3_18IffInput4initEv.exit

_ZN11OpenImageIO4v3_18IffInput4initEv.exit:       ; preds = %bb.a, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i
  ret i1 true
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_19ImageSpecC1EiiiNS0_8TypeDescE(ptr noundef nonnull align 8 dereferenceable(160), i32 noundef, i32 noundef, i32 noundef, i64) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(160) ptr @_ZN11OpenImageIO4v3_19ImageSpecaSEOS1_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 64, i1 false)
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_18IffInput16read_native_tileEiiiiiPv:bb.a
  %i.cf = zext nneg i8 %i.ce to i64
  %i.cg = load i8, ptr %i.az, align 1, !tbaa !29
  %i.ch = zext i8 %i.cg to i64
  %i.ci = mul nuw nsw i64 %i.cf, %i.ch
  %i.cj = load i8, ptr %i.bd, align 8, !tbaa !28
  %.not.i.i36 = icmp eq i8 %i.cj, 0
  %i.ck = load i8, ptr %i.bf, align 1
  %i.cl = lshr i8 %i.ck, 3
  %narrow.i.i37 = select i1 %.not.i.i36, i8 0, i8 %i.cl
  %i.cm = zext nneg i8 %narrow.i.i37 to i64
  %i.cn = add nuw nsw i64 %i.ci, %i.cm            ; 3 uses
  %i.co = mul nuw nsw i64 %i.cn, %i.cc            ; 2 uses
  %i.cp = mul nsw i64 %indvars.iv, %i.bx
  %i.cq = add nsw i64 %i.cp, %i.by
  %i.cr = mul nsw i64 %i.cn, %i.cq                ; 2 uses
  %i.cs = mul nsw i64 %i.cn, %i.bv
  %i.ct = add i64 %i.cr, %i.bp
  %i.cu = sub i64 %i.br, %i.ct
  %.sroa.speculated7.i = tail call i64 @llvm.umin.i64(i64 %i.cu, i64 %i.cs)
  %i.cv = sub nsw i64 %i.bk, %i.co
  %.sroa.speculated.i = tail call noundef i64 @llvm.umin.i64(i64 %i.cv, i64 %.sroa.speculated7.i)
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 %i.co
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.cr
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cw, ptr align 1 %i.cx, i64 %.sroa.speculated.i, i1 false)
  %i.cy = add nuw nsw i32 %.03256, 1              ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %i.cy, %i.ar
  br i1 %exitcond.not, label %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread, label %bb.o, !llvm.loop !129

_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread: ; preds = %bb.o, %bb.n, %bb.a, %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit34, %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit, %bb.m
  %.1 = phi i1 [ false, %bb.m ], [ false, %bb.a ], [ false, %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit34 ], [ false, %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit ], [ true, %bb.n ], [ true, %bb.o ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii(ptr noundef nonnull align 8 dereferenceable(184) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #1 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.e = icmp eq i32 %1, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.j = icmp eq i32 %2, %i.i
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = phi i1 [ false, %bb.a ], [ %i.j, %bb.b ]
  ret i1 %i.k
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18IffInput7readimgEv(ptr noundef nonnull align 8 dereferenceable(360) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 6 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i16, align 2                      ; 12 uses
  %i.d = alloca i16, align 2                      ; 16 uses
  %i.e = alloca i16, align 2                      ; 12 uses
  %i.f = alloca i16, align 2                      ; 15 uses
  %1 = alloca %"class.std::vector.15", align 8    ; 14 uses
  %i.g = alloca i32, align 4                      ; 9 uses
  %i.h = alloca i16, align 2                      ; 7 uses
  %i.i = alloca i16, align 2                      ; 8 uses
  %i.j = alloca i16, align 2                      ; 7 uses
  %i.k = alloca i16, align 2                      ; 7 uses
  %2 = alloca %"class.std::vector.15", align 8    ; 14 uses
  %i.l = alloca [6 x i8], align 1                 ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 6 uses
  %3 = alloca %"class.std::vector.15", align 8    ; 8 uses
  %4 = alloca %"class.std::allocator.17", align 1 ; 4 uses
  %5 = alloca %"class.std::allocator.17", align 1 ; 4 uses
  %i.n = alloca i32, align 4                      ; 8 uses
  %i.o = alloca i16, align 2                      ; 7 uses
  %i.p = alloca i16, align 2                      ; 8 uses
  %i.q = alloca i16, align 2                      ; 9 uses
  %i.r = alloca i16, align 2                      ; 9 uses
  %i.s = alloca i16, align 2                      ; 10 uses
  %i.t = alloca i16, align 2                      ; 12 uses
  %i.u = alloca i16, align 2                      ; 10 uses
  %i.v = alloca i16, align 2                      ; 11 uses
  %6 = alloca %"class.std::vector.15", align 8    ; 11 uses
  %i.w = alloca i16, align 2                      ; 8 uses
  %i.x = alloca i16, align 2                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.z = load i32, ptr %i.y, align 8, !tbaa !99
  %i.aa = zext i32 %i.z to i64
  %i.ab = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.aa, i32 noundef 0) ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 8 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 17 uses
  %i.ae = load i8, ptr %i.ad, align 8, !tbaa !26
  %i.af = lshr i8 %i.ae, 3
  %i.ag = zext nneg i8 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 241 ; 22 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !29
  %i.aj = zext i8 %i.ai to i64
  %i.ak = mul nuw nsw i64 %i.ag, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 15 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !28
  %.not.i.i.i = icmp eq i8 %i.am, 0
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 249 ; 16 uses
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = lshr i8 %i.ao, 3
  %narrow.i.i.i = select i1 %.not.i.i.i, i8 0, i8 %i.ap
  %i.aq = zext nneg i8 %narrow.i.i.i to i64
  %i.ar = add nuw nsw i64 %i.ak, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 7 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !30
  %i.au = zext i32 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !31
  %i.ax = zext i32 %i.aw to i64
  %i.ay = mul nuw i64 %i.ax, %i.au
  %i.az = mul i64 %i.ay, %i.ar
  tail call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 noundef %i.az)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 242
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.l, i64 6
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  br label %.outer

.outer:                                           ; preds = %bb.ex, %bb.a
  %.0245.ph = phi i16 [ %.1246, %bb.ex ], [ 0, %bb.a ] ; 6 uses
  %.0240.ph = phi i16 [ %.0240.ph1444, %bb.ex ], [ 0, %bb.a ]
  br label %.outer1443

.outer1443:                                       ; preds = %.outer, %bb.dh
  %.0240.ph1444 = phi i16 [ %.0240.ph, %.outer ], [ %i.wv, %bb.dh ] ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.outer1443, %bb.ez
  %i.bm = load i16, ptr %i.ba, align 2, !tbaa !102 ; 2 uses
  %i.bn = icmp ult i16 %.0240.ph1444, %i.bm
  br i1 %i.bn, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.bo = load i8, ptr %i.ah, align 1, !tbaa !74
  %.not = icmp eq i8 %i.bo, 0
  br i1 %.not, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.bp = icmp uge i16 %.0245.ph, %i.bm
  %.pre1140 = load i8, ptr %i.al, align 8, !tbaa !28 ; 2 uses
  %.not406 = icmp eq i8 %.pre1140, 0
  %or.cond1297 = select i1 %i.bp, i1 true, i1 %.not406
  br i1 %or.cond1297, label %.critedge40, label %.critedge

.critedge:                                        ; preds = %bb.d, %bb.c
  %i.bq = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 4)
  br i1 %i.bq, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge
  %i.br = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i64 noundef 4, i64 noundef 1)
  br i1 %i.br, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.e
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.39)
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit708

bb.g:                                             ; preds = %bb.e
  %i.bs = load i32, ptr %i.b, align 4, !tbaa !3
  %i.bt = call noundef i32 @llvm.bswap.i32(i32 %i.bs) ; 3 uses
  store i32 %i.bt, ptr %i.b, align 4, !tbaa !3
  %i.bu = and i32 %i.bt, 3                        ; 2 uses
  %.not.i = icmp eq i32 %i.bu, 0
  %i.bv = sub nuw nsw i32 4, %i.bu
  %i.bw = select i1 %.not.i, i32 0, i32 %i.bv
  %.0.i = add i32 %i.bw, %i.bt                    ; 3 uses
  %i.bx = load i32, ptr %i.a, align 1
  %i.by = icmp ne i32 %i.bx, 1094862674
  %i.bz = zext i1 %i.by to i32
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.h, label %bb.dj

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #30
  %i.cb = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.c, i64 noundef 2, i64 noundef 1)
  br i1 %i.cb, label %.lr.ph.i.i.preheader, label %_ZN11OpenImageIO4v3_18IffInput4readItEEbPT_m.exit

.lr.ph.i.i.preheader:                             ; preds = %bb.h
  %.promoted948 = load i16, ptr %i.c, align 2, !tbaa !24
  %i.cc = call i16 @llvm.bswap.i16(i16 %.promoted948)
  store i16 %i.cc, ptr %i.c, align 2, !tbaa !24
  %i.cd = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.e, i64 noundef 2, i64 noundef 1)
  br i1 %i.cd, label %.lr.ph.i.i515.preheader, label %_ZN11OpenImageIO4v3_18IffInput4readItEEbPT_m.exit

.lr.ph.i.i515.preheader:                          ; preds = %.lr.ph.i.i.preheader
  %.promoted950 = load i16, ptr %i.e, align 2, !tbaa !24
  %i.ce = call i16 @llvm.bswap.i16(i16 %.promoted950)
  store i16 %i.ce, ptr %i.e, align 2, !tbaa !24
  %i.cf = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.d, i64 noundef 2, i64 noundef 1)
  br i1 %i.cf, label %.lr.ph.i.i521.preheader, label %_ZN11OpenImageIO4v3_18IffInput4readItEEbPT_m.exit

.lr.ph.i.i521.preheader:                          ; preds = %.lr.ph.i.i515.preheader
  %.promoted952 = load i16, ptr %i.d, align 2, !tbaa !24
  %i.cg = call i16 @llvm.bswap.i16(i16 %.promoted952)
  store i16 %i.cg, ptr %i.d, align 2, !tbaa !24
  %i.ch = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.f, i64 noundef 2, i64 noundef 1)
  br i1 %i.ch, label %.lr.ph.i.i527.preheader, label %_ZN11OpenImageIO4v3_18IffInput4readItEEbPT_m.exit

.lr.ph.i.i527.preheader:                          ; preds = %.lr.ph.i.i521.preheader
  %.promoted954 = load i16, ptr %i.f, align 2, !tbaa !24
  %i.ci = call i16 @llvm.bswap.i16(i16 %.promoted954) ; 3 uses
  store i16 %i.ci, ptr %i.f, align 2, !tbaa !24
  %i.cj = load i16, ptr %i.d, align 2, !tbaa !24  ; 2 uses
  %i.ck = zext i16 %i.cj to i32                   ; 2 uses
  %i.cl = load i16, ptr %i.c, align 2, !tbaa !24  ; 2 uses
  %i.cm = zext i16 %i.cl to i32
  %i.cn = sub nsw i32 %i.ck, %i.cm
  %i.co = add nsw i32 %i.cn, 1                    ; 9 uses
  %i.cp = zext i16 %i.ci to i32                   ; 2 uses
  %i.cq = load i16, ptr %i.e, align 2, !tbaa !24  ; 2 uses
  %i.cr = zext i16 %i.cq to i32
  %i.cs = sub nsw i32 %i.cp, %i.cr
  %i.ct = add nsw i32 %i.cs, 1                    ; 2 uses
  %i.cu = add i32 %.0.i, -8                       ; 2 uses
  %i.cv = icmp ugt i16 %i.cl, %i.cj
  %i.cw = icmp ugt i16 %i.cq, %i.ci
  %or.cond480 = select i1 %i.cv, i1 true, i1 %i.cw
  br i1 %or.cond480, label %bb.k, label %bb.i

_ZN11OpenImageIO4v3_18IffInput4readItEEbPT_m.exit: ; preds = %.lr.ph.i.i521.preheader, %.lr.ph.i.i515.preheader, %.lr.ph.i.i.preheader, %bb.h
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.40)
  br label %.thread832

bb.i:                                             ; preds = %.lr.ph.i.i527.preheader
  %i.cx = load i32, ptr %i.bb, align 4, !tbaa !127
  %.not427 = icmp sgt i32 %i.cx, %i.ck
  br i1 %.not427, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.cy = load i32, ptr %i.bc, align 8, !tbaa !128
  %i.cz = icmp sgt i32 %i.cy, %i.cp
  %i.da = icmp ne i32 %i.co, 0
  %or.cond = select i1 %i.cz, i1 %i.da, i1 false
  %i.db = icmp ne i32 %i.ct, 0
  %or.cond43 = select i1 %or.cond, i1 %i.db, i1 false
  br i1 %or.cond43, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %.lr.ph.i.i527.preheader
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.41)
  br label %.thread832

bb.l:                                             ; preds = %bb.j
  %i.dc = mul i32 %i.ct, %i.co                    ; 4 uses
  %i.dd = zext i32 %i.dc to i64                   ; 8 uses
  %i.de = load i8, ptr %i.ad, align 8, !tbaa !26  ; 2 uses
  %i.df = lshr i8 %i.de, 3
  %i.dg = zext nneg i8 %i.df to i32
  %i.dh = load i8, ptr %i.ah, align 1, !tbaa !29
  %i.di = zext i8 %i.dh to i32
  %i.dj = mul i32 %i.dc, %i.di
  %i.dk = mul i32 %i.dj, %i.dg
  %i.dl = add i32 %i.dk, 8
  %i.dm = load i32, ptr %i.b, align 4, !tbaa !3
  %i.dn = icmp ugt i32 %i.dl, %i.dm               ; 2 uses
  switch i8 %i.de, label %bb.de [
    i8 8, label %bb.m
    i8 16, label %bb.az
  ]

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.do = zext i32 %i.cu to i64
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.do)
          to label %bb.n unwind label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.dp = load ptr, ptr %1, align 8, !tbaa !18    ; 2 uses
  %i.dq = load ptr, ptr %i.bk, align 8, !tbaa !20
  %i.dr = ptrtoint ptr %i.dq to i64
  %i.ds = ptrtoint ptr %i.dp to i64
  %i.dt = sub i64 %i.dr, %i.ds
  %i.du = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %i.dp, i64 noundef 1, i64 noundef %i.dt)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.dv = load ptr, ptr %1, align 8, !tbaa !18    ; 7 uses
  br i1 %i.du, label %bb.q, label %.critedge487

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.q:                                             ; preds = %bb.o
  br i1 %i.dn, label %bb.r, label %bb.ap

bb.r:                                             ; preds = %bb.q
  %i.dx = load ptr, ptr %i.bk, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #30
  %i.dy = load i8, ptr %i.ah, align 1, !tbaa !74  ; 2 uses
  %i.dz = zext i8 %i.dy to i32
  %storemerge4641024 = add nsw i32 %i.dz, -1
  store i32 %storemerge4641024, ptr %i.g, align 4, !tbaa !3
  %.not1034 = icmp eq i8 %i.dy, 0
  br i1 %.not1034, label %.thread790, label %.lr.ph1028

.lr.ph1028:                                       ; preds = %bb.r
  %i.ea = ptrtoint ptr %i.dx to i64
  %i.eb = ptrtoint ptr %i.dv to i64
  %i.ec = sub i64 %i.ea, %i.eb
  %.not.i.i.i.i = icmp eq i32 %i.dc, 0
  %i.ed = add nsw i64 %i.dd, -1                   ; 2 uses
  %i.ee = icmp eq i64 %i.ed, 0
  br label %bb.s

.thread790:                                       ; preds = %bb.al, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #30
  br label %.critedge510

bb.s:                                             ; preds = %.lr.ph1028, %bb.al
  %.sroa.8782.01026 = phi i64 [ %i.ec, %.lr.ph1028 ], [ %.sroa.8782.1, %bb.al ] ; 5 uses
  %.sroa.0781.01025 = phi ptr [ %i.dv, %.lr.ph1028 ], [ %.sroa.0781.1, %bb.al ] ; 6 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ef = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dd) #33
          to label %.noexc unwind label %bb.ae    ; 5 uses

.noexc:                                           ; preds = %bb.t
  %i.eg = getelementptr i8, ptr %i.ef, i64 %i.dd  ; 3 uses
  store i8 0, ptr %i.ef, align 1, !tbaa !16
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 1 ; 2 uses
  br i1 %i.ee, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.u

bb.u:                                             ; preds = %.noexc
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.eh, i8 0, i64 %i.ed, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit:               ; preds = %bb.u, %.noexc, %bb.s
  %.sroa.11779.0 = phi ptr [ %i.eg, %bb.u ], [ %i.eg, %.noexc ], [ null, %bb.s ] ; 2 uses
  %.sroa.0775.0 = phi ptr [ %i.ef, %bb.u ], [ %i.ef, %.noexc ], [ null, %bb.s ] ; 8 uses
  %.0.i.i.i.i.i = phi ptr [ %i.eg, %bb.u ], [ %i.eh, %.noexc ], [ null, %bb.s ]
  %i.ei = ptrtoint ptr %.0.i.i.i.i.i to i64
  %i.ej = ptrtoint ptr %.sroa.0775.0 to i64       ; 3 uses
  %i.ek = sub i64 %i.ei, %i.ej                    ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0781.01025, i64 %.sroa.8782.01026 ; 3 uses
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.ek, i64 %i.dd) ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.sroa.0775.0, i64 %.sroa.speculated.i ; 3 uses
  %i.en = icmp ne i64 %.sroa.speculated.i, 0
  %i.eo = icmp ne i64 %.sroa.8782.01026, 0
  %i.ep = select i1 %i.en, i1 %i.eo, i1 false
  br i1 %i.ep, label %.lr.ph.i, label %.loopexit

.lr.ph.i:                                         ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i
  %.03661.i = phi ptr [ %.2.i, %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i ], [ %.sroa.0781.01025, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ] ; 3 uses
  %.03760.i = phi ptr [ %.239.i, %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i ], [ %.sroa.0775.0, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ] ; 5 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.03661.i, i64 1 ; 9 uses
  %i.er = load i8, ptr %.03661.i, align 1, !tbaa !16 ; 2 uses
  %i.es = and i8 %i.er, 127                       ; 2 uses
  %i.et = add nuw i8 %i.es, 1                     ; 2 uses
  %.not.i532 = icmp sgt i8 %i.er, -1
  br i1 %.not.i532, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %.lr.ph.i
  %i.eu = zext i8 %i.et to i64                    ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.eu ; 3 uses
  %i.ew = icmp ugt ptr %i.ev, %i.el
  br i1 %i.ew, label %.loopexit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ex = getelementptr inbounds nuw i8, ptr %.03760.i, i64 %i.eu ; 3 uses
  %i.ey = icmp ugt ptr %i.ex, %i.em
  br i1 %i.ey, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not59.i = icmp eq i8 %i.es, 0
  br i1 %.not59.i, label %bb.z, label %bb.y, !prof !130

bb.y:                                             ; preds = %bb.x
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.03760.i, ptr noundef nonnull align 1 dereferenceable(1) %i.eq, i64 %i.eu, i1 false)
  br label %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i

bb.z:                                             ; preds = %bb.x
  %i.ez = load i8, ptr %i.eq, align 1, !tbaa !16
  store i8 %i.ez, ptr %.03760.i, align 1, !tbaa !16
  br label %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i

bb.aa:                                            ; preds = %.lr.ph.i
  %.not47.i = icmp ult ptr %i.eq, %i.el
  br i1 %.not47.i, label %bb.ab, label %.loopexit

bb.ab:                                            ; preds = %bb.aa
  %i.fa = zext i8 %i.et to i64                    ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.03760.i, i64 %i.fa ; 2 uses
  %i.fc = icmp ugt ptr %i.fb, %i.em
  br i1 %i.fc, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.fd = getelementptr inbounds nuw i8, ptr %.03661.i, i64 2
  %i.fe = load i8, ptr %i.eq, align 1, !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.03760.i, i8 %i.fe, i64 %i.fa, i1 false)
  br label %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i

_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i:               ; preds = %bb.ac, %bb.z, %bb.y
  %.239.i = phi ptr [ %i.ex, %bb.y ], [ %i.fb, %bb.ac ], [ %i.ex, %bb.z ] ; 2 uses
  %.2.i = phi ptr [ %i.ev, %bb.y ], [ %i.fd, %bb.ac ], [ %i.ev, %bb.z ] ; 3 uses
  %i.ff = icmp ult ptr %.239.i, %i.em
  %i.fg = icmp ult ptr %.2.i, %i.el
  %i.fh = select i1 %i.ff, i1 %i.fg, i1 false
  br i1 %i.fh, label %.lr.ph.i, label %.loopexit
end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_18IffInput7readimgEv:bb.a
  br i1 %i.sb, label %._crit_edge996, label %bb.bj, !llvm.loop !148

bb.ce:                                            ; preds = %bb.bz, %bb.bv
  %.pn450 = phi { ptr, i32 } [ %i.pz, %bb.bv ], [ %i.ra, %bb.bz ] ; 2 uses
  %.not.i.i.i582 = icmp eq ptr %.sroa.0748.0, null
  br i1 %.not.i.i.i582, label %bb.ch, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.sc = ptrtoint ptr %.sroa.11752.0 to i64
  %i.sd = sub i64 %i.sc, %i.ov
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0748.0, i64 noundef %i.sd) #31
  br label %bb.ch

._crit_edge996:                                   ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit581, %bb.cd, %.critedge492
  %.lcssa894 = phi i1 [ true, %.critedge492 ], [ %cond25, %bb.cd ], [ %cond25, %_ZNSt6vectorIhSaIhEED2Ev.exit581 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #30
  %.not.i.i.i584 = icmp eq ptr %i.oc, null
  br i1 %.not.i.i.i584, label %_ZNSt6vectorIhSaIhEED2Ev.exit585, label %bb.cg

bb.cg:                                            ; preds = %._crit_edge996
  %i.se = ptrtoint ptr %i.ob to i64
  %i.sf = ptrtoint ptr %i.oc to i64
  %i.sg = sub i64 %i.se, %i.sf
  call void @_ZdlPvm(ptr noundef nonnull %i.oc, i64 noundef %i.sg) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit585

_ZNSt6vectorIhSaIhEED2Ev.exit585:                 ; preds = %._crit_edge996, %bb.cg
  br i1 %.lcssa894, label %.critedge513, label %.loopexit861

bb.ch:                                            ; preds = %bb.ce, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #30
  %.not.i.i.i586 = icmp eq ptr %i.oc, null
  br i1 %.not.i.i.i586, label %_ZNSt6vectorIhSaIhEED2Ev.exit587, label %bb.ci

bb.ci:                                            ; preds = %.thread813, %bb.ch
  %.pn450.pn816 = phi { ptr, i32 } [ %i.py, %.thread813 ], [ %.pn450, %bb.ch ]
  %i.sh = ptrtoint ptr %i.ob to i64
  %i.si = ptrtoint ptr %i.oc to i64
  %i.sj = sub i64 %i.sh, %i.si
  call void @_ZdlPvm(ptr noundef nonnull %i.oc, i64 noundef %i.sj) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit587

bb.cj:                                            ; preds = %bb.bd
  %i.sk = load i16, ptr %i.f, align 2, !tbaa !24  ; 2 uses
  %i.sl = zext i16 %i.sk to i32
  %i.sm = load i16, ptr %i.e, align 2, !tbaa !24  ; 4 uses
  %i.sn = zext i16 %i.sm to i32
  %i.so = add nuw nsw i32 %i.sl, 1
  %i.sp = sub nsw i32 %i.so, %i.sn
  %i.sq = mul i32 %i.sp, %i.co
  %i.sr = zext i32 %i.sq to i64
  %i.ss = load i8, ptr %i.ad, align 8, !tbaa !26
  %i.st = lshr i8 %i.ss, 3
  %i.su = zext nneg i8 %i.st to i64
  %i.sv = load i8, ptr %i.ah, align 1, !tbaa !29
  %i.sw = zext i8 %i.sv to i64
  %i.sx = mul nuw nsw i64 %i.su, %i.sw
  %i.sy = mul nuw nsw i64 %i.sx, %i.sr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #30
  store i16 %i.sm, ptr %i.q, align 2, !tbaa !24
  %.not428975 = icmp ugt i16 %i.sm, %i.sk
  br i1 %.not428975, label %.thread828, label %.lr.ph978

.lr.ph978:                                        ; preds = %bb.cj
  %i.sz = zext i32 %i.co to i64
  br label %bb.ck

.thread828:                                       ; preds = %bb.cy, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #30
  br label %.critedge513

bb.ck:                                            ; preds = %.lr.ph978, %bb.cy
  %i.ta = phi i16 [ %i.sm, %.lr.ph978 ], [ %i.vs, %bb.cy ]
  %.0388976 = phi i32 [ 0, %.lr.ph978 ], [ %i.vt, %bb.cy ] ; 2 uses
  %i.tb = load ptr, ptr %i.ac, align 8, !tbaa !18
  %i.tc = load i32, ptr %i.as, align 4, !tbaa !76
  %i.td = load i16, ptr %i.c, align 2, !tbaa !24  ; 4 uses
  %i.te = load i8, ptr %i.ad, align 8, !tbaa !26
  %i.tf = lshr i8 %i.te, 3
  %i.tg = zext nneg i8 %i.tf to i64               ; 2 uses
  %i.th = load i8, ptr %i.ah, align 1, !tbaa !29  ; 3 uses
  %i.ti = zext i8 %i.th to i64
  %i.tj = mul nuw nsw i64 %i.tg, %i.ti            ; 3 uses
  %i.tk = load i8, ptr %i.al, align 8, !tbaa !28
  %.not.i.i588 = icmp eq i8 %i.tk, 0              ; 2 uses
  %i.tl = load i8, ptr %i.an, align 1
  %i.tm = lshr i8 %i.tl, 3
  %narrow.i.i589 = select i1 %.not.i.i588, i8 0, i8 %i.tm
  %i.tn = zext nneg i8 %narrow.i.i589 to i64
  %i.to = add nuw nsw i64 %i.tj, %i.tn            ; 2 uses
  %i.tp = zext i16 %i.ta to i32
  %i.tq = mul i32 %i.tc, %i.tp
  %i.tr = zext i16 %i.td to i32
  %i.ts = add i32 %i.tq, %i.tr
  %i.tt = zext i32 %i.ts to i64
  %i.tu = mul nuw nsw i64 %i.to, %i.tt
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tb, i64 %i.tu
  %i.tw = zext i8 %i.th to i32
  %i.tx = mul nsw i32 %i.co, %i.tw
  %i.ty = zext i32 %i.tx to i64                   ; 3 uses
  %.not.i.i.i.i590 = icmp eq i8 %i.th, 0
  br i1 %.not.i.i.i.i590, label %_ZNSt6vectorItSaItEEC2EmRKS0_.exit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.tz = shl nuw nsw i64 %i.ty, 1
  %i.ua = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.tz) #33
          to label %.noexc592 unwind label %bb.cm ; 5 uses

.noexc592:                                        ; preds = %bb.cl
  %i.ub = getelementptr inbounds nuw [2 x i8], ptr %i.ua, i64 %i.ty ; 2 uses
  store i16 0, ptr %i.ua, align 2, !tbaa !24
  %i.uc = getelementptr i8, ptr %i.ua, i64 2      ; 3 uses
  %i.ud = add nsw i64 %i.ty, -1                   ; 2 uses
  %i.ue = icmp eq i64 %i.ud, 0
  br i1 %i.ue, label %_ZNSt6vectorItSaItEEC2EmRKS0_.exit, label %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %.noexc592
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ud, 1  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 2 %i.uc, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !24
  %i.uf = getelementptr inbounds nuw i8, ptr %i.uc, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorItSaItEEC2EmRKS0_.exit

_ZNSt6vectorItSaItEEC2EmRKS0_.exit:               ; preds = %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i, %.noexc592, %bb.ck
  %.sroa.0736.0 = phi ptr [ %i.ua, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ua, %.noexc592 ], [ null, %bb.ck ] ; 7 uses
  %.sroa.12.0 = phi ptr [ %i.ub, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.ub, %.noexc592 ], [ null, %bb.ck ] ; 2 uses
  %.0.i.i.i.i.i591 = phi ptr [ %i.uf, %_ZSt6fill_nIPtmtET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ], [ %i.uc, %.noexc592 ], [ null, %bb.ck ]
  %i.ug = ptrtoint ptr %.sroa.0736.0 to i64       ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #30
  store i16 %i.td, ptr %i.r, align 2, !tbaa !24
  %i.uh = load i16, ptr %i.d, align 2, !tbaa !24  ; 2 uses
  %.not429967 = icmp ugt i16 %i.td, %i.uh
  br i1 %.not429967, label %._crit_edge973, label %.lr.ph972

.lr.ph972:                                        ; preds = %_ZNSt6vectorItSaItEEC2EmRKS0_.exit
  %i.ui = ptrtoint ptr %.0.i.i.i.i.i591 to i64
  %i.uj = sub i64 %i.ui, %i.ug
  %i.uk = ashr exact i64 %i.uj, 1
  %i.ul = mul i32 %.0388976, %i.co
  br label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.um = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorItSaItEED2Ev.exit606

bb.cn:                                            ; preds = %.lr.ph972, %._crit_edge964
  %i.un = phi i16 [ %i.uh, %.lr.ph972 ], [ %i.vl, %._crit_edge964 ]
  %i.uo = phi i16 [ %i.td, %.lr.ph972 ], [ %i.vn, %._crit_edge964 ]
  %indvars.iv1108 = phi i64 [ 0, %.lr.ph972 ], [ %indvars.iv.next1109, %._crit_edge964 ] ; 2 uses
  %.sroa.0731.0969 = phi ptr [ %.sroa.0736.0, %.lr.ph972 ], [ %.sroa.0731.1.lcssa, %._crit_edge964 ] ; 2 uses
  %.sroa.7733.0968 = phi i64 [ %i.uk, %.lr.ph972 ], [ %.sroa.7733.1.lcssa, %._crit_edge964 ] ; 2 uses
  %i.up = trunc nuw nsw i64 %indvars.iv1108 to i32
  %i.uq = add i32 %i.ul, %i.up
  %i.ur = zext i32 %i.uq to i64
  %i.us = mul nuw nsw i64 %i.tj, %i.ur            ; 2 uses
  %i.ut = add nuw nsw i64 %i.us, %i.tj
  %i.uu = icmp samesign ugt i64 %i.ut, %i.sy
  br i1 %i.uu, label %bb.co, label %bb.cq

bb.co:                                            ; preds = %bb.cn
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJttEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.44, ptr noundef nonnull align 2 dereferenceable(2) %i.r, ptr noundef nonnull align 2 dereferenceable(2) %i.q)
          to label %bb.cv unwind label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.uv = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.cq:                                            ; preds = %bb.cn
  %i.uw = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.us
  %i.ux = load i8, ptr %i.ah, align 1, !tbaa !74  ; 2 uses
  %i.uy = icmp eq i8 %i.ux, 0
  br i1 %i.uy, label %._crit_edge964, label %.lr.ph963.preheader

.lr.ph963.preheader:                              ; preds = %bb.cq
  %i.uz = zext i8 %i.ux to i64
  br label %.lr.ph963

.lr.ph963:                                        ; preds = %.lr.ph963.preheader, %bb.ct
  %indvars.iv1105 = phi i64 [ %i.uz, %.lr.ph963.preheader ], [ %indvars.iv.next1106, %bb.ct ]
  %.sroa.0731.1960 = phi ptr [ %.sroa.0731.0969, %.lr.ph963.preheader ], [ %i.vi, %bb.ct ] ; 2 uses
  %.sroa.7733.1959 = phi i64 [ %.sroa.7733.0968, %.lr.ph963.preheader ], [ %i.vh, %bb.ct ] ; 2 uses
  %i.va = icmp eq i64 %.sroa.7733.1959, 0
  br i1 %i.va, label %bb.cr, label %bb.ct

bb.cr:                                            ; preds = %.lr.ph963
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJttEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.47, ptr noundef nonnull align 2 dereferenceable(2) %i.r, ptr noundef nonnull align 2 dereferenceable(2) %i.q)
          to label %bb.cv unwind label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.vb = landingpad { ptr, i32 }
          cleanup
  br label %bb.cu

bb.ct:                                            ; preds = %.lr.ph963
  %indvars.iv.next1106 = add nsw i64 %indvars.iv1105, -1 ; 3 uses
  %i.vc = shl i64 %indvars.iv.next1106, 1
  %i.vd = and i64 %i.vc, 4294967294
  %i.ve = getelementptr inbounds nuw i8, ptr %i.uw, i64 %i.vd
  %i.vf = load i16, ptr %i.ve, align 1
  %i.vg = call i16 @llvm.bswap.i16(i16 %i.vf)
  store i16 %i.vg, ptr %.sroa.0731.1960, align 2, !tbaa !24
  %i.vh = add i64 %.sroa.7733.1959, -1            ; 2 uses
  %i.vi = getelementptr inbounds nuw i8, ptr %.sroa.0731.1960, i64 2 ; 2 uses
  %i.vj = and i64 %indvars.iv.next1106, 4294967295
  %i.vk = icmp eq i64 %i.vj, 0
  br i1 %i.vk, label %._crit_edge964.loopexit, label %.lr.ph963, !llvm.loop !149

._crit_edge964.loopexit:                          ; preds = %bb.ct
  %.pre1126 = load i16, ptr %i.r, align 2, !tbaa !24
  %.pre1127 = load i16, ptr %i.d, align 2, !tbaa !24
  br label %._crit_edge964

._crit_edge964:                                   ; preds = %._crit_edge964.loopexit, %bb.cq
  %i.vl = phi i16 [ %i.un, %bb.cq ], [ %.pre1127, %._crit_edge964.loopexit ] ; 2 uses
  %i.vm = phi i16 [ %i.uo, %bb.cq ], [ %.pre1126, %._crit_edge964.loopexit ]
  %.sroa.7733.1.lcssa = phi i64 [ %.sroa.7733.0968, %bb.cq ], [ %i.vh, %._crit_edge964.loopexit ]
  %.sroa.0731.1.lcssa = phi ptr [ %.sroa.0731.0969, %bb.cq ], [ %i.vi, %._crit_edge964.loopexit ]
  %i.vn = add i16 %i.vm, 1                        ; 3 uses
  store i16 %i.vn, ptr %i.r, align 2, !tbaa !24
  %indvars.iv.next1109 = add nuw nsw i64 %indvars.iv1108, 1
  %.not429 = icmp ugt i16 %i.vn, %i.vl
  br i1 %.not429, label %._crit_edge973.loopexit, label %bb.cn, !llvm.loop !150

bb.cu:                                            ; preds = %bb.cs, %bb.cp
  %.pn433 = phi { ptr, i32 } [ %i.uv, %bb.cp ], [ %i.vb, %bb.cs ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #30
  %.not.i.i.i605 = icmp eq ptr %.sroa.0736.0, null
  br i1 %.not.i.i.i605, label %_ZNSt6vectorItSaItEED2Ev.exit606, label %bb.cz

bb.cv:                                            ; preds = %bb.cr, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #30
  br label %bb.cw

._crit_edge973.loopexit:                          ; preds = %._crit_edge964
  %.pre1128 = load i8, ptr %i.ah, align 1, !tbaa !29
  %.pre1130 = load i8, ptr %i.an, align 1
  %.pre1141 = zext i8 %.pre1128 to i64
  %.pre1142 = mul nuw nsw i64 %i.tg, %.pre1141
  %.pre1144 = lshr i8 %.pre1130, 3
  %.pre1146 = select i1 %.not.i.i588, i8 0, i8 %.pre1144
  %.pre1147 = zext nneg i8 %.pre1146 to i64
  %.pre1149 = add nuw nsw i64 %.pre1142, %.pre1147
  br label %._crit_edge973

._crit_edge973:                                   ; preds = %._crit_edge973.loopexit, %_ZNSt6vectorItSaItEEC2EmRKS0_.exit
  %.pre-phi1150 = phi i64 [ %.pre1149, %._crit_edge973.loopexit ], [ %i.to, %_ZNSt6vectorItSaItEEC2EmRKS0_.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #30
  %i.vo = mul nuw nsw i64 %.pre-phi1150, %i.sz
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tv, ptr align 2 %.sroa.0736.0, i64 %i.vo, i1 false)
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %._crit_edge973
  %.not429876 = phi i1 [ false, %bb.cv ], [ true, %._crit_edge973 ]
  %.not.i.i.i604 = icmp eq ptr %.sroa.0736.0, null
  br i1 %.not.i.i.i604, label %_ZNSt6vectorItSaItEED2Ev.exit, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.vp = ptrtoint ptr %.sroa.12.0 to i64
  %i.vq = sub i64 %i.vp, %i.ug
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0736.0, i64 noundef %i.vq) #31
  br label %_ZNSt6vectorItSaItEED2Ev.exit

_ZNSt6vectorItSaItEED2Ev.exit:                    ; preds = %bb.cw, %bb.cx
  br i1 %.not429876, label %bb.cy, label %bb.da

bb.cy:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit
  %i.vr = load i16, ptr %i.q, align 2, !tbaa !24
  %i.vs = add i16 %i.vr, 1                        ; 3 uses
  store i16 %i.vs, ptr %i.q, align 2, !tbaa !24
  %i.vt = add nuw nsw i32 %.0388976, 1
  %i.vu = load i16, ptr %i.f, align 2, !tbaa !24
  %.not428 = icmp ugt i16 %i.vs, %i.vu
  br i1 %.not428, label %.thread828, label %bb.ck, !llvm.loop !151

bb.cz:                                            ; preds = %bb.cu
  %i.vv = ptrtoint ptr %.sroa.12.0 to i64
  %i.vw = sub i64 %i.vv, %i.ug
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0736.0, i64 noundef %i.vw) #31
  br label %_ZNSt6vectorItSaItEED2Ev.exit606

_ZNSt6vectorItSaItEED2Ev.exit606:                 ; preds = %bb.cm, %bb.cu, %bb.cz
  %.pn435.pn.pn = phi { ptr, i32 } [ %.pn433, %bb.cz ], [ %i.um, %bb.cm ], [ %.pn433, %bb.cu ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit587

bb.da:                                            ; preds = %_ZNSt6vectorItSaItEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #30
  br label %.loopexit861

.critedge513:                                     ; preds = %.thread828, %_ZNSt6vectorIhSaIhEED2Ev.exit585
  %i.vx = load ptr, ptr %2, align 8, !tbaa !18    ; 3 uses
  %.not.i.i.i607 = icmp eq ptr %i.vx, null
  br i1 %.not.i.i.i607, label %_ZNSt6vectorIhSaIhEED2Ev.exit608, label %bb.db

bb.db:                                            ; preds = %.critedge513
  %i.vy = load ptr, ptr %i.bj, align 8, !tbaa !21
  %i.vz = ptrtoint ptr %i.vy to i64
  %i.wa = ptrtoint ptr %i.vx to i64
  %i.wb = sub i64 %i.vz, %i.wa
  call void @_ZdlPvm(ptr noundef nonnull %i.vx, i64 noundef %i.wb) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit608

_ZNSt6vectorIhSaIhEED2Ev.exit608:                 ; preds = %.critedge513, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.dh

.loopexit861:                                     ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit585, %bb.da
  %i.wc = load ptr, ptr %2, align 8, !tbaa !18    ; 3 uses
  %.not.i.i.i609 = icmp eq ptr %i.wc, null
  br i1 %.not.i.i.i609, label %_ZNSt6vectorIhSaIhEED2Ev.exit610, label %bb.dc

bb.dc:                                            ; preds = %.loopexit861
  %i.wd = load ptr, ptr %i.bj, align 8, !tbaa !21
  %i.we = ptrtoint ptr %i.wd to i64
  %i.wf = ptrtoint ptr %i.wc to i64
  %i.wg = sub i64 %i.we, %i.wf
  call void @_ZdlPvm(ptr noundef nonnull %i.wc, i64 noundef %i.wg) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit610

_ZNSt6vectorIhSaIhEED2Ev.exit610:                 ; preds = %.loopexit861, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %.thread832

_ZNSt6vectorIhSaIhEED2Ev.exit587:                 ; preds = %_ZNSt6vectorItSaItEED2Ev.exit606, %.thread807, %bb.ch, %bb.ci, %bb.bc
  %.pn450.pn.pn.pn.pn = phi { ptr, i32 } [ %i.nr, %bb.bc ], [ %.pn435.pn.pn, %_ZNSt6vectorItSaItEED2Ev.exit606 ], [ %.pn439799, %.thread807 ], [ %.pn450, %bb.ch ], [ %.pn450.pn816, %bb.ci ]
  %i.wh = load ptr, ptr %2, align 8, !tbaa !18    ; 3 uses
  %.not.i.i.i611 = icmp eq ptr %i.wh, null
  br i1 %.not.i.i.i611, label %_ZNSt6vectorIhSaIhEED2Ev.exit612, label %bb.dd

bb.dd:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit587
  %i.wi = load ptr, ptr %i.bj, align 8, !tbaa !21
  %i.wj = ptrtoint ptr %i.wi to i64
  %i.wk = ptrtoint ptr %i.wh to i64
  %i.wl = sub i64 %i.wj, %i.wk
  call void @_ZdlPvm(ptr noundef nonnull %i.wh, i64 noundef %i.wl) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit612

_ZNSt6vectorIhSaIhEED2Ev.exit612:                 ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit587, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %bb.di

bb.de:                                            ; preds = %bb.l
  %i.wm = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.48, ptr noundef nonnull align 8 dereferenceable(32) %i.wm)
  br label %.thread832

.critedge487:                                     ; preds = %bb.o
  %.not.i.i.i613 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i613, label %_ZNSt6vectorIhSaIhEED2Ev.exit614, label %bb.df

bb.df:                                            ; preds = %.critedge487
  %i.wn = load ptr, ptr %i.bl, align 8, !tbaa !21
  %i.wo = ptrtoint ptr %i.wn to i64
  %i.wp = ptrtoint ptr %i.dv to i64
  %i.wq = sub i64 %i.wo, %i.wp
  call void @_ZdlPvm(ptr noundef nonnull %i.dv, i64 noundef %i.wq) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit614

_ZNSt6vectorIhSaIhEED2Ev.exit614:                 ; preds = %.critedge487, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %.thread832

.critedge499:                                     ; preds = %bb.bb
  %.not.i.i.i615 = icmp eq ptr %i.nq, null
  br i1 %.not.i.i.i615, label %_ZNSt6vectorIhSaIhEED2Ev.exit616, label %bb.dg

bb.dg:                                            ; preds = %.critedge499
  %i.wr = load ptr, ptr %i.bj, align 8, !tbaa !21
  %i.ws = ptrtoint ptr %i.wr to i64
  %i.wt = ptrtoint ptr %i.nq to i64
  %i.wu = sub i64 %i.ws, %i.wt
  call void @_ZdlPvm(ptr noundef nonnull %i.nq, i64 noundef %i.wu) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit616

_ZNSt6vectorIhSaIhEED2Ev.exit616:                 ; preds = %.critedge499, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  br label %.thread832

.thread832:                                       ; preds = %_ZN11OpenImageIO4v3_18IffInput4readItEEbPT_m.exit, %bb.k, %_ZNSt6vectorIhSaIhEED2Ev.exit550, %_ZNSt6vectorIhSaIhEED2Ev.exit610, %bb.de, %_ZNSt6vectorIhSaIhEED2Ev.exit614, %_ZNSt6vectorIhSaIhEED2Ev.exit616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit708

bb.dh:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit548, %_ZNSt6vectorIhSaIhEED2Ev.exit608
  %i.wv = add i16 %.0240.ph1444, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %.outer1443, !llvm.loop !152

bb.di:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit612, %_ZNSt6vectorIhSaIhEED2Ev.exit552
  %.pn473.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn473.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit552 ], [ %.pn450.pn.pn.pn.pn, %_ZNSt6vectorIhSaIhEED2Ev.exit612 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  br label %bb.fc

bb.dj:                                            ; preds = %bb.g
  %i.ww = load i32, ptr %i.a, align 1
  %i.wx = icmp ne i32 %i.ww, 1179992666
  %i.wy = zext i1 %i.wx to i32
  %i.wz = icmp eq i32 %i.wy, 0
  br i1 %i.wz, label %bb.dk, label %bb.ez

bb.dk:                                            ; preds = %bb.dj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #30
  %i.xa = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.s, i64 noundef 2, i64 noundef 1)
  br i1 %i.xa, label %.lr.ph.i.i618.preheader, label %.thread852

.lr.ph.i.i618.preheader:                          ; preds = %bb.dk
  %.promoted = load i16, ptr %i.s, align 2, !tbaa !24
  %i.xb = call i16 @llvm.bswap.i16(i16 %.promoted)
  store i16 %i.xb, ptr %i.s, align 2, !tbaa !24
  %i.xc = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.u, i64 noundef 2, i64 noundef 1)
  br i1 %i.xc, label %.lr.ph.i.i624.preheader, label %.thread852

.lr.ph.i.i624.preheader:                          ; preds = %.lr.ph.i.i618.preheader
  %.promoted917 = load i16, ptr %i.u, align 2, !tbaa !24
  %i.xd = call i16 @llvm.bswap.i16(i16 %.promoted917)
  store i16 %i.xd, ptr %i.u, align 2, !tbaa !24
  %i.xe = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.t, i64 noundef 2, i64 noundef 1)
  br i1 %i.xe, label %.lr.ph.i.i630.preheader, label %.thread852

.lr.ph.i.i630.preheader:                          ; preds = %.lr.ph.i.i624.preheader
  %.promoted919 = load i16, ptr %i.t, align 2, !tbaa !24
  %i.xf = call i16 @llvm.bswap.i16(i16 %.promoted919)
  store i16 %i.xf, ptr %i.t, align 2, !tbaa !24
  %i.xg = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull %i.v, i64 noundef 2, i64 noundef 1)
  br i1 %i.xg, label %.lr.ph.i.i636.preheader, label %.thread852

.lr.ph.i.i636.preheader:                          ; preds = %.lr.ph.i.i630.preheader
  %.promoted921 = load i16, ptr %i.v, align 2, !tbaa !24
  %i.xh = call i16 @llvm.bswap.i16(i16 %.promoted921) ; 3 uses
  store i16 %i.xh, ptr %i.v, align 2, !tbaa !24
  %i.xi = load i16, ptr %i.t, align 2, !tbaa !24  ; 2 uses
  %i.xj = zext i16 %i.xi to i32                   ; 2 uses
  %i.xk = load i16, ptr %i.s, align 2, !tbaa !24  ; 2 uses
  %i.xl = zext i16 %i.xk to i32
  %i.xm = sub nsw i32 %i.xj, %i.xl
  %i.xn = add nsw i32 %i.xm, 1                    ; 3 uses
  %i.xo = zext i16 %i.xh to i32                   ; 2 uses
  %i.xp = load i16, ptr %i.u, align 2, !tbaa !24  ; 2 uses
  %i.xq = zext i16 %i.xp to i32
  %i.xr = sub nsw i32 %i.xo, %i.xq
  %i.xs = add nsw i32 %i.xr, 1                    ; 2 uses
  %i.xt = add i32 %.0.i, -8
  %i.xu = icmp ugt i16 %i.xk, %i.xi
  %i.xv = icmp ugt i16 %i.xp, %i.xh
  %or.cond500 = select i1 %i.xu, i1 true, i1 %i.xv
  br i1 %or.cond500, label %.thread852, label %bb.dl

bb.dl:                                            ; preds = %.lr.ph.i.i636.preheader
  %i.xw = load i32, ptr %i.bb, align 4, !tbaa !127
  %.not408 = icmp sgt i32 %i.xw, %i.xj
  br i1 %.not408, label %bb.dm, label %.thread852

bb.dm:                                            ; preds = %bb.dl
  %i.xx = load i32, ptr %i.bc, align 8, !tbaa !128
  %i.xy = icmp sgt i32 %i.xx, %i.xo
  %i.xz = icmp ne i32 %i.xn, 0
  %or.cond45 = select i1 %i.xy, i1 %i.xz, i1 false
  %i.ya = icmp ne i32 %i.xs, 0
  %or.cond47 = select i1 %or.cond45, i1 %i.ya, i1 false
  br i1 %or.cond47, label %bb.dn, label %.thread852

bb.dn:                                            ; preds = %bb.dm
  %i.yb = mul i32 %i.xs, %i.xn                    ; 3 uses
  %i.yc = zext i32 %i.yb to i64                   ; 5 uses
  %i.yd = load i8, ptr %i.al, align 8, !tbaa !28
  %.not.i641 = icmp eq i8 %i.yd, 0
  %i.ye = load i8, ptr %i.an, align 1
  %i.yf = lshr i8 %i.ye, 3
  %narrow.i = select i1 %.not.i641, i8 0, i8 %i.yf
  %i.yg = zext nneg i8 %narrow.i to i32
  %i.yh = mul i32 %i.yb, %i.yg
  %i.yi = add i32 %i.yh, 8
  %i.yj = load i32, ptr %i.b, align 4, !tbaa !3
  %i.yk = icmp ugt i32 %i.yi, %i.yj
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.yl = zext i32 %i.xt to i64
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %6, i64 noundef %i.yl)
          to label %bb.do unwind label %bb.dq

bb.do:                                            ; preds = %bb.dn
  %i.ym = load ptr, ptr %6, align 8, !tbaa !18    ; 2 uses
  %i.yn = load ptr, ptr %i.bd, align 8, !tbaa !20
  %i.yo = ptrtoint ptr %i.yn to i64
  %i.yp = ptrtoint ptr %i.ym to i64
  %i.yq = sub i64 %i.yo, %i.yp
  %i.yr = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %i.ym, i64 noundef 1, i64 noundef %i.yq)
          to label %bb.dp unwind label %bb.dq

bb.dp:                                            ; preds = %bb.do
  br i1 %i.yr, label %bb.dr, label %.critedge508

bb.dq:                                            ; preds = %bb.do, %bb.dn
  %i.ys = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit676

bb.dr:                                            ; preds = %bb.dp
  %i.yt = load ptr, ptr %6, align 8, !tbaa !18    ; 4 uses
  %i.yu = load ptr, ptr %i.bd, align 8, !tbaa !20
  %i.yv = ptrtoint ptr %i.yu to i64
  %i.yw = ptrtoint ptr %i.yt to i64
  %i.yx = sub i64 %i.yv, %i.yw                    ; 3 uses
  %i.yy = load i8, ptr %i.al, align 8, !tbaa !28
  %.not.i642 = icmp eq i8 %i.yy, 0
  %i.yz = load i8, ptr %i.an, align 1
  %i.za = lshr i8 %i.yz, 3
  %narrow.i643 = select i1 %.not.i642, i8 0, i8 %i.za ; 3 uses
  br i1 %i.yk, label %bb.ds, label %bb.eo

bb.ds:                                            ; preds = %bb.dr
  %.not.i.i.i.i644 = icmp eq i32 %i.yb, 0
  %i.zb = add nsw i64 %i.yc, -1                   ; 2 uses
  %i.zc = icmp eq i64 %i.zb, 0
  %.not1438 = icmp eq i8 %narrow.i643, 0
  br i1 %.not1438, label %.thread844, label %.lr.ph1386

.lr.ph1386:                                       ; preds = %bb.ds
  %i.zd = zext nneg i8 %narrow.i643 to i64
  br label %bb.du

bb.dt:                                            ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit674
  %i.ze = icmp sgt i64 %indvars.iv.next11031384.in, 1
  br i1 %i.ze, label %bb.du, label %.thread844, !llvm.loop !153

bb.du:                                            ; preds = %.lr.ph1386, %bb.dt
  %indvars.iv.next11031384.in = phi i64 [ %i.zd, %.lr.ph1386 ], [ %indvars.iv.next11031384, %bb.dt ] ; 2 uses
  %.sroa.0726.01383 = phi ptr [ %i.yt, %.lr.ph1386 ], [ %.sroa.0726.1, %bb.dt ] ; 6 uses
  %.sroa.7.01382 = phi i64 [ %i.yx, %.lr.ph1386 ], [ %.sroa.7.1, %bb.dt ] ; 5 uses
  %indvars.iv.next11031384 = add nsw i64 %indvars.iv.next11031384.in, -1 ; 2 uses
  br i1 %.not.i.i.i.i644, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit648, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.zf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.yc) #33
          to label %.noexc647 unwind label %bb.eg ; 5 uses

.noexc647:                                        ; preds = %bb.dv
  %i.zg = getelementptr i8, ptr %i.zf, i64 %i.yc  ; 3 uses
  store i8 0, ptr %i.zf, align 1, !tbaa !16
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zf, i64 1 ; 2 uses
  br i1 %i.zc, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit648, label %bb.dw

bb.dw:                                            ; preds = %.noexc647
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.zh, i8 0, i64 %i.zb, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit648

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit648:            ; preds = %bb.dw, %.noexc647, %bb.du
  %.sroa.0721.0 = phi ptr [ %i.zf, %bb.dw ], [ %i.zf, %.noexc647 ], [ null, %bb.du ] ; 8 uses
  %.sroa.11.0 = phi ptr [ %i.zg, %bb.dw ], [ %i.zg, %.noexc647 ], [ null, %bb.du ] ; 2 uses
  %.0.i.i.i.i.i645 = phi ptr [ %i.zg, %bb.dw ], [ %i.zh, %.noexc647 ], [ null, %bb.du ]
  %i.zi = ptrtoint ptr %.0.i.i.i.i.i645 to i64
  %i.zj = ptrtoint ptr %.sroa.0721.0 to i64       ; 3 uses
  %i.zk = sub i64 %i.zi, %i.zj                    ; 2 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %.sroa.0726.01383, i64 %.sroa.7.01382 ; 3 uses
  %.sroa.speculated.i649 = call i64 @llvm.umin.i64(i64 %i.zk, i64 %i.yc) ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %.sroa.0721.0, i64 %.sroa.speculated.i649 ; 3 uses
  %i.zn = icmp ne i64 %.sroa.speculated.i649, 0
  %i.zo = icmp ne i64 %.sroa.7.01382, 0
  %i.zp = select i1 %i.zn, i1 %i.zo, i1 false
  br i1 %i.zp, label %.lr.ph.i651, label %.loopexit860

.lr.ph.i651:                                      ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit648, %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i656
  %.03661.i652 = phi ptr [ %.2.i658, %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i656 ], [ %.sroa.0726.01383, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit648 ] ; 3 uses
  %.03760.i653 = phi ptr [ %.239.i657, %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i656 ], [ %.sroa.0721.0, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit648 ] ; 5 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %.03661.i652, i64 1 ; 9 uses
  %i.zr = load i8, ptr %.03661.i652, align 1, !tbaa !16 ; 2 uses
  %i.zs = and i8 %i.zr, 127                       ; 2 uses
  %i.zt = add nuw i8 %i.zs, 1                     ; 2 uses
  %.not.i654 = icmp sgt i8 %i.zr, -1
  br i1 %.not.i654, label %bb.dx, label %bb.ec

bb.dx:                                            ; preds = %.lr.ph.i651
  %i.zu = zext i8 %i.zt to i64                    ; 3 uses
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zq, i64 %i.zu ; 3 uses
  %i.zw = icmp ugt ptr %i.zv, %i.zl
  br i1 %i.zw, label %.loopexit860, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.zx = getelementptr inbounds nuw i8, ptr %.03760.i653, i64 %i.zu ; 3 uses
  %i.zy = icmp ugt ptr %i.zx, %i.zm
  br i1 %i.zy, label %.loopexit860, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %.not59.i659 = icmp eq i8 %i.zs, 0
  br i1 %.not59.i659, label %bb.eb, label %bb.ea, !prof !130

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.03760.i653, ptr noundef nonnull align 1 dereferenceable(1) %i.zq, i64 %i.zu, i1 false)
  br label %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i656

bb.eb:                                            ; preds = %bb.dz
  %i.zz = load i8, ptr %i.zq, align 1, !tbaa !16
  store i8 %i.zz, ptr %.03760.i653, align 1, !tbaa !16
  br label %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i656

bb.ec:                                            ; preds = %.lr.ph.i651
  %.not47.i655 = icmp ult ptr %i.zq, %i.zl
  br i1 %.not47.i655, label %bb.ed, label %.loopexit860

bb.ed:                                            ; preds = %bb.ec
  %i.aaa = zext i8 %i.zt to i64                   ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %.03760.i653, i64 %i.aaa ; 2 uses
  %i.aac = icmp ugt ptr %i.aab, %i.zm
  br i1 %i.aac, label %.loopexit860, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.aad = getelementptr inbounds nuw i8, ptr %.03661.i652, i64 2
  %i.aae = load i8, ptr %i.zq, align 1, !tbaa !16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.03760.i653, i8 %i.aae, i64 %i.aaa, i1 false)
  br label %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i656

_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i656:            ; preds = %bb.ee, %bb.eb, %bb.ea
  %.239.i657 = phi ptr [ %i.zx, %bb.ea ], [ %i.aab, %bb.ee ], [ %i.zx, %bb.eb ] ; 2 uses
  %.2.i658 = phi ptr [ %i.zv, %bb.ea ], [ %i.aad, %bb.ee ], [ %i.zv, %bb.eb ] ; 3 uses
  %i.aaf = icmp ult ptr %.239.i657, %i.zm
  %i.aag = icmp ult ptr %.2.i658, %i.zl
  %i.aah = select i1 %i.aaf, i1 %i.aag, i1 false
  br i1 %i.aah, label %.lr.ph.i651, label %.loopexit860

.loopexit860:                                     ; preds = %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i656, %bb.ed, %bb.ec, %bb.dy, %bb.dx, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit648
  %.3.i650 = phi ptr [ %.sroa.0726.01383, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit648 ], [ %.2.i658, %_ZSt4copyIPKhPhET0_T_S4_S3_.exit.i656 ], [ %i.zq, %bb.dx ], [ %i.zq, %bb.ed ], [ %i.zq, %bb.ec ], [ %i.zq, %bb.dy ]
  %i.aai = ptrtoint ptr %.3.i650 to i64
  %i.aaj = ptrtoint ptr %.sroa.0726.01383 to i64
  %i.aak = sub i64 %i.aai, %i.aaj                 ; 3 uses
  %i.aal = icmp ugt i64 %i.aak, %.sroa.7.01382
  br i1 %i.aal, label %bb.ef, label %bb.ei

bb.ef:                                            ; preds = %.loopexit860
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.49)
end_hunk_3
