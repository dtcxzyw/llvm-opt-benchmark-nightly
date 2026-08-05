begin_hunk_0
@.str.5 = private unnamed_addr constant [35 x i8] c"Image dimensions too large in file\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"Unsupported TGA file type\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Unsupported TGA format\00", align 1
@_ZTVN5video15CImageLoaderTGAE = constant { [8 x ptr], [5 x ptr] } { [8 x ptr] [ptr inttoptr (i64 8 to ptr), ptr null, ptr @_ZTIN5video15CImageLoaderTGAE, ptr @_ZNK5video15CImageLoaderTGA24isALoadableFileExtensionERKN4core6stringIcEE, ptr @_ZNK5video15CImageLoaderTGA21isALoadableFileFormatEPN2io9IReadFileE, ptr @_ZNK5video15CImageLoaderTGA9loadImageEPN2io9IReadFileE, ptr @_ZN5video15CImageLoaderTGAD1Ev, ptr @_ZN5video15CImageLoaderTGAD0Ev], [5 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr), ptr @_ZTIN5video15CImageLoaderTGAE, ptr @_ZTv0_n24_N5video15CImageLoaderTGAD1Ev, ptr @_ZTv0_n24_N5video15CImageLoaderTGAD0Ev] }, align 8
@_ZTTN5video15CImageLoaderTGAE = unnamed_addr constant [4 x ptr] [ptr getelementptr inbounds inrange(-24, 40) ({ [8 x ptr], [5 x ptr] }, ptr @_ZTVN5video15CImageLoaderTGAE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 40) ({ [8 x ptr], [5 x ptr] }, ptr @_ZTCN5video15CImageLoaderTGAE0_NS_12IImageLoaderE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [8 x ptr], [5 x ptr] }, ptr @_ZTCN5video15CImageLoaderTGAE0_NS_12IImageLoaderE, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [8 x ptr], [5 x ptr] }, ptr @_ZTVN5video15CImageLoaderTGAE, i32 0, i32 1, i32 3)], align 8
@_ZTCN5video15CImageLoaderTGAE0_NS_12IImageLoaderE = constant { [8 x ptr], [5 x ptr] } { [8 x ptr] [ptr inttoptr (i64 8 to ptr), ptr null, ptr @_ZTIN5video12IImageLoaderE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN5video12IImageLoaderD1Ev, ptr @_ZN5video12IImageLoaderD0Ev], [5 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr inttoptr (i64 -8 to ptr), ptr @_ZTIN5video12IImageLoaderE, ptr @_ZTv0_n24_N5video12IImageLoaderD1Ev, ptr @_ZTv0_n24_N5video12IImageLoaderD0Ev] }, align 8
@_ZTIN5video12IImageLoaderE = linkonce_odr constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN5video12IImageLoaderE, i32 0, i32 1, ptr @_ZTI17IReferenceCounted, i64 -6141 }, comdat, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN5video12IImageLoaderE = linkonce_odr constant [23 x i8] c"N5video12IImageLoaderE\00", comdat, align 1
@_ZTI17IReferenceCounted = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS17IReferenceCounted }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS17IReferenceCounted = linkonce_odr constant [20 x i8] c"17IReferenceCounted\00", comdat, align 1
@_ZTIN5video15CImageLoaderTGAE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5video15CImageLoaderTGAE, ptr @_ZTIN5video12IImageLoaderE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN5video15CImageLoaderTGAE = constant [26 x i8] c"N5video15CImageLoaderTGAE\00", align 1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5video15CImageLoaderTGA24isALoadableFileExtensionERKN4core6stringIcEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.core::string", align 8      ; 15 uses
  %3 = alloca %"class.core::string", align 8      ; 9 uses
  %4 = alloca %"class.core::string", align 8      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !tbaa !12
  store i8 0, ptr %i.a, align 8, !tbaa !15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 3, i8 noundef signext 0)
          to label %.lr.ph.i.preheader unwind label %bb.c

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !16
  store i8 116, ptr %i.c, align 1, !tbaa !15
  %i.d = load ptr, ptr %2, align 8, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 103, ptr %i.e, align 1, !tbaa !15
  %i.f = load ptr, ptr %2, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store i8 97, ptr %i.g, align 1, !tbaa !15
  %i.h = load i64, ptr %i.b, align 8, !tbaa !12
  %i.i = icmp ugt i64 %i.h, 3
  br i1 %i.i, label %bb.b, label %_ZN4core6stringIcEC2IcEEPKT_.exit15

bb.b:                                             ; preds = %.lr.ph.i.preheader
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 3, i8 noundef signext 0)
          to label %_ZN4core6stringIcEC2IcEEPKT_.exit15 unwind label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.k = load ptr, ptr %2, align 8, !tbaa !16     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.a
  br i1 %i.l, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.m = load i64, ptr %i.a, align 8, !tbaa !15
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.k, i64 noundef %i.n) #13
  br label %common.resume

common.resume:                                    ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZN4core6stringIcED2Ev.exit38
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %_ZN4core6stringIcED2Ev.exit38 ], [ %i.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.j, %bb.c ]
  resume { ptr, i32 } %common.resume.op

_ZN4core6stringIcEC2IcEEPKT_.exit15:              ; preds = %bb.b, %.lr.ph.i.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  store ptr %i.o, ptr %3, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !12
  store i8 0, ptr %i.o, align 8, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.q, ptr %4, align 8, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.r, align 8, !tbaa !12
  store i8 0, ptr %i.q, align 8, !tbaa !15
  %i.s = invoke noundef i32 @_ZN4core15isFileExtensionERKNS_6stringIcEES3_S3_S3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %_ZN4core6stringIcEC2IcEEPKT_.exit15
  %i.t = load ptr, ptr %4, align 8, !tbaa !16     ; 2 uses
  %i.u = icmp eq ptr %i.t, %i.q
  br i1 %i.u, label %_ZN4core6stringIcED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16: ; preds = %bb.d
  %i.v = load i64, ptr %i.q, align 8, !tbaa !15
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.w) #13
  br label %_ZN4core6stringIcED2Ev.exit

_ZN4core6stringIcED2Ev.exit:                      ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.x = load ptr, ptr %3, align 8, !tbaa !16     ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.o
  br i1 %i.y, label %_ZN4core6stringIcED2Ev.exit22, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19: ; preds = %_ZN4core6stringIcED2Ev.exit
  %i.z = load i64, ptr %i.o, align 8, !tbaa !15
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #13
  br label %_ZN4core6stringIcED2Ev.exit22

_ZN4core6stringIcED2Ev.exit22:                    ; preds = %_ZN4core6stringIcED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.ab = load ptr, ptr %2, align 8, !tbaa !16    ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.a
  br i1 %i.ac, label %_ZN4core6stringIcED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23: ; preds = %_ZN4core6stringIcED2Ev.exit22
  %i.ad = load i64, ptr %i.a, align 8, !tbaa !15
  %i.ae = add i64 %i.ad, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.ae) #13
  br label %_ZN4core6stringIcED2Ev.exit26

_ZN4core6stringIcED2Ev.exit26:                    ; preds = %_ZN4core6stringIcED2Ev.exit22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i23
  %i.af = icmp sgt i32 %i.s, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i1 %i.af

bb.e:                                             ; preds = %_ZN4core6stringIcEC2IcEEPKT_.exit15
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %4, align 8, !tbaa !16    ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.q
  br i1 %i.ai, label %.body13, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27: ; preds = %bb.e
  %i.aj = load i64, ptr %i.q, align 8, !tbaa !15
  %i.ak = add i64 %i.aj, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.ak) #13
  br label %.body13

.body13:                                          ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  %i.al = load ptr, ptr %3, align 8, !tbaa !16    ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.o
  br i1 %i.am, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31: ; preds = %.body13
  %i.an = load i64, ptr %i.o, align 8, !tbaa !15
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #13
  br label %.body

.body:                                            ; preds = %.body13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  %i.ap = load ptr, ptr %2, align 8, !tbaa !16    ; 2 uses
  %i.aq = icmp eq ptr %i.ap, %i.a
  br i1 %i.aq, label %_ZN4core6stringIcED2Ev.exit38, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35: ; preds = %.body
  %i.ar = load i64, ptr %i.a, align 8, !tbaa !15
  %i.as = add i64 %i.ar, 1
  call void @_ZdlPvm(ptr noundef %i.ap, i64 noundef %i.as) #13
  br label %_ZN4core6stringIcED2Ev.exit38

_ZN4core6stringIcED2Ev.exit38:                    ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %common.resume
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZNK5video15CImageLoaderTGA19loadCompressedImageEPN2io9IReadFileERKNS_10STGAHeaderE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 1 captures(none) dereferenceable(18) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca i8, align 1                       ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load i8, ptr %i.b, align 1, !tbaa !17
  %.fr = freeze i8 %i.c                           ; 2 uses
  %i.d = lshr i8 %.fr, 3                          ; 4 uses
  %i.e = zext nneg i8 %i.d to i32                 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 14
  %i.g = load i16, ptr %i.f, align 1, !tbaa !20
  %i.h = zext i16 %i.g to i32
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.j = load i16, ptr %i.i, align 1, !tbaa !21
  %i.k = zext i16 %i.j to i32
  %i.l = mul nuw nsw i32 %i.e, %i.h
  %i.m = mul i32 %i.l, %i.k                       ; 6 uses
  %i.n = zext i32 %i.m to i64
  %i.o = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.n) #14 ; 20 uses
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %.loopexit69, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.p = zext nneg i8 %i.d to i64                 ; 2 uses
  %.not76 = icmp eq i8 %i.d, 0
  br i1 %.not76, label %.lr.ph.split, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count = zext nneg i8 %i.d to i64     ; 6 uses
  %i.q = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %min.iters.check = icmp ult i8 %.fr, -96
  %3 = trunc nuw nsw i64 %i.q to i32
  %i.r = trunc nuw nsw i64 %i.q to i32
  %i.s = icmp ugt i64 %i.q, 4294967295
  %n.vec = and i64 %wide.trip.count, 24           ; 3 uses
  %i.t = icmp eq i64 %n.vec, 16
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %.loopexit68.us
  %.05174.us = phi i32 [ %.5.us, %.loopexit68.us ], [ 0, %.lr.ph.split.us.preheader ] ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 0, ptr %i.a, align 1, !tbaa !15
  %i.u = load ptr, ptr %1, align 8, !tbaa !22
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = call noundef i64 %i.v(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  %i.x = load i8, ptr %i.a, align 1, !tbaa !15    ; 3 uses
  %i.y = icmp sgt i8 %i.x, -1
  br i1 %i.y, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.z = add i8 %i.x, -127
  store i8 %i.z, ptr %i.a, align 1, !tbaa !15
  %i.aa = add i32 %.05174.us, %i.e                ; 3 uses
  %i.ab = icmp ult i32 %i.aa, %i.m
  br i1 %i.ab, label %bb.c, label %.thread65

bb.c:                                             ; preds = %bb.b
  %i.ac = zext i32 %.05174.us to i64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ac
  %i.ae = load ptr, ptr %1, align 8, !tbaa !22
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call noundef i64 %i.af(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.ad, i64 noundef %i.p) ; 0 uses
  %i.ah = load i8, ptr %i.a, align 1, !tbaa !15   ; 2 uses
  %i.ai = zext i8 %i.ah to i32
  %i.aj = icmp ugt i8 %i.ah, 1
  br i1 %i.aj, label %.lr.ph73.us.preheader, label %.loopexit68.us

.lr.ph73.us.preheader:                            ; preds = %bb.c
  %i.ak = zext i32 %.05174.us to i64
  %i.al = xor i32 %.05174.us, -1
  %i.am = icmp ult i32 %i.al, %i.r
  %i.an = or i1 %i.am, %i.s
  %i.ao = zext i32 %.05174.us to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ao ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ar = add i32 %.05174.us, 8
  %i.as = zext i32 %i.ar to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.as ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.av = add i32 %.05174.us, 16
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  br label %.lr.ph73.us

bb.d:                                             ; preds = %.lr.ph.split.us
  %i.az = add nuw i8 %i.x, 1                      ; 2 uses
  store i8 %i.az, ptr %i.a, align 1, !tbaa !15
  %i.ba = zext i8 %i.az to i32
  %i.bb = mul nuw nsw i32 %i.ba, %i.e             ; 2 uses
  %i.bc = add i32 %i.bb, %.05174.us               ; 2 uses
  %.not59.not.us = icmp ugt i32 %i.bc, %i.m
  br i1 %.not59.not.us, label %.thread65, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bd = zext i32 %.05174.us to i64
  %i.be = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.bd
  %i.bf = zext nneg i32 %i.bb to i64
  %i.bg = load ptr, ptr %1, align 8, !tbaa !22
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = call noundef i64 %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.be, i64 noundef %i.bf) ; 0 uses
  br label %.loopexit68.us

.loopexit68.us:                                   ; preds = %..loopexit_crit_edge.us.us, %bb.c, %bb.e
  %.5.us = phi i32 [ %i.bc, %bb.e ], [ %i.aa, %bb.c ], [ %i.bl, %..loopexit_crit_edge.us.us ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.bj = icmp ult i32 %.5.us, %i.m
  br i1 %i.bj, label %.lr.ph.split.us, label %.loopexit69

.lr.ph73.us:                                      ; preds = %.lr.ph73.us.preheader, %..loopexit_crit_edge.us.us
  %.05072.us.us = phi i32 [ %i.du, %..loopexit_crit_edge.us.us ], [ 1, %.lr.ph73.us.preheader ]
  %.271.us.us = phi i32 [ %i.bl, %..loopexit_crit_edge.us.us ], [ %i.aa, %.lr.ph73.us.preheader ] ; 11 uses
  %i.bk = zext i32 %.271.us.us to i64
  %i.bl = add i32 %.271.us.us, %i.e               ; 3 uses
  %.not.us.us = icmp ugt i32 %i.bl, %i.m
  br i1 %.not.us.us, label %..loopexit_crit_edge.us.us, label %.preheader.us.us.preheader

.preheader.us.us.preheader:                       ; preds = %.lr.ph73.us
  br i1 %min.iters.check, label %.preheader.us.us.preheader97, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader.us.us.preheader
  %i.bm = xor i32 %.271.us.us, -1
  %i.bn = icmp ult i32 %i.bm, %3
  %i.bo = or i1 %i.bn, %i.an
  %i.bp = sub nsw i64 %i.ak, %i.bk
  %diff.check = icmp ugt i64 %i.bp, -8
  %or.cond = select i1 %i.bo, i1 true, i1 %diff.check
  br i1 %or.cond, label %.preheader.us.us.preheader97, label %vector.body

vector.body:                                      ; preds = %vector.scevcheck
  %wide.load = load <4 x i8>, ptr %i.ap, align 1, !tbaa !15
  %wide.load96 = load <4 x i8>, ptr %i.aq, align 1, !tbaa !15
  %i.bq = zext i32 %.271.us.us to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.bq ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store <4 x i8> %wide.load, ptr %i.br, align 1, !tbaa !15
  store <4 x i8> %wide.load96, ptr %i.bs, align 1, !tbaa !15
  %wide.load.1 = load <4 x i8>, ptr %i.at, align 1, !tbaa !15
  %wide.load96.1 = load <4 x i8>, ptr %i.au, align 1, !tbaa !15
  %i.bt = add i32 %.271.us.us, 8
  %i.bu = zext i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.bu ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  store <4 x i8> %wide.load.1, ptr %i.bv, align 1, !tbaa !15
  store <4 x i8> %wide.load96.1, ptr %i.bw, align 1, !tbaa !15
  br i1 %i.t, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body
  %wide.load.2 = load <4 x i8>, ptr %i.ax, align 1, !tbaa !15
  %wide.load96.2 = load <4 x i8>, ptr %i.ay, align 1, !tbaa !15
  %i.bx = add i32 %.271.us.us, 16
  %i.by = zext i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.by ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  store <4 x i8> %wide.load.2, ptr %i.bz, align 1, !tbaa !15
  store <4 x i8> %wide.load96.2, ptr %i.ca, align 1, !tbaa !15
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.us.us, label %.preheader.us.us.preheader97

.preheader.us.us.preheader97:                     ; preds = %vector.scevcheck, %.preheader.us.us.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %.preheader.us.us.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %.preheader.us.us.prol.loopexit, label %.preheader.us.us.prol

.preheader.us.us.prol:                            ; preds = %.preheader.us.us.preheader97, %.preheader.us.us.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.preheader.us.us.prol ], [ %indvars.iv.ph, %.preheader.us.us.preheader97 ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader.us.us.prol ], [ 0, %.preheader.us.us.preheader97 ]
  %i.cb = trunc nuw nsw i64 %indvars.iv.prol to i32 ; 2 uses
  %i.cc = add i32 %.05174.us, %i.cb
  %i.cd = zext i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !15
  %i.cg = add i32 %.271.us.us, %i.cb
  %i.ch = zext i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ch
  store i8 %i.cf, ptr %i.ci, align 1, !tbaa !15
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.us.us.prol.loopexit, label %.preheader.us.us.prol, !llvm.loop !24

.preheader.us.us.prol.loopexit:                   ; preds = %.preheader.us.us.prol, %.preheader.us.us.preheader97
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.preheader.us.us.preheader97 ], [ %indvars.iv.next.prol, %.preheader.us.us.prol ]
  %i.cj = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.ck = icmp ugt i64 %i.cj, -4
  br i1 %i.ck, label %..loopexit_crit_edge.us.us, label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.prol.loopexit, %.preheader.us.us
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader.us.us ], [ %indvars.iv.unr, %.preheader.us.us.prol.loopexit ] ; 5 uses
  %i.cl = trunc nuw nsw i64 %indvars.iv to i32    ; 2 uses
  %i.cm = add i32 %.05174.us, %i.cl
  %i.cn = zext i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !15
  %i.cq = add i32 %.271.us.us, %i.cl
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.cr
  store i8 %i.cp, ptr %i.cs, align 1, !tbaa !15
  %i.ct = trunc i64 %indvars.iv to i32
  %i.cu = add i32 %i.ct, 1                        ; 2 uses
  %i.cv = add i32 %.05174.us, %i.cu
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !15
  %i.cz = add i32 %.271.us.us, %i.cu
  %i.da = zext i32 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.da
  store i8 %i.cy, ptr %i.db, align 1, !tbaa !15
  %i.dc = trunc i64 %indvars.iv to i32
  %i.dd = add i32 %i.dc, 2                        ; 2 uses
  %i.de = add i32 %.05174.us, %i.dd
  %i.df = zext i32 %i.de to i64
  %i.dg = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !15
  %i.di = add i32 %.271.us.us, %i.dd
  %i.dj = zext i32 %i.di to i64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.dj
  store i8 %i.dh, ptr %i.dk, align 1, !tbaa !15
  %i.dl = trunc i64 %indvars.iv to i32
  %i.dm = add i32 %i.dl, 3                        ; 2 uses
  %i.dn = add i32 %.05174.us, %i.dm
  %i.do = zext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.do
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !15
  %i.dr = add i32 %.271.us.us, %i.dm
  %i.ds = zext i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ds
  store i8 %i.dq, ptr %i.dt, align 1, !tbaa !15
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %..loopexit_crit_edge.us.us, label %.preheader.us.us, !llvm.loop !26

..loopexit_crit_edge.us.us:                       ; preds = %.preheader.us.us.prol.loopexit, %.preheader.us.us, %middle.block, %.lr.ph73.us
  %i.du = add nuw nsw i32 %.05072.us.us, 1        ; 2 uses
  %exitcond81.not = icmp eq i32 %i.du, %i.ai
  br i1 %exitcond81.not, label %.loopexit68.us, label %.lr.ph73.us, !llvm.loop !29

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.split
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i8 0, ptr %i.a, align 1, !tbaa !15
  %i.dv = load ptr, ptr %1, align 8, !tbaa !22
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = call noundef i64 %i.dw(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  %i.dy = load i8, ptr %i.a, align 1, !tbaa !15   ; 2 uses
  %i.dz = icmp sgt i8 %i.dy, -1                   ; 2 uses
  %. = select i1 %i.dz, i8 1, i8 -127
  %.94 = select i1 %i.dz, i64 0, i64 %i.p
  %i.ea = add i8 %i.dy, %.
  store i8 %i.ea, ptr %i.a, align 1, !tbaa !15
  %i.eb = load ptr, ptr %1, align 8, !tbaa !22
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = call noundef i64 %i.ec(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.o, i64 noundef %.94) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.lr.ph.split

.thread65:                                        ; preds = %bb.b, %bb.d
  %.str.3.sink = phi ptr [ @.str.2, %bb.d ], [ @.str.3, %bb.b ]
  %i.ee = load ptr, ptr %1, align 8, !tbaa !22
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 32
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = call noundef nonnull align 8 dereferenceable(32) ptr %i.eg(ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @_ZN2os7Printer3logEPKcRKN4core6stringIcEE10ELOG_LEVEL(ptr noundef nonnull %.str.3.sink, ptr noundef nonnull align 8 dereferenceable(32) %i.eh, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %.loopexit69

.loopexit69:                                      ; preds = %.loopexit68.us, %bb.a, %.thread65
  ret ptr %i.o
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #2

declare void @_ZN2os7Printer3logEPKcRKN4core6stringIcEE10ELOG_LEVEL(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5video15CImageLoaderTGA21isALoadableFileFormatEPN2io9IReadFileE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.video::STGAFooter", align 1 ; 5 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(26) %2, i8 0, i64 26, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.e = add i64 %i.d, -26
  %i.f = load ptr, ptr %1, align 8, !tbaa !22
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %i.e, i1 noundef zeroext false) ; 0 uses
  %i.j = load ptr, ptr %1, align 8, !tbaa !22
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call noundef i64 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %2, i64 noundef 26) ; 0 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = load i128, ptr %i.m, align 1
  %i.o = xor i128 %i.n, 92112832459569737033898702016523620948
  %i.p = getelementptr i8, ptr %i.m, i64 16
  %i.q = load i16, ptr %i.p, align 1
  %i.r = zext i16 %i.q to i128
  %i.s = xor i128 %i.r, 46
  %i.t = or i128 %i.o, %i.s
  %i.u = icmp ne i128 %i.t, 0
  %i.v = zext i1 %i.u to i32
  %.not6 = icmp eq i32 %i.v, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %.not6, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK5video15CImageLoaderTGA9loadImageEPN2io9IReadFileE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.video::STGAHeader", align 1 ; 19 uses
end_hunk_0
