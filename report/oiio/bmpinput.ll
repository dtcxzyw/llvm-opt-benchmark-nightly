inline.NumInlined: 3225
inline.NumDeleted: 991
begin_hunk_0_@_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJiiiNS0_8TypeDescEEEEvPKcDpRKT_:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.c
  %i.v = load i64, ptr %i.t, align 8, !tbaa !65
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  resume { ptr, i32 } %i.r
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_111calc_shiftsEjRjS1_(i32 noundef %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i32 %0, 0
  br i1 %i.a, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = and i32 %0, 1
  %.not19 = icmp eq i32 %i.b, 0
  br i1 %.not19, label %.lr.ph, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.preheader
  store i32 0, ptr %2, align 4, !tbaa !3
  br label %.lr.ph27.preheader

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %2, align 4, !tbaa !3
  br label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.021 = phi i32 [ %i.c, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %.01420 = phi i32 [ %i.d, %.lr.ph ], [ %0, %.preheader ] ; 3 uses
  %i.c = add nuw nsw i32 %.021, 1                 ; 2 uses
  %i.d = lshr exact i32 %.01420, 1                ; 2 uses
  %i.e = icmp samesign ult i32 %.021, 31
  %i.f = and i32 %.01420, 2
  %.not = icmp eq i32 %i.f, 0
  %or.cond = select i1 %i.e, i1 %.not, i1 false
  br i1 %or.cond, label %.lr.ph, label %._crit_edge, !llvm.loop !112

._crit_edge:                                      ; preds = %.lr.ph
  %i.g = and i32 %.01420, 2
  %i.h = icmp eq i32 %i.g, 0
  store i32 %i.c, ptr %2, align 4, !tbaa !3
  br i1 %i.h, label %.loopexit, label %.lr.ph27.preheader

.lr.ph27.preheader:                               ; preds = %._crit_edge.thread, %._crit_edge
  %.11524.ph = phi i32 [ %i.d, %._crit_edge ], [ %0, %._crit_edge.thread ]
  br label %.lr.ph27

.lr.ph27:                                         ; preds = %.lr.ph27.preheader, %.lr.ph27
  %.125 = phi i32 [ %i.i, %.lr.ph27 ], [ 0, %.lr.ph27.preheader ] ; 2 uses
  %.11524 = phi i32 [ %i.j, %.lr.ph27 ], [ %.11524.ph, %.lr.ph27.preheader ] ; 2 uses
  %i.i = add nuw nsw i32 %.125, 1                 ; 2 uses
  %i.j = lshr i32 %.11524, 1
  %i.k = icmp samesign ugt i32 %.125, 30
  %i.l = and i32 %.11524, 2
  %.not17 = icmp eq i32 %i.l, 0
  %or.cond18 = select i1 %i.k, i1 true, i1 %.not17
  br i1 %or.cond18, label %.loopexit, label %.lr.ph27, !llvm.loop !113

.loopexit:                                        ; preds = %.lr.ph27, %._crit_edge, %bb.b
  %storemerge = phi i32 [ 0, %bb.b ], [ 0, %._crit_edge ], [ %i.i, %.lr.ph27 ]
  store i32 %storemerge, ptr %1, align 4, !tbaa !3
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18BmpInput16read_color_tableEv(ptr noundef nonnull align 8 dereferenceable(472) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.e = load i32, ptr %i.d, align 4, !tbaa !97   ; 4 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 226
  %i.h = load i16, ptr %i.g, align 2, !tbaa !86
  %i.i = zext nneg i16 %i.h to i32
  %i.j = shl nuw i32 1, %i.i                      ; 2 uses
  %i.k = icmp sgt i32 %i.e, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.23)
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %.not = icmp eq i32 %i.e, 0
  %i.l = select i1 %.not, i32 %i.j, i32 %i.e      ; 2 uses
  store i32 %i.l, ptr %i.a, align 4, !tbaa !3
  %i.m = load i32, ptr %i.c, align 4, !tbaa !96
  %i.n = icmp eq i32 %i.m, 12
  %spec.store.select = select i1 %i.n, i64 3, i64 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 3 uses
  %i.p = zext nneg i32 %i.l to i64                ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !84   ; 2 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !62   ; 2 uses
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = ashr exact i64 %i.v, 2                   ; 3 uses
  %i.x = icmp ult i64 %i.w, %i.p
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = sub nuw nsw i64 %i.p, %i.w
  tail call void @_ZNSt6vectorIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef %i.y)
  br label %_ZNSt6vectorIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE6resizeEm.exit

bb.f:                                             ; preds = %bb.d
  %i.z = icmp ugt i64 %i.w, %i.p
  br i1 %i.z, label %bb.g, label %_ZNSt6vectorIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE6resizeEm.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.p ; 2 uses
  %.not.i.i = icmp eq ptr %i.r, %i.aa
  br i1 %.not.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE6resizeEm.exit, label %_ZSt8_DestroyIPN11OpenImageIO4v3_17bmp_pvt11color_tableES3_EvT_S5_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_17bmp_pvt11color_tableES3_EvT_S5_RSaIT0_E.exit.i.i: ; preds = %bb.g
  store ptr %i.aa, ptr %i.q, align 8, !tbaa !84
  br label %_ZNSt6vectorIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE6resizeEm.exit

_ZNSt6vectorIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE6resizeEm.exit: ; preds = %bb.e, %bb.f, %bb.g, %_ZSt8_DestroyIPN11OpenImageIO4v3_17bmp_pvt11color_tableES3_EvT_S5_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  br label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE6resizeEm.exit, %bb.k
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.k ], [ 0, %_ZNSt6vectorIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE6resizeEm.exit ] ; 3 uses
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !62
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv
  %i.ad = tail call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.ac, i64 noundef %spec.store.select, i64 noundef 1) ; 2 uses
  br i1 %i.ad, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.lr.ph
  %i.ae = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ae, ptr %i.b, align 4, !tbaa !3
  %i.af = tail call noundef ptr @_ZN11OpenImageIO4v3_110ImageInput7ioproxyEv(ptr noundef nonnull align 8 dereferenceable(472) %0) ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call noundef i64 %i.ai(ptr noundef nonnull align 8 dereferenceable(88) %i.af), !inline_history !114
  %i.ak = tail call noundef ptr @_ZN11OpenImageIO4v3_110ImageInput7ioproxyEv(ptr noundef nonnull align 8 dereferenceable(472) %0) ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !7
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 88
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef i64 %i.an(ptr noundef nonnull align 8 dereferenceable(88) %i.ak), !inline_history !114
  %i.ap = icmp eq i64 %i.aj, %i.ao
  br i1 %i.ap, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJiiEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.24, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %.critedge

bb.j:                                             ; preds = %bb.h
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.25)
  br label %.critedge

bb.k:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.p
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !115

.critedge:                                        ; preds = %bb.k, %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.l

bb.l:                                             ; preds = %.critedge, %bb.c
  %.2 = phi i1 [ false, %bb.c ], [ %i.ad, %.critedge ]
  ret i1 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18BmpInput23color_table_is_all_grayEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(472) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !84   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !62   ; 3 uses
  %.not1720 = icmp eq ptr %i.c, %i.d
  br i1 %.not1720, label %.critedge19, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  br label %.lr.ph

1:                                                ; preds = %.critedge
  %2 = add nuw i64 %.01421, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %2, %i.h
  br i1 %exitcond.not, label %.critedge19, label %.lr.ph, !llvm.loop !116

.lr.ph:                                           ; preds = %.lr.ph.preheader, %1
  %.01421 = phi i64 [ %2, %1 ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.01421 ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !117   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !119
  %.not.a = icmp eq i8 %i.j, %i.l
  br i1 %.not.a, label %.critedge, label %.critedge19

.critedge:                                        ; preds = %.lr.ph
  %3 = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %4 = load i8, ptr %3, align 1, !tbaa !120
  %.not16 = icmp eq i8 %i.j, %4
  br i1 %.not16, label %1, label %.critedge19

.critedge19:                                      ; preds = %.critedge, %.lr.ph, %1, %bb.a
  %.not17.lcssa = phi i1 [ true, %bb.a ], [ true, %1 ], [ false, %.lr.ph ], [ false, %.critedge ]
  ret i1 %.not17.lcssa
}

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_19ImageSpec21default_channel_namesEv(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJsEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v12::detail::format_arg_store.106", align 16 ; 4 uses
  %4 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28, !noalias !121
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28, !noalias !121
  %i.b = load i16, ptr %2, align 2, !tbaa !124, !noalias !121
  %i.c = sext i16 %i.b to i32
  %.sroa.03.0.insert.ext.i = zext i32 %i.c to i128
  store i128 %.sroa.03.0.insert.ext.i, ptr %3, align 16, !noalias !121
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, ptr nonnull %1, i64 %i.a, i64 1, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28, !noalias !121
  %i.d = load ptr, ptr %5, align 8, !tbaa !64
  store ptr %i.d, ptr %4, align 8, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !83
  store i64 %i.g, ptr %i.e, align 8, !tbaa !82
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %5, align 8, !tbaa !64     ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8, !tbaa !65
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %5, align 8, !tbaa !64     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  %i.q = load i64, ptr %i.o, align 8, !tbaa !65
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18BmpInput14read_rle_imageEv(ptr noundef nonnull align 8 dereferenceable(472) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %2 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 11 uses
  %i.c = alloca [2 x i8], align 1                 ; 8 uses
  %i.d = alloca [2 x i8], align 1                 ; 5 uses
  %i.e = alloca [256 x i8], align 16              ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.g = load i32, ptr %i.f, align 4, !tbaa !98
  %i.h = icmp eq i32 %i.g, 2                      ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr @.str.19, ptr %1, align 8, !tbaa !80
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 11, ptr %i.j, align 8, !tbaa !82
  %.str.20..str.21 = select i1 %i.h, ptr @.str.20, ptr @.str.21
  store ptr %.str.20..str.21, ptr %2, align 8, !tbaa !80
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 4, ptr %i.k, align 8, !tbaa !82
  call void @_ZN11OpenImageIO4v3_19ImageSpec9attributeENS0_17basic_string_viewIcSt11char_traitsIcEEES5_(ptr noundef nonnull align 8 dereferenceable(160) %i.i, ptr noundef nonnull dead_on_return %1, ptr noundef nonnull dead_on_return %2)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 7 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !60   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !85
  %.not.i.i = icmp eq ptr %i.o, %i.m
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE5clearEv.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.a
  store ptr %i.m, ptr %i.n, align 8, !tbaa !85
  br label %_ZNSt6vectorIhSaIhEE5clearEv.exit

_ZNSt6vectorIhSaIhEE5clearEv.exit:                ; preds = %bb.a, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i
  %i.p = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec12image_pixelsEv(ptr noundef nonnull align 8 dereferenceable(160) %i.i) #28
  call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 noundef %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 0, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %_ZNSt6vectorIhSaIhEE5clearEv.exit
  %.ph = phi i32 [ 0, %_ZNSt6vectorIhSaIhEE5clearEv.exit ], [ %.ph.be, %.outer.backedge ] ; 8 uses
  %.ph78 = phi i32 [ 0, %_ZNSt6vectorIhSaIhEE5clearEv.exit ], [ %.ph78.be, %.outer.backedge ]
  %.ph79 = phi i32 [ 0, %_ZNSt6vectorIhSaIhEE5clearEv.exit ], [ %.ph79.be, %.outer.backedge ]
  %.ph80 = phi i32 [ 0, %_ZNSt6vectorIhSaIhEE5clearEv.exit ], [ %.ph80.be, %.outer.backedge ]
  %.ph81 = phi i32 [ 0, %_ZNSt6vectorIhSaIhEE5clearEv.exit ], [ %.ph81.be, %.outer.backedge ]
  br label %bb.b

bb.b:                                             ; preds = %.outer, %._crit_edge
  %i.u = phi i32 [ %i.bo, %._crit_edge ], [ %.ph78, %.outer ] ; 8 uses
  %i.v = phi i32 [ %i.bp, %._crit_edge ], [ %.ph79, %.outer ] ; 11 uses
  %i.w = phi i32 [ %i.bq, %._crit_edge ], [ %.ph80, %.outer ] ; 6 uses
  %i.x = phi i32 [ %i.br, %._crit_edge ], [ %.ph81, %.outer ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %i.y = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.c, i64 noundef 2, i64 noundef 1) ; 3 uses
  br i1 %i.y, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.z = load i32, ptr %i.q, align 8, !tbaa !125
  %.not = icmp slt i32 %i.x, %i.z
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJiiEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.22, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %.thread

bb.e:                                             ; preds = %bb.c
  %i.aa = load i8, ptr %i.c, align 1, !tbaa !65   ; 4 uses
  %i.ab = load i8, ptr %i.r, align 1, !tbaa !65   ; 10 uses
  %i.ac = zext i8 %i.ab to i32                    ; 2 uses
  %i.ad = icmp eq i8 %i.aa, 0                     ; 4 uses
  %i.ae = icmp eq i8 %i.ab, 0                     ; 2 uses
  %or.cond = select i1 %i.ad, i1 %i.ae, i1 false
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.b, align 4, !tbaa !3
  %i.af = add nsw i32 %i.x, 1                     ; 5 uses
  store i32 %i.af, ptr %i.a, align 4, !tbaa !3
  br label %.loopexit

bb.g:                                             ; preds = %bb.e
  %i.ag = icmp eq i8 %i.ab, 1
  %or.cond3 = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %or.cond3, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = icmp eq i8 %i.ab, 2
  %or.cond5 = select i1 %i.ad, i1 %i.ah, i1 false
  br i1 %or.cond5, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  %i.ai = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.d, i64 noundef 2, i64 noundef 1)
  %i.aj = load i8, ptr %i.d, align 1, !tbaa !65
  %i.ak = zext i8 %i.aj to i32
  %i.al = add nsw i32 %i.w, %i.ak                 ; 2 uses
  store i32 %i.al, ptr %i.b, align 4, !tbaa !3
  %i.am = load i8, ptr %i.t, align 1, !tbaa !65
  %i.an = zext i8 %i.am to i32
  %i.ao = add nsw i32 %.ph, %i.an                 ; 5 uses
  store i32 %i.ao, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br i1 %i.ai, label %.outer.backedge, label %.loopexit59

bb.j:                                             ; preds = %bb.h
  br i1 %i.ad, label %bb.m, label %.preheader

.preheader:                                       ; preds = %bb.j
  %i.ap = zext i8 %i.aa to i32                    ; 3 uses
  %i.aq = and i8 %i.ab, 15
  %i.ar = lshr i8 %i.ab, 4
  br i1 %i.h, label %.preheader.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.preheader
  %xtraiter = and i32 %i.ap, 1
  %i.as = icmp eq i8 %i.aa, 1
  br i1 %i.as, label %.preheader.split.epil.preheader, label %.preheader.split.preheader.new

.preheader.split.preheader.new:                   ; preds = %.preheader.split.preheader
  %unroll_iter = and i32 %i.ap, 254
  br label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bb.l
  %i.at = phi i32 [ %i.bi, %bb.l ], [ %i.w, %.preheader ] ; 3 uses
  %i.au = phi i32 [ %i.bf, %bb.l ], [ %i.v, %.preheader ]
  %i.av = phi i32 [ %i.bg, %bb.l ], [ %i.x, %.preheader ]
  %.04160.us = phi i32 [ %i.bh, %bb.l ], [ 0, %.preheader ] ; 2 uses
  %i.aw = load i32, ptr %i.s, align 4, !tbaa !91  ; 2 uses
  %i.ax = icmp slt i32 %i.at, %i.aw
  br i1 %i.ax, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.preheader.split.us
  %i.ay = and i32 %.04160.us, 1
  %.not52.us = icmp eq i32 %i.ay, 0
  %i.az = select i1 %.not52.us, i8 %i.ar, i8 %i.aq
  %i.ba = mul nsw i32 %i.u, %i.aw
  %i.bb = add nsw i32 %i.ba, %i.at
  %i.bc = sext i32 %i.bb to i64
  %i.bd = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc
  store i8 %i.az, ptr %i.be, align 1, !tbaa !65
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.preheader.split.us
  %i.bf = phi i32 [ %i.u, %bb.k ], [ %i.au, %.preheader.split.us ] ; 2 uses
  %i.bg = phi i32 [ %i.u, %bb.k ], [ %i.av, %.preheader.split.us ] ; 2 uses
  %i.bh = add nuw nsw i32 %.04160.us, 1           ; 2 uses
  %i.bi = add nsw i32 %i.at, 1                    ; 3 uses
  store i32 %i.bi, ptr %i.b, align 4, !tbaa !3
  %exitcond65.not = icmp eq i32 %i.bh, %i.ap
  br i1 %exitcond65.not, label %.loopexit, label %.preheader.split.us, !llvm.loop !126

bb.m:                                             ; preds = %bb.j
  %i.bj = add nuw nsw i32 %i.ac, 1
  %i.bk = lshr i32 %i.bj, 1
  %.in.in = select i1 %i.h, i32 %i.bk, i32 %i.ac
  %.in = add nuw nsw i32 %.in.in, 1
  %i.bl = and i32 %.in, 510
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.e, i64 noundef %i.bm, i64 noundef 1)
  br i1 %i.ae, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.m
  %wide.trip.count = zext i8 %i.ab to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.t, %bb.m
  %i.bo = phi i32 [ %i.u, %bb.m ], [ %i.cm, %bb.t ]
  %i.bp = phi i32 [ %i.v, %bb.m ], [ %i.cn, %bb.t ]
  %i.bq = phi i32 [ %i.w, %bb.m ], [ %i.cp, %bb.t ]
  %i.br = phi i32 [ %i.x, %bb.m ], [ %i.co, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br i1 %i.bn, label %bb.b, label %.loopexit59

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.t
  %i.bs = phi i32 [ %i.w, %.lr.ph.preheader ], [ %i.cp, %bb.t ] ; 3 uses
  %i.bt = phi i32 [ %i.u, %.lr.ph.preheader ], [ %i.cm, %bb.t ]
  %i.bu = phi i32 [ %i.v, %.lr.ph.preheader ], [ %i.cn, %bb.t ]
  %i.bv = phi i32 [ %i.x, %.lr.ph.preheader ], [ %i.co, %bb.t ]
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.t ] ; 4 uses
  br i1 %i.h, label %bb.n, label %bb.q

bb.n:                                             ; preds = %.lr.ph
  %i.bw = and i64 %indvars.iv, 1
  %.not53 = icmp eq i64 %i.bw, 0
  %i.bx = lshr i64 %indvars.iv, 1
  %i.by = and i64 %i.bx, 2147483647
  %i.bz = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !65  ; 2 uses
  br i1 %.not53, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cb = and i8 %i.ca, 15
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.cc = lshr i8 %i.ca, 4
  br label %bb.r

bb.q:                                             ; preds = %.lr.ph
  %i.cd = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !65
  br label %bb.r

bb.r:                                             ; preds = %bb.o, %bb.p, %bb.q
  %.044.in = phi i8 [ %i.ce, %bb.q ], [ %i.cb, %bb.o ], [ %i.cc, %bb.p ]
  %i.cf = load i32, ptr %i.s, align 4, !tbaa !91  ; 2 uses
  %i.cg = icmp slt i32 %i.bs, %i.cf
  br i1 %i.cg, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ch = mul nsw i32 %.ph, %i.cf
  %i.ci = add nsw i32 %i.ch, %i.bs
  %i.cj = sext i32 %i.ci to i64
  %i.ck = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cj
  store i8 %.044.in, ptr %i.cl, align 1, !tbaa !65
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.cm = phi i32 [ %i.bt, %bb.r ], [ %.ph, %bb.s ] ; 2 uses
  %i.cn = phi i32 [ %i.bu, %bb.r ], [ %.ph, %bb.s ] ; 2 uses
  %i.co = phi i32 [ %i.bv, %bb.r ], [ %.ph, %bb.s ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cp = add nsw i32 %i.bs, 1                    ; 3 uses
  store i32 %i.cp, ptr %i.b, align 4, !tbaa !3
  %exitcond67.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond67.not, label %._crit_edge, label %.lr.ph, !llvm.loop !127

.preheader.split:                                 ; preds = %bb.w, %.preheader.split.preheader.new
  %i.cq = phi i32 [ %i.w, %.preheader.split.preheader.new ], [ %i.dj, %bb.w ] ; 4 uses
  %i.cr = phi i32 [ %i.x, %.preheader.split.preheader.new ], [ %i.di, %bb.w ]
  %niter = phi i32 [ 0, %.preheader.split.preheader.new ], [ %niter.next.1, %bb.w ]
  %i.cs = load i32, ptr %i.s, align 4, !tbaa !91  ; 2 uses
  %i.ct = icmp slt i32 %i.cq, %i.cs
  br i1 %i.ct, label %bb.u, label %.preheader.split.1

bb.u:                                             ; preds = %.preheader.split
  %i.cu = mul nsw i32 %i.v, %i.cs
  %i.cv = add nsw i32 %i.cu, %i.cq
  %i.cw = sext i32 %i.cv to i64
  %i.cx = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.cw
  store i8 %i.ab, ptr %i.cy, align 1, !tbaa !65
  br label %.preheader.split.1

.preheader.split.1:                               ; preds = %bb.u, %.preheader.split
  %i.cz = phi i32 [ %i.v, %bb.u ], [ %i.cr, %.preheader.split ]
  %i.da = add nsw i32 %i.cq, 1                    ; 3 uses
  store i32 %i.da, ptr %i.b, align 4, !tbaa !3
  %i.db = load i32, ptr %i.s, align 4, !tbaa !91  ; 2 uses
  %i.dc = icmp slt i32 %i.da, %i.db
  br i1 %i.dc, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.preheader.split.1
  %i.dd = mul nsw i32 %i.v, %i.db
  %i.de = add nsw i32 %i.dd, %i.da
  %i.df = sext i32 %i.de to i64
  %i.dg = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.df
  store i8 %i.ab, ptr %i.dh, align 1, !tbaa !65
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.preheader.split.1
  %i.di = phi i32 [ %i.v, %bb.v ], [ %i.cz, %.preheader.split.1 ] ; 3 uses
  %i.dj = add nsw i32 %i.cq, 2                    ; 4 uses
  store i32 %i.dj, ptr %i.b, align 4, !tbaa !3
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit166.unr-lcssa, label %.preheader.split, !llvm.loop !126

.thread:                                          ; preds = %bb.b, %bb.g, %bb.d
  %.3.ph = phi i1 [ false, %bb.d ], [ %i.y, %bb.g ], [ %i.y, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %.loopexit59

.loopexit.loopexit166.unr-lcssa:                  ; preds = %bb.w
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.preheader.split.epil.preheader

.preheader.split.epil.preheader:                  ; preds = %.loopexit.loopexit166.unr-lcssa, %.preheader.split.preheader
  %.epil.init = phi i32 [ %i.w, %.preheader.split.preheader ], [ %i.dj, %.loopexit.loopexit166.unr-lcssa ] ; 3 uses
  %.epil.init209 = phi i32 [ %i.x, %.preheader.split.preheader ], [ %i.di, %.loopexit.loopexit166.unr-lcssa ]
  %lcmp.mod212 = trunc i8 %i.aa to i1
  call void @llvm.assume(i1 %lcmp.mod212)
  %i.dk = load i32, ptr %i.s, align 4, !tbaa !91  ; 2 uses
  %i.dl = icmp slt i32 %.epil.init, %i.dk
  br i1 %i.dl, label %bb.x, label %.loopexit.loopexit166.epilog-lcssa

bb.x:                                             ; preds = %.preheader.split.epil.preheader
  %i.dm = mul nsw i32 %i.v, %i.dk
  %i.dn = add nsw i32 %i.dm, %.epil.init
  %i.do = sext i32 %i.dn to i64
  %i.dp = load ptr, ptr %i.l, align 8, !tbaa !60
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 %i.do
  store i8 %i.ab, ptr %i.dq, align 1, !tbaa !65
  br label %.loopexit.loopexit166.epilog-lcssa

.loopexit.loopexit166.epilog-lcssa:               ; preds = %bb.x, %.preheader.split.epil.preheader
  %i.dr = phi i32 [ %i.v, %bb.x ], [ %.epil.init209, %.preheader.split.epil.preheader ]
  %i.ds = add nsw i32 %.epil.init, 1              ; 2 uses
  store i32 %i.ds, ptr %i.b, align 4, !tbaa !3
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit166.epilog-lcssa, %.loopexit.loopexit166.unr-lcssa, %bb.l, %bb.f
  %i.dt = phi i32 [ %.ph, %bb.l ], [ %i.af, %bb.f ], [ %.ph, %.loopexit.loopexit166.unr-lcssa ], [ %.ph, %.loopexit.loopexit166.epilog-lcssa ]
  %i.du = phi i32 [ %i.u, %bb.l ], [ %i.af, %bb.f ], [ %i.u, %.loopexit.loopexit166.unr-lcssa ], [ %i.u, %.loopexit.loopexit166.epilog-lcssa ]
  %i.dv = phi i32 [ %i.bf, %bb.l ], [ %i.af, %bb.f ], [ %i.v, %.loopexit.loopexit166.unr-lcssa ], [ %i.v, %.loopexit.loopexit166.epilog-lcssa ]
  %i.dw = phi i32 [ %i.bi, %bb.l ], [ 0, %bb.f ], [ %i.dj, %.loopexit.loopexit166.unr-lcssa ], [ %i.ds, %.loopexit.loopexit166.epilog-lcssa ]
  %i.dx = phi i32 [ %i.bg, %bb.l ], [ %i.af, %bb.f ], [ %i.di, %.loopexit.loopexit166.unr-lcssa ], [ %i.dr, %.loopexit.loopexit166.epilog-lcssa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %.loopexit, %bb.i
  %.ph.be = phi i32 [ %i.ao, %bb.i ], [ %i.dt, %.loopexit ]
  %.ph78.be = phi i32 [ %i.ao, %bb.i ], [ %i.du, %.loopexit ]
  %.ph79.be = phi i32 [ %i.ao, %bb.i ], [ %i.dv, %.loopexit ]
  %.ph80.be = phi i32 [ %i.al, %bb.i ], [ %i.dw, %.loopexit ]
  %.ph81.be = phi i32 [ %i.ao, %bb.i ], [ %i.dx, %.loopexit ]
  br label %.outer

.loopexit59:                                      ; preds = %bb.i, %._crit_edge, %.thread
  %.4 = phi i1 [ %.3.ph, %.thread ], [ false, %._crit_edge ], [ false, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i1 %.4
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.107", align 16 ; 3 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28, !noalias !128
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28, !noalias !128
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull %1, i64 %i.a, i64 0, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28, !noalias !128
  %i.b = load ptr, ptr %4, align 8, !tbaa !64
  store ptr %i.b, ptr %3, align 8, !tbaa !80
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !83
  store i64 %i.e, ptr %i.c, align 8, !tbaa !82
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !64     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !tbaa !65
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !64     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !65
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %i.k
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(160) ptr @_ZN11OpenImageIO4v3_19ImageSpecaSERKS1_(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1) local_unnamed_addr #7 align 2 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.c = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b) ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.f = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e) ; 0 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.g, ptr noundef nonnull align 8 dereferenceable(9) %i.h, i64 9, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.k = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j) ; 0 uses
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !85   ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !60     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f                     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !61
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = sub i64 %i.k, %i.d                       ; 2 uses
  %i.m = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28.i = icmp ult i64 %i.l, %i.h
  br i1 %.not28.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1, !tbaa !65
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.q = add nsw i64 %i.h, -1                     ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %i.b, i64 %i.h
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.p, i8 0, i64 %i.q, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i = phi ptr [ %i.s, %bb.d ], [ %i.p, %bb.c ]
  store ptr %.0.i.i.i.i, ptr %i.a, align 8, !tbaa !85
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.e:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %i.n, %i.h
  br i1 %i.t, label %bb.f, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.71) #30
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.e
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.f, i64 %i.h)
  %i.u = add nuw i64 %.sroa.speculated.i.i, %i.f
  %i.v = tail call i64 @llvm.umin.i64(i64 %i.u, i64 9223372036854775807) ; 2 uses
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #31 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  store i8 0, ptr %i.x, align 1, !tbaa !65
  %i.y = add nsw i64 %i.h, -1                     ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i, label %bb.g

bb.g:                                             ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.aa, i8 0, i64 %i.y, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i: ; preds = %bb.g, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i
  %.not35.i = icmp eq ptr %i.b, %i.c
  br i1 %.not35.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.w, ptr align 1 %i.c, i64 %i.f, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i: ; preds = %bb.h, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i
  %.not.i33.i = icmp eq ptr %i.c, null
  br i1 %.not.i33.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  %i.ab = sub i64 %i.k, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.ab) #29
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i: ; preds = %bb.i, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !60
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %1
  store ptr %i.ac, ptr %i.a, align 8, !tbaa !85
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store ptr %i.ad, ptr %i.i, align 8, !tbaa !61
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.j:                                             ; preds = %bb.a
  %i.ae = icmp ult i64 %1, %i.f
  br i1 %i.ae, label %bb.k, label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.af
  br i1 %.not.i4, label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i:          ; preds = %bb.k
  store ptr %i.af, ptr %i.a, align 8, !tbaa !85
  br label %_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit

_ZNSt6vectorIhSaIhEE17_M_default_appendEm.exit:   ; preds = %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i, %bb.k, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit.i, %bb.j
  ret void
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJiiEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store.108", align 16 ; 5 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #28, !noalias !131
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28, !noalias !131
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.b = load i32, ptr %2, align 4, !tbaa !3, !noalias !137
  store i32 %i.b, ptr %4, align 16, !tbaa !65, !alias.scope !134, !noalias !131
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load i32, ptr %3, align 4, !tbaa !3, !noalias !137
  store i32 %i.d, ptr %i.c, align 16, !tbaa !65, !alias.scope !134, !noalias !131
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull %1, i64 %i.a, i64 17, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28, !noalias !131
  %i.e = load ptr, ptr %6, align 8, !tbaa !64
  store ptr %i.e, ptr %5, align 8, !tbaa !80
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !83
  store i64 %i.h, ptr %i.f, align 8, !tbaa !82
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %6, align 8, !tbaa !64     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8, !tbaa !65
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  ret void

bb.c:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %6, align 8, !tbaa !64     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.c
  %i.r = load i64, ptr %i.p, align 8, !tbaa !65
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18BmpInput20read_native_scanlineEiiiiPv(ptr noundef nonnull align 8 dereferenceable(472) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 %4, ptr nofree noundef writeonly captures(none) %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput4lockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.a = load ptr, ptr %0, align 8, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = invoke noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %.noexc unwind label %bb.c, !inline_history !138

.noexc:                                           ; preds = %bb.a
  %i.e = icmp eq i32 %1, %i.d
  br i1 %i.e, label %bb.b, label %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread

bb.b:                                             ; preds = %.noexc
  %i.f = load ptr, ptr %0, align 8, !tbaa !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = invoke noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit unwind label %bb.c, !inline_history !138

_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit: ; preds = %bb.b
  %i.j = icmp ne i32 %2, %i.i
  %i.k = icmp slt i32 %3, 0
  %or.cond = or i1 %i.k, %i.j
  br i1 %or.cond, label %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !125
  %i.p = icmp sgt i32 %3, %i.o
  br i1 %i.p, label %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.m, i1 noundef zeroext false) #28 ; 16 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.s = load i32, ptr %i.r, align 4, !tbaa !98
  %.off = add i32 %i.s, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !84
  %i.w = load ptr, ptr %i.t, align 8, !tbaa !62
  %.not = icmp eq ptr %i.v, %i.w
  br i1 %.not, label %bb.h, label %.preheader198

.preheader198:                                    ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !91   ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph, label %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread

.lr.ph:                                           ; preds = %.preheader198
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ab = xor i32 %3, -1
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.g
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.g ] ; 3 uses
  %i.ac = phi i32 [ %i.y, %.lr.ph ], [ %i.bg, %bb.g ]
  %i.ad = load i32, ptr %i.n, align 8, !tbaa !125
  %i.ae = add i32 %i.ad, %i.ab
  %i.af = mul nsw i32 %i.ae, %i.ac
  %i.ag = trunc nuw nsw i64 %indvars.iv to i32
  %i.ah = add nsw i32 %i.af, %i.ag
  %i.ai = sext i32 %i.ah to i64
  %i.aj = load ptr, ptr %i.aa, align 8, !tbaa !60
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !65
  %i.am = zext i8 %i.al to i32
  %i.an = load ptr, ptr %i.u, align 8, !tbaa !84
  %i.ao = load ptr, ptr %i.t, align 8, !tbaa !62  ; 2 uses
  %i.ap = ptrtoint ptr %i.an to i64
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = lshr exact i64 %i.ar, 2
  %i.at = trunc i64 %i.as to i32
  %i.au = add i32 %i.at, -1
  %.1.i.i = tail call i32 @llvm.smin.i32(i32 %i.am, i32 %i.au)
  %i.av = sext i32 %.1.i.i to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.av ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 2
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !120
  %i.az = mul nuw nsw i64 %indvars.iv, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 %i.az ; 3 uses
  store i8 %i.ay, ptr %i.ba, align 1, !tbaa !65
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !119
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !65
  %i.be = load i8, ptr %i.aw, align 1, !tbaa !117
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bg = load i32, ptr %i.x, align 4, !tbaa !91  ; 2 uses
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp slt i64 %indvars.iv.next, %i.bh
  br i1 %i.bi, label %bb.g, label %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread, !llvm.loop !139

bb.h:                                             ; preds = %bb.e, %bb.f
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !87
  %i.bl = load i32, ptr %i.n, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !13 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 17 uses
  invoke void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, i64 noundef %i.bn)
          to label %bb.i unwind label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.bp = xor i32 %3, -1
  %i.bq = add i32 %i.bl, %i.bp
  %i.br = icmp slt i32 %i.bk, 0
  %.0117 = select i1 %i.br, i32 %3, i32 %i.bq
  %i.bs = sext i32 %.0117 to i64
  %i.bt = mul nsw i64 %i.bn, %i.bs
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !140
  %i.bw = sext i32 %i.bv to i64
  %i.bx = add nsw i64 %i.bt, %i.bw
  %i.by = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef %i.bx, i32 noundef 0)
          to label %bb.j unwind label %bb.l       ; 0 uses

bb.j:                                             ; preds = %bb.i
  %i.bz = load ptr, ptr %i.bo, align 8, !tbaa !60
  %i.ca = load i64, ptr %i.bm, align 8, !tbaa !13
  %i.cb = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %i.bz, i64 noundef %i.ca, i64 noundef 1)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  br i1 %i.cb, label %bb.m, label %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.cc = landingpad { ptr, i32 }
          cleanup
  br label %bb.af

bb.m:                                             ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 226 ; 4 uses
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !86 ; 2 uses
  switch i16 %i.ce, label %thread-pre-split [
    i16 24, label %bb.n
    i16 32, label %bb.n
    i16 16, label %.preheader197
  ]

.preheader197:                                    ; preds = %bb.m
  %.not223 = icmp eq i64 %i.q, 0
  br i1 %.not223, label %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread, label %.lr.ph205

.lr.ph205:                                        ; preds = %.preheader197
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 452
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 260
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 444
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 460
  br label %bb.p

bb.n:                                             ; preds = %bb.m, %bb.m
  %i.co = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.m, i1 noundef zeroext false) #28
  %.not224 = icmp eq i64 %i.co, 0
  br i1 %.not224, label %._crit_edge, label %.lr.ph207

.lr.ph207:                                        ; preds = %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 68
  br label %bb.o

._crit_edge:                                      ; preds = %bb.o, %bb.n
  %i.cq = load ptr, ptr %i.bo, align 8, !tbaa !60
  %i.cr = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.m, i1 noundef zeroext false) #28
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr align 1 %i.cq, i64 %i.cr, i1 false)
  br label %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread

bb.o:                                             ; preds = %.lr.ph207, %bb.o
  %i.cs = phi i64 [ 0, %.lr.ph207 ], [ %i.dc, %bb.o ]
  %.0133206 = phi i32 [ 0, %.lr.ph207 ], [ %i.db, %bb.o ] ; 2 uses
  %i.ct = load ptr, ptr %i.bo, align 8, !tbaa !60 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cs ; 2 uses
  %i.cv = add i32 %.0133206, 2
  %i.cw = zext i32 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cw ; 2 uses
  %i.cy = load i8, ptr %i.cu, align 1, !tbaa !65
  %i.cz = load i8, ptr %i.cx, align 1, !tbaa !65
  store i8 %i.cz, ptr %i.cu, align 1, !tbaa !65
  store i8 %i.cy, ptr %i.cx, align 1, !tbaa !65
  %i.da = load i32, ptr %i.cp, align 4, !tbaa !92
  %i.db = add i32 %i.da, %.0133206                ; 2 uses
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %i.dd = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.m, i1 noundef zeroext false) #28
  %i.de = icmp ugt i64 %i.dd, %i.dc
  br i1 %i.de, label %bb.o, label %._crit_edge, !llvm.loop !141

bb.p:                                             ; preds = %.lr.ph205, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit181
  %i.df = phi i64 [ 0, %.lr.ph205 ], [ %i.fh, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit181 ]
  %.0131204 = phi i32 [ 0, %.lr.ph205 ], [ %i.fg, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit181 ] ; 3 uses
  %.0132203 = phi i32 [ 0, %.lr.ph205 ], [ %i.ff, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit181 ] ; 2 uses
  %i.dg = zext i32 %.0132203 to i64
  %i.dh = load ptr, ptr %i.bo, align 8, !tbaa !60
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.dg
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !124
  %i.dk = zext i16 %i.dj to i32                   ; 3 uses
  %i.dl = load i32, ptr %i.cf, align 4, !tbaa !93
  %i.dm = and i32 %i.dl, %i.dk
  %i.dn = load i32, ptr %i.cg, align 8, !tbaa !3
  %i.do = lshr i32 %i.dm, %i.dn                   ; 2 uses
  %i.dp = load i32, ptr %i.ch, align 4, !tbaa !3  ; 3 uses
  %.not.i = icmp eq i32 %i.dp, 0
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.p
  %.015.i = sub i32 8, %i.dp                      ; 3 uses
  %i.dq = icmp sgt i32 %.015.i, 0
  br i1 %i.dq, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.017.i = phi i32 [ %.0.i, %.lr.ph.i ], [ %.015.i, %.preheader.i ] ; 2 uses
  %.01316.i = phi i32 [ %i.ds, %.lr.ph.i ], [ 0, %.preheader.i ]
  %i.dr = shl i32 %i.do, %.017.i
  %i.ds = or i32 %i.dr, %.01316.i                 ; 2 uses
  %.0.i = sub i32 %.017.i, %i.dp                  ; 3 uses
  %i.dt = icmp sgt i32 %.0.i, 0
  br i1 %i.dt, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !142

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.013.lcssa.i = phi i32 [ 0, %.preheader.i ], [ %i.ds, %.lr.ph.i ]
  %.0.lcssa.i = phi i32 [ %.015.i, %.preheader.i ], [ %.0.i, %.lr.ph.i ]
  %i.du = sub nsw i32 0, %.0.lcssa.i
  %i.dv = lshr i32 %i.do, %i.du
  %i.dw = or i32 %i.dv, %.013.lcssa.i
  %i.dx = trunc i32 %i.dw to i8
  br label %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit

_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit: ; preds = %bb.p, %._crit_edge.i
  %.1.i = phi i8 [ %i.dx, %._crit_edge.i ], [ 0, %bb.p ]
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 %i.df
  store i8 %.1.i, ptr %i.dy, align 1, !tbaa !65
  %i.dz = load i32, ptr %i.ci, align 4, !tbaa !94
  %i.ea = and i32 %i.dz, %i.dk
  %i.eb = load i32, ptr %i.cj, align 4, !tbaa !3
  %i.ec = lshr i32 %i.ea, %i.eb                   ; 2 uses
  %i.ed = load i32, ptr %i.ck, align 8, !tbaa !3  ; 3 uses
  %.not.i158 = icmp eq i32 %i.ed, 0
  br i1 %.not.i158, label %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit169, label %.preheader.i159

.preheader.i159:                                  ; preds = %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit
  %.015.i160 = sub i32 8, %i.ed                   ; 3 uses
  %i.ee = icmp sgt i32 %.015.i160, 0
  br i1 %i.ee, label %.lr.ph.i165, label %._crit_edge.i161

.lr.ph.i165:                                      ; preds = %.preheader.i159, %.lr.ph.i165
  %.017.i166 = phi i32 [ %.0.i168, %.lr.ph.i165 ], [ %.015.i160, %.preheader.i159 ] ; 2 uses
  %.01316.i167 = phi i32 [ %i.eg, %.lr.ph.i165 ], [ 0, %.preheader.i159 ]
  %i.ef = shl i32 %i.ec, %.017.i166
  %i.eg = or i32 %i.ef, %.01316.i167              ; 2 uses
  %.0.i168 = sub i32 %.017.i166, %i.ed            ; 3 uses
  %i.eh = icmp sgt i32 %.0.i168, 0
  br i1 %i.eh, label %.lr.ph.i165, label %._crit_edge.i161, !llvm.loop !142

._crit_edge.i161:                                 ; preds = %.lr.ph.i165, %.preheader.i159
  %.013.lcssa.i162 = phi i32 [ 0, %.preheader.i159 ], [ %i.eg, %.lr.ph.i165 ]
  %.0.lcssa.i163 = phi i32 [ %.015.i160, %.preheader.i159 ], [ %.0.i168, %.lr.ph.i165 ]
  %i.ei = sub nsw i32 0, %.0.lcssa.i163
  %i.ej = lshr i32 %i.ec, %i.ei
  %i.ek = or i32 %i.ej, %.013.lcssa.i162
  %i.el = trunc i32 %i.ek to i8
  br label %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit169

_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit169: ; preds = %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit, %._crit_edge.i161
  %.1.i164 = phi i8 [ %i.el, %._crit_edge.i161 ], [ 0, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit ]
  %i.em = add i32 %.0131204, 1
  %i.en = zext i32 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr %5, i64 %i.en
  store i8 %.1.i164, ptr %i.eo, align 1, !tbaa !65
  %i.ep = load i32, ptr %i.cl, align 8, !tbaa !95
  %i.eq = and i32 %i.ep, %i.dk
  %i.er = load i32, ptr %i.cm, align 8, !tbaa !3
  %i.es = lshr i32 %i.eq, %i.er                   ; 2 uses
  %i.et = load i32, ptr %i.cn, align 4, !tbaa !3  ; 3 uses
  %.not.i170 = icmp eq i32 %i.et, 0
  br i1 %.not.i170, label %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit181, label %.preheader.i171

.preheader.i171:                                  ; preds = %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit169
  %.015.i172 = sub i32 8, %i.et                   ; 3 uses
  %i.eu = icmp sgt i32 %.015.i172, 0
  br i1 %i.eu, label %.lr.ph.i177, label %._crit_edge.i173

.lr.ph.i177:                                      ; preds = %.preheader.i171, %.lr.ph.i177
  %.017.i178 = phi i32 [ %.0.i180, %.lr.ph.i177 ], [ %.015.i172, %.preheader.i171 ] ; 2 uses
  %.01316.i179 = phi i32 [ %i.ew, %.lr.ph.i177 ], [ 0, %.preheader.i171 ]
  %i.ev = shl i32 %i.es, %.017.i178
  %i.ew = or i32 %i.ev, %.01316.i179              ; 2 uses
  %.0.i180 = sub i32 %.017.i178, %i.et            ; 3 uses
  %i.ex = icmp sgt i32 %.0.i180, 0
  br i1 %i.ex, label %.lr.ph.i177, label %._crit_edge.i173, !llvm.loop !142

._crit_edge.i173:                                 ; preds = %.lr.ph.i177, %.preheader.i171
  %.013.lcssa.i174 = phi i32 [ 0, %.preheader.i171 ], [ %i.ew, %.lr.ph.i177 ]
  %.0.lcssa.i175 = phi i32 [ %.015.i172, %.preheader.i171 ], [ %.0.i180, %.lr.ph.i177 ]
  %i.ey = sub nsw i32 0, %.0.lcssa.i175
  %i.ez = lshr i32 %i.es, %i.ey
  %i.fa = or i32 %i.ez, %.013.lcssa.i174
  %i.fb = trunc i32 %i.fa to i8
  br label %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit181

_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit181: ; preds = %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit169, %._crit_edge.i173
  %.1.i176 = phi i8 [ %i.fb, %._crit_edge.i173 ], [ 0, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit169 ]
  %i.fc = add i32 %.0131204, 2
  %i.fd = zext i32 %i.fc to i64
  %i.fe = getelementptr inbounds nuw i8, ptr %5, i64 %i.fd
  store i8 %.1.i176, ptr %i.fe, align 1, !tbaa !65
  %i.ff = add i32 %.0132203, 2
  %i.fg = add i32 %.0131204, 3                    ; 2 uses
  %i.fh = zext i32 %i.fg to i64                   ; 2 uses
  %i.fi = icmp ugt i64 %i.q, %i.fh
  br i1 %i.fi, label %bb.p, label %thread-pre-split.loopexit, !llvm.loop !143

thread-pre-split.loopexit:                        ; preds = %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit181
  %.pr.pre = load i16, ptr %i.cd, align 2, !tbaa !86
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %thread-pre-split.loopexit, %bb.m
  %i.fj = phi i16 [ %i.ce, %bb.m ], [ %.pr.pre, %thread-pre-split.loopexit ]
  %i.fk = icmp eq i16 %i.fj, 8
  br i1 %i.fk, label %bb.q, label %.loopexit

bb.q:                                             ; preds = %thread-pre-split
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.fm = load i8, ptr %i.fl, align 8, !tbaa !59, !range !144, !noundef !145
  %i.fn = trunc nuw i8 %i.fm to i1
  %.not226 = icmp eq i64 %i.q, 0                  ; 2 uses
  br i1 %i.fn, label %.preheader194, label %.preheader195

.preheader195:                                    ; preds = %bb.q
  br i1 %.not226, label %.loopexit, label %.lr.ph210

.lr.ph210:                                        ; preds = %.preheader195
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 376
  br label %bb.s

.preheader194:                                    ; preds = %bb.q
  br i1 %.not226, label %.loopexit, label %.lr.ph212

.lr.ph212:                                        ; preds = %.preheader194
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 376
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph212, %bb.r
  %i.fs = phi i64 [ 0, %.lr.ph212 ], [ %i.gl, %bb.r ] ; 2 uses
  %.0129211 = phi i32 [ 0, %.lr.ph212 ], [ %i.gk, %bb.r ]
  %i.ft = load ptr, ptr %i.bo, align 8, !tbaa !60
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 %i.fs
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !65
  %i.fw = zext i8 %i.fv to i32
  %i.fx = load ptr, ptr %i.fr, align 8, !tbaa !84
  %i.fy = load ptr, ptr %i.fq, align 8, !tbaa !62 ; 2 uses
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = sub i64 %i.fz, %i.ga
  %i.gc = lshr exact i64 %i.gb, 2
  %i.gd = trunc i64 %i.gc to i32
  %i.ge = add i32 %i.gd, -1
  %.1.i.i182 = tail call i32 @llvm.smin.i32(i32 %i.fw, i32 %i.ge)
  %i.gf = sext i32 %.1.i.i182 to i64
  %i.gg = getelementptr inbounds nuw [4 x i8], ptr %i.fy, i64 %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 2
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !120
  %i.gj = getelementptr inbounds nuw i8, ptr %5, i64 %i.fs
  store i8 %i.gi, ptr %i.gj, align 1, !tbaa !65
  %i.gk = add i32 %.0129211, 1                    ; 2 uses
  %i.gl = zext i32 %i.gk to i64                   ; 2 uses
  %i.gm = icmp ugt i64 %i.q, %i.gl
  br i1 %i.gm, label %bb.r, label %.loopexit, !llvm.loop !146

bb.s:                                             ; preds = %.lr.ph210, %bb.s
  %i.gn = phi i64 [ 0, %.lr.ph210 ], [ %i.hr, %bb.s ]
  %.0127209 = phi i32 [ 0, %.lr.ph210 ], [ %i.hq, %bb.s ] ; 3 uses
  %.0128208 = phi i32 [ 0, %.lr.ph210 ], [ %i.hp, %bb.s ] ; 2 uses
  %i.go = zext i32 %.0128208 to i64
  %i.gp = load ptr, ptr %i.bo, align 8, !tbaa !60
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.go
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !65
  %i.gs = zext i8 %i.gr to i32
  %i.gt = load ptr, ptr %i.fp, align 8, !tbaa !84
  %i.gu = load ptr, ptr %i.fo, align 8, !tbaa !62 ; 2 uses
  %i.gv = ptrtoint ptr %i.gt to i64
  %i.gw = ptrtoint ptr %i.gu to i64
  %i.gx = sub i64 %i.gv, %i.gw
  %i.gy = lshr exact i64 %i.gx, 2
  %i.gz = trunc i64 %i.gy to i32
  %i.ha = add i32 %i.gz, -1
  %.1.i.i183 = tail call i32 @llvm.smin.i32(i32 %i.gs, i32 %i.ha)
  %i.hb = sext i32 %.1.i.i183 to i64
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.hb ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 2
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !120
  %i.hf = getelementptr inbounds nuw i8, ptr %5, i64 %i.gn
  store i8 %i.he, ptr %i.hf, align 1, !tbaa !65
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hc, i64 1
  %i.hh = load i8, ptr %i.hg, align 1, !tbaa !119
  %i.hi = add i32 %.0127209, 1
  %i.hj = zext i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %5, i64 %i.hj
  store i8 %i.hh, ptr %i.hk, align 1, !tbaa !65
  %i.hl = load i8, ptr %i.hc, align 1, !tbaa !117
  %i.hm = add i32 %.0127209, 2
  %i.hn = zext i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %5, i64 %i.hn
  store i8 %i.hl, ptr %i.ho, align 1, !tbaa !65
  %i.hp = add i32 %.0128208, 1
  %i.hq = add i32 %.0127209, 3                    ; 2 uses
  %i.hr = zext i32 %i.hq to i64                   ; 2 uses
  %i.hs = icmp ugt i64 %i.q, %i.hr
  br i1 %i.hs, label %bb.s, label %.loopexit, !llvm.loop !147

.loopexit:                                        ; preds = %bb.s, %bb.r, %.preheader195, %.preheader194, %thread-pre-split
  %.pr = load i16, ptr %i.cd, align 2, !tbaa !86  ; 2 uses
  %i.ht = icmp eq i16 %.pr, 4
  br i1 %i.ht, label %.preheader193, label %.critedge

.preheader193:                                    ; preds = %.loopexit
  %.not227 = icmp eq i64 %i.q, 0
  br i1 %.not227, label %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread, label %.lr.ph215

.lr.ph215:                                        ; preds = %.preheader193
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph215, %bb.u
  %i.hw = phi i64 [ 0, %.lr.ph215 ], [ %i.ke, %bb.u ]
  %.0121214 = phi i32 [ 0, %.lr.ph215 ], [ %i.kd, %bb.u ] ; 6 uses
  %.0122213 = phi i32 [ 0, %.lr.ph215 ], [ %i.kc, %bb.u ] ; 2 uses
  %i.hx = zext i32 %.0122213 to i64               ; 2 uses
  %i.hy = load ptr, ptr %i.bo, align 8, !tbaa !60
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.hx
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !65
  %i.ib = lshr i8 %i.ia, 4
  %i.ic = zext nneg i8 %i.ib to i32
  %i.id = load ptr, ptr %i.hv, align 8, !tbaa !84
  %i.ie = load ptr, ptr %i.hu, align 8, !tbaa !62 ; 2 uses
  %i.if = ptrtoint ptr %i.id to i64
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = sub i64 %i.if, %i.ig
  %i.ii = lshr exact i64 %i.ih, 2
  %i.ij = trunc i64 %i.ii to i32
  %i.ik = add i32 %i.ij, -1
  %.1.i.i184 = tail call i32 @llvm.smin.i32(i32 %i.ic, i32 %i.ik)
  %i.il = sext i32 %.1.i.i184 to i64
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.ie, i64 %i.il ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 2
  %i.io = load i8, ptr %i.in, align 1, !tbaa !120
  %i.ip = getelementptr inbounds nuw i8, ptr %5, i64 %i.hw
  store i8 %i.io, ptr %i.ip, align 1, !tbaa !65
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 1
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !119
  %i.is = or disjoint i32 %.0121214, 1
  %i.it = zext i32 %i.is to i64
  %i.iu = getelementptr inbounds nuw i8, ptr %5, i64 %i.it
  store i8 %i.ir, ptr %i.iu, align 1, !tbaa !65
  %i.iv = load i8, ptr %i.im, align 1, !tbaa !117
  %i.iw = add i32 %.0121214, 2
  %i.ix = zext i32 %i.iw to i64
  %i.iy = getelementptr inbounds nuw i8, ptr %5, i64 %i.ix
  store i8 %i.iv, ptr %i.iy, align 1, !tbaa !65
  %i.iz = add i32 %.0121214, 3
  %i.ja = zext i32 %i.iz to i64                   ; 2 uses
  %.not147 = icmp ugt i64 %i.q, %i.ja
  br i1 %.not147, label %bb.u, label %.critedgethread-pre-split.loopexit

bb.u:                                             ; preds = %bb.t
  %i.jb = load ptr, ptr %i.bo, align 8, !tbaa !60
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 %i.hx
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !65
  %i.je = and i8 %i.jd, 15
  %i.jf = zext nneg i8 %i.je to i32
  %i.jg = load ptr, ptr %i.hv, align 8, !tbaa !84
  %i.jh = load ptr, ptr %i.hu, align 8, !tbaa !62 ; 2 uses
  %i.ji = ptrtoint ptr %i.jg to i64
  %i.jj = ptrtoint ptr %i.jh to i64
  %i.jk = sub i64 %i.ji, %i.jj
  %i.jl = lshr exact i64 %i.jk, 2
  %i.jm = trunc i64 %i.jl to i32
  %i.jn = add i32 %i.jm, -1
  %.1.i.i185 = tail call i32 @llvm.smin.i32(i32 %i.jf, i32 %i.jn)
  %i.jo = sext i32 %.1.i.i185 to i64
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %i.jo ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 2
  %i.jr = load i8, ptr %i.jq, align 1, !tbaa !120
  %i.js = getelementptr inbounds nuw i8, ptr %5, i64 %i.ja
  store i8 %i.jr, ptr %i.js, align 1, !tbaa !65
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jp, i64 1
  %i.ju = load i8, ptr %i.jt, align 1, !tbaa !119
  %i.jv = add i32 %.0121214, 4
  %i.jw = zext i32 %i.jv to i64
  %i.jx = getelementptr inbounds nuw i8, ptr %5, i64 %i.jw
  store i8 %i.ju, ptr %i.jx, align 1, !tbaa !65
  %i.jy = load i8, ptr %i.jp, align 1, !tbaa !117
  %i.jz = add i32 %.0121214, 5
  %i.ka = zext i32 %i.jz to i64
  %i.kb = getelementptr inbounds nuw i8, ptr %5, i64 %i.ka
  store i8 %i.jy, ptr %i.kb, align 1, !tbaa !65
  %i.kc = add i32 %.0122213, 1
  %i.kd = add i32 %.0121214, 6                    ; 2 uses
  %i.ke = zext i32 %i.kd to i64                   ; 2 uses
  %i.kf = icmp ugt i64 %i.q, %i.ke
  br i1 %i.kf, label %bb.t, label %.critedgethread-pre-split.loopexit, !llvm.loop !148

.critedgethread-pre-split.loopexit:               ; preds = %bb.t, %bb.u
  %.pr191.pre = load i16, ptr %i.cd, align 2, !tbaa !86
  br label %.critedge

.critedge:                                        ; preds = %.critedgethread-pre-split.loopexit, %.loopexit
  %i.kg = phi i16 [ %.pr191.pre, %.critedgethread-pre-split.loopexit ], [ %.pr, %.loopexit ]
  %i.kh = icmp eq i16 %i.kg, 1
  %i.ki = load i64, ptr %i.bm, align 8
  %i.kj = icmp sgt i64 %i.ki, 0
  %or.cond222 = select i1 %i.kh, i1 %i.kj, i1 false
  br i1 %or.cond222, label %.preheader.lr.ph, label %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread

.preheader.lr.ph:                                 ; preds = %.critedge
  %i.kk = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 8 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 8 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.ad
  %.0114220 = phi i64 [ 0, %.preheader.lr.ph ], [ %.1115.lcssa, %bb.ad ] ; 18 uses
  %.0116219 = phi i64 [ 0, %.preheader.lr.ph ], [ %i.sd, %bb.ad ] ; 9 uses
  %i.km = add nsw i64 %.0114220, 2                ; 2 uses
  %.not149 = icmp ult i64 %i.km, %i.q
  br i1 %.not149, label %bb.v, label %bb.ad

bb.v:                                             ; preds = %.preheader
  %i.kn = load ptr, ptr %i.bo, align 8, !tbaa !60
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 %.0116219
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !65
  %i.kq = lshr i8 %i.kp, 7
  %i.kr = zext nneg i8 %i.kq to i32
  %i.ks = load ptr, ptr %i.kl, align 8, !tbaa !84
  %i.kt = load ptr, ptr %i.kk, align 8, !tbaa !62 ; 2 uses
  %i.ku = ptrtoint ptr %i.ks to i64
  %i.kv = ptrtoint ptr %i.kt to i64
  %i.kw = sub i64 %i.ku, %i.kv
  %i.kx = lshr exact i64 %i.kw, 2
  %i.ky = trunc i64 %i.kx to i32
  %i.kz = add i32 %i.ky, -1
  %.1.i.i186 = tail call i32 @llvm.smin.i32(i32 %i.kr, i32 %i.kz)
  %i.la = sext i32 %.1.i.i186 to i64
  %i.lb = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %i.la ; 3 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 2
  %i.ld = load i8, ptr %i.lc, align 1, !tbaa !120
  %i.le = getelementptr inbounds i8, ptr %5, i64 %.0114220 ; 2 uses
  store i8 %i.ld, ptr %i.le, align 1, !tbaa !65
  %i.lf = getelementptr inbounds nuw i8, ptr %i.lb, i64 1
  %i.lg = load i8, ptr %i.lf, align 1, !tbaa !119
  %i.lh = getelementptr i8, ptr %i.le, i64 1
  store i8 %i.lg, ptr %i.lh, align 1, !tbaa !65
  %i.li = load i8, ptr %i.lb, align 1, !tbaa !117
  %i.lj = getelementptr inbounds i8, ptr %5, i64 %i.km
  store i8 %i.li, ptr %i.lj, align 1, !tbaa !65
  %i.lk = add nsw i64 %.0114220, 3                ; 2 uses
  %i.ll = add nsw i64 %.0114220, 5                ; 2 uses
  %.not149.1 = icmp ult i64 %i.ll, %i.q
  br i1 %.not149.1, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %bb.v
  %i.lm = load ptr, ptr %i.bo, align 8, !tbaa !60
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 %.0116219
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !65
  %i.lp = lshr i8 %i.lo, 6
  %i.lq = and i8 %i.lp, 1
  %spec.select.1 = zext nneg i8 %i.lq to i32
  %i.lr = load ptr, ptr %i.kl, align 8, !tbaa !84
  %i.ls = load ptr, ptr %i.kk, align 8, !tbaa !62 ; 2 uses
  %i.lt = ptrtoint ptr %i.lr to i64
  %i.lu = ptrtoint ptr %i.ls to i64
  %i.lv = sub i64 %i.lt, %i.lu
  %i.lw = lshr exact i64 %i.lv, 2
  %i.lx = trunc i64 %i.lw to i32
  %i.ly = add i32 %i.lx, -1
  %.1.i.i186.1 = tail call i32 @llvm.smin.i32(i32 %spec.select.1, i32 %i.ly)
  %i.lz = sext i32 %.1.i.i186.1 to i64
  %i.ma = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %i.lz ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %i.ma, i64 2
  %i.mc = load i8, ptr %i.mb, align 1, !tbaa !120
  %i.md = getelementptr inbounds i8, ptr %5, i64 %i.lk ; 2 uses
  store i8 %i.mc, ptr %i.md, align 1, !tbaa !65
  %i.me = getelementptr inbounds nuw i8, ptr %i.ma, i64 1
  %i.mf = load i8, ptr %i.me, align 1, !tbaa !119
  %i.mg = getelementptr i8, ptr %i.md, i64 1
  store i8 %i.mf, ptr %i.mg, align 1, !tbaa !65
  %i.mh = load i8, ptr %i.ma, align 1, !tbaa !117
  %i.mi = getelementptr inbounds i8, ptr %5, i64 %i.ll
  store i8 %i.mh, ptr %i.mi, align 1, !tbaa !65
  %i.mj = add nsw i64 %.0114220, 6                ; 2 uses
  %i.mk = add nsw i64 %.0114220, 8                ; 2 uses
  %.not149.2 = icmp ult i64 %i.mk, %i.q
  br i1 %.not149.2, label %bb.x, label %bb.ad

bb.x:                                             ; preds = %bb.w
  %i.ml = load ptr, ptr %i.bo, align 8, !tbaa !60
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ml, i64 %.0116219
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !65
  %i.mo = lshr i8 %i.mn, 5
  %i.mp = and i8 %i.mo, 1
  %spec.select.2 = zext nneg i8 %i.mp to i32
  %i.mq = load ptr, ptr %i.kl, align 8, !tbaa !84
  %i.mr = load ptr, ptr %i.kk, align 8, !tbaa !62 ; 2 uses
  %i.ms = ptrtoint ptr %i.mq to i64
  %i.mt = ptrtoint ptr %i.mr to i64
  %i.mu = sub i64 %i.ms, %i.mt
  %i.mv = lshr exact i64 %i.mu, 2
  %i.mw = trunc i64 %i.mv to i32
  %i.mx = add i32 %i.mw, -1
  %.1.i.i186.2 = tail call i32 @llvm.smin.i32(i32 %spec.select.2, i32 %i.mx)
  %i.my = sext i32 %.1.i.i186.2 to i64
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.mr, i64 %i.my ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 2
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !120
  %i.nc = getelementptr inbounds i8, ptr %5, i64 %i.mj ; 2 uses
  store i8 %i.nb, ptr %i.nc, align 1, !tbaa !65
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mz, i64 1
  %i.ne = load i8, ptr %i.nd, align 1, !tbaa !119
  %i.nf = getelementptr i8, ptr %i.nc, i64 1
  store i8 %i.ne, ptr %i.nf, align 1, !tbaa !65
  %i.ng = load i8, ptr %i.mz, align 1, !tbaa !117
  %i.nh = getelementptr inbounds i8, ptr %5, i64 %i.mk
  store i8 %i.ng, ptr %i.nh, align 1, !tbaa !65
  %i.ni = add nsw i64 %.0114220, 9                ; 2 uses
  %i.nj = add nsw i64 %.0114220, 11               ; 2 uses
  %.not149.3 = icmp ult i64 %i.nj, %i.q
  br i1 %.not149.3, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.nk = load ptr, ptr %i.bo, align 8, !tbaa !60
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 %.0116219
  %i.nm = load i8, ptr %i.nl, align 1, !tbaa !65
  %i.nn = lshr i8 %i.nm, 4
  %i.no = and i8 %i.nn, 1
  %spec.select.3 = zext nneg i8 %i.no to i32
  %i.np = load ptr, ptr %i.kl, align 8, !tbaa !84
  %i.nq = load ptr, ptr %i.kk, align 8, !tbaa !62 ; 2 uses
  %i.nr = ptrtoint ptr %i.np to i64
  %i.ns = ptrtoint ptr %i.nq to i64
  %i.nt = sub i64 %i.nr, %i.ns
  %i.nu = lshr exact i64 %i.nt, 2
  %i.nv = trunc i64 %i.nu to i32
  %i.nw = add i32 %i.nv, -1
  %.1.i.i186.3 = tail call i32 @llvm.smin.i32(i32 %spec.select.3, i32 %i.nw)
  %i.nx = sext i32 %.1.i.i186.3 to i64
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr %i.nq, i64 %i.nx ; 3 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 2
  %i.oa = load i8, ptr %i.nz, align 1, !tbaa !120
  %i.ob = getelementptr inbounds i8, ptr %5, i64 %i.ni ; 2 uses
  store i8 %i.oa, ptr %i.ob, align 1, !tbaa !65
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ny, i64 1
  %i.od = load i8, ptr %i.oc, align 1, !tbaa !119
  %i.oe = getelementptr i8, ptr %i.ob, i64 1
  store i8 %i.od, ptr %i.oe, align 1, !tbaa !65
  %i.of = load i8, ptr %i.ny, align 1, !tbaa !117
  %i.og = getelementptr inbounds i8, ptr %5, i64 %i.nj
  store i8 %i.of, ptr %i.og, align 1, !tbaa !65
  %i.oh = add nsw i64 %.0114220, 12               ; 2 uses
  %i.oi = add nsw i64 %.0114220, 14               ; 2 uses
  %.not149.4 = icmp ult i64 %i.oi, %i.q
  br i1 %.not149.4, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.oj = load ptr, ptr %i.bo, align 8, !tbaa !60
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 %.0116219
  %i.ol = load i8, ptr %i.ok, align 1, !tbaa !65
  %i.om = lshr i8 %i.ol, 3
  %i.on = and i8 %i.om, 1
  %spec.select.4 = zext nneg i8 %i.on to i32
  %i.oo = load ptr, ptr %i.kl, align 8, !tbaa !84
  %i.op = load ptr, ptr %i.kk, align 8, !tbaa !62 ; 2 uses
  %i.oq = ptrtoint ptr %i.oo to i64
  %i.or = ptrtoint ptr %i.op to i64
  %i.os = sub i64 %i.oq, %i.or
  %i.ot = lshr exact i64 %i.os, 2
  %i.ou = trunc i64 %i.ot to i32
  %i.ov = add i32 %i.ou, -1
  %.1.i.i186.4 = tail call i32 @llvm.smin.i32(i32 %spec.select.4, i32 %i.ov)
  %i.ow = sext i32 %.1.i.i186.4 to i64
  %i.ox = getelementptr inbounds nuw [4 x i8], ptr %i.op, i64 %i.ow ; 3 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 2
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !120
  %i.pa = getelementptr inbounds i8, ptr %5, i64 %i.oh ; 2 uses
  store i8 %i.oz, ptr %i.pa, align 1, !tbaa !65
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ox, i64 1
  %i.pc = load i8, ptr %i.pb, align 1, !tbaa !119
  %i.pd = getelementptr i8, ptr %i.pa, i64 1
  store i8 %i.pc, ptr %i.pd, align 1, !tbaa !65
  %i.pe = load i8, ptr %i.ox, align 1, !tbaa !117
  %i.pf = getelementptr inbounds i8, ptr %5, i64 %i.oi
  store i8 %i.pe, ptr %i.pf, align 1, !tbaa !65
  %i.pg = add nsw i64 %.0114220, 15               ; 2 uses
  %i.ph = add nsw i64 %.0114220, 17               ; 2 uses
  %.not149.5 = icmp ult i64 %i.ph, %i.q
  br i1 %.not149.5, label %bb.aa, label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.pi = load ptr, ptr %i.bo, align 8, !tbaa !60
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 %.0116219
  %i.pk = load i8, ptr %i.pj, align 1, !tbaa !65
  %i.pl = lshr i8 %i.pk, 2
  %i.pm = and i8 %i.pl, 1
  %spec.select.5 = zext nneg i8 %i.pm to i32
  %i.pn = load ptr, ptr %i.kl, align 8, !tbaa !84
  %i.po = load ptr, ptr %i.kk, align 8, !tbaa !62 ; 2 uses
  %i.pp = ptrtoint ptr %i.pn to i64
  %i.pq = ptrtoint ptr %i.po to i64
  %i.pr = sub i64 %i.pp, %i.pq
  %i.ps = lshr exact i64 %i.pr, 2
  %i.pt = trunc i64 %i.ps to i32
  %i.pu = add i32 %i.pt, -1
  %.1.i.i186.5 = tail call i32 @llvm.smin.i32(i32 %spec.select.5, i32 %i.pu)
  %i.pv = sext i32 %.1.i.i186.5 to i64
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.po, i64 %i.pv ; 3 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 2
  %i.py = load i8, ptr %i.px, align 1, !tbaa !120
  %i.pz = getelementptr inbounds i8, ptr %5, i64 %i.pg ; 2 uses
  store i8 %i.py, ptr %i.pz, align 1, !tbaa !65
  %i.qa = getelementptr inbounds nuw i8, ptr %i.pw, i64 1
  %i.qb = load i8, ptr %i.qa, align 1, !tbaa !119
  %i.qc = getelementptr i8, ptr %i.pz, i64 1
  store i8 %i.qb, ptr %i.qc, align 1, !tbaa !65
  %i.qd = load i8, ptr %i.pw, align 1, !tbaa !117
  %i.qe = getelementptr inbounds i8, ptr %5, i64 %i.ph
  store i8 %i.qd, ptr %i.qe, align 1, !tbaa !65
  %i.qf = add nsw i64 %.0114220, 18               ; 2 uses
  %i.qg = add nsw i64 %.0114220, 20               ; 2 uses
  %.not149.6 = icmp ult i64 %i.qg, %i.q
  br i1 %.not149.6, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.qh = load ptr, ptr %i.bo, align 8, !tbaa !60
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qh, i64 %.0116219
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !65
  %i.qk = lshr i8 %i.qj, 1
  %i.ql = and i8 %i.qk, 1
  %spec.select.6 = zext nneg i8 %i.ql to i32
  %i.qm = load ptr, ptr %i.kl, align 8, !tbaa !84
  %i.qn = load ptr, ptr %i.kk, align 8, !tbaa !62 ; 2 uses
  %i.qo = ptrtoint ptr %i.qm to i64
  %i.qp = ptrtoint ptr %i.qn to i64
  %i.qq = sub i64 %i.qo, %i.qp
  %i.qr = lshr exact i64 %i.qq, 2
  %i.qs = trunc i64 %i.qr to i32
  %i.qt = add i32 %i.qs, -1
  %.1.i.i186.6 = tail call i32 @llvm.smin.i32(i32 %spec.select.6, i32 %i.qt)
  %i.qu = sext i32 %.1.i.i186.6 to i64
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %i.qu ; 3 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 2
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !120
  %i.qy = getelementptr inbounds i8, ptr %5, i64 %i.qf ; 2 uses
  store i8 %i.qx, ptr %i.qy, align 1, !tbaa !65
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qv, i64 1
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !119
  %i.rb = getelementptr i8, ptr %i.qy, i64 1
  store i8 %i.ra, ptr %i.rb, align 1, !tbaa !65
  %i.rc = load i8, ptr %i.qv, align 1, !tbaa !117
  %i.rd = getelementptr inbounds i8, ptr %5, i64 %i.qg
  store i8 %i.rc, ptr %i.rd, align 1, !tbaa !65
  %i.re = add nsw i64 %.0114220, 21               ; 2 uses
  %i.rf = add nsw i64 %.0114220, 23               ; 2 uses
  %.not149.7 = icmp ult i64 %i.rf, %i.q
  br i1 %.not149.7, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.rg = load ptr, ptr %i.bo, align 8, !tbaa !60
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 %.0116219
  %i.ri = load i8, ptr %i.rh, align 1, !tbaa !65
  %i.rj = and i8 %i.ri, 1
  %spec.select.7 = zext nneg i8 %i.rj to i32
  %i.rk = load ptr, ptr %i.kl, align 8, !tbaa !84
  %i.rl = load ptr, ptr %i.kk, align 8, !tbaa !62 ; 2 uses
  %i.rm = ptrtoint ptr %i.rk to i64
  %i.rn = ptrtoint ptr %i.rl to i64
  %i.ro = sub i64 %i.rm, %i.rn
  %i.rp = lshr exact i64 %i.ro, 2
  %i.rq = trunc i64 %i.rp to i32
  %i.rr = add i32 %i.rq, -1
  %.1.i.i186.7 = tail call i32 @llvm.smin.i32(i32 %spec.select.7, i32 %i.rr)
  %i.rs = sext i32 %.1.i.i186.7 to i64
  %i.rt = getelementptr inbounds nuw [4 x i8], ptr %i.rl, i64 %i.rs ; 3 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 2
  %i.rv = load i8, ptr %i.ru, align 1, !tbaa !120
  %i.rw = getelementptr inbounds i8, ptr %5, i64 %i.re ; 2 uses
  store i8 %i.rv, ptr %i.rw, align 1, !tbaa !65
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rt, i64 1
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !119
  %i.rz = getelementptr i8, ptr %i.rw, i64 1
  store i8 %i.ry, ptr %i.rz, align 1, !tbaa !65
  %i.sa = load i8, ptr %i.rt, align 1, !tbaa !117
  %i.sb = getelementptr inbounds i8, ptr %5, i64 %i.rf
  store i8 %i.sa, ptr %i.sb, align 1, !tbaa !65
  %i.sc = add nsw i64 %.0114220, 24
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %.preheader
  %.1115.lcssa = phi i64 [ %.0114220, %.preheader ], [ %i.sc, %bb.ac ], [ %i.lk, %bb.v ], [ %i.re, %bb.ab ], [ %i.mj, %bb.w ], [ %i.pg, %bb.z ], [ %i.ni, %bb.x ], [ %i.qf, %bb.aa ], [ %i.oh, %bb.y ]
  %i.sd = add nuw nsw i64 %.0116219, 1            ; 2 uses
  %i.se = load i64, ptr %i.bm, align 8, !tbaa !13
  %i.sf = icmp slt i64 %i.sd, %i.se
  br i1 %i.sf, label %.preheader, label %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread, !llvm.loop !149

_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread: ; preds = %bb.g, %bb.ad, %.preheader197, %.preheader193, %.preheader198, %.noexc, %.critedge, %bb.k, %._crit_edge, %bb.d, %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit
  %.2 = phi i1 [ false, %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit ], [ true, %._crit_edge ], [ false, %bb.d ], [ true, %.preheader198 ], [ true, %.critedge ], [ false, %.noexc ], [ false, %bb.k ], [ true, %bb.ad ], [ true, %.preheader197 ], [ true, %.preheader193 ], [ true, %bb.g ]
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit unwind label %bb.ae

bb.ae:                                            ; preds = %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread
  %i.sg = landingpad { ptr, i32 }
          catch ptr null
  %i.sh = extractvalue { ptr, i32 } %i.sg, 0
  tail call void @__clang_call_terminate(ptr %i.sh) #32
  unreachable

_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit: ; preds = %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit.thread
  ret i1 %.2

bb.af:                                            ; preds = %bb.l, %bb.c
  %.pn153.pn = phi { ptr, i32 } [ %i.l, %bb.c ], [ %i.cc, %bb.l ]
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit187 unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.si = landingpad { ptr, i32 }
          catch ptr null
  %i.sj = extractvalue { ptr, i32 } %i.si, 0
  tail call void @__clang_call_terminate(ptr %i.sj) #32
  unreachable

_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit187: ; preds = %bb.af
  resume { ptr, i32 } %.pn153.pn
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

; Function Attrs: nounwind
declare noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec14scanline_bytesEb(ptr noundef nonnull align 8 dereferenceable(160), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_18BmpInputD2Ev(ptr noundef nonnull align 8 dereferenceable(472) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 0, ptr %i.a, align 8, !tbaa !13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 0, ptr %i.b, align 8, !tbaa !58
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 344
  store i64 0, ptr %i.d, align 8, !tbaa !83
  %i.e = load ptr, ptr %i.c, align 8, !tbaa !64
  store i8 0, ptr %i.e, align 1, !tbaa !65
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 368 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !62   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !84
  %.not.i.i.i.i = icmp eq ptr %i.i, %i.g
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE5clearEv.exit.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_17bmp_pvt11color_tableES3_EvT_S5_RSaIT0_E.exit.i.i.i.i

_ZSt8_DestroyIPN11OpenImageIO4v3_17bmp_pvt11color_tableES3_EvT_S5_RSaIT0_E.exit.i.i.i.i: ; preds = %bb.a
  store ptr %i.g, ptr %i.h, align 8, !tbaa !84
  br label %_ZNSt6vectorIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE5clearEv.exit.i.i

_ZNSt6vectorIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE5clearEv.exit.i.i: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_17bmp_pvt11color_tableES3_EvT_S5_RSaIT0_E.exit.i.i.i.i, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 464
  store i8 0, ptr %i.j, align 8, !tbaa !59
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !61
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !85
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE5clearEv.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.q = tail call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIhSaIhEELb1EE8_S_do_itERS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.p) #28 ; 0 uses
  br label %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit.i.i

_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit.i.i:   ; preds = %bb.b, %_ZNSt6vectorIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE5clearEv.exit.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !61
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !85
  %i.v = icmp eq ptr %i.s, %i.u
  br i1 %i.v, label %_ZN11OpenImageIO4v3_18BmpInput4initEv.exit.i, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit.i.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.x = tail call noundef zeroext i1 @_ZNSt19__shrink_to_fit_auxISt6vectorIhSaIhEELb1EE8_S_do_itERS2_(ptr noundef nonnull align 8 dereferenceable(24) %i.w) #28 ; 0 uses
  br label %_ZN11OpenImageIO4v3_18BmpInput4initEv.exit.i

_ZN11OpenImageIO4v3_18BmpInput4initEv.exit.i:     ; preds = %bb.c, %_ZNSt6vectorIhSaIhEE13shrink_to_fitEv.exit.i.i
  invoke void @_ZN11OpenImageIO4v3_110ImageInput13ioproxy_clearEv(ptr noundef nonnull align 8 dereferenceable(472) %0)
          to label %_ZN11OpenImageIO4v3_18BmpInput5closeEv.exit unwind label %bb.g

_ZN11OpenImageIO4v3_18BmpInput5closeEv.exit:      ; preds = %_ZN11OpenImageIO4v3_18BmpInput4initEv.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !60   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_18BmpInput5closeEv.exit
  %i.aa = load ptr, ptr %i.r, align 8, !tbaa !61
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.z to i64
  %i.ad = sub i64 %i.ab, %i.ac
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ad) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZN11OpenImageIO4v3_18BmpInput5closeEv.exit, %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !60 ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIhSaIhEED2Ev.exit2, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !61
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai
  tail call void @_ZdlPvm(ptr noundef nonnull %i.af, i64 noundef %i.aj) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit2

_ZNSt6vectorIhSaIhEED2Ev.exit2:                   ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit, %bb.e
  %i.ak = load ptr, ptr %i.f, align 8, !tbaa !62  ; 3 uses
  %.not.i.i.i3 = icmp eq ptr %i.ak, null
  br i1 %.not.i.i.i3, label %_ZNSt6vectorIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EED2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit2
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !63
  %i.an = ptrtoint ptr %i.am to i64
  %i.ao = ptrtoint ptr %i.ak to i64
  %i.ap = sub i64 %i.an, %i.ao
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ak, i64 noundef %i.ap) #29
  br label %_ZNSt6vectorIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EED2Ev.exit

_ZNSt6vectorIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit2, %bb.f
  %i.aq = load ptr, ptr %i.c, align 8, !tbaa !64  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EED2Ev.exit
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !65
  %i.au = add i64 %i.at, 1
  tail call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZN11OpenImageIO4v3_110ImageInputD2Ev(ptr noundef nonnull align 8 dead_on_return(184) dereferenceable(184) %0) #28
  ret void

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_18BmpInput4initEv.exit.i
  %i.av = landingpad { ptr, i32 }
          catch ptr null
  %i.aw = extractvalue { ptr, i32 } %i.av, 0
  tail call void @__clang_call_terminate(ptr %i.aw) #32
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_18BmpInputD0Ev(ptr noundef nonnull align 8 dereferenceable(472) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN11OpenImageIO4v3_18BmpInputD2Ev(ptr noundef nonnull align 8 dereferenceable(472) %0) #28
  tail call void @_ZN11OpenImageIO4v3_110ImageInputdlEPv(ptr noundef nonnull %0) #28
  ret void
}
end_hunk_0
begin_hunk_1_@llvm.smin.i32
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #27

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.abs.i128(i128, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #24

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.ctlz.i128(i128, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #24

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold nofree noreturn }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold noreturn }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #28 = { nounwind }
attributes #29 = { builtin nounwind }
attributes #30 = { noreturn }
attributes #31 = { builtin allocsize(0) }
attributes #32 = { noreturn nounwind }
attributes #33 = { nounwind allocsize(0) }

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
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!11 = !{!"p1 omnipotent char", !12, i64 0}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!14, !44, i64 184}
!14 = !{!"_ZTSN11OpenImageIO4v3_18BmpInputE", !15, i64 0, !44, i64 184, !4, i64 192, !45, i64 196, !47, i64 212, !48, i64 336, !49, i64 368, !54, i64 392, !54, i64 416, !5, i64 440, !5, i64 452, !28, i64 464}
!15 = !{!"_ZTSN11OpenImageIO4v3_110ImageInputE", !16, i64 8, !35, i64 168}
!16 = !{!"_ZTSN11OpenImageIO4v3_19ImageSpecE", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !17, i64 64, !18, i64 72, !23, i64 96, !4, i64 120, !4, i64 124, !28, i64 128, !29, i64 136}
!17 = !{!"_ZTSN11OpenImageIO4v3_18TypeDescE", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3, !4, i64 4}
!18 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !19, i64 0}
!19 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE", !20, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE12_Vector_implE", !21, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_18TypeDescESaIS2_EE17_Vector_impl_dataE", !22, i64 0, !22, i64 8, !22, i64 16}
!22 = !{!"p1 _ZTSN11OpenImageIO4v3_18TypeDescE", !12, i64 0}
!23 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !24, i64 0}
!24 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !25, i64 0}
!25 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !26, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !27, i64 0, !27, i64 8, !27, i64 16}
!27 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !12, i64 0}
!28 = !{!"bool", !5, i64 0}
!29 = !{!"_ZTSN11OpenImageIO4v3_114ParamValueListE", !30, i64 0}
!30 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !31, i64 0}
!31 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE", !32, i64 0}
!32 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE12_Vector_implE", !33, i64 0}
!33 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_110ParamValueESaIS2_EE17_Vector_impl_dataE", !34, i64 0, !34, i64 8, !34, i64 16}
!34 = !{!"p1 _ZTSN11OpenImageIO4v3_110ParamValueE", !12, i64 0}
!35 = !{!"_ZTSSt10unique_ptrIN11OpenImageIO4v3_110ImageInput4ImplEPFvPS3_EE", !36, i64 0}
!36 = !{!"_ZTSSt15__uniq_ptr_dataIN11OpenImageIO4v3_110ImageInput4ImplEPFvPS3_ELb1ELb1EE", !37, i64 0}
!37 = !{!"_ZTSSt15__uniq_ptr_implIN11OpenImageIO4v3_110ImageInput4ImplEPFvPS3_EE", !38, i64 0}
!38 = !{!"_ZTSSt5tupleIJPN11OpenImageIO4v3_110ImageInput4ImplEPFvS4_EEE", !39, i64 0}
!39 = !{!"_ZTSSt11_Tuple_implILm0EJPN11OpenImageIO4v3_110ImageInput4ImplEPFvS4_EEE", !40, i64 0, !42, i64 8}
!40 = !{!"_ZTSSt11_Tuple_implILm1EJPFvPN11OpenImageIO4v3_110ImageInput4ImplEEEE", !41, i64 0}
!41 = !{!"_ZTSSt10_Head_baseILm1EPFvPN11OpenImageIO4v3_110ImageInput4ImplEELb0EE", !12, i64 0}
!42 = !{!"_ZTSSt10_Head_baseILm0EPN11OpenImageIO4v3_110ImageInput4ImplELb0EE", !43, i64 0}
!43 = !{!"p1 _ZTSN11OpenImageIO4v3_110ImageInput4ImplE", !12, i64 0}
!44 = !{!"long", !5, i64 0}
!45 = !{!"_ZTSN11OpenImageIO4v3_17bmp_pvt13BmpFileHeaderE", !46, i64 0, !4, i64 4, !46, i64 8, !46, i64 10, !4, i64 12}
!46 = !{!"short", !5, i64 0}
!47 = !{!"_ZTSN11OpenImageIO4v3_17bmp_pvt20DibInformationHeaderE", !4, i64 0, !4, i64 4, !4, i64 8, !46, i64 12, !46, i64 14, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !4, i64 36, !4, i64 40, !4, i64 44, !4, i64 48, !4, i64 52, !4, i64 56, !4, i64 60, !4, i64 64, !4, i64 68, !4, i64 72, !4, i64 76, !4, i64 80, !4, i64 84, !4, i64 88, !4, i64 92, !4, i64 96, !4, i64 100, !4, i64 104, !4, i64 108, !4, i64 112, !4, i64 116, !4, i64 120}
!48 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !44, i64 8, !5, i64 16}
!49 = !{!"_ZTSSt6vectorIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE", !50, i64 0}
!50 = !{!"_ZTSSt12_Vector_baseIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE", !51, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE12_Vector_implE", !52, i64 0}
!52 = !{!"_ZTSNSt12_Vector_baseIN11OpenImageIO4v3_17bmp_pvt11color_tableESaIS3_EE17_Vector_impl_dataE", !53, i64 0, !53, i64 8, !53, i64 16}
!53 = !{!"p1 _ZTSN11OpenImageIO4v3_17bmp_pvt11color_tableE", !12, i64 0}
!54 = !{!"_ZTSSt6vectorIhSaIhEE", !55, i64 0}
!55 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !56, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !57, i64 0}
!57 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!58 = !{!14, !4, i64 192}
!59 = !{!14, !28, i64 464}
!60 = !{!57, !11, i64 0}
!61 = !{!57, !11, i64 16}
!62 = !{!52, !53, i64 0}
!63 = !{!52, !53, i64 16}
!64 = !{!48, !11, i64 0}
!65 = !{!5, !5, i64 0}
!66 = !{!67, !68, i64 48}
!67 = !{!"_ZTSN11OpenImageIO4v3_110Filesystem7IOProxyE", !48, i64 8, !44, i64 40, !68, i64 48, !48, i64 56}
!68 = !{!"_ZTSN11OpenImageIO4v3_110Filesystem7IOProxy4ModeE", !5, i64 0}
!69 = !{!33, !34, i64 0}
!70 = !{!33, !34, i64 8}
!71 = distinct !{!71, !72}
!72 = !{!"llvm.loop.mustprogress"}
!73 = !{!33, !34, i64 16}
!74 = !{!26, !27, i64 0}
!75 = !{!26, !27, i64 8}
!76 = distinct !{!76, !72}
!77 = !{!26, !27, i64 16}
!78 = !{!21, !22, i64 0}
!79 = !{!21, !22, i64 16}
!80 = !{!81, !11, i64 0}
!81 = !{!"_ZTSN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEE", !11, i64 0, !44, i64 8}
!82 = !{!81, !44, i64 8}
!83 = !{!48, !44, i64 8}
!84 = !{!52, !53, i64 8}
!85 = !{!57, !11, i64 8}
!86 = !{!14, !46, i64 226}
!87 = !{!14, !4, i64 220}
!88 = !{!14, !4, i64 216}
!89 = !{!14, !4, i64 236}
!90 = !{!14, !4, i64 240}
!91 = !{!15, !4, i64 20}
!92 = !{!15, !4, i64 68}
!93 = !{!14, !4, i64 252}
!94 = !{!14, !4, i64 260}
!95 = !{!14, !4, i64 256}
!96 = !{!14, !4, i64 212}
!97 = !{!14, !4, i64 244}
!98 = !{!14, !4, i64 228}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESB_RKT_DpOT0_: argument 0"}
!101 = distinct !{!101, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESB_RKT_DpOT0_"}
!102 = !{!22, !22, i64 0}
!103 = !{!27, !27, i64 0}
!104 = !{!34, !34, i64 0}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiS7_S7_RKNS0_8TypeDescEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!107 = distinct !{!107, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiS7_S7_RKNS0_8TypeDescEEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKiS3_S3_KN11OpenImageIO4v3_18TypeDescEELi4ELi0ELy61713EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!110 = distinct !{!110, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKiS3_S3_KN11OpenImageIO4v3_18TypeDescEELi4ELi0ELy61713EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!111 = !{!109, !106}
!112 = distinct !{!112, !72}
!113 = distinct !{!113, !72}
!114 = distinct !{null}
!115 = distinct !{!115, !72}
!116 = distinct !{!116, !72}
!117 = !{!118, !5, i64 0}
!118 = !{!"_ZTSN11OpenImageIO4v3_17bmp_pvt11color_tableE", !5, i64 0, !5, i64 1, !5, i64 2, !5, i64 3}
!119 = !{!118, !5, i64 1}
!120 = !{!118, !5, i64 2}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKsEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!123 = distinct !{!123, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKsEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!124 = !{!46, !46, i64 0}
!125 = !{!15, !4, i64 24}
!126 = distinct !{!126, !72}
!127 = distinct !{!127, !72}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!130 = distinct !{!130, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiS7_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!133 = distinct !{!133, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiS7_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKiS3_ELi2ELi0ELy17EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!136 = distinct !{!136, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKiS3_ELi2ELi0ELy17EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!137 = !{!135, !132}
!138 = !{ptr @_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii}
!139 = distinct !{!139, !72}
!140 = !{!14, !4, i64 208}
!141 = distinct !{!141, !72}
!142 = distinct !{!142, !72}
!143 = distinct !{!143, !72}
!144 = !{i8 0, i8 2}
!145 = !{}
!146 = distinct !{!146, !72}
!147 = distinct !{!147, !72}
!148 = distinct !{!148, !72}
!149 = distinct !{!149, !72}
!150 = !{!21, !22, i64 8}
!151 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!152 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!153 = distinct !{!153, !72, !154, !155}
!154 = !{!"llvm.loop.isvectorized", i32 1}
!155 = !{!"llvm.loop.unroll.runtime.disable"}
!156 = distinct !{!156, !72, !154}
!157 = distinct !{!157, !72}
!158 = distinct !{!158, !72}
!159 = distinct !{!159, !72}
!160 = !{!44, !44, i64 0}
!161 = distinct !{!161, !72}
!162 = distinct !{!162, !72}
!163 = distinct !{!163, !72}
!164 = distinct !{!164, !72}
!165 = distinct !{!165, !72}
!166 = !{!167, !11, i64 0}
!167 = !{!"_ZTSN11OpenImageIO4v3_17ustringE", !11, i64 0}
!168 = !{!17, !4, i64 4}
!169 = !{!11, !11, i64 0}
!170 = !{!171, !4, i64 32}
!171 = !{!"_ZTSN11OpenImageIO4v3_110ParamValueE", !167, i64 0, !17, i64 8, !5, i64 16, !4, i64 32, !5, i64 36, !28, i64 37, !28, i64 38}
!172 = !{!171, !5, i64 36}
!173 = !{!171, !28, i64 38}
!174 = distinct !{!174, !72}
!175 = distinct !{!175, !72}
!176 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!177 = !{!178, !12, i64 24}
!178 = !{!"_ZTSN3fmt3v126detail6bufferIcEE", !11, i64 0, !44, i64 8, !44, i64 16, !12, i64 24}
!179 = !{!178, !11, i64 0}
!180 = !{!178, !44, i64 16}
!181 = !{!182}
!182 = distinct !{!182, !183, !"_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE: argument 0"}
!183 = distinct !{!183, !"_ZN3fmt3v129to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE"}
!184 = !{!178, !44, i64 8}
!185 = !{!186, !186, i64 0}
!186 = !{!"_ZTSN3fmt3v126detail4typeE", !5, i64 0}
!187 = !{!188, !188, i64 0}
!188 = !{!"p1 _ZTSN3fmt3v126detail6bufferIcEE", !12, i64 0}
!189 = distinct !{null, null}
!190 = !{!191, !4, i64 16}
!191 = !{!"_ZTSN3fmt3v1213parse_contextIcEE", !192, i64 0, !4, i64 16}
!192 = !{!"_ZTSN3fmt3v1217basic_string_viewIcEE", !11, i64 0, !44, i64 8}
!193 = !{!194, !194, i64 0}
!194 = !{!"long long", !5, i64 0}
!195 = !{!12, !12, i64 0}
!196 = !{!197, !194, i64 0}
!197 = !{!"_ZTSN3fmt3v1217basic_format_argsINS0_7contextEEE", !194, i64 0, !5, i64 8}
!198 = !{!199, !201}
!199 = distinct !{!199, !200, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!200 = distinct !{!200, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!201 = distinct !{!201, !202, !"_ZNK3fmt3v127context3argEi: argument 0"}
!202 = distinct !{!202, !"_ZNK3fmt3v127context3argEi"}
!203 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIjTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_, null, null, null}
!204 = distinct !{!204, !72}
!205 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIyTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_, null, null, null}
!206 = distinct !{!206, !72}
!207 = !{!208, !4, i64 0}
!208 = !{!"_ZTSN3fmt3v1211basic_specsE", !4, i64 0, !5, i64 4}
!209 = !{!210, !4, i64 12}
!210 = !{!"_ZTSN3fmt3v1212format_specsE", !208, i64 0, !4, i64 8, !4, i64 12}
!211 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_, null, null, null}
!212 = distinct !{ptr @_ZN3fmt3v126detail21default_arg_formatterIcEclIcTnNSt9enable_ifIXsr10is_builtinIT_EE5valueEiE4typeELi0EEEvS6_, null, null, null, null}
!213 = distinct !{!213, !72}
!214 = !{!215, !44, i64 0}
!215 = !{!"_ZTSZN3fmt3v126detail9write_ptrIcNS0_14basic_appenderIcEEmEET0_S5_T1_PKNS0_12format_specsEEUlS4_E_", !44, i64 0, !4, i64 8}
!216 = !{!215, !4, i64 8}
!217 = !{!218, !218, i64 0}
!218 = !{!"p1 _ZTSN3fmt3v126detail14format_handlerIcEE", !12, i64 0}
!219 = !{!220, !4, i64 8}
!220 = !{!"_ZTSZN3fmt3v126detail23parse_replacement_fieldIcRNS1_14format_handlerIcEEEEPKT_S8_S8_OT0_E10id_adapter", !218, i64 0, !4, i64 8}
!221 = !{!222, !224}
!222 = distinct !{!222, !223, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi: argument 0"}
!223 = distinct !{!223, !"_ZNK3fmt3v1217basic_format_argsINS0_7contextEE3getEi"}
!224 = distinct !{!224, !225, !"_ZNK3fmt3v127context3argEi: argument 0"}
!225 = distinct !{!225, !"_ZNK3fmt3v127context3argEi"}
!226 = distinct !{null, null, null}
!227 = distinct !{null, null, null}
!228 = distinct !{null, null, null}
!229 = distinct !{null, null, null, null}
!230 = distinct !{null, null}
!231 = distinct !{null, null, null}
!232 = distinct !{null, null}
!233 = distinct !{!233, !72, !154, !155}
!234 = !{!"branch_weights", i32 4, i32 28}
!235 = distinct !{!235, !72, !154, !155}
!236 = distinct !{!236, !237}
!237 = !{!"llvm.loop.unroll.disable"}
!238 = distinct !{!238, !72}
!239 = distinct !{!239, !72, !154}
!240 = distinct !{!240, !72}
!241 = distinct !{!241, !72}
!242 = !{!243, !244, i64 0}
!243 = !{!"_ZTSSt6locale", !244, i64 0}
!244 = !{!"p1 _ZTSNSt6locale5_ImplE", !12, i64 0}
!245 = !{!246, !44, i64 16}
!246 = !{!"_ZTSNSt6locale5_ImplE", !4, i64 0, !247, i64 8, !44, i64 16, !247, i64 24, !249, i64 32}
!247 = !{!"p2 _ZTSNSt6locale5facetE", !248, i64 0}
!248 = !{!"any p2 pointer", !12, i64 0}
!249 = !{!"p2 omnipotent char", !248, i64 0}
!250 = !{!246, !247, i64 8}
!251 = !{!252, !252, i64 0}
!252 = !{!"p1 _ZTSNSt6locale5facetE", !12, i64 0}
!253 = !{ptr @_ZN3fmt3v1212format_facetISt6localeED2Ev}
!254 = distinct !{!254, !72}
!255 = !{!256, !28, i64 0}
!256 = !{!"_ZTSZN3fmt3v126detail10write_charIcNS0_14basic_appenderIcEEEET0_S5_T_RKNS0_12format_specsEEUlS4_E_", !28, i64 0, !5, i64 1}
!257 = !{!256, !5, i64 1}
!258 = !{!210, !4, i64 8}
!259 = distinct !{null, null}
!260 = distinct !{null, null}
!261 = distinct !{!261, !72}
!262 = distinct !{null, null, null, null}
!263 = distinct !{null, null, null, null, null}
!264 = distinct !{!264, !72}
!265 = distinct !{null, null, null}
!266 = distinct !{null, null, null, null}
!267 = distinct !{!267, !72}
!268 = !{!269, !4, i64 8}
!269 = !{!"_ZTSNSt6locale5facetE", !4, i64 8}
!270 = !{!271}
!271 = distinct !{!271, !272, !"_ZNKSt7__cxx118numpunctIcE8groupingEv: argument 0"}
!272 = distinct !{!272, !"_ZNKSt7__cxx118numpunctIcE8groupingEv"}
!273 = distinct !{null}
!274 = distinct !{null}
!275 = !{!276, !276, i64 0}
!276 = !{!"p1 _ZTSN3fmt3v1212format_specsE", !12, i64 0}
!277 = !{!278, !186, i64 16}
!278 = !{!"_ZTSN3fmt3v1216basic_format_argINS0_7contextEEE", !279, i64 0, !186, i64 16}
!279 = !{!"_ZTSN3fmt3v126detail5valueINS0_7contextEEE", !5, i64 0}
!280 = !{!281, !276, i64 8}
!281 = !{!"_ZTSN3fmt3v126detail10loc_writerIcEE", !282, i64 0, !276, i64 8, !48, i64 16, !48, i64 48, !48, i64 80}
!282 = !{!"_ZTSN3fmt3v1214basic_appenderIcEE", !188, i64 0}
!283 = !{i64 4}
!284 = !{!285}
!285 = distinct !{!285, !286, !"_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE: argument 0"}
!286 = distinct !{!286, !"_ZN3fmt3v126detail18make_write_int_argInEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE"}
!287 = !{!288}
!288 = distinct !{!288, !289, !"_ZN3fmt3v126detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE: argument 0"}
!289 = distinct !{!289, !"_ZN3fmt3v126detail18make_write_int_argIoEENS1_13write_int_argINSt11conditionalIXaalecl8num_bitsIT_EELi32EntLi0EEjNS4_IXlecl8num_bitsIS5_EELi64EEmoE4typeEE4typeEEES5_NS0_4signE"}
!290 = distinct !{!290, !72}
!291 = distinct !{!291, !72}
!292 = distinct !{!292, !72}
!293 = !{!294, !294, i64 0}
!294 = !{!"p1 int", !12, i64 0}
!295 = !{!296, !296, i64 0}
!296 = !{!"p1 _ZTSN3fmt3v126detail14digit_groupingIcEE", !12, i64 0}
!297 = !{!298, !298, i64 0}
!298 = !{!"p1 _ZTSN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEEE", !12, i64 0}
!299 = !{!300, !294, i64 0}
!300 = !{!"_ZTSZN3fmt3v126detail9write_intINS0_14basic_appenderIcEEmcEET_S5_T0_jRKNS0_12format_specsERKNS1_14digit_groupingIT1_EEEUlS4_E_", !294, i64 0, !296, i64 8, !298, i64 16}
!301 = distinct !{null, null, null, null}
!302 = distinct !{!302, !72}
!303 = !{!300, !296, i64 8}
!304 = !{i64 8}
!305 = !{!300, !298, i64 16}
!306 = distinct !{null, null, null, null}
!307 = distinct !{null, null, null, null}
!308 = distinct !{!308, !72}
!309 = distinct !{!309, !72, !154, !155}
!310 = distinct !{!310, !72, !154, !155}
!311 = distinct !{!311, !237}
!312 = distinct !{!312, !72, !154}
!313 = distinct !{!313, !72}
!314 = !{!315, !11, i64 0}
!315 = !{!"_ZTSN3fmt3v126detail18find_escape_resultIcEE", !11, i64 0, !11, i64 8, !4, i64 16}
!316 = !{!315, !11, i64 8}
!317 = !{!315, !4, i64 16}
!318 = distinct !{!318, !72}
!319 = distinct !{!319, !72}
!320 = distinct !{!320, !72}
!321 = !{!322, !12, i64 24}
!322 = !{!"_ZTSN3fmt3v126detail6bufferIiEE", !294, i64 0, !44, i64 8, !44, i64 16, !12, i64 24}
!323 = !{!322, !294, i64 0}
!324 = !{!322, !44, i64 16}
!325 = !{!322, !44, i64 8}
!326 = distinct !{null}
!327 = distinct !{null}
!328 = distinct !{!328, !72, !154, !155}
!329 = distinct !{!329, !72, !154, !155}
!330 = distinct !{!330, !237}
!331 = distinct !{!331, !72, !154}
!332 = distinct !{null}
!333 = distinct !{!333, !72}
!334 = distinct !{!334, !72}
!335 = distinct !{!335, !72}
!336 = distinct !{!336, !72}
!337 = distinct !{!337, !72}
!338 = !{!339, !294, i64 0}
end_hunk_1
