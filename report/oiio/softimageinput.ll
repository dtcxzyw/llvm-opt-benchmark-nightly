begin_hunk_0
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  %6 = alloca %struct._G_fpos_t, align 8          ; 6 uses
  %7 = alloca %struct._G_fpos_t, align 8          ; 10 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  store i32 %3, ptr %i.a, align 4, !tbaa !3
  tail call void @_ZNK11OpenImageIO4v3_110ImageInput4lockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
end_hunk_0
begin_hunk_1

bb.q:                                             ; preds = %_ZNSt6vectorI9_G_fpos_tSaIS0_EE9push_backERKS0_.exit34, %bb.p
  %i.bl = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_114SoftimageInput18read_next_scanlineEPv(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef null)
          to label %bb.r unwind label %.loopexit

bb.r:                                             ; preds = %bb.q
  br i1 %i.bl, label %bb.t, label %.critedge

.loopexit:                                        ; preds = %bb.q, %_ZNKSt6vectorI9_G_fpos_tSaIS0_EE12_M_check_lenEmPKc.exit.i.i26
  %lpad.loopexit = landingpad { ptr, i32 }
end_hunk_1
begin_hunk_2

bb.y:                                             ; preds = %_ZNSt6vectorI9_G_fpos_tSaIS0_EE9push_backERKS0_.exit34
  %i.cp = invoke noundef zeroext i1 @_ZN11OpenImageIO4v3_114SoftimageInput18read_next_scanlineEPv(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef %5)
          to label %bb.z unwind label %.loopexit.split-lp

bb.z:                                             ; preds = %bb.y
  %i.cq = load ptr, ptr %i.bj, align 8, !tbaa !13
end_hunk_2
begin_hunk_3
  store ptr %i.dl, ptr %i.bk, align 8, !tbaa !106
  br label %_ZNSt6vectorI9_G_fpos_tSaIS0_EE9push_backERKS0_.exit44

_ZNSt6vectorI9_G_fpos_tSaIS0_EE9push_backERKS0_.exit44: ; preds = %_ZNSt6vectorI9_G_fpos_tSaIS0_EE17_M_realloc_insertIJRKS0_EEEvN9__gnu_cxx17__normal_iteratorIPS0_S2_EEDpOT_.exit.i41, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %_ZN11OpenImageIO4v3_114SoftimageInput5closeEv.exit

bb.ae:                                            ; preds = %bb.o
end_hunk_3
begin_hunk_4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %bb.aq

.critedge:                                        ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #31
  br label %_ZN11OpenImageIO4v3_114SoftimageInput5closeEv.exit

_ZN11OpenImageIO4v3_114SoftimageInput5closeEv.exit: ; preds = %bb.an, %.noexc, %_ZSt8_DestroyIP9_G_fpos_tS0_EvT_S2_RSaIT0_E.exit.i.i.i.i, %_ZNSt6vectorIN11OpenImageIO4v3_113softimage_pvt13ChannelPacketESaIS3_EE5clearEv.exit.i.i, %_ZNSt6vectorI9_G_fpos_tSaIS0_EE9push_backERKS0_.exit44, %.critedge, %bb.al, %bb.ak, %bb.f, %_ZNSt6vectorI9_G_fpos_tSaIS0_EE9push_backERKS0_.exit, %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit
  %.2 = phi i1 [ false, %_ZN11OpenImageIO4v3_110ImageInput13seek_subimageEii.exit ], [ false, %bb.an ], [ %i.cp, %_ZNSt6vectorI9_G_fpos_tSaIS0_EE9push_backERKS0_.exit44 ], [ false, %.critedge ], [ false, %_ZSt8_DestroyIP9_G_fpos_tS0_EvT_S2_RSaIT0_E.exit.i.i.i.i ], [ %i.y, %_ZNSt6vectorI9_G_fpos_tSaIS0_EE9push_backERKS0_.exit ], [ %i.y, %bb.f ], [ %i.ec, %bb.al ], [ %i.ec, %bb.ak ], [ false, %_ZNSt6vectorIN11OpenImageIO4v3_113softimage_pvt13ChannelPacketESaIS3_EE5clearEv.exit.i.i ], [ false, %.noexc ]
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput6unlockEv(ptr noundef nonnull align 8 dereferenceable(184) %0)
          to label %_ZNSt10lock_guardIRKN11OpenImageIO4v3_110ImageInputEED2Ev.exit unwind label %bb.ap

end_hunk_4
begin_hunk_5
  %i.bj = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.bk = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 2, ptr noundef %i.bj)
  %.not100 = icmp eq i64 %i.bk, 2
  br i1 %.not100, label %.lr.ph.i.preheader, label %.critedge110

.lr.ph.i.preheader:                               ; preds = %bb.k
  %.promoted = load i16, ptr %i.b, align 2, !tbaa !167
end_hunk_5
begin_hunk_6
  %i.bx = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.by = call i64 @fread(ptr noundef nonnull %i.bw, i64 noundef 1, i64 noundef %i.bv, ptr noundef %i.bx)
  %.not104 = icmp eq i64 %i.by, %i.bv
  br i1 %.not104, label %.preheader126, label %.critedge110

.preheader126:                                    ; preds = %bb.n
  %i.bz = zext i16 %i.bo to i64                   ; 2 uses
end_hunk_6
begin_hunk_7
  %i.ek = mul i64 %i.ej, %i.f
  %i.el = call i32 @fseek(ptr noundef %i.ed, i64 noundef %i.ek, i32 noundef 1)
  %.not102 = icmp eq i32 %i.el, 0
  br i1 %.not102, label %..critedge_crit_edge, label %.critedge110

..critedge_crit_edge:                             ; preds = %bb.p
  %.pre = zext i16 %i.bo to i64
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %._crit_edge
  %.pre-phi179 = phi i64 [ %.pre, %..critedge_crit_edge ], [ %i.bz, %._crit_edge ]
end_hunk_7
begin_hunk_8
  %.not169 = icmp samesign ult i64 %.283, %i.er
  br i1 %.not169, label %bb.b, label %.loopexit, !llvm.loop !171

.critedge110:                                     ; preds = %bb.n, %bb.k, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #31
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.i, %.thread120, %bb.h, %bb.a, %.critedge110
  %i.es = phi i1 [ false, %bb.h ], [ false, %.critedge110 ], [ true, %bb.a ], [ false, %bb.b ], [ false, %bb.i ], [ true, %.thread120 ]
  %i.et = load ptr, ptr %3, align 8, !tbaa !85    ; 3 uses
  %.not.i.i.i111 = icmp eq ptr %i.et, null
  br i1 %.not.i.i.i111, label %_ZNSt6vectorIiSaIiEED2Ev.exit112, label %bb.r
end_hunk_8
