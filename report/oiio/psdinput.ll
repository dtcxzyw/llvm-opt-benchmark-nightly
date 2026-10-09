Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/psdinput?download=true
inline.NumInlined: 4893
inline.NumDeleted: 1786
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 51
loop-unroll.NumUnrolled: 59
begin_hunk_0_@_ZN11OpenImageIO4v3_110Filesystem7IOProxyD2Ev:bb.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.k = load i64, ptr %i.i, align 8, !tbaa !63
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5LayerESaIS3_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !184  ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !183    ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = sdiv exact i64 %i.f, 192                 ; 3 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g
  tail call void @_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5LayerESaIS3_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.i)
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5LayerESaIS3_EE15_M_erase_at_endEPS3_.exit

bb.c:                                             ; preds = %bb.a
  %i.j = icmp ult i64 %1, %i.g
  br i1 %i.j, label %bb.d, label %_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5LayerESaIS3_EE15_M_erase_at_endEPS3_.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [192 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i = icmp eq ptr %i.b, %i.k
  br i1 %.not.i, label %_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5LayerESaIS3_EE15_M_erase_at_endEPS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %_ZSt8_DestroyIN11OpenImageIO4v3_18PSDInput5LayerEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ae, %_ZSt8_DestroyIN11OpenImageIO4v3_18PSDInput5LayerEEvPT_.exit.i.i.i ], [ %i.k, %bb.d ] ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 168
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !187  ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5Layer14AdditionalInfoESaIS4_EED2Ev.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 184
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !188
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = sub i64 %i.p, %i.q
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef %i.r) #38
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5Layer14AdditionalInfoESaIS4_EED2Ev.exit.i.i.i.i.i

_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5Layer14AdditionalInfoESaIS4_EED2Ev.exit.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 136
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !69   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 152 ; 2 uses
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5Layer14AdditionalInfoESaIS4_EED2Ev.exit.i.i.i.i.i
  %i.w = load i64, ptr %i.u, align 8, !tbaa !63
  %i.x = add i64 %i.w, 1
  tail call void @_ZdlPvm(ptr noundef %i.t, i64 noundef %i.x) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5Layer14AdditionalInfoESaIS4_EED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56
  %i.z = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !193
  invoke void @_ZNSt8_Rb_treeIsSt4pairIKsPN11OpenImageIO4v3_18PSDInput11ChannelInfoEESt10_Select1stIS7_ESt4lessIsESaIS7_EE8_M_eraseEPSt13_Rb_tree_nodeIS7_E(ptr noundef nonnull align 8 dereferenceable(48) %i.y, ptr noundef %i.aa)
          to label %_ZSt8_DestroyIN11OpenImageIO4v3_18PSDInput5LayerEEvPT_.exit.i.i.i unwind label %bb.f

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  tail call void @__clang_call_terminate(ptr %i.ac) #40
  unreachable

_ZSt8_DestroyIN11OpenImageIO4v3_18PSDInput5LayerEEvPT_.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.ad = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  tail call void @_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput11ChannelInfoESaIS3_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.ad) #37
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 192 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_18PSDInput5LayerES3_EvT_S5_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPN11OpenImageIO4v3_18PSDInput5LayerES3_EvT_S5_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN11OpenImageIO4v3_18PSDInput5LayerEEvPT_.exit.i.i.i
  store ptr %i.k, ptr %i.a, align 8, !tbaa !184
  br label %_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5LayerESaIS3_EE15_M_erase_at_endEPS3_.exit

_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput5LayerESaIS3_EE15_M_erase_at_endEPS3_.exit: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_18PSDInput5LayerES3_EvT_S5_RSaIT0_E.exit.i, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18PSDInput10load_layerERNS1_5LayerE(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull align 8 dereferenceable(192) %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 4 uses
  %i.j = alloca i32, align 4                      ; 5 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i8, align 1                       ; 4 uses
  %i.m = alloca i8, align 1                       ; 4 uses
  %i.n = alloca i8, align 1                       ; 4 uses
  %i.o = alloca i64, align 8                      ; 4 uses
  %i.p = alloca i32, align 4                      ; 4 uses
  %i.q = alloca i16, align 2                      ; 4 uses
  %i.r = alloca i16, align 2                      ; 5 uses
  %i.s = alloca i32, align 4                      ; 4 uses
  %i.t = alloca i32, align 4                      ; 4 uses
  %i.u = alloca i32, align 4                      ; 4 uses
  %i.v = alloca i32, align 4                      ; 4 uses
  %i.w = alloca [4 x i8], align 1                 ; 4 uses
  %i.x = alloca [4 x i8], align 1                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #37
  %i.y = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.v, i64 noundef 4, i64 noundef 1) ; 2 uses
  br i1 %i.y, label %.lr.ph.i.preheader.i, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %.promoted.i = load i32, ptr %i.v, align 4, !tbaa !55
  %i.z = call noundef i32 @llvm.bswap.i32(i32 %.promoted.i)
  store i32 %i.z, ptr %1, align 8, !tbaa !55
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit: ; preds = %bb.a, %.lr.ph.i.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #37
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #37
  %i.ab = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.u, i64 noundef 4, i64 noundef 1) ; 2 uses
  br i1 %i.ab, label %.lr.ph.i.preheader.i118, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit120

.lr.ph.i.preheader.i118:                          ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit
  %.promoted.i119 = load i32, ptr %i.u, align 4, !tbaa !55
  %i.ac = call noundef i32 @llvm.bswap.i32(i32 %.promoted.i119)
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !55
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit120

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit120: ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit, %.lr.ph.i.preheader.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #37
  %i.ad = and i1 %i.y, %i.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #37
  %i.ae = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.t, i64 noundef 4, i64 noundef 1) ; 2 uses
  br i1 %i.ae, label %.lr.ph.i.preheader.i121, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit123

.lr.ph.i.preheader.i121:                          ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit120
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted.i122 = load i32, ptr %i.t, align 4, !tbaa !55
  %i.ag = call noundef i32 @llvm.bswap.i32(i32 %.promoted.i122)
  store i32 %i.ag, ptr %i.af, align 8, !tbaa !55
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit123

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit123: ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit120, %.lr.ph.i.preheader.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #37
  %i.ah = and i1 %i.ad, %i.ae
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #37
  %i.aj = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.s, i64 noundef 4, i64 noundef 1) ; 2 uses
  br i1 %i.aj, label %.lr.ph.i.preheader.i124, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit126

.lr.ph.i.preheader.i124:                          ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit123
  %.promoted.i125 = load i32, ptr %i.s, align 4, !tbaa !55
  %i.ak = call noundef i32 @llvm.bswap.i32(i32 %.promoted.i125)
  store i32 %i.ak, ptr %i.ai, align 4, !tbaa !55
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit126

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit126: ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit123, %.lr.ph.i.preheader.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #37
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #37
  %i.am = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.r, i64 noundef 2, i64 noundef 1)
  br i1 %i.am, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit.thread

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit.thread: ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit126
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #37
  br label %bb.ag

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit: ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit126
  %i.an = and i1 %i.ah, %i.aj
  %.promoted.i128 = load i16, ptr %i.r, align 2, !tbaa !76
  %i.ao = call noundef i16 @llvm.bswap.i16(i16 %.promoted.i128) ; 2 uses
  store i16 %i.ao, ptr %i.al, align 8, !tbaa !76
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #37
  br i1 %i.an, label %bb.b, label %bb.ag

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIttEEbRT0_.exit
  %i.ap = load i32, ptr %i.ai, align 4, !tbaa !606
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i32, ptr %1, align 8, !tbaa !607
  %i.as = load <2 x i32>, ptr %i.aa, align 4, !tbaa !55
  %i.at = insertelement <2 x i32> poison, i32 %i.ap, i64 0
  %i.au = insertelement <2 x i32> %i.at, i32 %i.ar, i64 1
  %i.av = sub nsw <2 x i32> %i.as, %i.au
  %i.aw = call <2 x i32> @llvm.abs.v2i32(<2 x i32> %i.av, i1 true)
  store <2 x i32> %i.aw, ptr %i.aq, align 8, !tbaa !55
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ay = zext i16 %i.ao to i64
  call void @_ZNSt6vectorIN11OpenImageIO4v3_18PSDInput11ChannelInfoESaIS3_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, i64 noundef %i.ay)
  %i.az = load i16, ptr %i.al, align 8, !tbaa !236
  %.not187 = icmp eq i16 %i.az, 0
  br i1 %.not187, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 660
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 56
  br label %bb.c

._crit_edge:                                      ; preds = %bb.f, %bb.b
  %.099.lcssa = phi i1 [ true, %bb.b ], [ %.1100.in, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #37
  %i.bc = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.w, i64 noundef 4, i64 noundef 1)
  %.not.not = select i1 %i.bc, i1 %.099.lcssa, i1 false
  br i1 %.not.not, label %bb.g, label %.loopexit

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.099181 = phi i1 [ true, %.lr.ph ], [ %.1100.in, %bb.f ]
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !158
  %i.be = getelementptr inbounds nuw [112 x i8], ptr %i.bd, i64 %indvars.iv ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #37
  %i.bg = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.q, i64 noundef 2, i64 noundef 1)
  br i1 %i.bg, label %.lr.ph.i.preheader.i129, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exit

.lr.ph.i.preheader.i129:                          ; preds = %bb.c
  %.promoted.i130 = load i16, ptr %i.q, align 2, !tbaa !76
  %i.bh = call noundef i16 @llvm.bswap.i16(i16 %.promoted.i130)
  store i16 %i.bh, ptr %i.bf, align 2, !tbaa !76
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exit: ; preds = %bb.c, %.lr.ph.i.preheader.i129
  %i.bi = phi i1 [ false, %bb.c ], [ %.099181, %.lr.ph.i.preheader.i129 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #37
  %i.bj = load i16, ptr %i.ba, align 4, !tbaa !220
  %i.bk = icmp eq i16 %i.bj, 1
  br i1 %i.bk, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #37
  %i.bl = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.p, i64 noundef 4, i64 noundef 1) ; 2 uses
  br i1 %i.bl, label %.lr.ph.i.preheader.i131, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit

.lr.ph.i.preheader.i131:                          ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.promoted.i132 = load i32, ptr %i.p, align 4, !tbaa !55
  %i.bn = call noundef i32 @llvm.bswap.i32(i32 %.promoted.i132)
  %i.bo = zext i32 %i.bn to i64
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !74
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit: ; preds = %bb.d, %.lr.ph.i.preheader.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #37
  br label %bb.f

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIssEEbRT0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #37
  %i.bp = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.o, i64 noundef 8, i64 noundef 1) ; 2 uses
  br i1 %i.bp, label %.lr.ph.i.preheader.i133, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeImmEEbRT0_.exit

.lr.ph.i.preheader.i133:                          ; preds = %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %.promoted.i134 = load i64, ptr %i.o, align 8, !tbaa !74
  %i.br = call noundef i64 @llvm.bswap.i64(i64 %.promoted.i134)
  store i64 %i.br, ptr %i.bq, align 8, !tbaa !74
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeImmEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeImmEEbRT0_.exit: ; preds = %bb.e, %.lr.ph.i.preheader.i133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #37
  br label %bb.f

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeImmEEbRT0_.exit, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit
  %.pn117 = phi i1 [ %i.bl, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjmEEbRT0_.exit ], [ %i.bp, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeImmEEbRT0_.exit ]
  %.1100.in = and i1 %i.bi, %.pn117               ; 2 uses
  %i.bs = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapIsPN11OpenImageIO4v3_18PSDInput11ChannelInfoESt4lessIsESaISt4pairIKsS4_EEEixERS8_(ptr noundef nonnull align 8 dereferenceable(48) %i.bb, ptr noundef nonnull align 2 dereferenceable(2) %i.bf)
  store ptr %i.be, ptr %i.bs, align 8, !tbaa !240
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bt = load i16, ptr %i.al, align 8, !tbaa !236
  %i.bu = zext i16 %i.bt to i64
  %i.bv = icmp samesign ult i64 %indvars.iv.next, %i.bu
  br i1 %i.bv, label %bb.c, label %._crit_edge, !llvm.loop !604

bb.g:                                             ; preds = %._crit_edge
  %i.bw = load i32, ptr %i.w, align 1
  %i.bx = icmp ne i32 %i.bw, 1296646712
  %i.by = zext i1 %i.bx to i32
  %.not = icmp eq i32 %i.by, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.86)
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ca = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.bz, i64 noundef 4, i64 noundef 1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #37
  %i.cb = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.n, i64 noundef 1, i64 noundef 1) ; 2 uses
  br i1 %i.cb, label %bb.j, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit

bb.j:                                             ; preds = %bb.i
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 108
  %i.cd = load i8, ptr %i.n, align 1, !tbaa !63
  store i8 %i.cd, ptr %i.cc, align 4, !tbaa !63
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #37
  %i.ce = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.m, i64 noundef 1, i64 noundef 1) ; 2 uses
  br i1 %i.ce, label %bb.k, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit135

bb.k:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 109
  %i.cg = load i8, ptr %i.m, align 1, !tbaa !63
  store i8 %i.cg, ptr %i.cf, align 1, !tbaa !63
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit135

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit135: ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #37
  %i.ch = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.l, i64 noundef 1, i64 noundef 1) ; 2 uses
  br i1 %i.ch, label %bb.l, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit136

bb.l:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit135
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 110
  %i.cj = load i8, ptr %i.l, align 1, !tbaa !63
  store i8 %i.cj, ptr %i.ci, align 2, !tbaa !63
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit136

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit136: ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit135, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #37
  %i.ck = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioseekEli(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 noundef 1, i32 noundef 1)
  %i.cl = and i1 %i.ca, %i.ck
  %i.cm = and i1 %i.cb, %i.cl
  %i.cn = and i1 %i.ce, %i.cm
  %i.co = and i1 %i.ch, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #37
  %i.cq = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.k, i64 noundef 4, i64 noundef 1) ; 2 uses
  br i1 %i.cq, label %.lr.ph.i.preheader.i137, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit136._ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit139_crit_edge

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit136._ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit139_crit_edge: ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit136
  %.pre = load i32, ptr %i.cp, align 8, !tbaa !608
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit139

.lr.ph.i.preheader.i137:                          ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit136
  %.promoted.i138 = load i32, ptr %i.k, align 4, !tbaa !55
  %i.cr = call noundef i32 @llvm.bswap.i32(i32 %.promoted.i138) ; 2 uses
  store i32 %i.cr, ptr %i.cp, align 8, !tbaa !55
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit139

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit139: ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit136._ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit139_crit_edge, %.lr.ph.i.preheader.i137
  %i.cs = phi i32 [ %.pre, %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIhhEEbRT0_.exit136._ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit139_crit_edge ], [ %i.cr, %.lr.ph.i.preheader.i137 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #37
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #37
  %i.ct = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.j, i64 noundef 4, i64 noundef 1)
  br i1 %i.ct, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit142, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit142.thread

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit142.thread: ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit139
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #37
  br label %.loopexit

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit142: ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit139
  %i.cu = and i1 %i.cq, %i.co
  %.promoted.i141 = load i32, ptr %i.j, align 4, !tbaa !55 ; 2 uses
  %i.cv = call noundef i32 @llvm.bswap.i32(i32 %.promoted.i141) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #37
  br i1 %i.cu, label %bb.m, label %.loopexit

bb.m:                                             ; preds = %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit142
  %.not112 = icmp eq i32 %.promoted.i141, 0
  br i1 %.not112, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cw = call noundef i64 @_ZNK11OpenImageIO4v3_110ImageInput6iotellEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
  %i.cx = zext i32 %i.cv to i64
  %i.cy = add nsw i64 %i.cw, %i.cx
  %i.cz = icmp ugt i32 %i.cv, 17
  br i1 %i.cz, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #37
  %i.da = call noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(840) %0, ptr noundef nonnull %i.i, i64 noundef 4, i64 noundef 1) ; 2 uses
  br i1 %i.da, label %.lr.ph.i.preheader.i143, label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit145

.lr.ph.i.preheader.i143:                          ; preds = %bb.o
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 116
  %.promoted.i144 = load i32, ptr %i.i, align 4, !tbaa !55
  %i.dc = call noundef i32 @llvm.bswap.i32(i32 %.promoted.i144)
  store i32 %i.dc, ptr %i.db, align 4, !tbaa !55
  br label %_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit145

_ZN11OpenImageIO4v3_18PSDInput9read_bigeIjjEEbRT0_.exit145: ; preds = %bb.o, %.lr.ph.i.preheader.i143
end_hunk_0
