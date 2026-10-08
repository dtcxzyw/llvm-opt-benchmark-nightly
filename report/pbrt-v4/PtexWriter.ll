Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/PtexWriter?download=true
inline.NumInlined: 1329
inline.NumDeleted: 556
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4Ptex4v2_414PtexWriterBase13writeZipBlockEP8_IO_FILEPKvib:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit27: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %i.ae

bb.i:                                             ; preds = %bb.f
  %i.aj = load i32, ptr %i.i, align 8, !tbaa !250
  %.not22 = icmp eq i32 %i.aj, 0
  br i1 %.not22, label %.split, label %.thread29

.loopexit:                                        ; preds = %bb.f, %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br i1 %4, label %bb.j, label %.thread29

bb.j:                                             ; preds = %.loopexit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !251
  %i.am = trunc i64 %i.al to i32
  %i.an = call i32 @deflateReset(ptr noundef nonnull %i.f) ; 0 uses
  br label %.thread29

.thread29:                                        ; preds = %bb.i, %bb.j, %.loopexit, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %i.am, %bb.j ], [ 0, %.loopexit ], [ 0, %bb.i ]
  ret i32 %.1
}

declare i32 @deflate(ptr noundef, i32 noundef) local_unnamed_addr #7

declare i32 @deflateReset(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4Ptex4v2_414PtexWriterBase9readBlockEP8_IO_FILEPvi(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = sext i32 %3 to i64
  %i.c = tail call i64 @fread(ptr noundef %2, i64 noundef %i.b, i64 noundef 1, ptr noundef %1)
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.d, ptr %4, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 39, ptr %i.a, align 8, !tbaa !66
  %i.e = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !49
  %i.f = load i64, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %i.e, ptr noundef nonnull align 1 dereferenceable(39) @.str.13, i64 39, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.f, ptr %i.g, align 8, !tbaa !19
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  store i8 0, ptr %i.h, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %.noexc.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.j, align 8, !tbaa !43
  %i.k = load ptr, ptr %4, align 8, !tbaa !49     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.d
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.d, align 8, !tbaa !50
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  br label %bb.d

bb.c:                                             ; preds = %.noexc.i
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = load ptr, ptr %4, align 8, !tbaa !49     ; 2 uses
  %i.q = icmp eq ptr %i.p, %i.d
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11: ; preds = %bb.c
  %i.r = load i64, ptr %i.d, align 8, !tbaa !50
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.p, i64 noundef %i.s) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30
  resume { ptr, i32 } %i.o

bb.d:                                             ; preds = %bb.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.08 = phi i32 [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %3, %bb.a ]
  ret i32 %.08
}

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr noundef writeonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define hidden noundef range(i32 0, -2147483648) i32 @_ZN4Ptex4v2_414PtexWriterBase9copyBlockEP8_IO_FILES3_li(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.b = icmp slt i32 %4, 1
  br i1 %i.b, label %.thread36, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @fseeko(ptr noundef %2, i64 noundef %3, i32 noundef 0) ; 0 uses
  %i.d = alloca [16384 x i8], align 16            ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.022 = phi i32 [ %4, %bb.b ], [ %i.y, %bb.g ]  ; 3 uses
  %.not = icmp eq i32 %.022, 0
  br i1 %.not, label %.thread36, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @llvm.smin.i32(i32 %.022, i32 16384) ; 3 uses
  %i.f = zext nneg i32 %i.e to i64
  %i.g = call i64 @fread(ptr noundef nonnull %i.d, i64 noundef %i.f, i64 noundef 1, ptr noundef %2)
  %.not26 = icmp eq i64 %i.g, 0
  br i1 %.not26, label %.noexc.i, label %bb.g

.noexc.i:                                         ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  store ptr %i.h, ptr %5, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 39, ptr %i.a, align 8, !tbaa !66
  %i.i = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.i, ptr %5, align 8, !tbaa !49
  %i.j = load i64, ptr %i.a, align 8, !tbaa !66   ; 3 uses
  store i64 %i.j, ptr %i.h, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %i.i, ptr noundef nonnull align 1 dereferenceable(39) @.str.13, i64 39, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.j, ptr %i.k, align 8, !tbaa !19
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  store i8 0, ptr %i.l, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %.noexc.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.n, align 8, !tbaa !43
  %i.o = load ptr, ptr %5, align 8, !tbaa !49     ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.h
  br i1 %i.p, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.q = load i64, ptr %i.h, align 8, !tbaa !50
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.r) #28
  br label %.thread

.thread:                                          ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  br label %.thread36

bb.f:                                             ; preds = %.noexc.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %5, align 8, !tbaa !49     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.h
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31: ; preds = %bb.f
  %i.v = load i64, ptr %i.h, align 8, !tbaa !50
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit33: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30
  resume { ptr, i32 } %i.s

bb.g:                                             ; preds = %bb.d
  %i.x = call noundef i32 @_ZN4Ptex4v2_414PtexWriterBase10writeBlockEP8_IO_FILEPKvi(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef nonnull %i.d, i32 noundef %i.e)
  %.not28 = icmp eq i32 %i.x, 0
  %i.y = sub nsw i32 %.022, %i.e
  br i1 %.not28, label %.thread36, label %bb.c

.thread36:                                        ; preds = %bb.g, %bb.c, %.thread, %bb.a
  %.3 = phi i32 [ 0, %bb.a ], [ 0, %.thread ], [ %4, %bb.c ], [ %4, %bb.g ]
  ret i32 %.3
}

; Function Attrs: nofree nounwind
declare noundef i32 @fseeko(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden i16 @_ZN4Ptex4v2_414PtexWriterBase11calcTileResENS0_3ResE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(424) %0, i16 %1) local_unnamed_addr #15 align 2 {
bb.a:
  %.sroa.5.0.extract.shift = lshr i16 %1, 8       ; 2 uses
  %.sroa.0.0.extract.trunc.mask = and i16 %1, 255 ; 2 uses
  %i.a = zext nneg i16 %.sroa.0.0.extract.trunc.mask to i32
  %i.b = shl nuw i32 1, %i.a
  %i.c = zext nneg i16 %.sroa.5.0.extract.shift to i32 ; 2 uses
  %i.d = shl i32 %i.b, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.f = load i32, ptr %i.e, align 8, !tbaa !79
  %i.g = mul nsw i32 %i.f, %i.d
  %i.h = sdiv i32 %i.g, 65536                     ; 2 uses
  %i.i = lshr i32 %i.h, 1
  %i.j = or i32 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i32 %i.j, 2
  %i.l = or i32 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i32 %i.l, 4
  %i.n = or i32 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i32 %i.n, 8
  %i.p = or i32 %i.o, %i.n                        ; 2 uses
  %i.q = lshr i32 %i.p, 17
  %i.r = lshr i32 %i.p, 1
  %i.s = or i32 %i.q, %i.r                        ; 2 uses
  %i.t = and i32 %i.s, 1431655765
  %i.u = lshr i32 %i.s, 1
  %i.v = and i32 %i.u, 357913941
  %i.w = add nuw nsw i32 %i.v, %i.t               ; 2 uses
  %i.x = and i32 %i.w, 858993459
  %i.y = lshr i32 %i.w, 2
  %i.z = and i32 %i.y, 322122547
  %i.aa = add nuw nsw i32 %i.z, %i.x              ; 2 uses
  %i.ab = and i32 %i.aa, 117901063
  %i.ac = lshr i32 %i.aa, 4
  %i.ad = and i32 %i.ac, 117901063
  %i.ae = add nuw nsw i32 %i.ad, %i.ab            ; 2 uses
  %i.af = lshr i32 %i.ae, 8
  %i.ag = add nuw nsw i32 %i.af, %i.ae            ; 2 uses
  %i.ah = lshr i32 %i.ag, 16
  %i.ai = add nuw nsw i32 %i.ah, %i.ag
  %i.aj = and i32 %i.ai, 255                      ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.extract.trunc = zext i16 %1 to i32
  %sext12 = shl i32 %.sroa.0.0.extract.trunc, 24
  %i.al = ashr exact i32 %sext12, 24              ; 2 uses
  %sext11 = shl nuw i32 %i.c, 24
  %2 = ashr exact i32 %sext11, 24                 ; 2 uses
  %i.am = add nsw i32 %2, %i.al
  %i.an = sub nsw i32 %i.am, %i.aj                ; 2 uses
  %i.ao = trunc nsw i32 %i.an to i16
  %.lhs.trunc = add nsw i16 %i.ao, 1
  %i.ap = sdiv i16 %.lhs.trunc, 2
  %.sext = sext i16 %i.ap to i32
  %i.aq = tail call noundef i32 @llvm.smin.i32(i32 %.sext, i32 %i.al) ; 2 uses
  %i.ar = trunc nsw i32 %i.aq to i16
  %sext = shl i32 %i.aq, 24
  %i.as = ashr exact i32 %sext, 24
  %i.at = sub nsw i32 %i.an, %i.as
  %i.au = tail call noundef i32 @llvm.smin.i32(i32 %i.at, i32 %2)
  %i.av = trunc nsw i32 %i.au to i16
  %i.aw = and i16 %i.av, 255
  %.pre = and i16 %i.ar, 255
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.010.0.insert.ext.pre-phi = phi i16 [ %.pre, %bb.b ], [ %.sroa.0.0.extract.trunc.mask, %bb.a ]
  %.sroa.4.0 = phi i16 [ %i.aw, %bb.b ], [ %.sroa.5.0.extract.shift, %bb.a ]
  %.sroa.4.0.insert.shift = shl nuw i16 %.sroa.4.0, 8
  %.sroa.010.0.insert.insert = or disjoint i16 %.sroa.4.0.insert.shift, %.sroa.010.0.insert.ext.pre-phi
  ret i16 %.sroa.010.0.insert.insert
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4Ptex4v2_414PtexWriterBase19writeConstFaceBlockEP8_IO_FILEPKvRNS0_14FaceDataHeaderE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(4) initializes((0, 4)) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load i32, ptr %i.a, align 8, !tbaa !79   ; 2 uses
  %i.c = and i32 %i.b, 1073741823
  store i32 %i.c, ptr %3, align 1, !tbaa !111
  %i.d = tail call noundef i32 @_ZN4Ptex4v2_414PtexWriterBase10writeBlockEP8_IO_FILEPKvi(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef %2, i32 noundef %i.b) ; 0 uses
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4Ptex4v2_414PtexWriterBase14writeFaceBlockEP8_IO_FILEPKviNS0_3ResERNS0_14FaceDataHeaderE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3, i16 %4, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(4) initializes((0, 4)) %5) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i16 %4, 8
  %.sroa.2.0.extract.trunc = zext nneg i16 %.sroa.2.0.extract.shift to i32 ; 2 uses
  %i.a = and i16 %4, 255
  %i.b = zext nneg i16 %i.a to i32                ; 2 uses
  %i.c = shl nuw i32 1, %i.b                      ; 2 uses
  %i.d = shl nuw i32 1, %.sroa.2.0.extract.trunc
  %i.e = shl i32 %i.c, %.sroa.2.0.extract.trunc
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.g = load i32, ptr %i.f, align 8, !tbaa !79
  %i.h = mul nsw i32 %i.g, %i.e                   ; 5 uses
  %i.i = icmp sgt i32 %i.h, 16384                 ; 2 uses
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = zext nneg i32 %i.h to i64
  %i.k = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.j) #27
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = sext i32 %i.h to i64
  %i.m = alloca i8, i64 %i.l, align 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = phi ptr [ %i.k, %bb.b ], [ %i.m, %bb.c ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !73   ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @_ZZN4Ptex4v2_48DataSizeENS0_8DataTypeEE5sizes, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !48
  %i.t = shl i32 %i.s, %i.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.v = load i16, ptr %i.u, align 4, !tbaa !75
  %i.w = zext i16 %i.v to i32
  call void @_ZN4Ptex4v2_49PtexUtils12deinterleaveEPKviiiPviNS0_8DataTypeEi(ptr noundef %2, i32 noundef %3, i32 noundef %i.c, i32 noundef %i.d, ptr noundef nonnull %i.n, i32 noundef %i.t, i32 noundef %i.p, i32 noundef %i.w)
  %i.x = load i32, ptr %i.o, align 4, !tbaa !73   ; 2 uses
  %switch = icmp ult i32 %i.x, 2
  br i1 %switch, label %.critedge, label %bb.e

.critedge:                                        ; preds = %bb.d
  call void @_ZN4Ptex4v2_49PtexUtils16encodeDifferenceEPviNS0_8DataTypeE(ptr noundef nonnull %i.n, i32 noundef %i.h, i32 noundef %i.x)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.critedge
  %i.y = phi i32 [ -2147483648, %.critedge ], [ 1073741824, %bb.d ]
  %i.z = call noundef i32 @_ZN4Ptex4v2_414PtexWriterBase13writeZipBlockEP8_IO_FILEPKvib(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef nonnull %i.n, i32 noundef %i.h, i1 noundef zeroext true)
  %i.aa = and i32 %i.z, 1073741823
  %i.ab = or disjoint i32 %i.aa, %i.y
  store i32 %i.ab, ptr %5, align 1, !tbaa !111
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.n) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #2

declare void @_ZN4Ptex4v2_49PtexUtils12deinterleaveEPKviiiPviNS0_8DataTypeEi(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare void @_ZN4Ptex4v2_49PtexUtils16encodeDifferenceEPviNS0_8DataTypeE(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4Ptex4v2_414PtexWriterBase13writeFaceDataEP8_IO_FILEPKviNS0_3ResERNS0_14FaceDataHeaderE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3, i16 %4, ptr nofree noundef nonnull writeonly align 1 captures(none) dereferenceable(4) %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"struct.Ptex::v2_4::Res", align 2  ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %.sroa.084.0.extract.trunc = zext i16 %4 to i32
  %.sroa.3.0.extract.shift = lshr i16 %4, 8
  %.sroa.3.0.extract.trunc = zext nneg i16 %.sroa.3.0.extract.shift to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.c = tail call i16 @_ZN4Ptex4v2_414PtexWriterBase11calcTileResENS0_3ResE(ptr noundef nonnull align 8 dereferenceable(424) %0, i16 %4) ; 5 uses
  store i16 %i.c, ptr %7, align 2
  %.sroa.0.0.extract.trunc.i = zext i16 %i.c to i32
  %sext86 = shl i32 %.sroa.084.0.extract.trunc, 24
  %i.d = ashr exact i32 %sext86, 24
  %sext.i = shl i32 %.sroa.0.0.extract.trunc.i, 24
  %i.e = ashr exact i32 %sext.i, 24
  %i.f = sub nsw i32 %i.d, %i.e                   ; 2 uses
  %i.g = shl nuw i32 1, %i.f
  %.sroa.1.0.extract.shift.i = lshr i16 %i.c, 8   ; 2 uses
  %.sroa.1.0.extract.trunc.i = zext nneg i16 %.sroa.1.0.extract.shift.i to i32
  %sext = shl nuw i32 %.sroa.3.0.extract.trunc, 24
  %8 = ashr exact i32 %sext, 24
  %sext.i72 = shl nuw i32 %.sroa.1.0.extract.trunc.i, 24
  %9 = ashr exact i32 %sext.i72, 24
  %10 = sub nsw i32 %8, %9                        ; 2 uses
  %11 = shl i32 %i.g, %10                         ; 4 uses
  %12 = icmp eq i32 %11, 1
  %i.h = zext nneg i16 %.sroa.1.0.extract.shift.i to i32 ; 2 uses
  br i1 %12, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4Ptex4v2_414PtexWriterBase14writeFaceBlockEP8_IO_FILEPKviNS0_3ResERNS0_14FaceDataHeaderE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i16 %4, ptr noundef nonnull align 1 dereferenceable(4) %5)
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !67
  tail call void @rewind(ptr noundef %i.j)
  %i.k = icmp slt i32 %11, 0
  br i1 %i.k, label %.noexc, label %_ZNSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

.noexc:                                           ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.34) #32
  unreachable

_ZNSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.c
  %i.l = zext nneg i32 %11 to i64
  %i.m = shl nuw nsw i64 %i.l, 2                  ; 4 uses
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #27 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.m, i1 false), !tbaa !111
  %i.o = and i16 %i.c, 255
  %i.p = zext nneg i16 %i.o to i32                ; 2 uses
  %i.q = shl nuw i32 1, %i.p
  %i.r = shl nuw i32 1, %i.h
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.t = shl i32 %3, %i.h                         ; 2 uses
  %i.u = shl i32 %i.t, %10                        ; 2 uses
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds i8, ptr %2, i64 %i.v
  %.not99 = icmp eq i32 %i.u, 0
  br i1 %.not99, label %._crit_edge104, label %.lr.ph103

.lr.ph103:                                        ; preds = %_ZNSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.x = load i32, ptr %i.s, align 8, !tbaa !79
  %i.y = shl i32 %i.x, %i.p                       ; 2 uses
  %i.z = shl i32 %i.y, %i.f                       ; 2 uses
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.af = sext i32 %i.y to i64
  %i.ag = sext i32 %i.t to i64
  %.not6894 = icmp eq i32 %i.z, 0
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph103, %._crit_edge
  %.057102 = phi ptr [ %2, %.lr.ph103 ], [ %i.bj, %._crit_edge ] ; 3 uses
  %.058101 = phi i32 [ 0, %.lr.ph103 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.059100 = phi ptr [ %i.n, %.lr.ph103 ], [ %.160.lcssa, %._crit_edge ] ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %.057102, i64 %i.aa
  br i1 %.not6894, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %_ZN4Ptex4v2_414PtexWriterBase19writeConstFaceBlockEP8_IO_FILEPKvRNS0_14FaceDataHeaderE.exit
  %.097 = phi ptr [ %i.bi, %_ZN4Ptex4v2_414PtexWriterBase19writeConstFaceBlockEP8_IO_FILEPKvRNS0_14FaceDataHeaderE.exit ], [ %.057102, %bb.d ] ; 4 uses
  %.196 = phi i32 [ %i.bg, %_ZN4Ptex4v2_414PtexWriterBase19writeConstFaceBlockEP8_IO_FILEPKvRNS0_14FaceDataHeaderE.exit ], [ %.058101, %bb.d ]
  %.16095 = phi ptr [ %i.bh, %_ZN4Ptex4v2_414PtexWriterBase19writeConstFaceBlockEP8_IO_FILEPKvRNS0_14FaceDataHeaderE.exit ], [ %.059100, %bb.d ] ; 4 uses
  %i.ai = load i32, ptr %i.s, align 8, !tbaa !79
  %i.aj = invoke noundef zeroext i1 @_ZN4Ptex4v2_49PtexUtils10isConstantEPKviiii(ptr noundef %.097, i32 noundef %3, i32 noundef %i.q, i32 noundef %i.r, i32 noundef %i.ai)
          to label %bb.e unwind label %bb.j

bb.e:                                             ; preds = %.lr.ph
  %i.ak = load ptr, ptr %i.i, align 8, !tbaa !67  ; 2 uses
  br i1 %i.aj, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.al = load i32, ptr %i.s, align 8, !tbaa !79  ; 2 uses
  %i.am = and i32 %i.al, 1073741823
  store i32 %i.am, ptr %.16095, align 1, !tbaa !111
  %i.an = load i8, ptr %i.ab, align 8, !tbaa !43, !range !44, !noundef !45
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.g, label %_ZN4Ptex4v2_414PtexWriterBase19writeConstFaceBlockEP8_IO_FILEPKvRNS0_14FaceDataHeaderE.exit

bb.g:                                             ; preds = %bb.f
  %i.ap = sext i32 %i.al to i64
  %i.aq = call i64 @fwrite(ptr noundef readonly %.097, i64 noundef %i.ap, i64 noundef 1, ptr noundef %i.ak)
  %.not.i = icmp eq i64 %i.aq, 0
  br i1 %.not.i, label %.noexc.i.i, label %_ZN4Ptex4v2_414PtexWriterBase19writeConstFaceBlockEP8_IO_FILEPKvRNS0_14FaceDataHeaderE.exit

.noexc.i.i:                                       ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  store ptr %i.ac, ptr %6, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 35, ptr %i.a, align 8, !tbaa !66
  %i.ar = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc77 unwind label %bb.j   ; 3 uses

.noexc77:                                         ; preds = %.noexc.i.i
  store ptr %i.ar, ptr %6, align 8, !tbaa !49
  %i.as = load i64, ptr %i.a, align 8, !tbaa !66  ; 3 uses
  store i64 %i.as, ptr %i.ac, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(35) %i.ar, ptr noundef nonnull align 1 dereferenceable(35) @.str.11, i64 35, i1 false)
  store i64 %i.as, ptr %i.ad, align 8, !tbaa !19
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.as
  store i8 0, ptr %i.at, align 1, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %.noexc77
  store i8 0, ptr %i.ab, align 8, !tbaa !43
  %i.au = load ptr, ptr %6, align 8, !tbaa !49    ; 2 uses
  %i.av = icmp eq ptr %i.au, %i.ac
  br i1 %i.av, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.h
  %i.aw = load i64, ptr %i.ac, align 8, !tbaa !50
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %i.au, i64 noundef %i.ax) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %_ZN4Ptex4v2_414PtexWriterBase19writeConstFaceBlockEP8_IO_FILEPKvRNS0_14FaceDataHeaderE.exit

bb.i:                                             ; preds = %.noexc77
  %i.ay = landingpad { ptr, i32 }
          cleanup
  %i.az = load ptr, ptr %6, align 8, !tbaa !49    ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.ac
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i: ; preds = %bb.i
  %i.bb = load i64, ptr %i.ac, align 8, !tbaa !50
  %i.bc = add i64 %i.bb, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bc) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %_ZNSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EED2Ev.exit76

bb.j:                                             ; preds = %.noexc.i.i, %bb.k, %.lr.ph
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EED2Ev.exit76

bb.k:                                             ; preds = %bb.e
  invoke void @_ZN4Ptex4v2_414PtexWriterBase14writeFaceBlockEP8_IO_FILEPKviNS0_3ResERNS0_14FaceDataHeaderE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %i.ak, ptr noundef %.097, i32 noundef %3, i16 %i.c, ptr noundef nonnull align 1 dereferenceable(4) %.16095)
          to label %_ZN4Ptex4v2_414PtexWriterBase19writeConstFaceBlockEP8_IO_FILEPKvRNS0_14FaceDataHeaderE.exit unwind label %bb.j

_ZN4Ptex4v2_414PtexWriterBase19writeConstFaceBlockEP8_IO_FILEPKvRNS0_14FaceDataHeaderE.exit: ; preds = %bb.f, %bb.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.k
  %i.be = load i32, ptr %.16095, align 1, !tbaa !111
  %i.bf = and i32 %i.be, 1073741823
  %i.bg = add i32 %i.bf, %.196                    ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.16095, i64 4 ; 2 uses
  %i.bi = getelementptr inbounds i8, ptr %.097, i64 %i.af ; 2 uses
  %.not68 = icmp eq ptr %i.bi, %i.ah
  br i1 %.not68, label %._crit_edge, label %.lr.ph, !llvm.loop !252

._crit_edge:                                      ; preds = %_ZN4Ptex4v2_414PtexWriterBase19writeConstFaceBlockEP8_IO_FILEPKvRNS0_14FaceDataHeaderE.exit, %bb.d
  %.160.lcssa = phi ptr [ %.059100, %bb.d ], [ %i.bh, %_ZN4Ptex4v2_414PtexWriterBase19writeConstFaceBlockEP8_IO_FILEPKvRNS0_14FaceDataHeaderE.exit ]
  %.1.lcssa = phi i32 [ %.058101, %bb.d ], [ %i.bg, %_ZN4Ptex4v2_414PtexWriterBase19writeConstFaceBlockEP8_IO_FILEPKvRNS0_14FaceDataHeaderE.exit ] ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %.057102, i64 %i.ag ; 2 uses
  %.not = icmp eq ptr %i.bj, %i.w
  br i1 %.not, label %._crit_edge104, label %bb.d, !llvm.loop !253

._crit_edge104:                                   ; preds = %._crit_edge, %_ZNSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %.058.lcssa = phi i32 [ 0, %_ZNSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.bk = load ptr, ptr %i.i, align 8, !tbaa !67
  %i.bl = shl i32 %11, 2
  %i.bm = invoke noundef i32 @_ZN4Ptex4v2_414PtexWriterBase13writeZipBlockEP8_IO_FILEPKvib(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %i.bk, ptr noundef nonnull %i.n, i32 noundef %i.bl, i1 noundef zeroext true)
          to label %bb.l unwind label %bb.p       ; 2 uses

bb.l:                                             ; preds = %._crit_edge104
  store i32 %i.bm, ptr %i.b, align 4, !tbaa !48
  %i.bn = invoke noundef i32 @_ZN4Ptex4v2_414PtexWriterBase10writeBlockEP8_IO_FILEPKvi(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef nonnull %7, i32 noundef 2)
          to label %bb.m unwind label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.bo = invoke noundef i32 @_ZN4Ptex4v2_414PtexWriterBase10writeBlockEP8_IO_FILEPKvi(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef nonnull %i.b, i32 noundef 4)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bp = load ptr, ptr %i.i, align 8, !tbaa !67
  %i.bq = sext i32 %.058.lcssa to i64
  %i.br = invoke noundef i32 @_ZN4Ptex4v2_414PtexWriterBase9copyBlockEP8_IO_FILES3_li(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef %i.bp, i64 noundef %i.bq, i32 noundef %i.bm)
          to label %bb.o unwind label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bs = load ptr, ptr %i.i, align 8, !tbaa !67
  %i.bt = invoke noundef i32 @_ZN4Ptex4v2_414PtexWriterBase9copyBlockEP8_IO_FILES3_li(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef %i.bs, i64 noundef 0, i32 noundef %.058.lcssa)
          to label %_ZNSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EED2Ev.exit unwind label %bb.q

_ZNSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EED2Ev.exit: ; preds = %bb.o
  %i.bu = add nsw i32 %i.bo, %i.bn
  %i.bv = add nsw i32 %i.bu, %i.br
  %i.bw = add nsw i32 %i.bv, %i.bt
  %i.bx = or i32 %i.bw, -1073741824
  store i32 %i.bx, ptr %5, align 1, !tbaa !111
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.m) #28
  br label %bb.s

bb.p:                                             ; preds = %._crit_edge104
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.pn = phi { ptr, i32 } [ %i.bz, %bb.q ], [ %i.by, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  br label %_ZNSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EED2Ev.exit76

_ZNSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EED2Ev.exit76: ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i, %bb.r
  %.pn69 = phi { ptr, i32 } [ %.pn, %bb.r ], [ %i.bd, %bb.j ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i ]
  call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.m) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  resume { ptr, i32 } %.pn69

bb.s:                                             ; preds = %_ZNSt6vectorIN4Ptex4v2_414FaceDataHeaderESaIS2_EED2Ev.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  ret void
}

; Function Attrs: nofree nounwind
declare void @rewind(ptr noundef captures(none)) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN4Ptex4v2_49PtexUtils10isConstantEPKviiii(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4Ptex4v2_414PtexWriterBase14writeReductionEP8_IO_FILEPKviNS0_3ResE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef %3, i16 %4) local_unnamed_addr #0 align 2 {
bb.a:
  %.sroa.3.0.extract.shift = lshr i16 %4, 8       ; 2 uses
  %narrow = add nuw nsw i16 %.sroa.3.0.extract.shift, 255
  %i.a = add i16 %4, 255
  %i.b = and i16 %i.a, 255
  %i.c = zext nneg i16 %i.b to i32                ; 2 uses
  %i.d = shl nuw i32 1, %i.c
  %i.e = and i16 %narrow, 255
  %i.f = zext nneg i16 %i.e to i32
  %i.g = shl i32 %i.d, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !79   ; 2 uses
  %i.j = mul nsw i32 %i.i, %i.g                   ; 4 uses
  %i.k = icmp sgt i32 %i.j, 16384                 ; 2 uses
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = zext nneg i32 %i.j to i64
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #27
  %.pre = load i32, ptr %i.h, align 8, !tbaa !79
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.n = sext i32 %i.j to i64
  %i.o = alloca i8, i64 %i.n, align 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = phi i32 [ %.pre, %bb.b ], [ %i.i, %bb.c ]
  %i.q = phi ptr [ %i.m, %bb.b ], [ %i.o, %bb.c ] ; 3 uses
  %i.r = shl i32 %i.p, %i.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !80
  %.sroa.014.0.extract.trunc.mask = and i16 %4, 255
  %i.u = zext nneg i16 %.sroa.014.0.extract.trunc.mask to i32
  %i.v = shl nuw i32 1, %i.u
  %i.w = zext nneg i16 %.sroa.3.0.extract.shift to i32
  %i.x = shl nuw i32 1, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.z = load i32, ptr %i.y, align 4, !tbaa !73
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.ab = load i16, ptr %i.aa, align 4, !tbaa !75
  %i.ac = zext i16 %i.ab to i32
  call void %i.t(ptr noundef %2, i32 noundef %3, i32 noundef %i.v, i32 noundef %i.x, ptr noundef nonnull %i.q, i32 noundef %i.r, i32 noundef %i.z, i32 noundef %i.ac)
  %i.ad = call noundef i32 @_ZN4Ptex4v2_414PtexWriterBase10writeBlockEP8_IO_FILEPKvi(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef nonnull %i.q, i32 noundef %i.j) ; 0 uses
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.q) #28
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZN4Ptex4v2_414PtexWriterBase18writeMetaDataBlockEP8_IO_FILERNS1_9MetaEntryE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !19
  %i.f = trunc i64 %i.e to i8
  %i.g = add i8 %i.f, 1
  store i8 %i.g, ptr %i.a, align 1, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.i = load i32, ptr %i.h, align 8, !tbaa !106
  %i.j = trunc i32 %i.i to i8
  store i8 %i.j, ptr %i.b, align 1, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !107
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !84
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = trunc i64 %i.q to i32
  store i32 %i.r, ptr %i.c, align 4, !tbaa !48
  %i.s = call noundef i32 @_ZN4Ptex4v2_414PtexWriterBase13writeZipBlockEP8_IO_FILEPKvib(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef nonnull %i.a, i32 noundef 1, i1 noundef zeroext false) ; 0 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !49
  %i.u = load i8, ptr %i.a, align 1, !tbaa !50
  %i.v = zext i8 %i.u to i32
  %i.w = call noundef i32 @_ZN4Ptex4v2_414PtexWriterBase13writeZipBlockEP8_IO_FILEPKvib(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef %i.t, i32 noundef %i.v, i1 noundef zeroext false) ; 0 uses
  %i.x = call noundef i32 @_ZN4Ptex4v2_414PtexWriterBase13writeZipBlockEP8_IO_FILEPKvib(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef nonnull %i.b, i32 noundef 1, i1 noundef zeroext false) ; 0 uses
  %i.y = call noundef i32 @_ZN4Ptex4v2_414PtexWriterBase13writeZipBlockEP8_IO_FILEPKvib(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef nonnull %i.c, i32 noundef 4, i1 noundef zeroext false) ; 0 uses
  %i.z = load ptr, ptr %i.k, align 8, !tbaa !84
  %i.aa = load i32, ptr %i.c, align 4, !tbaa !48
  %i.ab = call noundef i32 @_ZN4Ptex4v2_414PtexWriterBase13writeZipBlockEP8_IO_FILEPKvib(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, ptr noundef nonnull %i.z, i32 noundef %i.aa, i1 noundef zeroext false) ; 0 uses
  %i.ac = load i8, ptr %i.a, align 1, !tbaa !50
  %i.ad = zext i8 %i.ac to i32
  %i.ae = add nuw nsw i32 %i.ad, 6
  %i.af = load i32, ptr %i.c, align 4, !tbaa !48
  %i.ag = add i32 %i.ae, %i.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i32 %i.ag
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN4Ptex4v2_414PtexMainWriterC2EPKcPNS0_11PtexTextureENS0_8MeshTypeENS0_8DataTypeEiiib(ptr noundef nonnull align 8 dereferenceable(656) initializes((0, 9)) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i1 noundef zeroext %8) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = zext i1 %8 to i8
  tail call void @_ZN4Ptex4v2_414PtexWriterBaseC2EPKcNS0_8MeshTypeENS0_8DataTypeEiiib(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef %1, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i1 noundef zeroext true)
  store ptr getelementptr inbounds nuw inrange(-16, 136) (i8, ptr @_ZTVN4Ptex4v2_414PtexMainWriterE, i64 16), ptr %0, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 4 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 3 uses
  store i64 0, ptr %i.d, align 8, !tbaa !19
  store i8 0, ptr %i.c, align 8, !tbaa !50
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 4 uses
  store ptr %i.f, ptr %i.e, align 8, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i64 0, ptr %i.g, align 8, !tbaa !19
  store i8 0, ptr %i.f, align 8, !tbaa !50
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  store i8 0, ptr %i.h, align 8, !tbaa !133
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 497
  store i8 %i.a, ptr %i.i, align 1, !tbaa !134
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 600 ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 624 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 648 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.j, i8 0, i64 152, i1 false)
end_hunk_0
