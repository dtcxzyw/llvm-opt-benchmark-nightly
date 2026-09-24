Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/rlaoutput?download=true
inline.NumInlined: 3051
inline.NumDeleted: 793
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN11OpenImageIO4v3_19RLAOutput16set_chromaticityEPKNS0_10ParamValueEPcmPKc:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30, !noalias !342
  %i.l = load float, ptr %i.j, align 4, !tbaa !118, !noalias !343
  store float %i.l, ptr %8, align 16, !tbaa !121, !noalias !342
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.n = load float, ptr %i.k, align 4, !tbaa !118, !noalias !343
  store float %i.n, ptr %i.m, align 16, !tbaa !121, !noalias !342
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr nonnull @.str.50, i64 11, i64 153, ptr nonnull %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30, !noalias !342
  %i.o = load ptr, ptr %9, align 8, !tbaa !94
  store ptr %i.o, ptr %10, align 8, !tbaa !89
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.r = load i64, ptr %i.q, align 8, !tbaa !95
  store i64 %i.r, ptr %i.p, align 8, !tbaa !90
  %i.s = call noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcpyEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef %2, ptr noundef nonnull dead_on_return %10, i64 noundef %3) #30 ; 0 uses
  %i.t = load ptr, ptr %9, align 8, !tbaa !94     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZN11OpenImageIO4v3_17RLA_pvt14safe_format_toIJffEEEvPcmPKcDpRKT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  %i.w = load i64, ptr %i.u, align 8, !tbaa !121
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #31
  br label %_ZN11OpenImageIO4v3_17RLA_pvt14safe_format_toIJffEEEvPcmPKcDpRKT_.exit

_ZN11OpenImageIO4v3_17RLA_pvt14safe_format_toIJffEEEvPcmPKcDpRKT_.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %10)
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 38
  %i.z = load i8, ptr %i.y, align 2, !tbaa !341, !range !123, !noundef !124
  %i.aa = trunc nuw i8 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = select i1 %i.aa, ptr %i.ac, ptr %i.ab   ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30, !noalias !344
  tail call void @llvm.experimental.noalias.scope.decl(metadata !345)
  %i.ag = load float, ptr %i.ad, align 4, !tbaa !118, !noalias !346
  store float %i.ag, ptr %5, align 16, !tbaa !121, !alias.scope !345, !noalias !344
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ai = load float, ptr %i.ae, align 4, !tbaa !118, !noalias !346
  store float %i.ai, ptr %i.ah, align 16, !tbaa !121, !alias.scope !345, !noalias !344
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.ak = load float, ptr %i.af, align 4, !tbaa !118, !noalias !346
  store float %i.ak, ptr %i.aj, align 16, !tbaa !121, !alias.scope !345, !noalias !344
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull @.str.51, i64 17, i64 2457, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #30, !noalias !344
  %i.al = load ptr, ptr %6, align 8, !tbaa !94
  store ptr %i.al, ptr %7, align 8, !tbaa !89
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !95
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !90
  %i.ap = call noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcpyEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef %2, ptr noundef nonnull dead_on_return %7, i64 noundef %3) #30 ; 0 uses
  %i.aq = load ptr, ptr %6, align 8, !tbaa !94    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZN11OpenImageIO4v3_17RLA_pvt14safe_format_toIJfffEEEvPcmPKcDpRKT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16: ; preds = %bb.e
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !121
  %i.au = add i64 %i.at, 1
  call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.au) #31
  br label %_ZN11OpenImageIO4v3_17RLA_pvt14safe_format_toIJfffEEEvPcmPKcDpRKT_.exit

_ZN11OpenImageIO4v3_17RLA_pvt14safe_format_toIJfffEEEvPcmPKcDpRKT_.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.g

.critedge:                                        ; preds = %bb.a, %bb.b
  store ptr %4, ptr %11, align 8, !tbaa !89
  %.not.i = icmp eq ptr %4, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.av = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #30
  br label %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit

_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit: ; preds = %.critedge, %bb.f
  %i.aw = phi i64 [ %i.av, %bb.f ], [ 0, %.critedge ]
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.aw, ptr %i.ax, align 8, !tbaa !90
  %i.ay = call noundef ptr @_ZN11OpenImageIO4v3_17Strutil11safe_strcpyEPcNS0_17basic_string_viewIcSt11char_traitsIcEEEm(ptr noundef %2, ptr noundef nonnull dead_on_return %11, i64 noundef %3) #30 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %_ZN11OpenImageIO4v3_17RLA_pvt14safe_format_toIJffEEEvPcmPKcDpRKT_.exit, %_ZN11OpenImageIO4v3_17RLA_pvt14safe_format_toIJfffEEEvPcmPKcDpRKT_.exit, %_ZN11OpenImageIO4v3_117basic_string_viewIcSt11char_traitsIcEEC2EPKc.exit
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #2

declare void @_ZN11OpenImageIO4v3_17Sysutil14get_local_timeEPKlP2tm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare i64 @strftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_19RLAOutput5writeIjEEbPKT_m(ptr noundef nonnull align 8 dereferenceable(1032) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = shl i64 %2, 2                            ; 2 uses
  %i.b = alloca i8, i64 %i.a, align 16            ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr align 4 %1, i64 %i.a, i1 false)
  %i.c = trunc i64 %2 to i32
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader.i, label %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %wide.trip.count.i = and i64 %2, 2147483647     ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %2, 2147483640                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.e, align 16, !tbaa !42
  %wide.load10 = load <4 x i32>, ptr %i.f, align 16, !tbaa !42
  %i.g = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load)
  %i.h = tail call <4 x i32> @llvm.bswap.v4i32(<4 x i32> %wide.load10)
  store <4 x i32> %i.g, ptr %i.e, align 16, !tbaa !42
  store <4 x i32> %i.h, ptr %i.f, align 16, !tbaa !42
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !347

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  br i1 %cmp.n, label %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !42
  %i.l = tail call noundef i32 @llvm.bswap.i32(i32 %i.k)
  store i32 %i.l, ptr %i.j, align 4, !tbaa !42
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit, label %.lr.ph.i, !llvm.loop !348

_ZN11OpenImageIO4v3_111swap_endianIjEEvPT_i.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a, %bb.b
  %i.m = phi ptr [ null, %bb.a ], [ %i.b, %bb.b ], [ %i.b, %middle.block ], [ %i.b, %.lr.ph.i ]
  %i.n = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %i.m, i64 noundef 4, i64 noundef %2)
  ret i1 %i.n
}

; Function Attrs: nounwind
declare noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11image_bytesEb(ptr noundef nonnull align 8 dereferenceable(160), i1 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK11OpenImageIO4v3_111ImageOutput14ioproxy_openedEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput15write_scanlinesEiiiNS0_8TypeDescEPKvll(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef, i64 noundef, i64 noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184), i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_19RLAOutput14encode_channelEPhlNS0_8TypeDescEi(ptr noundef nonnull align 8 dereferenceable(1032) %0, ptr noundef %1, i64 noundef %2, i64 %3, i32 noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [2 x i8], align 16                ; 4 uses
  %5 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 2 uses
  store i64 %3, ptr %5, align 8
  %i.b = lshr i64 %3, 8
  %i.c = and i64 %3, 65535
  %or.cond.i = icmp eq i64 %i.c, 267
  %i.d = lshr i64 %3, 32                          ; 2 uses
  %i.e = trunc nuw i64 %i.d to i32
  %.not.i = icmp eq i64 %i.d, 0                   ; 2 uses
  %or.cond161 = and i1 %or.cond.i, %.not.i
  br i1 %or.cond161, label %_ZN11OpenImageIO4v3_19RLAOutput5writeItEEbPKT_m.exit, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread

_ZN11OpenImageIO4v3_19RLAOutput5writeItEEbPKT_m.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !106
  %i.h = trunc i32 %i.g to i16
  %i.i = shl i16 %i.h, 2
  %savedstack = tail call ptr @llvm.stacksave.p0()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = tail call i16 @llvm.bswap.i16(i16 %i.i)
  store i16 %i.j, ptr %i.a, align 16, !tbaa !107
  %i.k = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(1032) %0, ptr noundef nonnull %i.a, i64 noundef 2, i64 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.stackrestore.p0(ptr %savedstack)
  %i.l = load i32, ptr %i.f, align 4, !tbaa !106
  %i.m = icmp sgt i32 %i.l, 0
  br i1 %i.m, label %.lr.ph196, label %.loopexit

.lr.ph196:                                        ; preds = %_ZN11OpenImageIO4v3_19RLAOutput5writeItEEbPKT_m.exit, %.lr.ph196
  %indvars.iv222 = phi i64 [ %indvars.iv.next223, %.lr.ph196 ], [ 0, %_ZN11OpenImageIO4v3_19RLAOutput5writeItEEbPKT_m.exit ] ; 2 uses
  %i.n = mul nsw i64 %2, %indvars.iv222
  %i.o = getelementptr inbounds i8, ptr %1, i64 %i.n
  %i.p = call noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput7iowriteEPKvmm(ptr noundef nonnull align 8 dereferenceable(1032) %0, ptr noundef %i.o, i64 noundef 4, i64 noundef 1) ; 0 uses
  %indvars.iv.next223 = add nuw nsw i64 %indvars.iv222, 1 ; 2 uses
  %i.q = load i32, ptr %i.f, align 4, !tbaa !106
  %i.r = sext i32 %i.q to i64
  %i.s = icmp slt i64 %indvars.iv.next223, %i.r
  br i1 %i.s, label %.lr.ph196, label %.loopexit, !llvm.loop !349

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread: ; preds = %bb.a
  %i.t = and i64 %3, 65535
  %or.cond.i84 = icmp eq i64 %i.t, 260
  %i.u = icmp ne i32 %4, 16
  %i.v = and i1 %i.u, %or.cond.i84
  %or.cond265 = and i1 %i.v, %.not.i
  br i1 %or.cond265, label %.preheader, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit86.thread

.preheader:                                       ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.x = load i32, ptr %i.w, align 4, !tbaa !106  ; 4 uses
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit86.thread

.lr.ph:                                           ; preds = %.preheader
  %.015.i = add i32 %4, -16                       ; 2 uses
  %i.z = icmp sgt i32 %.015.i, 0
  br i1 %i.z, label %.lr.ph.i.preheader.us.preheader, label %.lr.ph.split

.lr.ph.i.preheader.us.preheader:                  ; preds = %.lr.ph
  %wide.trip.count203 = zext nneg i32 %i.x to i64
  br label %.lr.ph.i.preheader.us

.lr.ph.i.preheader.us:                            ; preds = %.lr.ph.i.preheader.us.preheader, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.loopexit.us
  %indvars.iv200 = phi i64 [ 0, %.lr.ph.i.preheader.us.preheader ], [ %indvars.iv.next201, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.loopexit.us ] ; 2 uses
  %i.aa = mul nsw i64 %2, %indvars.iv200
  %i.ab = getelementptr inbounds i8, ptr %1, i64 %i.aa ; 2 uses
  %i.ac = load i16, ptr %i.ab, align 2, !tbaa !107
  %i.ad = zext i16 %i.ac to i32                   ; 2 uses
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader.us, %.lr.ph.i.us
  %.017.i.us = phi i32 [ %.0.i.us, %.lr.ph.i.us ], [ %.015.i, %.lr.ph.i.preheader.us ] ; 4 uses
  %.01316.i.us = phi i32 [ %i.af, %.lr.ph.i.us ], [ 0, %.lr.ph.i.preheader.us ]
  %i.ae = shl i32 %i.ad, %.017.i.us
  %i.af = or i32 %i.ae, %.01316.i.us              ; 2 uses
  %.0.i.us = add nsw i32 %.017.i.us, -16
  %i.ag = icmp sgt i32 %.017.i.us, 16
  br i1 %i.ag, label %.lr.ph.i.us, label %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.loopexit.us, !llvm.loop !350

_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.loopexit.us: ; preds = %.lr.ph.i.us
  %i.ah = sub nsw i32 16, %.017.i.us
  %i.ai = lshr i32 %i.ad, %i.ah
  %i.aj = or i32 %i.ai, %i.af
  %i.ak = trunc i32 %i.aj to i16
  store i16 %i.ak, ptr %i.ab, align 2, !tbaa !107
  %indvars.iv.next201 = add nuw nsw i64 %indvars.iv200, 1 ; 2 uses
  %exitcond204.not = icmp eq i64 %indvars.iv.next201, %wide.trip.count203
  br i1 %exitcond204.not, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit86.thread, label %.lr.ph.i.preheader.us, !llvm.loop !351

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.al = sub i32 16, %4                          ; 5 uses
  %wide.trip.count = zext nneg i32 %i.x to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.am = icmp ult i32 %i.x, 4
  br i1 %i.am, label %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.epil.preheader, label %.lr.ph.split.new

.lr.ph.split.new:                                 ; preds = %.lr.ph.split
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit

_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit: ; preds = %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit, %.lr.ph.split.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.new ], [ %indvars.iv.next.3, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.split.new ], [ %niter.next.3, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit ]
  %i.an = mul nsw i64 %2, %indvars.iv
  %i.ao = getelementptr inbounds i8, ptr %1, i64 %i.an ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !107
  %i.aq = zext i16 %i.ap to i32
  %i.ar = lshr i32 %i.aq, %i.al
  %i.as = trunc nuw nsw i32 %i.ar to i16
  store i16 %i.as, ptr %i.ao, align 2, !tbaa !107
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.at = mul nsw i64 %2, %indvars.iv.next
  %i.au = getelementptr inbounds i8, ptr %1, i64 %i.at ; 2 uses
  %i.av = load i16, ptr %i.au, align 2, !tbaa !107
  %i.aw = zext i16 %i.av to i32
  %i.ax = lshr i32 %i.aw, %i.al
  %i.ay = trunc nuw nsw i32 %i.ax to i16
  store i16 %i.ay, ptr %i.au, align 2, !tbaa !107
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %i.az = mul nsw i64 %2, %indvars.iv.next.1
  %i.ba = getelementptr inbounds i8, ptr %1, i64 %i.az ; 2 uses
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !107
  %i.bc = zext i16 %i.bb to i32
  %i.bd = lshr i32 %i.bc, %i.al
  %i.be = trunc nuw nsw i32 %i.bd to i16
  store i16 %i.be, ptr %i.ba, align 2, !tbaa !107
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %i.bf = mul nsw i64 %2, %indvars.iv.next.2
  %i.bg = getelementptr inbounds i8, ptr %1, i64 %i.bf ; 2 uses
  %i.bh = load i16, ptr %i.bg, align 2, !tbaa !107
  %i.bi = zext i16 %i.bh to i32
  %i.bj = lshr i32 %i.bi, %i.al
  %i.bk = trunc nuw nsw i32 %i.bj to i16
  store i16 %i.bk, ptr %i.bg, align 2, !tbaa !107
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit86.thread.loopexit267.unr-lcssa, label %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit, !llvm.loop !351

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit86.thread.loopexit267.unr-lcssa: ; preds = %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit86.thread, label %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.epil.preheader

_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.epil.preheader: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit86.thread.loopexit267.unr-lcssa, %.lr.ph.split
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split ], [ %indvars.iv.next.3, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit86.thread.loopexit267.unr-lcssa ]
  %lcmp.mod268 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod268)
  br label %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.epil

_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.epil: ; preds = %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.epil, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.epil.preheader ], [ %indvars.iv.next.epil, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.epil.preheader ], [ %epil.iter.next, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.epil ]
  %i.bl = mul nsw i64 %2, %indvars.iv.epil
  %i.bm = getelementptr inbounds i8, ptr %1, i64 %i.bl ; 2 uses
  %i.bn = load i16, ptr %i.bm, align 2, !tbaa !107
  %i.bo = zext i16 %i.bn to i32
  %i.bp = lshr i32 %i.bo, %i.al
  %i.bq = trunc nuw nsw i32 %i.bp to i16
  store i16 %i.bq, ptr %i.bm, align 2, !tbaa !107
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit86.thread, label %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.epil, !llvm.loop !352

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit86.thread: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit86.thread.loopexit267.unr-lcssa, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.epil, %_ZN11OpenImageIO4v3_117bit_range_convertEjjj.exit.loopexit.us, %.preheader, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 976 ; 21 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 984 ; 31 uses
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !122 ; 2 uses
  %i.bu = load ptr, ptr %i.br, align 8, !tbaa !52 ; 2 uses
  %i.bv = ptrtoint ptr %i.bt to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 3 uses
  %i.by = icmp ult i64 %i.bx, 2
  br i1 %i.by, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit86.thread
  %i.bz = sub nuw nsw i64 2, %i.bx
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.br, i64 noundef %i.bz)
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.c:                                             ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit86.thread
  %.not = icmp eq i64 %i.bx, 2
  br i1 %.not, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bu, i64 2 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bt, %i.ca
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.ca, ptr %i.bs, align 8, !tbaa !122
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.e, i32 1)
  %i.cb = and i64 %i.b, 255
  %i.cc = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %5) #30
  %i.cd = mul i64 %i.cc, %i.cb
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = mul i32 %narrow.i, %i.ce                ; 3 uses
  %i.cg = icmp sgt i32 %i.cf, 0
  br i1 %i.cg, label %.lr.ph193, label %._crit_edge194

.lr.ph193:                                        ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 23 uses
  %i.cj = zext nneg i32 %i.cf to i64
  %wide.trip.count220 = zext nneg i32 %i.cf to i64
  %i.ck = getelementptr i8, ptr %1, i64 %i.cj
  br label %bb.e

._crit_edge194:                                   ; preds = %._crit_edge189.thread, %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %i.cl = load ptr, ptr %i.bs, align 8, !tbaa !122
  %i.cm = load ptr, ptr %i.br, align 8, !tbaa !52 ; 2 uses
  %i.cn = ptrtoint ptr %i.cl to i64
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = trunc i64 %i.cp to i32
  %i.cr = add i32 %i.cq, 65534                    ; 2 uses
  %i.cs = lshr i32 %i.cr, 8
end_hunk_0
