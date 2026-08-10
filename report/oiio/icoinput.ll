inline.NumInlined: 3258
inline.NumDeleted: 981
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN11OpenImageIO4v3_19ImageSpecaSEOS1_:bb.a
.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.at, %.lr.ph.i.i.i.i.i.i ], [ %i.al, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit ] ; 2 uses
  tail call void @_ZN11OpenImageIO4v3_110ParamValue11clear_valueEv(ptr noundef nonnull align 8 dereferenceable(39) %.05.i.i.i.i.i.i) #30
  %i.at = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.at, %i.an
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !64

_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSEOS7_.exit
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN11OpenImageIO4v3_114ParamValueListaSEOS1_.exit, label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i.i.i
  %i.au = ptrtoint ptr %i.ap to i64
  %i.av = ptrtoint ptr %i.al to i64
  %i.aw = sub i64 %i.au, %i.av
  tail call void @_ZdlPvm(ptr noundef nonnull %i.al, i64 noundef %i.aw) #31
  br label %_ZN11OpenImageIO4v3_114ParamValueListaSEOS1_.exit

_ZN11OpenImageIO4v3_114ParamValueListaSEOS1_.exit: ; preds = %_ZSt8_DestroyIPN11OpenImageIO4v3_110ParamValueES2_EvT_S4_RSaIT0_E.exit.i.i.i.i, %bb.d
  ret ptr %0
}

; Function Attrs: nounwind
declare void @_ZN11OpenImageIO4v3_19ImageSpec21default_channel_namesEv(ptr noundef nonnull align 8 dereferenceable(160)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_18ICOInput7readimgEv(ptr noundef nonnull align 8 dereferenceable(312) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @_ZN11OpenImageIO4v3_17PNG_pvt16read_into_bufferB5cxx11ERP14png_struct_defRP12png_info_defRNS0_9ImageSpecERSt6vectorIhSaIhEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(160) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.e)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !13
  %.not126 = icmp eq i64 %i.g, 0                  ; 2 uses
  br i1 %.not126, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.5, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %1, align 8, !tbaa !61     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.j, align 8, !tbaa !16
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_17ICO_pvt17ico_palette_entryESaIS3_EED2Ev.exit150

bb.e:                                             ; preds = %bb.b, %bb.c
  %i.n = load ptr, ptr %1, align 8, !tbaa !61     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.p = icmp eq ptr %i.n, %i.o
  br i1 %i.p, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %bb.e
  %i.q = load i64, ptr %i.o, align 8, !tbaa !16
  %i.r = add i64 %i.q, 1
  call void @_ZdlPvm(ptr noundef %i.n, i64 noundef %i.r) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #30
  br label %_ZNSt6vectorIN11OpenImageIO4v3_17ICO_pvt17ico_palette_entryESaIS3_EED2Ev.exit

bb.f:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 24 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = tail call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11image_bytesEb(ptr noundef nonnull align 8 dereferenceable(160) %i.t, i1 noundef zeroext false) #30
  tail call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 noundef %i.u)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 5 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !93   ; 3 uses
  %i.x = sext i32 %i.w to i64                     ; 4 uses
  %i.y = icmp slt i32 %i.w, 0
  br i1 %i.y, label %.noexc, label %_ZNSt6vectorIN11OpenImageIO4v3_17ICO_pvt17ico_palette_entryESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i

.noexc:                                           ; preds = %bb.f
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.83) #33
  unreachable

_ZNSt6vectorIN11OpenImageIO4v3_17ICO_pvt17ico_palette_entryESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i: ; preds = %bb.f
  %.not.i.i.i.i = icmp eq i32 %i.w, 0
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_17ICO_pvt17ico_palette_entryESaIS3_EEC2EmRKS4_.exit.thread, label %.noexc138

.noexc138:                                        ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_17ICO_pvt17ico_palette_entryESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.z = shl nuw nsw i64 %i.x, 2
  %i.aa = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.z) #35 ; 10 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.x ; 4 uses
  store i32 0, ptr %i.aa, align 1
  %i.ac = add nsw i64 %i.x, -1                    ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %_ZNSt6vectorIN11OpenImageIO4v3_17ICO_pvt17ico_palette_entryESaIS3_EEC2EmRKS4_.exit, label %bb.g

bb.g:                                             ; preds = %.noexc138
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 4 uses
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.ac, 2
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.idx.i.i.i.i.i.i.i
  %i.ag = add nuw nsw i64 %i.x, 4611686018427387902
  %i.ah = and i64 %i.ag, 4611686018427387903      ; 2 uses
  %i.ai = add nuw nsw i64 %i.ah, 1                ; 2 uses
  %min.iters.check = icmp samesign ult i64 %i.ah, 7
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.g
  %n.vec = and i64 %i.ai, 9223372036854775800     ; 3 uses
  %i.aj = shl i64 %n.vec, 2
  %i.ak = getelementptr i8, ptr %i.ae, i64 %i.aj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.ae, i64 %i.al ; 2 uses
  %i.am = load i32, ptr %i.aa, align 1
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.am, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.an = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 1
  store <4 x i32> %broadcast.splat, ptr %i.an, align 1
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ao = icmp eq i64 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !139

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN11OpenImageIO4v3_17ICO_pvt17ico_palette_entryESaIS3_EEC2EmRKS4_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %bb.g, %middle.block
  %.06.i.i.i.i.i.i.i.i.i.ph = phi ptr [ %i.ae, %bb.g ], [ %i.ak, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ap = load i32, ptr %i.aa, align 1
  store i32 %i.ap, ptr %.06.i.i.i.i.i.i.i.i.i, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.aq, %i.af
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN11OpenImageIO4v3_17ICO_pvt17ico_palette_entryESaIS3_EEC2EmRKS4_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.i, !llvm.loop !142

_ZNSt6vectorIN11OpenImageIO4v3_17ICO_pvt17ico_palette_entryESaIS3_EEC2EmRKS4_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %middle.block, %.noexc138
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 4 uses
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !88 ; 2 uses
  %i.at = icmp sgt i32 %i.as, 15
  br i1 %i.at, label %.critedge, label %.lr.ph

_ZNSt6vectorIN11OpenImageIO4v3_17ICO_pvt17ico_palette_entryESaIS3_EEC2EmRKS4_.exit.thread: ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_17ICO_pvt17ico_palette_entryESaIS3_EE17_S_check_init_lenEmRKS4_.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 252 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !88
  br label %.critedge

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aw = load i32, ptr %i.v, align 8, !tbaa !93
  %i.ax = sext i32 %i.aw to i64
  %.not114 = icmp slt i64 %indvars.iv.next, %i.ax
  br i1 %.not114, label %.lr.ph, label %.critedge.loopexit, !llvm.loop !143

.lr.ph:                                           ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_17ICO_pvt17ico_palette_entryESaIS3_EEC2EmRKS4_.exit, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 0, %_ZNSt6vectorIN11OpenImageIO4v3_17ICO_pvt17ico_palette_entryESaIS3_EEC2EmRKS4_.exit ] ; 2 uses
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv
  %i.az = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %i.ay, i64 noundef 1, i64 noundef 4)
          to label %bb.i unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit147.thread

bb.i:                                             ; preds = %.lr.ph
  br i1 %i.az, label %bb.h, label %_ZNSt6vectorIhSaIhEED2Ev.exit.thread

_ZNSt6vectorIhSaIhEED2Ev.exit147.thread:          ; preds = %.lr.ph
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

.critedge.loopexit:                               ; preds = %bb.h
  %.pre = load i32, ptr %i.ar, align 4, !tbaa !88
  br label %.critedge

.critedge:                                        ; preds = %_ZNSt6vectorIN11OpenImageIO4v3_17ICO_pvt17ico_palette_entryESaIS3_EEC2EmRKS4_.exit.thread, %.critedge.loopexit, %_ZNSt6vectorIN11OpenImageIO4v3_17ICO_pvt17ico_palette_entryESaIS3_EEC2EmRKS4_.exit
  %i.bb = phi ptr [ %i.ar, %.critedge.loopexit ], [ %i.au, %_ZNSt6vectorIN11OpenImageIO4v3_17ICO_pvt17ico_palette_entryESaIS3_EEC2EmRKS4_.exit.thread ], [ %i.ar, %_ZNSt6vectorIN11OpenImageIO4v3_17ICO_pvt17ico_palette_entryESaIS3_EEC2EmRKS4_.exit ] ; 2 uses
  %.sroa.0171.0259 = phi ptr [ %i.aa, %.critedge.loopexit ], [ null, %_ZNSt6vectorIN11OpenImageIO4v3_17ICO_pvt17ico_palette_entryESaIS3_EEC2EmRKS4_.exit.thread ], [ %i.aa, %_ZNSt6vectorIN11OpenImageIO4v3_17ICO_pvt17ico_palette_entryESaIS3_EEC2EmRKS4_.exit ] ; 8 uses
  %.sroa.14.0252.a = phi ptr [ %i.ab, %.critedge.loopexit ], [ null, %_ZNSt6vectorIN11OpenImageIO4v3_17ICO_pvt17ico_palette_entryESaIS3_EEC2EmRKS4_.exit.thread ], [ %i.ab, %_ZNSt6vectorIN11OpenImageIO4v3_17ICO_pvt17ico_palette_entryESaIS3_EEC2EmRKS4_.exit ] ; 2 uses
  %i.bc = phi i32 [ %.pre, %.critedge.loopexit ], [ %i.av, %_ZNSt6vectorIN11OpenImageIO4v3_17ICO_pvt17ico_palette_entryESaIS3_EEC2EmRKS4_.exit.thread ], [ %i.as, %_ZNSt6vectorIN11OpenImageIO4v3_17ICO_pvt17ico_palette_entryESaIS3_EEC2EmRKS4_.exit ] ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 13 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !144 ; 2 uses
  %i.bf = mul nsw i32 %i.bc, %i.be                ; 2 uses
  %i.bg = add nsw i32 %i.bf, 7
  %i.bh = sdiv i32 %i.bg, 8
  %2 = add nsw i32 %i.bh, 3
  %i.bi = and i32 %2, -4                          ; 2 uses
  %i.bj = sext i32 %i.bi to i64                   ; 4 uses
  %i.bk = icmp slt i32 %i.bf, -38
  br i1 %i.bk, label %bb.j, label %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i

bb.j:                                             ; preds = %.critedge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.83) #33
          to label %.noexc141 unwind label %bb.l

.noexc141:                                        ; preds = %bb.j
  unreachable

_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %.critedge
  %.not.i.i.i.i139 = icmp eq i32 %i.bi, 0
  br i1 %.not.i.i.i.i139, label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #35
          to label %.noexc142 unwind label %bb.l  ; 4 uses

.noexc142:                                        ; preds = %bb.k
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.bj
  store i8 0, ptr %i.bl, align 1, !tbaa !16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 1
  %i.bo = add nsw i64 %i.bj, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bn, i8 0, i64 %i.bo, i1 false)
  br label %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit

_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit:               ; preds = %.noexc142, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i
  %.sroa.0151.3 = phi ptr [ %i.bl, %.noexc142 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 19 uses
  %.sroa.29.3 = phi ptr [ %i.bm, %.noexc142 ], [ null, %_ZNSt6vectorIhSaIhEE17_S_check_init_lenEmRKS0_.exit.i ] ; 9 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !145 ; 2 uses
  %i.br = icmp slt i32 %i.bq, 1
  br i1 %i.br, label %.critedge132, label %.lr.ph214

.critedge130.loopexit:                            ; preds = %bb.y, %.preheader204
  %i.bs = phi i32 [ %i.bw, %.preheader204 ], [ %i.gp, %bb.y ]
  %i.bt = icmp slt i32 %.090213.in, 2
  br i1 %i.bt, label %.critedge132.loopexit, label %.lr.ph214, !llvm.loop !146

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit147

.lr.ph214:                                        ; preds = %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit, %.critedge130.loopexit
  %.090213.in = phi i32 [ %.090213, %.critedge130.loopexit ], [ %i.bq, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ] ; 2 uses
  %.090213 = add nsw i32 %.090213.in, -1          ; 2 uses
  %i.bv = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %.sroa.0151.3, i64 noundef 1, i64 noundef %i.bj)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.lr.ph214
  br i1 %i.bv, label %.preheader204, label %.critedge134.thread

.preheader204:                                    ; preds = %bb.m
  %i.bw = load i32, ptr %i.bd, align 4, !tbaa !144 ; 3 uses
  %.not119209 = icmp sgt i32 %i.bw, 0
  br i1 %.not119209, label %.lr.ph211, label %.critedge130.loopexit

bb.n:                                             ; preds = %.lr.ph214
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.lr.ph211:                                        ; preds = %.preheader204, %bb.y
  %i.by = phi i32 [ %i.gp, %bb.y ], [ %i.bw, %.preheader204 ]
  %.089210 = phi i32 [ %i.go, %bb.y ], [ 0, %.preheader204 ] ; 15 uses
  %i.bz = mul nsw i32 %i.by, %.090213
  %i.ca = add i32 %i.bz, %.089210
  %i.cb = shl i32 %i.ca, 2                        ; 5 uses
  %i.cc = load i32, ptr %i.bb, align 4, !tbaa !88
  switch i32 %i.cc, label %bb.y [
    i32 1, label %bb.o
    i32 4, label %bb.r
    i32 8, label %bb.u
    i32 24, label %bb.w
    i32 32, label %bb.x
  ]

bb.o:                                             ; preds = %.lr.ph211
  %i.cd = sdiv i32 %.089210, 8
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0151.3, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !16
  %i.ch = zext i8 %i.cg to i32
  %i.ci = srem i32 %.089210, 8
  %i.cj = sub nsw i32 7, %i.ci
  %i.ck = lshr i32 %i.ch, %i.cj
  %i.cl = and i32 %i.ck, 1                        ; 2 uses
  %i.cm = load i32, ptr %i.v, align 8, !tbaa !93
  %.not117 = icmp slt i32 %i.cl, %i.cm
  br i1 %.not117, label %bb.q, label %.invoke

bb.p:                                             ; preds = %.invoke
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.q:                                             ; preds = %bb.o
  %i.co = zext nneg i32 %i.cl to i64
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0171.0259, i64 %i.co ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 2
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !147
  %i.cs = sext i32 %i.cb to i64                   ; 3 uses
  %i.ct = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 %i.cs
  store i8 %i.cr, ptr %i.cu, align 1, !tbaa !16
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !149
  %i.cx = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.cy = getelementptr i8, ptr %i.cx, i64 %i.cs
  %i.cz = getelementptr i8, ptr %i.cy, i64 1
  store i8 %i.cw, ptr %i.cz, align 1, !tbaa !16
  br label %.sink.split

bb.r:                                             ; preds = %.lr.ph211
  %i.da = sdiv i32 %.089210, 2
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0151.3, i64 %i.db ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !16
  %i.de = lshr i8 %i.dd, 4                        ; 2 uses
  %i.df = zext nneg i8 %i.de to i32
  %i.dg = load i32, ptr %i.v, align 8, !tbaa !93
  %.not116 = icmp sgt i32 %i.dg, %i.df
  br i1 %.not116, label %bb.s, label %.invoke

bb.s:                                             ; preds = %bb.r
  %i.dh = zext nneg i8 %i.de to i64
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0171.0259, i64 %i.dh ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 2
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !147
  %i.dl = sext i32 %i.cb to i64                   ; 6 uses
  %i.dm = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dl
  store i8 %i.dk, ptr %i.dn, align 1, !tbaa !16
  %i.do = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !149
  %i.dq = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.dr = getelementptr i8, ptr %i.dq, i64 %i.dl
  %i.ds = getelementptr i8, ptr %i.dr, i64 1
  store i8 %i.dp, ptr %i.ds, align 1, !tbaa !16
  %i.dt = load i8, ptr %i.di, align 1, !tbaa !150
  %i.du = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.dv = getelementptr i8, ptr %i.du, i64 %i.dl
  %i.dw = getelementptr i8, ptr %i.dv, i64 2
  store i8 %i.dt, ptr %i.dw, align 1, !tbaa !16
  %i.dx = load i32, ptr %i.bd, align 4, !tbaa !144
  %i.dy = add nsw i32 %i.dx, -1
  %i.dz = icmp eq i32 %.089210, %i.dy
  br i1 %i.dz, label %bb.y, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ea = load i8, ptr %i.dc, align 1, !tbaa !16
  %i.eb = and i8 %i.ea, 15
  %i.ec = zext nneg i8 %i.eb to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0171.0259, i64 %i.ec ; 3 uses
  %i.ee = add nsw i32 %.089210, 1
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ed, i64 2
  %i.eg = load i8, ptr %i.ef, align 1, !tbaa !147
  %i.eh = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.ei = getelementptr i8, ptr %i.eh, i64 %i.dl
  %i.ej = getelementptr i8, ptr %i.ei, i64 4
  store i8 %i.eg, ptr %i.ej, align 1, !tbaa !16
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 1
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !149
  %i.em = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.en = getelementptr i8, ptr %i.em, i64 %i.dl
  %i.eo = getelementptr i8, ptr %i.en, i64 5
  store i8 %i.el, ptr %i.eo, align 1, !tbaa !16
  br label %.sink.split

bb.u:                                             ; preds = %.lr.ph211
  %i.ep = sext i32 %.089210 to i64
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.0151.3, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !16  ; 2 uses
  %i.es = zext i8 %i.er to i32
  %i.et = load i32, ptr %i.v, align 8, !tbaa !93
  %.not115 = icmp sgt i32 %i.et, %i.es
  br i1 %.not115, label %bb.v, label %.invoke

.invoke:                                          ; preds = %bb.o, %bb.u, %bb.r
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.7)
          to label %.critedge134.thread unwind label %bb.p

bb.v:                                             ; preds = %bb.u
  %i.eu = zext i8 %i.er to i64
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0171.0259, i64 %i.eu ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 2
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !147
  %i.ey = sext i32 %i.cb to i64                   ; 3 uses
  %i.ez = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.ey
  store i8 %i.ex, ptr %i.fa, align 1, !tbaa !16
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ev, i64 1
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !149
  %i.fd = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.fe = getelementptr i8, ptr %i.fd, i64 %i.ey
  %i.ff = getelementptr i8, ptr %i.fe, i64 1
  store i8 %i.fc, ptr %i.ff, align 1, !tbaa !16
  br label %.sink.split

bb.w:                                             ; preds = %.lr.ph211
  %i.fg = mul nsw i32 %.089210, 3
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr i8, ptr %.sroa.0151.3, i64 %i.fh ; 3 uses
  %i.fj = getelementptr i8, ptr %i.fi, i64 2
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !16
  %i.fl = sext i32 %i.cb to i64                   ; 3 uses
  %i.fm = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fl
  store i8 %i.fk, ptr %i.fn, align 1, !tbaa !16
  %i.fo = getelementptr i8, ptr %i.fi, i64 1
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !16
  %i.fq = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.fr = getelementptr i8, ptr %i.fq, i64 %i.fl
  %i.fs = getelementptr i8, ptr %i.fr, i64 1
  store i8 %i.fp, ptr %i.fs, align 1, !tbaa !16
  br label %.sink.split

bb.x:                                             ; preds = %.lr.ph211
  %i.ft = shl nsw i32 %.089210, 2
  %i.fu = sext i32 %i.ft to i64
  %i.fv = getelementptr i8, ptr %.sroa.0151.3, i64 %i.fu ; 4 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 2
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !16
  %i.fy = sext i32 %i.cb to i64                   ; 4 uses
  %i.fz = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.fy
  store i8 %i.fx, ptr %i.ga, align 1, !tbaa !16
  %i.gb = getelementptr i8, ptr %i.fv, i64 1
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !16
  %i.gd = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.ge = getelementptr i8, ptr %i.gd, i64 %i.fy
  %i.gf = getelementptr i8, ptr %i.ge, i64 1
  store i8 %i.gc, ptr %i.gf, align 1, !tbaa !16
  %i.gg = load i8, ptr %i.fv, align 1, !tbaa !16
  %i.gh = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.gi = getelementptr i8, ptr %i.gh, i64 %i.fy
  %i.gj = getelementptr i8, ptr %i.gi, i64 2
  store i8 %i.gg, ptr %i.gj, align 1, !tbaa !16
  %i.gk = getelementptr i8, ptr %i.fv, i64 3
  br label %.sink.split

.sink.split:                                      ; preds = %bb.x, %bb.w, %bb.v, %bb.t, %bb.q
  %.sink276 = phi i64 [ %i.cs, %bb.q ], [ %i.dl, %bb.t ], [ %i.ey, %bb.v ], [ %i.fl, %bb.w ], [ %i.fy, %bb.x ]
  %.sink274 = phi i64 [ 2, %bb.q ], [ 6, %bb.t ], [ 2, %bb.v ], [ 2, %bb.w ], [ 3, %bb.x ]
  %.sink.in = phi ptr [ %i.cp, %bb.q ], [ %i.ed, %bb.t ], [ %i.ev, %bb.v ], [ %i.fi, %bb.w ], [ %i.gk, %bb.x ]
  %.1.ph = phi i32 [ %.089210, %bb.q ], [ %i.ee, %bb.t ], [ %.089210, %bb.v ], [ %.089210, %bb.w ], [ %.089210, %bb.x ]
  %.sink = load i8, ptr %.sink.in, align 1, !tbaa !16
  %i.gl = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.gm = getelementptr i8, ptr %i.gl, i64 %.sink276
  %i.gn = getelementptr i8, ptr %i.gm, i64 %.sink274
  store i8 %.sink, ptr %i.gn, align 1, !tbaa !16
  br label %bb.y

bb.y:                                             ; preds = %.sink.split, %.lr.ph211, %bb.s
  %.1 = phi i32 [ %.089210, %.lr.ph211 ], [ %.089210, %bb.s ], [ %.1.ph, %.sink.split ]
  %i.go = add nsw i32 %.1, 1                      ; 2 uses
  %i.gp = load i32, ptr %i.bd, align 4, !tbaa !144 ; 3 uses
  %.not119 = icmp slt i32 %i.go, %i.gp
  br i1 %.not119, label %.lr.ph211, label %.critedge130.loopexit, !llvm.loop !151

.critedge132.loopexit:                            ; preds = %.critedge130.loopexit
  %.pre225 = load i32, ptr %i.bb, align 4, !tbaa !88
  br label %.critedge132

.critedge132:                                     ; preds = %.critedge132.loopexit, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit
  %i.gq = phi i32 [ %i.bs, %.critedge132.loopexit ], [ %i.be, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ]
  %i.gr = phi i32 [ %.pre225, %.critedge132.loopexit ], [ %i.bc, %_ZNSt6vectorIhSaIhEEC2EmRKS0_.exit ]
  %i.gs = icmp slt i32 %i.gr, 32
  br i1 %i.gs, label %bb.z, label %.critedge134

bb.z:                                             ; preds = %.critedge132
  %i.gt = add nsw i32 %i.gq, 7
  %i.gu = sdiv i32 %i.gt, 8
  %3 = add nsw i32 %i.gu, 3
  %i.gv = and i32 %3, -4
  %i.gw = sext i32 %i.gv to i64                   ; 3 uses
  %i.gx = ptrtoint ptr %.sroa.29.3 to i64
  %i.gy = ptrtoint ptr %.sroa.0151.3 to i64
  %i.gz = sub i64 %i.gx, %i.gy                    ; 9 uses
  %i.ha = icmp ult i64 %i.gz, %i.gw
  br i1 %i.ha, label %bb.aa, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.aa:                                            ; preds = %bb.z
  %i.hb = sub nuw i64 %i.gw, %i.gz                ; 3 uses
  %i.hc = icmp sgt i64 %i.gz, -1
  tail call void @llvm.assume(i1 %i.hc)
  %i.hd = xor i64 %i.gz, 9223372036854775807
  %.not28.i.i = icmp ult i64 %i.hd, %i.hb
  br i1 %.not28.i.i, label %bb.ab, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.86) #33
          to label %.noexc144 unwind label %bb.ah

.noexc144:                                        ; preds = %bb.ab
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.aa
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.gz, i64 %i.hb)
  %i.he = add nuw i64 %.sroa.speculated.i.i.i, %i.gz
  %i.hf = tail call i64 @llvm.umin.i64(i64 %i.he, i64 9223372036854775807) ; 2 uses
  %i.hg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hf) #35
          to label %.noexc145 unwind label %bb.ah ; 4 uses

.noexc145:                                        ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.gz ; 2 uses
  store i8 0, ptr %i.hh, align 1, !tbaa !16
  %i.hi = add nsw i64 %i.hb, -1                   ; 2 uses
  %i.hj = icmp eq i64 %i.hi, 0
  br i1 %i.hj, label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i, label %bb.ac

bb.ac:                                            ; preds = %.noexc145
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.hk, i8 0, i64 %i.hi, i1 false)
  br label %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i

_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i: ; preds = %bb.ac, %.noexc145
  %.not35.i.i = icmp eq ptr %.sroa.29.3, %.sroa.0151.3
  br i1 %.not35.i.i, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hg, ptr align 1 %.sroa.0151.3, i64 %i.gz, i1 false)
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i: ; preds = %bb.ad, %_ZSt27__uninitialized_default_n_aIPhmhET_S1_T0_RSaIT1_E.exit31.i.i
  %.not.i33.i.i = icmp eq ptr %.sroa.0151.3, null
  br i1 %.not.i33.i.i, label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0151.3, i64 noundef %i.gz) #31
  br label %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i

_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i: ; preds = %bb.ae, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit.i.i
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hg, i64 %i.hf
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %bb.z, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i
  %.sroa.0151.4 = phi ptr [ %i.hg, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i ], [ %.sroa.0151.3, %bb.z ] ; 6 uses
  %.sroa.29.4 = phi ptr [ %i.hl, %_ZNSt12_Vector_baseIhSaIhEE13_M_deallocateEPhm.exit34.i.i ], [ %.sroa.29.3, %bb.z ] ; 4 uses
  %i.hm = load i32, ptr %i.bp, align 8, !tbaa !145 ; 2 uses
  %i.hn = icmp slt i32 %i.hm, 1
  br i1 %i.hn, label %.critedge134, label %.lr.ph219

.loopexit:                                        ; preds = %.preheader, %.preheader203
  %i.ho = icmp slt i32 %.088218.in, 2
  br i1 %i.ho, label %.critedge134.thread, label %.lr.ph219, !llvm.loop !152

.lr.ph219:                                        ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit, %.loopexit
  %.088218.in = phi i32 [ %.088218, %.loopexit ], [ %i.hm, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ] ; 2 uses
  %.088218 = add nsw i32 %.088218.in, -1          ; 9 uses
  %i.hp = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_110ImageInput6ioreadEPvmm(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %.sroa.0151.4, i64 noundef 1, i64 noundef %i.gw)
          to label %bb.af unwind label %bb.ag     ; 3 uses

bb.af:                                            ; preds = %.lr.ph219
  br i1 %i.hp, label %.preheader203, label %.critedge134.thread

.preheader203:                                    ; preds = %bb.af
  %i.hq = load i32, ptr %i.bd, align 4, !tbaa !144 ; 2 uses
  %i.hr = icmp sgt i32 %i.hq, 0
  br i1 %i.hr, label %.preheader, label %.loopexit

bb.ag:                                            ; preds = %.lr.ph219
  %i.hs = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.preheader:                                       ; preds = %.preheader203, %.preheader
  %i.ht = phi i32 [ %i.lr, %.preheader ], [ %i.hq, %.preheader203 ]
  %indvars.iv222 = phi i64 [ %indvars.iv.next223, %.preheader ], [ 0, %.preheader203 ] ; 10 uses
  %i.hu = lshr exact i64 %indvars.iv222, 3
  %i.hv = getelementptr inbounds nuw i8, ptr %.sroa.0151.4, i64 %i.hu ; 8 uses
  %i.hw = mul nsw i32 %i.ht, %.088218
  %i.hx = trunc i64 %indvars.iv222 to i32
  %i.hy = or disjoint i32 %i.hx, 7
  %i.hz = add i32 %i.hw, %i.hy
  %i.ia = shl i32 %i.hz, 2
  %i.ib = load i8, ptr %i.hv, align 1, !tbaa !16
  %i.ic = and i8 %i.ib, 1
  %i.id = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.ie = sext i32 %i.ia to i64
  %i.if = getelementptr i8, ptr %i.id, i64 %i.ie
  %i.ig = getelementptr i8, ptr %i.if, i64 3
  %sext = add nsw i8 %i.ic, -1
  store i8 %sext, ptr %i.ig, align 1, !tbaa !16
  %i.ih = load i32, ptr %i.bd, align 4, !tbaa !144
  %i.ii = mul nsw i32 %i.ih, %.088218
  %i.ij = trunc i64 %indvars.iv222 to i32
  %i.ik = or disjoint i32 %i.ij, 6
  %i.il = add i32 %i.ik, %i.ii
  %i.im = shl i32 %i.il, 2
  %i.in = load i8, ptr %i.hv, align 1, !tbaa !16
  %i.io = lshr i8 %i.in, 1
  %i.ip = and i8 %i.io, 1
  %sext313.a = add nsw i8 %i.ip, -1
  %i.iq = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.ir = sext i32 %i.im to i64
  %i.is = getelementptr i8, ptr %i.iq, i64 %i.ir
  %i.it = getelementptr i8, ptr %i.is, i64 3
  store i8 %sext313.a, ptr %i.it, align 1, !tbaa !16
  %i.iu = load i32, ptr %i.bd, align 4, !tbaa !144
  %i.iv = mul nsw i32 %i.iu, %.088218
  %i.iw = trunc i64 %indvars.iv222 to i32
  %i.ix = or disjoint i32 %i.iw, 5
  %i.iy = add i32 %i.ix, %i.iv
  %i.iz = shl i32 %i.iy, 2
  %i.ja = load i8, ptr %i.hv, align 1, !tbaa !16
  %i.jb = lshr i8 %i.ja, 2
  %i.jc = and i8 %i.jb, 1
  %sext314.a = add nsw i8 %i.jc, -1
  %i.jd = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.je = sext i32 %i.iz to i64
  %i.jf = getelementptr i8, ptr %i.jd, i64 %i.je
  %i.jg = getelementptr i8, ptr %i.jf, i64 3
  store i8 %sext314.a, ptr %i.jg, align 1, !tbaa !16
  %i.jh = load i32, ptr %i.bd, align 4, !tbaa !144
  %i.ji = mul nsw i32 %i.jh, %.088218
  %i.jj = trunc i64 %indvars.iv222 to i32
  %i.jk = or disjoint i32 %i.jj, 4
  %i.jl = add i32 %i.jk, %i.ji
  %i.jm = shl i32 %i.jl, 2
  %i.jn = load i8, ptr %i.hv, align 1, !tbaa !16
  %i.jo = lshr i8 %i.jn, 3
  %i.jp = and i8 %i.jo, 1
  %sext315.a = add nsw i8 %i.jp, -1
  %i.jq = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.jr = sext i32 %i.jm to i64
  %i.js = getelementptr i8, ptr %i.jq, i64 %i.jr
  %i.jt = getelementptr i8, ptr %i.js, i64 3
  store i8 %sext315.a, ptr %i.jt, align 1, !tbaa !16
  %i.ju = load i32, ptr %i.bd, align 4, !tbaa !144
  %i.jv = mul nsw i32 %i.ju, %.088218
  %i.jw = trunc i64 %indvars.iv222 to i32
  %i.jx = or disjoint i32 %i.jw, 3
  %i.jy = add i32 %i.jx, %i.jv
  %i.jz = shl i32 %i.jy, 2
  %i.ka = load i8, ptr %i.hv, align 1, !tbaa !16
  %i.kb = lshr i8 %i.ka, 4
  %i.kc = and i8 %i.kb, 1
  %sext316 = add nsw i8 %i.kc, -1
  %i.kd = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.ke = sext i32 %i.jz to i64
  %i.kf = getelementptr i8, ptr %i.kd, i64 %i.ke
  %i.kg = getelementptr i8, ptr %i.kf, i64 3
  store i8 %sext316, ptr %i.kg, align 1, !tbaa !16
  %i.kh = load i32, ptr %i.bd, align 4, !tbaa !144
  %i.ki = mul nsw i32 %i.kh, %.088218
  %i.kj = trunc i64 %indvars.iv222 to i32
  %i.kk = or disjoint i32 %i.kj, 2
  %i.kl = add i32 %i.kk, %i.ki
  %i.km = shl i32 %i.kl, 2
  %i.kn = load i8, ptr %i.hv, align 1, !tbaa !16
  %i.ko = lshr i8 %i.kn, 5
  %i.kp = and i8 %i.ko, 1
  %sext317 = add nsw i8 %i.kp, -1
  %i.kq = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.kr = sext i32 %i.km to i64
  %i.ks = getelementptr i8, ptr %i.kq, i64 %i.kr
  %i.kt = getelementptr i8, ptr %i.ks, i64 3
  store i8 %sext317, ptr %i.kt, align 1, !tbaa !16
  %i.ku = load i32, ptr %i.bd, align 4, !tbaa !144
  %i.kv = mul nsw i32 %i.ku, %.088218
  %i.kw = trunc i64 %indvars.iv222 to i32
  %i.kx = or disjoint i32 %i.kw, 1
  %i.ky = add i32 %i.kx, %i.kv
  %i.kz = shl i32 %i.ky, 2
  %i.la = load i8, ptr %i.hv, align 1, !tbaa !16
  %i.lb = lshr i8 %i.la, 6
  %i.lc = and i8 %i.lb, 1
  %sext318 = add nsw i8 %i.lc, -1
  %i.ld = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.le = sext i32 %i.kz to i64
  %i.lf = getelementptr i8, ptr %i.ld, i64 %i.le
  %i.lg = getelementptr i8, ptr %i.lf, i64 3
  store i8 %sext318, ptr %i.lg, align 1, !tbaa !16
  %i.lh = load i32, ptr %i.bd, align 4, !tbaa !144
  %i.li = mul nsw i32 %i.lh, %.088218
  %i.lj = trunc nuw nsw i64 %indvars.iv222 to i32
  %i.lk = add i32 %i.li, %i.lj
  %i.ll = shl i32 %i.lk, 2
  %i.lm = load i8, ptr %i.hv, align 1, !tbaa !16
  %.not125.7 = icmp sgt i8 %i.lm, -1
  %.sink308 = sext i1 %.not125.7 to i8
  %i.ln = load ptr, ptr %i.s, align 8, !tbaa !59
  %i.lo = sext i32 %i.ll to i64
  %i.lp = getelementptr i8, ptr %i.ln, i64 %i.lo
  %i.lq = getelementptr i8, ptr %i.lp, i64 3
  store i8 %.sink308, ptr %i.lq, align 1, !tbaa !16
  %indvars.iv.next223 = add nuw nsw i64 %indvars.iv222, 8 ; 2 uses
  %i.lr = load i32, ptr %i.bd, align 4, !tbaa !144 ; 2 uses
  %i.ls = sext i32 %i.lr to i64
  %i.lt = icmp slt i64 %indvars.iv.next223, %i.ls
  br i1 %i.lt, label %.preheader, label %.loopexit, !llvm.loop !153

.critedge134:                                     ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit, %.critedge132
  %.sroa.0151.1 = phi ptr [ %.sroa.0151.3, %.critedge132 ], [ %.sroa.0151.4, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ] ; 2 uses
  %.sroa.29.1 = phi ptr [ %.sroa.29.3, %.critedge132 ], [ %.sroa.29.4, %_ZNSt6vectorIhSaIhEE6resizeEm.exit ]
  %.not.i.i.i = icmp eq ptr %.sroa.0151.1, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %.critedge134.thread

.critedge134.thread:                              ; preds = %bb.m, %.loopexit, %bb.af, %.invoke, %.critedge134
  %.7185 = phi i1 [ true, %.critedge134 ], [ false, %.invoke ], [ %i.hp, %.loopexit ], [ %i.hp, %bb.af ], [ false, %bb.m ]
  %.sroa.29.1184 = phi ptr [ %.sroa.29.1, %.critedge134 ], [ %.sroa.29.3, %.invoke ], [ %.sroa.29.4, %.loopexit ], [ %.sroa.29.4, %bb.af ], [ %.sroa.29.3, %bb.m ]
  %.sroa.0151.1183 = phi ptr [ %.sroa.0151.1, %.critedge134 ], [ %.sroa.0151.3, %.invoke ], [ %.sroa.0151.4, %.loopexit ], [ %.sroa.0151.4, %bb.af ], [ %.sroa.0151.3, %bb.m ] ; 2 uses
  %i.lu = ptrtoint ptr %.sroa.29.1184 to i64
  %i.lv = ptrtoint ptr %.sroa.0151.1183 to i64
  %i.lw = sub i64 %i.lu, %i.lv
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0151.1183, i64 noundef %i.lw) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

bb.ah:                                            ; preds = %bb.ab, %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i
  %i.lx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i146 = icmp eq ptr %.sroa.0151.3, null
  br i1 %.not.i.i.i146, label %_ZNSt6vectorIhSaIhEED2Ev.exit147, label %.thread

.thread:                                          ; preds = %bb.n, %bb.p, %bb.ag, %bb.ah
  %.pn120193 = phi { ptr, i32 } [ %i.lx, %bb.ah ], [ %i.bx, %bb.n ], [ %i.cn, %bb.p ], [ %i.hs, %bb.ag ]
  %.sroa.29.2192 = phi ptr [ %.sroa.29.3, %bb.ah ], [ %.sroa.29.3, %bb.n ], [ %.sroa.29.3, %bb.p ], [ %.sroa.29.4, %bb.ag ]
  %.sroa.0151.2191 = phi ptr [ %.sroa.0151.3, %bb.ah ], [ %.sroa.0151.3, %bb.n ], [ %.sroa.0151.3, %bb.p ], [ %.sroa.0151.4, %bb.ag ] ; 2 uses
  %i.ly = ptrtoint ptr %.sroa.29.2192 to i64
  %i.lz = ptrtoint ptr %.sroa.0151.2191 to i64
  %i.ma = sub i64 %i.ly, %i.lz
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0151.2191, i64 noundef %i.ma) #31
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit147

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %.critedge134.thread, %.critedge134
  %.8 = phi i1 [ %.7185, %.critedge134.thread ], [ true, %.critedge134 ] ; 2 uses
  %.not.i.i.i148 = icmp eq ptr %.sroa.0171.0259, null
  br i1 %.not.i.i.i148, label %_ZNSt6vectorIN11OpenImageIO4v3_17ICO_pvt17ico_palette_entryESaIS3_EED2Ev.exit, label %_ZNSt6vectorIhSaIhEED2Ev.exit.thread

_ZNSt6vectorIhSaIhEED2Ev.exit.thread:             ; preds = %bb.i, %_ZNSt6vectorIhSaIhEED2Ev.exit
  %.sroa.0171.0258.a = phi ptr [ %.sroa.0171.0259, %_ZNSt6vectorIhSaIhEED2Ev.exit ], [ %i.aa, %bb.i ] ; 2 uses
  %.sroa.14.0251 = phi ptr [ %.sroa.14.0252.a, %_ZNSt6vectorIhSaIhEED2Ev.exit ], [ %i.ab, %bb.i ]
  %.8197 = phi i1 [ %.8, %_ZNSt6vectorIhSaIhEED2Ev.exit ], [ false, %bb.i ]
  %i.mb = ptrtoint ptr %.sroa.14.0251 to i64
  %i.mc = ptrtoint ptr %.sroa.0171.0258.a to i64
  %i.md = sub i64 %i.mb, %i.mc
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0171.0258.a, i64 noundef %i.md) #31
  br label %_ZNSt6vectorIN11OpenImageIO4v3_17ICO_pvt17ico_palette_entryESaIS3_EED2Ev.exit
end_hunk_0
