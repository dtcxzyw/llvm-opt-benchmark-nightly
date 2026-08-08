inline.NumInlined: 1179
inline.NumDeleted: 280
loop-unroll.NumCompletelyUnrolled: 238
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 283
begin_hunk_0_@_ZN11ImFontAtlas36AddFontFromMemoryCompressedBase85TTFEPKcfPK12ImFontConfigPKt:bb.a
  %i.ai = mul nsw i32 %i.ah, 85
  %i.aj = add nsw i32 %i.v, %i.ai
  %i.ak = mul nsw i32 %i.aj, 85
  %i.al = add nsw i32 %i.q, %i.ak
  %i.am = mul i32 %i.al, 85
  %i.an = add i32 %i.l, %i.am
  store i32 %i.an, ptr %.01522.i, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %.023.i, i64 5 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01522.i, i64 4
  %i.aq = load i8, ptr %i.ao, align 1, !tbaa !22  ; 2 uses
  %.not.i = icmp eq i8 %i.aq, 0
  br i1 %.not.i, label %_ZL8Decode85PKhPh.exit, label %.lr.ph.i, !llvm.loop !256

_ZL8Decode85PKhPh.exit:                           ; preds = %.lr.ph.i, %bb.a
  %i.ar = tail call noundef ptr @_ZN11ImFontAtlas30AddFontFromMemoryCompressedTTFEPKvifPK12ImFontConfigPKt(ptr noundef nonnull align 8 dereferenceable(1164) %0, ptr noundef %i.g, i32 poison, float noundef %2, ptr noundef %3, ptr noundef %4)
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.g)
  ret ptr %i.ar
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11ImFontAtlas18AddFontFromFileTTFEPKcfPK12ImFontConfigPKt(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1164) %0, ptr noundef %1, float noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef %4) local_unnamed_addr #8 align 2 {
bb.a:
  %5 = alloca %struct.ImFontConfig, align 8       ; 8 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %6 = alloca %struct.ImFontConfig, align 8       ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 0, ptr %i.a, align 8, !tbaa !257
  %i.b = call noundef ptr @_Z18ImFileLoadToMemoryPKcS0_Pmi(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.a, i32 noundef 0) ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  %.not22 = icmp eq ptr %3, null
  br i1 %.not22, label %.thread, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %6, i8 0, i64 136, i1 false)
  store i8 1, ptr %i.c, align 4, !tbaa !183
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 3, ptr %i.d, align 8, !tbaa !185
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i32 1, ptr %i.e, align 4, !tbaa !186
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 68
  store float f0x7F7FFFFF, ptr %i.f, align 4, !tbaa !187
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 80
  store float 1.000000e+00, ptr %i.g, align 8, !tbaa !188
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 84
  store i16 -1, ptr %i.h, align 4, !tbaa !189
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 86
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef nonnull align 8 dereferenceable(136) %3, i64 136, i1 false), !tbaa.struct !253
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 86
  %.pre = load i8, ptr %.phi.trans.insert, align 2, !tbaa !22
  %i.j = icmp eq i8 %.pre, 0
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 86
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.thread, %bb.c
  %i.l = phi ptr [ %i.i, %.thread ], [ %i.k, %bb.c ]
  %i.m = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #41 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %i.m ; 2 uses
  %.not33 = icmp eq i64 %i.m, 0
  br i1 %.not33, label %.critedge, label %.lr.ph

bb.e:                                             ; preds = %.lr.ph
  %i.o = icmp ugt ptr %i.p, %1
  br i1 %i.o, label %.lr.ph, label %.critedge, !llvm.loop !259

.lr.ph:                                           ; preds = %bb.d, %bb.e
  %.028 = phi ptr [ %i.p, %bb.e ], [ %i.n, %bb.d ] ; 2 uses
  %i.p = getelementptr inbounds i8, ptr %.028, i64 -1 ; 4 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !22
  switch i8 %i.q, label %bb.e [
    i8 47, label %..critedge_crit_edge
    i8 92, label %..critedge_crit_edge
  ], !llvm.loop !259

..critedge_crit_edge:                             ; preds = %.lr.ph, %.lr.ph
  br label %.critedge, !llvm.loop !259

.critedge:                                        ; preds = %bb.e, %..critedge_crit_edge, %bb.d
  %.0.lcssa = phi ptr [ %.028, %..critedge_crit_edge ], [ %i.n, %bb.d ], [ %i.p, %bb.e ]
  %i.r = fpext float %2 to double
  %i.s = call noundef i32 (ptr, i64, ptr, ...) @_Z14ImFormatStringPcmPKcz(ptr noundef nonnull %i.l, i64 noundef 40, ptr noundef nonnull @.str.2, ptr noundef nonnull %.0.lcssa, double noundef %i.r) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %bb.c
  %i.t = load i64, ptr %i.a, align 8, !tbaa !257
  %i.u = trunc i64 %i.t to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef nonnull readonly align 8 dereferenceable(136) %6, i64 136, i1 false), !tbaa.struct !253
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %.pre.i = load float, ptr %.phi.trans.insert.i, align 4
  store ptr %i.b, ptr %5, align 8, !tbaa !215
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 %i.u, ptr %i.v, align 8, !tbaa !252
  %i.w = fcmp ogt float %2, 0.000000e+00
  %i.x = select i1 %i.w, float %2, float %.pre.i
  store float %i.x, ptr %.phi.trans.insert.i, align 4, !tbaa !227
  %.not9.i = icmp eq ptr %4, null
  br i1 %.not9.i, label %_ZN11ImFontAtlas20AddFontFromMemoryTTFEPvifPK12ImFontConfigPKt.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 56
  store ptr %4, ptr %i.y, align 8, !tbaa !228
  br label %_ZN11ImFontAtlas20AddFontFromMemoryTTFEPvifPK12ImFontConfigPKt.exit

_ZN11ImFontAtlas20AddFontFromMemoryTTFEPvifPK12ImFontConfigPKt.exit: ; preds = %bb.f, %bb.g
  %i.z = call noundef ptr @_ZN11ImFontAtlas7AddFontEPK12ImFontConfig(ptr noundef nonnull align 8 dereferenceable(1164) %0, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %_ZN11ImFontAtlas20AddFontFromMemoryTTFEPvifPK12ImFontConfigPKt.exit
  %.018 = phi ptr [ %i.z, %_ZN11ImFontAtlas20AddFontFromMemoryTTFEPvifPK12ImFontConfigPKt.exit ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret ptr %.018
}

declare noundef ptr @_Z18ImFileLoadToMemoryPKcS0_Pmi(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11ImFontAtlas20AddFontFromMemoryTTFEPvifPK12ImFontConfigPKt(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1164) initializes((25, 27)) %0, ptr noundef %1, i32 noundef %2, float noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr noundef %5) local_unnamed_addr #8 align 2 {
bb.a:
  %6 = alloca %struct.ImFontConfig, align 8       ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #40
  %.not = icmp eq ptr %4, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef nonnull align 8 dereferenceable(136) %4, i64 136, i1 false), !tbaa.struct !253
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %6, i64 20
  %.pre = load float, ptr %.phi.trans.insert, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %i.b, i8 0, i64 128, i1 false)
  store i8 1, ptr %i.a, align 4, !tbaa !183
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i32 3, ptr %i.c, align 8, !tbaa !185
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i32 1, ptr %i.d, align 4, !tbaa !186
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 68
  store float f0x7F7FFFFF, ptr %i.e, align 4, !tbaa !187
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 80
  store float 1.000000e+00, ptr %i.f, align 8, !tbaa !188
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 84
  store i16 -1, ptr %i.g, align 4, !tbaa !189
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = phi float [ 0.000000e+00, %bb.c ], [ %.pre, %bb.b ]
  store ptr %1, ptr %6, align 8, !tbaa !215
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 %2, ptr %i.i, align 8, !tbaa !252
  %i.j = fcmp ogt float %3, 0.000000e+00
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.l = select i1 %i.j, float %3, float %i.h
  store float %i.l, ptr %i.k, align 4, !tbaa !227
  %.not9 = icmp eq ptr %5, null
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr %5, ptr %i.m, align 8, !tbaa !228
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = call noundef ptr @_ZN11ImFontAtlas7AddFontEPK12ImFontConfig(ptr noundef nonnull align 8 dereferenceable(1164) %0, ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #40
  ret ptr %i.n
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN11ImFontAtlas30AddFontFromMemoryCompressedTTFEPKvifPK12ImFontConfigPKt(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1164) %0, ptr noundef %1, i32 %2, float noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr noundef %5) local_unnamed_addr #8 align 2 {
bb.a:
  %6 = alloca %struct.ImFontConfig, align 8       ; 16 uses
  %.sroa.7 = alloca [11 x i8], align 1            ; 5 uses
  %.sroa.9 = alloca [36 x i8], align 8            ; 5 uses
  %.sroa.12 = alloca [50 x i8], align 2           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.e = load i32, ptr %i.a, align 1
  %i.f = tail call i32 @llvm.bswap.i32(i32 %i.e)  ; 2 uses
  %i.g = zext i32 %i.f to i64
  %i.h = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.g) ; 11 uses
  %i.i = load i32, ptr %1, align 1
  %.not.i = icmp eq i32 %i.i, 48215
  br i1 %.not.i, label %bb.b, label %_ZL14stb_decompressPhPKhj.exit

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %7 = load i8, ptr %i.j, align 1, !tbaa !22
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %9 = load i8, ptr %8, align 1, !tbaa !22
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 6
  %11 = load i8, ptr %10, align 1, !tbaa !22
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %13 = load i8, ptr %12, align 1, !tbaa !22
  %14 = or i8 %9, %7
  %15 = or i8 %14, %11
  %16 = or i8 %15, %13
  %i.k = icmp eq i8 %16, 0
  br i1 %i.k, label %bb.c, label %_ZL14stb_decompressPhPKhj.exit

bb.c:                                             ; preds = %bb.b
  %i.l = load i8, ptr %i.a, align 1, !tbaa !22
  %i.m = zext i8 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 24
  %i.o = load i8, ptr %i.b, align 1, !tbaa !22
  %i.p = zext i8 %i.o to i64
  %i.q = shl nuw nsw i64 %i.p, 16
  %i.r = load i8, ptr %i.c, align 1, !tbaa !22
  %i.s = zext i8 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 8
  %i.u = load i8, ptr %i.d, align 1, !tbaa !22
  %i.v = zext i8 %i.u to i64
  store ptr %1, ptr @_ZL17stb__barrier_in_b, align 8, !tbaa !234
  %i.w = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.q
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.n
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.t
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v ; 12 uses
  store ptr %i.z, ptr @_ZL18stb__barrier_out_e, align 8, !tbaa !234
  store ptr %i.h, ptr @_ZL18stb__barrier_out_b, align 8, !tbaa !234
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.h, ptr @_ZL9stb__dout, align 8, !tbaa !234
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 1 ; 9 uses
  br label %bb.d

bb.d:                                             ; preds = %_ZL20stb_decompress_tokenPKh.exit.thread.i, %bb.c
  %.lcssa.sink.i.i62.i = phi ptr [ %i.h, %bb.c ], [ %.lcssa.sink.i.i63.i, %_ZL20stb_decompress_tokenPKh.exit.thread.i ] ; 102 uses
  %.034.i = phi ptr [ %i.aa, %bb.c ], [ %.0.i42.i, %_ZL20stb_decompress_tokenPKh.exit.thread.i ] ; 33 uses
  %i.ac = load i8, ptr %.034.i, align 1, !tbaa !22 ; 13 uses
  %i.ad = zext i8 %i.ac to i32                    ; 6 uses
  %i.ae = icmp ugt i8 %i.ac, 31
  br i1 %i.ae, label %bb.e, label %bb.n

bb.e:                                             ; preds = %bb.d
  %i.af = icmp slt i8 %i.ac, 0
  br i1 %i.af, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ag = add nsw i32 %i.ad, -127                 ; 4 uses
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %.lcssa.sink.i.i62.i, i64 %i.ah ; 2 uses
  %i.aj = icmp ugt ptr %i.ai, %i.z
  br i1 %i.aj, label %_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %.034.i, i64 1
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !22  ; 2 uses
  %i.am = zext i8 %i.al to i64
  %i.an = sub nsw i64 0, %i.am
  %i.ao = getelementptr inbounds i8, ptr %.lcssa.sink.i.i62.i, i64 %i.an ; 8 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -1 ; 6 uses
  %i.aq = icmp ult ptr %i.ap, %i.h
  br i1 %i.aq, label %_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i, label %iter.check

iter.check:                                       ; preds = %bb.g
  %i.ar = zext i8 %i.ac to i64
  %i.as = add nsw i64 %i.ar, -127                 ; 7 uses
  %min.iters.check = icmp ult i64 %i.as, 4
  %diff.check = icmp ult i8 %i.al, 31
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.preheader.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check125 = icmp ult i64 %i.as, 32
  br i1 %min.iters.check125, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.as, 28
  %n.vec = and i64 %i.as, 224                     ; 8 uses
  %i.at = trunc nuw nsw i64 %n.vec to i32
  %i.au = sub nsw i32 %i.ag, %i.at
  %i.av = getelementptr i8, ptr %i.ap, i64 %n.vec
  %i.aw = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 %n.vec ; 2 uses
  %i.ax = getelementptr i8, ptr %i.ao, i64 15
  %wide.load = load <16 x i8>, ptr %i.ap, align 1, !tbaa !22
  %wide.load127 = load <16 x i8>, ptr %i.ax, align 1, !tbaa !22
  %i.ay = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 16
  store <16 x i8> %wide.load, ptr %.lcssa.sink.i.i62.i, align 1, !tbaa !22
  store <16 x i8> %wide.load127, ptr %i.ay, align 1, !tbaa !22
  %i.az = icmp eq i64 %n.vec, 32
  br i1 %i.az, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %next.gep.1 = getelementptr i8, ptr %i.ao, i64 31
  %next.gep126.1 = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 32
  %i.ba = getelementptr i8, ptr %i.ao, i64 47
  %wide.load.1 = load <16 x i8>, ptr %next.gep.1, align 1, !tbaa !22
  %wide.load127.1 = load <16 x i8>, ptr %i.ba, align 1, !tbaa !22
  %i.bb = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 48
  store <16 x i8> %wide.load.1, ptr %next.gep126.1, align 1, !tbaa !22
  store <16 x i8> %wide.load127.1, ptr %i.bb, align 1, !tbaa !22
  %i.bc = icmp eq i64 %n.vec, 64
  br i1 %i.bc, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %next.gep.2 = getelementptr i8, ptr %i.ao, i64 63
  %next.gep126.2 = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 64
  %i.bd = getelementptr i8, ptr %i.ao, i64 79
  %wide.load.2 = load <16 x i8>, ptr %next.gep.2, align 1, !tbaa !22
  %wide.load127.2 = load <16 x i8>, ptr %i.bd, align 1, !tbaa !22
  %i.be = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 80
  store <16 x i8> %wide.load.2, ptr %next.gep126.2, align 1, !tbaa !22
  store <16 x i8> %wide.load127.2, ptr %i.be, align 1, !tbaa !22
  %i.bf = icmp eq i64 %n.vec, 96
  br i1 %i.bf, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %next.gep.3 = getelementptr i8, ptr %i.ao, i64 95
  %next.gep126.3 = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 96
  %i.bg = getelementptr i8, ptr %i.ao, i64 111
  %wide.load.3 = load <16 x i8>, ptr %next.gep.3, align 1, !tbaa !22
  %wide.load127.3 = load <16 x i8>, ptr %i.bg, align 1, !tbaa !22
  %i.bh = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 112
  store <16 x i8> %wide.load.3, ptr %next.gep126.3, align 1, !tbaa !22
  store <16 x i8> %wide.load127.3, ptr %i.bh, align 1, !tbaa !22
  br label %middle.block

middle.block:                                     ; preds = %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.preheader.i.i.i.preheader, label %vec.epilog.ph, !prof !260

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec131 = and i64 %i.as, 252                  ; 5 uses
  %i.bi = trunc nuw nsw i64 %n.vec131 to i32
  %i.bj = sub nsw i32 %i.ag, %i.bi
  %i.bk = getelementptr i8, ptr %i.ap, i64 %n.vec131
  %i.bl = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 %n.vec131 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index132 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next136, %vec.epilog.vector.body ] ; 3 uses
  %next.gep133.a = getelementptr i8, ptr %i.ap, i64 %index132
  %next.gep134 = getelementptr i8, ptr %.lcssa.sink.i.i62.i, i64 %index132
  %wide.load135 = load <4 x i8>, ptr %next.gep133.a, align 1, !tbaa !22
  store <4 x i8> %wide.load135, ptr %next.gep134, align 1, !tbaa !22
  %index.next136 = add nuw i64 %index132, 4       ; 2 uses
  %i.bm = icmp eq i64 %index.next136, %n.vec131
  br i1 %i.bm, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !261

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n137 = icmp eq i64 %i.as, %n.vec131
  br i1 %cmp.n137, label %_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i, label %.preheader.i.i.i.preheader

.preheader.i.i.i.preheader:                       ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.ph = phi i32 [ %i.ag, %iter.check ], [ %i.au, %vec.epilog.iter.check ], [ %i.bj, %vec.epilog.middle.block ] ; 4 uses
  %.048.i.i.i.ph = phi ptr [ %i.ap, %iter.check ], [ %i.av, %vec.epilog.iter.check ], [ %i.bk, %vec.epilog.middle.block ] ; 2 uses
  %.ph = phi ptr [ %.lcssa.sink.i.i62.i, %iter.check ], [ %i.aw, %vec.epilog.iter.check ], [ %i.bl, %vec.epilog.middle.block ] ; 2 uses
  %i.bn = add nsw i32 %.09.i.i.i.ph, -1
  %xtraiter365 = and i32 %.09.i.i.i.ph, 7         ; 2 uses
  %lcmp.mod366.not = icmp eq i32 %xtraiter365, 0
  br i1 %lcmp.mod366.not, label %.preheader.i.i.i.prol.loopexit, label %.preheader.i.i.i.prol

.preheader.i.i.i.prol:                            ; preds = %.preheader.i.i.i.preheader, %.preheader.i.i.i.prol
  %.09.i.i.i.prol = phi i32 [ %i.bp, %.preheader.i.i.i.prol ], [ %.09.i.i.i.ph, %.preheader.i.i.i.preheader ]
  %.048.i.i.i.prol = phi ptr [ %i.bq, %.preheader.i.i.i.prol ], [ %.048.i.i.i.ph, %.preheader.i.i.i.preheader ] ; 2 uses
  %i.bo = phi ptr [ %i.bs, %.preheader.i.i.i.prol ], [ %.ph, %.preheader.i.i.i.preheader ] ; 2 uses
  %prol.iter367 = phi i32 [ %prol.iter367.next, %.preheader.i.i.i.prol ], [ 0, %.preheader.i.i.i.preheader ]
  %i.bp = add nsw i32 %.09.i.i.i.prol, -1         ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.048.i.i.i.prol, i64 1 ; 2 uses
  %i.br = load i8, ptr %.048.i.i.i.prol, align 1, !tbaa !22
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 1 ; 3 uses
  store i8 %i.br, ptr %i.bo, align 1, !tbaa !22
  %prol.iter367.next = add i32 %prol.iter367, 1   ; 2 uses
  %prol.iter367.cmp.not = icmp eq i32 %prol.iter367.next, %xtraiter365
  br i1 %prol.iter367.cmp.not, label %.preheader.i.i.i.prol.loopexit, label %.preheader.i.i.i.prol, !llvm.loop !262

.preheader.i.i.i.prol.loopexit:                   ; preds = %.preheader.i.i.i.prol, %.preheader.i.i.i.preheader
  %.lcssa348.unr = phi ptr [ poison, %.preheader.i.i.i.preheader ], [ %i.bs, %.preheader.i.i.i.prol ]
  %.09.i.i.i.unr = phi i32 [ %.09.i.i.i.ph, %.preheader.i.i.i.preheader ], [ %i.bp, %.preheader.i.i.i.prol ]
  %.048.i.i.i.unr = phi ptr [ %.048.i.i.i.ph, %.preheader.i.i.i.preheader ], [ %i.bq, %.preheader.i.i.i.prol ]
  %.unr368 = phi ptr [ %.ph, %.preheader.i.i.i.preheader ], [ %i.bs, %.preheader.i.i.i.prol ]
  %i.bt = icmp ult i32 %i.bn, 7
  br i1 %i.bt, label %_ZL20stb_decompress_tokenPKh.exit.thread.sink.split.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.prol.loopexit, %.preheader.i.i.i
  %.09.i.i.i = phi i32 [ %i.cq, %.preheader.i.i.i ], [ %.09.i.i.i.unr, %.preheader.i.i.i.prol.loopexit ]
  %.048.i.i.i = phi ptr [ %i.cr, %.preheader.i.i.i ], [ %.048.i.i.i.unr, %.preheader.i.i.i.prol.loopexit ] ; 9 uses
  %i.bu = phi ptr [ %i.ct, %.preheader.i.i.i ], [ %.unr368, %.preheader.i.i.i.prol.loopexit ] ; 9 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 1
  %i.bw = load i8, ptr %.048.i.i.i, align 1, !tbaa !22
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store i8 %i.bw, ptr %i.bu, align 1, !tbaa !22
  %i.by = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 2
  %i.bz = load i8, ptr %i.bv, align 1, !tbaa !22
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  store i8 %i.bz, ptr %i.bx, align 1, !tbaa !22
  %i.cb = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 3
  %i.cc = load i8, ptr %i.by, align 1, !tbaa !22
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 3
  store i8 %i.cc, ptr %i.ca, align 1, !tbaa !22
  %i.ce = getelementptr inbounds nuw i8, ptr %.048.i.i.i, i64 4
  %i.cf = load i8, ptr %i.cb, align 1, !tbaa !22
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bu, i64 4
  store i8 %i.cf, ptr %i.cd, align 1, !tbaa !22
end_hunk_0
