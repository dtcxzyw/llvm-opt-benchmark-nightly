inline.NumInlined: 212
inline.NumDeleted: 122
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
@_ZTIN5zxing12ErrorHandlerE = external constant ptr
@_ZTVN5zxing12ErrorHandlerE = external constant { [10 x ptr] }, align 8
@_ZTVN5zxing8ArrayRefIcEE = linkonce_odr hidden constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN5zxing8ArrayRefIcEE, ptr @_ZN5zxing8ArrayRefIcED2Ev, ptr @_ZN5zxing8ArrayRefIcED0Ev] }, comdat, align 8
@_ZTIN5zxing8ArrayRefIcEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5zxing8ArrayRefIcEE, ptr @_ZTIN5zxing7CountedE }, comdat, align 8
@_ZTSN5zxing8ArrayRefIcEE = linkonce_odr hidden constant [21 x i8] c"N5zxing8ArrayRefIcEE\00", comdat, align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@_ZTVN5zxing5ArrayIcEE = linkonce_odr hidden constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN5zxing5ArrayIcEE, ptr @_ZN5zxing5ArrayIcED2Ev, ptr @_ZN5zxing5ArrayIcED0Ev] }, comdat, align 8
@_ZTIN5zxing5ArrayIcEE = linkonce_odr hidden constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5zxing5ArrayIcEE, ptr @_ZTIN5zxing7CountedE }, comdat, align 8
@_ZTSN5zxing5ArrayIcEE = linkonce_odr hidden constant [18 x i8] c"N5zxing5ArrayIcEE\00", comdat, align 1

@_ZN5zxing6qrcode9DataBlockC1EiNS_8ArrayRefIcEE = hidden unnamed_addr alias void (ptr, i32, ptr), ptr @_ZN5zxing6qrcode9DataBlockC2EiNS_8ArrayRefIcEE

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN5zxing6qrcode9DataBlockC2EiNS_8ArrayRefIcEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(40) initializes((0, 28), (32, 40)) %0, i32 noundef %1, ptr nofree noundef readonly align 8 captures(none) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing6qrcode9DataBlockE, i64 16), ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %1, ptr %i.b, align 4, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.d, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing8ArrayRefIcEE, i64 16), ptr %i.c, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 3 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !8
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 8, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store ptr %i.g, ptr %i.e, align 8, !tbaa !17
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZN5zxing6qrcode9DataBlock19getNumDataCodewordsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN5zxing6qrcode9DataBlock12getCodewordsEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.zxing::ArrayRef") align 8 captures(none) initializes((0, 12), (16, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing8ArrayRefIcEE, i64 16), ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !17   ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %_ZN5zxing8ArrayRefIcEC2ERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !8
  %i.f = add i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 8, !tbaa !8
  br label %_ZN5zxing8ArrayRefIcEC2ERKS1_.exit

_ZN5zxing8ArrayRefIcEC2ERKS1_.exit:               ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.c, ptr %i.g, align 8, !tbaa !17
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN5zxing6qrcode9DataBlock13getDataBlocksENS_8ArrayRefIcEEPNS0_7VersionERNS0_20ErrorCorrectionLevelERNS_12ErrorHandlerE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector") align 8 captures(none) %0, ptr nofree noundef readonly align 8 captures(none) %1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::vector", align 8       ; 11 uses
  %6 = alloca %"class.zxing::IllegalArgumentErrorHandler", align 8 ; 13 uses
  %7 = alloca %"class.zxing::IllegalArgumentErrorHandler", align 8 ; 13 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN5zxing6qrcode7Version19getECBlocksForLevelERNS0_20ErrorCorrectionLevelE(ptr noundef nonnull align 8 dereferenceable(52) %2, ptr noundef nonnull align 8 dereferenceable(40) %3) ; 3 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN5zxing6qrcode8ECBlocks11getECBlocksEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a) ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !18   ; 2 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !22   ; 4 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g                       ; 8 uses
  %.not.i.i.i.i = icmp eq ptr %i.d, %i.e          ; 2 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN5zxing3RefINS0_6qrcode9DataBlockEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ugt i64 %i.h, 9223372036854775800
  br i1 %i.i, label %.noexc.i.i, label %bb.c, !prof !23

.noexc.i.i:                                       ; preds = %bb.b
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #13
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.h) #14 ; 7 uses
  %i.k = icmp samesign ugt i64 %i.h, 8
  br i1 %i.k, label %bb.d, label %bb.e, !prof !24

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.j, ptr align 8 %i.e, i64 %i.h, i1 false)
  br label %.lr.ph.preheader

bb.e:                                             ; preds = %bb.c
  %i.l = icmp eq i64 %i.h, 8
  br i1 %i.l, label %bb.f, label %.lr.ph.preheader

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !25
  store ptr %i.m, ptr %i.j, align 8, !tbaa !25
  br label %.lr.ph.preheader

_ZNSt6vectorIN5zxing3RefINS0_6qrcode9DataBlockEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.thread: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  br label %_ZNSt12_Vector_baseIN5zxing3RefINS0_6qrcode9DataBlockEEESaIS4_EEC2EmRKS5_.exit.thread.i

.lr.ph.preheader:                                 ; preds = %bb.d, %bb.e, %bb.f
  %i.n = lshr exact i64 %i.h, 3                   ; 3 uses
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  %i.o = zext nneg i32 %i.y to i64                ; 2 uses
  %i.p = icmp slt i32 %i.y, 0
  br i1 %i.p, label %bb.g, label %_ZNSt6vectorIN5zxing3RefINS0_6qrcode9DataBlockEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i

bb.g:                                             ; preds = %._crit_edge
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #13
          to label %.noexc unwind label %.thread341

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNSt6vectorIN5zxing3RefINS0_6qrcode9DataBlockEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i: ; preds = %._crit_edge
  store i64 0, ptr %5, align 8
  %.not.i.i.i.i128 = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i.i128, label %_ZNSt12_Vector_baseIN5zxing3RefINS0_6qrcode9DataBlockEEESaIS4_EEC2EmRKS5_.exit.thread.i, label %.lr.ph.preheader.i.i.i.i.i

_ZNSt12_Vector_baseIN5zxing3RefINS0_6qrcode9DataBlockEEESaIS4_EEC2EmRKS5_.exit.thread.i: ; preds = %_ZNSt6vectorIN5zxing3RefINS0_6qrcode9DataBlockEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.thread, %_ZNSt6vectorIN5zxing3RefINS0_6qrcode9DataBlockEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  %i.q = phi i64 [ 0, %_ZNSt6vectorIN5zxing3RefINS0_6qrcode9DataBlockEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.thread ], [ %i.n, %_ZNSt6vectorIN5zxing3RefINS0_6qrcode9DataBlockEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ]
  %i.r = phi ptr [ null, %_ZNSt6vectorIN5zxing3RefINS0_6qrcode9DataBlockEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i.thread ], [ %i.j, %_ZNSt6vectorIN5zxing3RefINS0_6qrcode9DataBlockEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i ]
  store i64 0, ptr %5, align 8
  br label %bb.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %_ZNSt6vectorIN5zxing3RefINS0_6qrcode9DataBlockEEESaIS4_EE17_S_check_init_lenEmRKS5_.exit.i
  %i.s = shl nuw nsw i64 %i.o, 3                  ; 3 uses
  %i.t = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.s) #14
          to label %.noexc129 unwind label %.thread341 ; 5 uses

.noexc129:                                        ; preds = %.lr.ph.preheader.i.i.i.i.i
  store ptr %i.t, ptr %5, align 8, !tbaa !27
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.o
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.t, i8 0, i64 %i.s, i1 false), !tbaa !30
  %scevgep.i.i.i.i.i = getelementptr i8, ptr %i.t, i64 %i.s
  br label %bb.i

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %.0210 = phi i32 [ %i.y, %bb.h ], [ 0, %.lr.ph.preheader ]
  %.068209 = phi i64 [ %i.z, %bb.h ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %.068209
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25
  %i.x = invoke noundef i32 @_ZN5zxing6qrcode3ECB8getCountEv(ptr noundef nonnull align 4 dereferenceable(8) %i.w)
          to label %bb.h unwind label %.thread179

bb.h:                                             ; preds = %.lr.ph
  %i.y = add nsw i32 %i.x, %.0210                 ; 4 uses
  %i.z = add nuw i64 %.068209, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.z, %i.n
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !33

.thread179:                                       ; preds = %.lr.ph
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.i:                                             ; preds = %.noexc129, %_ZNSt12_Vector_baseIN5zxing3RefINS0_6qrcode9DataBlockEEESaIS4_EEC2EmRKS5_.exit.thread.i
  %i.ab = phi i64 [ %i.q, %_ZNSt12_Vector_baseIN5zxing3RefINS0_6qrcode9DataBlockEEESaIS4_EEC2EmRKS5_.exit.thread.i ], [ %i.n, %.noexc129 ]
  %i.ac = phi ptr [ %i.r, %_ZNSt12_Vector_baseIN5zxing3RefINS0_6qrcode9DataBlockEEESaIS4_EEC2EmRKS5_.exit.thread.i ], [ %i.j, %.noexc129 ] ; 5 uses
  %i.ad = phi ptr [ null, %_ZNSt12_Vector_baseIN5zxing3RefINS0_6qrcode9DataBlockEEESaIS4_EEC2EmRKS5_.exit.thread.i ], [ %i.t, %.noexc129 ] ; 18 uses
  %i.ae = phi ptr [ null, %_ZNSt12_Vector_baseIN5zxing3RefINS0_6qrcode9DataBlockEEESaIS4_EEC2EmRKS5_.exit.thread.i ], [ %i.u, %.noexc129 ] ; 3 uses
  %i.af = phi ptr [ null, %_ZNSt12_Vector_baseIN5zxing3RefINS0_6qrcode9DataBlockEEESaIS4_EEC2EmRKS5_.exit.thread.i ], [ %scevgep.i.i.i.i.i, %.noexc129 ] ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.ae, ptr %i.ah, align 8, !tbaa !35
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !36
  br i1 %.not.i.i.i.i, label %._crit_edge216, label %.lr.ph215

._crit_edge216.loopexit:                          ; preds = %bb.l
  %i.ai = trunc nsw i64 %indvars.iv to i32
  br label %._crit_edge216

._crit_edge216:                                   ; preds = %._crit_edge216.loopexit, %bb.i
  %.096.lcssa = phi i32 [ 0, %bb.i ], [ %i.ai, %._crit_edge216.loopexit ] ; 8 uses
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !30
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !17 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !37
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !40
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = trunc i64 %i.as to i32                  ; 3 uses
  %i.au = ptrtoint ptr %i.af to i64
  %i.av = ptrtoint ptr %i.ad to i64
  %i.aw = sub i64 %i.au, %i.av
  %i.ax = lshr i64 %i.aw, 3                       ; 2 uses
  %i.ay = trunc i64 %i.ax to i32
  %i.az = add nsw i32 %i.at, 1
  %i.ba = and i64 %i.ax, 4294967295               ; 2 uses
  %i.bb = add i32 %i.ay, -1
  %smin = tail call i32 @llvm.smin.i32(i32 %i.bb, i32 -1) ; 3 uses
  %i.bc = add nsw i32 %smin, 1                    ; 2 uses
  %indvars.iv.next268377 = add nsw i64 %i.ba, -1  ; 2 uses
  %indvars378 = trunc i64 %indvars.iv.next268377 to i32 ; 2 uses
  %i.bd = icmp sgt i32 %indvars378, -1
  br i1 %i.bd, label %.lr.ph382, label %.thread176

.thread341:                                       ; preds = %bb.g, %.lr.ph.preheader.i.i.i.i.i
  %i.be = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.av

.lr.ph215:                                        ; preds = %bb.i, %bb.l
  %.096213 = phi i64 [ %indvars.iv, %bb.l ], [ 0, %bb.i ]
  %.0100212 = phi i64 [ %i.bj, %bb.l ], [ 0, %bb.i ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %.0100212
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !25 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZN5zxing8ArrayRefIcED2Ev.exit136, %.lr.ph215
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN5zxing8ArrayRefIcED2Ev.exit136 ], [ %.096213, %.lr.ph215 ] ; 5 uses
  %.0102 = phi i32 [ %i.cx, %_ZN5zxing8ArrayRefIcED2Ev.exit136 ], [ 0, %.lr.ph215 ] ; 2 uses
  %i.bh = invoke noundef i32 @_ZN5zxing6qrcode3ECB8getCountEv(ptr noundef nonnull align 4 dereferenceable(8) %i.bg)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bi = icmp slt i32 %.0102, %i.bh
  br i1 %i.bi, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bj = add nuw i64 %.0100212, 1                ; 2 uses
  %exitcond266.not = icmp eq i64 %i.bj, %i.ab
  br i1 %exitcond266.not, label %._crit_edge216.loopexit, label %.lr.ph215, !llvm.loop !41

bb.m:                                             ; preds = %bb.j
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.n:                                             ; preds = %bb.k
  %i.bl = invoke noundef i32 @_ZN5zxing6qrcode3ECB16getDataCodewordsEv(ptr noundef nonnull align 4 dereferenceable(8) %i.bg)
          to label %bb.o unwind label %bb.y       ; 2 uses

bb.o:                                             ; preds = %bb.n
  %i.bm = invoke noundef i32 @_ZN5zxing6qrcode8ECBlocks14getECCodewordsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.p unwind label %bb.z

bb.p:                                             ; preds = %bb.o
  %i.bn = add nsw i32 %i.bm, %i.bl                ; 3 uses
  %i.bo = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #14
          to label %.noexc131 unwind label %bb.aa ; 10 uses

.noexc131:                                        ; preds = %bb.p
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 7 uses
  store i32 0, ptr %i.bp, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing5ArrayIcEE, i64 16), ptr %i.bo, align 8, !tbaa !10
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %i.br = sext i32 %i.bn to i64                   ; 3 uses
  %i.bs = icmp slt i32 %i.bn, 0
  br i1 %i.bs, label %.noexc.i.i130, label %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i

.noexc.i.i130:                                    ; preds = %.noexc131
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #13
          to label %.noexc.i unwind label %.loopexit.split-lp

.noexc.i:                                         ; preds = %.noexc.i.i130
  unreachable

_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i: ; preds = %.noexc131
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bq, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.r, label %.noexc3.i.i

.noexc3.i.i:                                      ; preds = %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %i.bt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #14
          to label %.noexc5.i unwind label %.loopexit ; 3 uses

.noexc5.i:                                        ; preds = %.noexc3.i.i
  store ptr %i.bt, ptr %i.bq, align 8, !tbaa !40
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.br ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store ptr %i.bu, ptr %i.bv, align 8, !tbaa !42
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.bt, i8 0, i64 %i.br, i1 false)
  br label %bb.r

.loopexit:                                        ; preds = %.noexc3.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

.loopexit.split-lp:                               ; preds = %.noexc.i.i130
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.q:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef 40) #16
  br label %bb.au

bb.r:                                             ; preds = %.noexc5.i, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i
  %.0.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bu, %.noexc5.i ], [ null, %_ZNSt6vectorIcSaIcEE17_S_check_init_lenEmRKS0_.exit.i.i.i ]
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store ptr %.0.i.i.i.i.i.i.i.i.i, ptr %i.bw, align 8, !tbaa !37
  store i32 1, ptr %i.bp, align 8, !tbaa !8
  %i.bx = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #14
          to label %bb.s unwind label %_ZN5zxing8ArrayRefIcED2Ev.exit140 ; 9 uses

bb.s:                                             ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing6qrcode9DataBlockE, i64 16), ptr %i.bx, align 8, !tbaa !10
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  store i32 %i.bl, ptr %i.bz, align 4, !tbaa !12
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  store i32 0, ptr %i.cb, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN5zxing8ArrayRefIcEE, i64 16), ptr %i.ca, align 8, !tbaa !10
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store ptr %i.bo, ptr %i.cc, align 8, !tbaa !17
  store i32 2, ptr %i.bp, align 8, !tbaa !8
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !30 ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv
  store i32 2, ptr %i.by, align 8, !tbaa !8
  %.not5.i.i = icmp eq ptr %.pre, null
  br i1 %.not5.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr %.pre, i64 8 ; 3 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !8
  %i.cg = add i32 %i.cf, -1                       ; 2 uses
  store i32 %i.cg, ptr %i.ce, align 8, !tbaa !8
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i32 -559026175, ptr %i.ce, align 8, !tbaa !8
  %i.ci = load ptr, ptr %.pre, align 8, !tbaa !10
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(12) %.pre) #15, !inline_history !43
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  store ptr %i.bx, ptr %i.cd, align 8, !tbaa !30
  %i.cl = load i32, ptr %i.by, align 8, !tbaa !8
  %i.cm = add i32 %i.cl, -1                       ; 2 uses
  store i32 %i.cm, ptr %i.by, align 8, !tbaa !8
  %i.cn = icmp eq i32 %i.cm, 0
  br i1 %i.cn, label %bb.w, label %_ZN5zxing3RefINS_6qrcode9DataBlockEED2Ev.exit

bb.w:                                             ; preds = %bb.v
  store i32 -559026175, ptr %i.by, align 8, !tbaa !8
  %i.co = load ptr, ptr %i.bx, align 8, !tbaa !10
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  tail call void %i.cq(ptr noundef nonnull align 8 dereferenceable(12) %i.bx) #15, !inline_history !44
  br label %_ZN5zxing3RefINS_6qrcode9DataBlockEED2Ev.exit

_ZN5zxing3RefINS_6qrcode9DataBlockEED2Ev.exit:    ; preds = %bb.w, %bb.v
  %i.cr = load i32, ptr %i.bp, align 8, !tbaa !8
  %i.cs = add i32 %i.cr, -1                       ; 2 uses
  store i32 %i.cs, ptr %i.bp, align 8, !tbaa !8
  %i.ct = icmp eq i32 %i.cs, 0
  br i1 %i.ct, label %bb.x, label %_ZN5zxing8ArrayRefIcED2Ev.exit136

bb.x:                                             ; preds = %_ZN5zxing3RefINS_6qrcode9DataBlockEED2Ev.exit
  store i32 -559026175, ptr %i.bp, align 8, !tbaa !8
  %i.cu = load ptr, ptr %i.bo, align 8, !tbaa !10
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8
  tail call void %i.cw(ptr noundef nonnull align 8 dereferenceable(12) %i.bo) #15, !inline_history !45
  br label %_ZN5zxing8ArrayRefIcED2Ev.exit136

_ZN5zxing8ArrayRefIcED2Ev.exit136:                ; preds = %_ZN5zxing3RefINS_6qrcode9DataBlockEED2Ev.exit, %bb.x
  %i.cx = add nuw nsw i32 %.0102, 1
  br label %bb.j, !llvm.loop !46

bb.y:                                             ; preds = %bb.n
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.z:                                             ; preds = %bb.o
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

bb.aa:                                            ; preds = %bb.p
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

_ZN5zxing8ArrayRefIcED2Ev.exit140:                ; preds = %bb.r
  %i.db = landingpad { ptr, i32 }
          cleanup
  store i32 -559026175, ptr %i.bp, align 8, !tbaa !8
  tail call void @_ZN5zxing5ArrayIcED0Ev(ptr noundef nonnull align 8 dereferenceable(12) %i.bo) #15, !inline_history !45
  br label %bb.au

bb.ab:                                            ; preds = %bb.ac
  %indvars.iv.next268 = add nsw i64 %indvars.iv.next268380, -1 ; 2 uses
  %indvars = trunc i64 %indvars.iv.next268 to i32 ; 2 uses
  %i.dc = icmp sgt i32 %indvars, -1
  br i1 %i.dc, label %.lr.ph382, label %.thread176

.lr.ph382:                                        ; preds = %._crit_edge216, %bb.ab
  %indvars381 = phi i32 [ %indvars, %bb.ab ], [ %indvars378, %._crit_edge216 ]
  %indvars.iv.next268380 = phi i64 [ %indvars.iv.next268, %bb.ab ], [ %indvars.iv.next268377, %._crit_edge216 ] ; 3 uses
  %indvars.iv267379 = phi i64 [ %indvars.iv.next268380, %bb.ab ], [ %i.ba, %._crit_edge216 ]
  %i.dd = and i64 %indvars.iv.next268380, 2147483647
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.dd
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !30
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !17 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !37
  %i.dl = load ptr, ptr %i.di, align 8, !tbaa !40
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = trunc i64 %i.do to i32                  ; 2 uses
  %i.dq = icmp eq i32 %i.dp, %i.at
  br i1 %i.dq, label %.thread176.split.loop.exit, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph382
  %.not = icmp eq i32 %i.az, %i.dp
  br i1 %.not, label %bb.ab, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  invoke void @_ZN5zxing12ErrorHandlerC2EPKc(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing27IllegalArgumentErrorHandlerE, i64 16), ptr %6, align 8, !tbaa !10
  %i.dr = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 4, ptr %i.dr, align 8, !tbaa !47
  %i.ds = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN5zxing12ErrorHandleraSERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %bb.af unwind label %bb.ah     ; 0 uses

bb.af:                                            ; preds = %bb.ae
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %6, align 8, !tbaa !10
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !52 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.dw = icmp eq ptr %i.du, %i.dv
  br i1 %i.dw, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.af
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !53
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.du, i64 noundef %i.dy) #16
  br label %.thread

.thread:                                          ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.aq

bb.ag:                                            ; preds = %bb.ad
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit144

bb.ah:                                            ; preds = %bb.ae
  %i.ea = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %6, align 8, !tbaa !10
  %i.eb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !52 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.ee = icmp eq ptr %i.ec, %i.ed
  br i1 %i.ee, label %_ZN5zxing12ErrorHandlerD2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i142: ; preds = %bb.ah
  %i.ef = load i64, ptr %i.ed, align 8, !tbaa !53
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ec, i64 noundef %i.eg) #16
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit144

_ZN5zxing12ErrorHandlerD2Ev.exit144:              ; preds = %bb.ah, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i142, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.dz, %bb.ag ], [ %i.ea, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i142 ], [ %i.ea, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.au

.thread176.split.loop.exit:                       ; preds = %.lr.ph382
  %i.eh = trunc nuw i64 %indvars.iv267379 to i32
  br label %.thread176

.thread176:                                       ; preds = %bb.ab, %._crit_edge216, %.thread176.split.loop.exit
  %.093.in.lcssa = phi i32 [ %i.eh, %.thread176.split.loop.exit ], [ %i.bc, %._crit_edge216 ], [ %i.bc, %bb.ab ] ; 2 uses
  %.093.lcssa = phi i32 [ %indvars381, %.thread176.split.loop.exit ], [ %smin, %._crit_edge216 ], [ %smin, %bb.ab ]
  %i.ei = invoke noundef i32 @_ZN5zxing6qrcode8ECBlocks14getECCodewordsEv(ptr noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.ai unwind label %bb.aj

bb.ai:                                            ; preds = %.thread176
  %i.ej = sub nsw i32 %i.at, %i.ei                ; 5 uses
  %i.ek = icmp sgt i32 %i.ej, 0
  br i1 %i.ek, label %.preheader185.lr.ph, label %.preheader184

.preheader185.lr.ph:                              ; preds = %bb.ai
  %i.el = icmp sgt i32 %.096.lcssa, 0
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %i.el, label %.preheader185.us.preheader, label %.preheader184

.preheader185.us.preheader:                       ; preds = %.preheader185.lr.ph
  %i.en = zext nneg i32 %i.ej to i64
  %wide.trip.count = zext nneg i32 %.096.lcssa to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.eo = icmp eq i32 %.096.lcssa, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod401 = trunc i32 %.096.lcssa to i1
  br label %.preheader185.us

.preheader185.us:                                 ; preds = %.preheader185.us.preheader, %._crit_edge221.us
  %indvars.iv279 = phi i64 [ 0, %.preheader185.us.preheader ], [ %indvars.iv.next280, %._crit_edge221.us ] ; 4 uses
  %.072223.us = phi i64 [ 0, %.preheader185.us.preheader ], [ %indvars.iv.next273.lcssa, %._crit_edge221.us ] ; 2 uses
  br i1 %i.eo, label %.epil.preheader, label %.preheader185.us.new

.preheader185.us.new:                             ; preds = %.preheader185.us, %.preheader185.us.new
  %indvars.iv272.a = phi i64 [ %indvars.iv.next273.1, %.preheader185.us.new ], [ %.072223.us, %.preheader185.us ] ; 3 uses
  %indvars.iv270 = phi i64 [ %indvars.iv.next271.1, %.preheader185.us.new ], [ 0, %.preheader185.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader185.us.new ], [ 0, %.preheader185.us ]
  %i.ep = load ptr, ptr %i.em, align 8, !tbaa !17
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !40
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 %indvars.iv272.a
  %i.et = load i8, ptr %i.es, align 1, !tbaa !53
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv270
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !30
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !17
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !40
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %indvars.iv279
  store i8 %i.et, ptr %i.fa, align 1, !tbaa !53
  %indvars.iv.next273.1 = add nsw i64 %indvars.iv272.a, 2 ; 3 uses
  %i.fb = load ptr, ptr %i.em, align 8, !tbaa !17
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !40
  %i.fe = getelementptr i8, ptr %i.fd, i64 %indvars.iv272.a
  %i.ff = getelementptr i8, ptr %i.fe, i64 1
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !53
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv270
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !30
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 32
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !17
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !40
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %indvars.iv279
  store i8 %i.fg, ptr %i.fo, align 1, !tbaa !53
  %indvars.iv.next271.1 = add nuw nsw i64 %indvars.iv270, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge221.us.unr-lcssa, label %.preheader185.us.new, !llvm.loop !54

._crit_edge221.us.unr-lcssa:                      ; preds = %.preheader185.us.new
  br i1 %lcmp.mod.not, label %._crit_edge221.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge221.us.unr-lcssa, %.preheader185.us
  %indvars.iv272.epil.init = phi i64 [ %.072223.us, %.preheader185.us ], [ %indvars.iv.next273.1, %._crit_edge221.us.unr-lcssa ] ; 2 uses
  %indvars.iv270.epil.init = phi i64 [ 0, %.preheader185.us ], [ %indvars.iv.next271.1, %._crit_edge221.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod401)
  %indvars.iv.next273.epil = add nsw i64 %indvars.iv272.epil.init, 1
  %i.fp = load ptr, ptr %i.em, align 8, !tbaa !17
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !40
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %indvars.iv272.epil.init
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !53
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv270.epil.init
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !30
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 32
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !17
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !40
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %indvars.iv279
  store i8 %i.ft, ptr %i.ga, align 1, !tbaa !53
  br label %._crit_edge221.us

._crit_edge221.us:                                ; preds = %._crit_edge221.us.unr-lcssa, %.epil.preheader
  %indvars.iv.next273.lcssa = phi i64 [ %indvars.iv.next273.1, %._crit_edge221.us.unr-lcssa ], [ %indvars.iv.next273.epil, %.epil.preheader ] ; 2 uses
  %indvars.iv.next280 = add nuw nsw i64 %indvars.iv279, 1 ; 2 uses
  %i.gb = icmp samesign ult i64 %indvars.iv.next280, %i.en
  br i1 %i.gb, label %.preheader185.us, label %.preheader184.loopexit, !llvm.loop !55

.preheader184.loopexit:                           ; preds = %._crit_edge221.us
  %8 = trunc nsw i64 %indvars.iv.next273.lcssa to i32
  br label %.preheader184

.preheader184:                                    ; preds = %.preheader185.lr.ph, %.preheader184.loopexit, %bb.ai
  %.072.lcssa = phi i32 [ 0, %bb.ai ], [ %8, %.preheader184.loopexit ], [ 0, %.preheader185.lr.ph ] ; 2 uses
  %i.gc = icmp slt i32 %.093.in.lcssa, %.096.lcssa
  br i1 %i.gc, label %.lr.ph229, label %._crit_edge230

.lr.ph229:                                        ; preds = %.preheader184
  %i.gd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.ge = sext i32 %i.ej to i64                   ; 3 uses
  %i.gf = sext i32 %.093.in.lcssa to i64          ; 5 uses
  %i.gg = sext i32 %.072.lcssa to i64             ; 3 uses
  %wide.trip.count291 = sext i32 %.096.lcssa to i64 ; 3 uses
  %i.gh = sub nsw i64 %wide.trip.count291, %i.gf
  %xtraiter402 = and i64 %i.gh, 1
  %lcmp.mod403.not = icmp eq i64 %xtraiter402, 0
  br i1 %lcmp.mod403.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph229
  %indvars.iv.next286.prol.a = add nsw i64 %i.gg, 1 ; 2 uses
  %i.gi = load ptr, ptr %i.gd, align 8, !tbaa !17
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !40
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 %i.gg
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !53
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.gf
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !30
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 32
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !17
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !40
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.ge
  store i8 %i.gm, ptr %i.gt, align 1, !tbaa !53
  %indvars.iv.next284.prol = add nsw i64 %i.gf, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph229
  %indvars.iv.next286.lcssa.unr = phi i64 [ poison, %.lr.ph229 ], [ %indvars.iv.next286.prol.a, %.prol.loopexit.unr-lcssa ]
  %indvars.iv285.unr.a = phi i64 [ %i.gg, %.lr.ph229 ], [ %indvars.iv.next286.prol.a, %.prol.loopexit.unr-lcssa ]
  %indvars.iv283.unr = phi i64 [ %i.gf, %.lr.ph229 ], [ %indvars.iv.next284.prol, %.prol.loopexit.unr-lcssa ]
  %i.gu = add nsw i64 %wide.trip.count291, -1
  %i.gv = icmp eq i64 %i.gu, %i.gf
  br i1 %i.gv, label %._crit_edge230.loopexit, label %.lr.ph229.new

bb.aj:                                            ; preds = %.thread176
  %i.gw = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

._crit_edge230.loopexit:                          ; preds = %.lr.ph229.new, %.prol.loopexit
  %indvars.iv.next286.lcssa = phi i64 [ %indvars.iv.next286.lcssa.unr, %.prol.loopexit ], [ %indvars.iv.next286.1.a, %.lr.ph229.new ]
  %i.gx = trunc nsw i64 %indvars.iv.next286.lcssa to i32
  br label %._crit_edge230

._crit_edge230:                                   ; preds = %._crit_edge230.loopexit, %.preheader184
  %.2.lcssa = phi i32 [ %.072.lcssa, %.preheader184 ], [ %i.gx, %._crit_edge230.loopexit ] ; 3 uses
  %i.gy = load ptr, ptr %i.ad, align 8, !tbaa !30
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 32
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !17 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !37
  %i.he = load ptr, ptr %i.hb, align 8, !tbaa !40
  %i.hf = ptrtoint ptr %i.hd to i64
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = sub i64 %i.hf, %i.hg
  %i.hi = trunc i64 %i.hh to i32                  ; 2 uses
  %i.hj = icmp slt i32 %i.ej, %i.hi
  br i1 %i.hj, label %.preheader.lr.ph, label %._crit_edge239

.preheader.lr.ph:                                 ; preds = %._crit_edge230
  %i.hk = icmp sgt i32 %.096.lcssa, 0
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 16
  br i1 %i.hk, label %.preheader.us.preheader, label %._crit_edge239

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.hm = sext i32 %.093.lcssa to i64
  %9 = sext i32 %.2.lcssa to i64
  %wide.trip.count301 = zext nneg i32 %.096.lcssa to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge235.us
  %.067238.us = phi i32 [ %i.ic, %._crit_edge235.us ], [ %i.ej, %.preheader.us.preheader ] ; 2 uses
  %.3237.us = phi i64 [ %indvars.iv.next296.a, %._crit_edge235.us ], [ %9, %.preheader.us.preheader ]
  br label %bb.ak

bb.ak:                                            ; preds = %.preheader.us, %bb.ak
  %indvars.iv295.a = phi i64 [ %.3237.us, %.preheader.us ], [ %indvars.iv.next296.a, %bb.ak ] ; 2 uses
  %indvars.iv293 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next294, %bb.ak ] ; 3 uses
  %indvars.iv.next296.a = add nsw i64 %indvars.iv295.a, 1 ; 3 uses
  %i.hn = load ptr, ptr %i.hl, align 8, !tbaa !17
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !40
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 %indvars.iv295.a
  %.not110.us = icmp sgt i64 %indvars.iv293, %i.hm
  %i.hr = zext i1 %.not110.us to i32
  %i.hs = add nsw i32 %.067238.us, %i.hr
  %i.ht = load i8, ptr %i.hq, align 1, !tbaa !53
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv293
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !30
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 32
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !17
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.hz = sext i32 %i.hs to i64
  %i.ia = load ptr, ptr %i.hy, align 8, !tbaa !40
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.hz
  store i8 %i.ht, ptr %i.ib, align 1, !tbaa !53
  %indvars.iv.next294 = add nuw nsw i64 %indvars.iv293, 1 ; 2 uses
  %exitcond302.not = icmp eq i64 %indvars.iv.next294, %wide.trip.count301
  br i1 %exitcond302.not, label %._crit_edge235.us, label %bb.ak, !llvm.loop !56

._crit_edge235.us:                                ; preds = %bb.ak
  %i.ic = add nsw i32 %.067238.us, 1              ; 2 uses
  %i.id = icmp slt i32 %i.ic, %i.hi
  br i1 %i.id, label %.preheader.us, label %._crit_edge239.loopexit, !llvm.loop !57

.lr.ph229.new:                                    ; preds = %.prol.loopexit, %.lr.ph229.new
  %indvars.iv285.a = phi i64 [ %indvars.iv.next286.1.a, %.lr.ph229.new ], [ %indvars.iv285.unr.a, %.prol.loopexit ] ; 3 uses
  %indvars.iv283 = phi i64 [ %indvars.iv.next284.1, %.lr.ph229.new ], [ %indvars.iv283.unr, %.prol.loopexit ] ; 3 uses
  %i.ie = load ptr, ptr %i.gd, align 8, !tbaa !17
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !40
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 %indvars.iv285.a
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !53
  %i.ij = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv283
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !30
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 32
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !17
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !40
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 %i.ge
  store i8 %i.ii, ptr %i.ip, align 1, !tbaa !53
  %indvars.iv.next286.1.a = add nsw i64 %indvars.iv285.a, 2 ; 2 uses
  %i.iq = load ptr, ptr %i.gd, align 8, !tbaa !17
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !40
  %i.it = getelementptr i8, ptr %i.is, i64 %indvars.iv285.a
  %i.iu = getelementptr i8, ptr %i.it, i64 1
  %i.iv = load i8, ptr %i.iu, align 1, !tbaa !53
  %i.iw = getelementptr [8 x i8], ptr %i.ad, i64 %indvars.iv283
  %i.ix = getelementptr i8, ptr %i.iw, i64 8
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !30
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 32
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !17
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !40
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.ge
  store i8 %i.iv, ptr %i.jd, align 1, !tbaa !53
  %indvars.iv.next284.1 = add nsw i64 %indvars.iv283, 2 ; 2 uses
  %exitcond292.not.1 = icmp eq i64 %indvars.iv.next284.1, %wide.trip.count291
  br i1 %exitcond292.not.1, label %._crit_edge230.loopexit, label %.lr.ph229.new, !llvm.loop !58

._crit_edge239.loopexit:                          ; preds = %._crit_edge235.us
  %i.je = trunc nsw i64 %indvars.iv.next296.a to i32
  br label %._crit_edge239

._crit_edge239:                                   ; preds = %.preheader.lr.ph, %._crit_edge239.loopexit, %._crit_edge230
  %.3.lcssa = phi i32 [ %.2.lcssa, %._crit_edge230 ], [ %i.je, %._crit_edge239.loopexit ], [ %.2.lcssa, %.preheader.lr.ph ]
  %i.jf = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jg = load ptr, ptr %i.jf, align 8, !tbaa !17 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jg, i64 24
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !37
  %i.jk = load ptr, ptr %i.jh, align 8, !tbaa !40
  %i.jl = ptrtoint ptr %i.jj to i64
  %i.jm = ptrtoint ptr %i.jk to i64
  %i.jn = sub i64 %i.jl, %i.jm
  %i.jo = trunc i64 %i.jn to i32
  %.not107 = icmp eq i32 %.3.lcssa, %i.jo
  br i1 %.not107, label %_ZSt8_DestroyIPN5zxing3RefINS0_6qrcode9DataBlockEEES4_EvT_S6_RSaIT0_E.exit.i.thread, label %bb.al

bb.al:                                            ; preds = %._crit_edge239
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  invoke void @_ZN5zxing12ErrorHandlerC2EPKc(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1)
          to label %bb.am unwind label %bb.ao

bb.am:                                            ; preds = %bb.al
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing27IllegalArgumentErrorHandlerE, i64 16), ptr %7, align 8, !tbaa !10
  %i.jp = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 4, ptr %i.jp, align 8, !tbaa !47
  %i.jq = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZN5zxing12ErrorHandleraSERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %7)
          to label %bb.an unwind label %bb.ap     ; 0 uses

bb.an:                                            ; preds = %bb.am
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %7, align 8, !tbaa !10
  %i.jr = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !52 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.ju = icmp eq ptr %i.js, %i.jt
  br i1 %i.ju, label %_ZN5zxing12ErrorHandlerD2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i147: ; preds = %bb.an
  %i.jv = load i64, ptr %i.jt, align 8, !tbaa !53
  %i.jw = add i64 %i.jv, 1
  call void @_ZdlPvm(ptr noundef %i.js, i64 noundef %i.jw) #16
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit149

_ZN5zxing12ErrorHandlerD2Ev.exit149:              ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.aq

bb.ao:                                            ; preds = %bb.al
  %i.jx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit152

bb.ap:                                            ; preds = %bb.am
  %i.jy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTVN5zxing12ErrorHandlerE, i64 16), ptr %7, align 8, !tbaa !10
  %i.jz = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !52 ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.kc = icmp eq ptr %i.ka, %i.kb
  br i1 %i.kc, label %_ZN5zxing12ErrorHandlerD2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i150: ; preds = %bb.ap
  %i.kd = load i64, ptr %i.kb, align 8, !tbaa !53
  %i.ke = add i64 %i.kd, 1
  call void @_ZdlPvm(ptr noundef %i.ka, i64 noundef %i.ke) #16
  br label %_ZN5zxing12ErrorHandlerD2Ev.exit152

_ZN5zxing12ErrorHandlerD2Ev.exit152:              ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i150, %bb.ao
  %.pn108 = phi { ptr, i32 } [ %i.jx, %bb.ao ], [ %i.jy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i150 ], [ %i.jy, %bb.ap ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  br label %bb.au

_ZSt8_DestroyIPN5zxing3RefINS0_6qrcode9DataBlockEEES4_EvT_S6_RSaIT0_E.exit.i.thread: ; preds = %._crit_edge239
  store ptr %i.ad, ptr %0, align 8, !tbaa !27
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.kf, align 8, !tbaa !36
  %i.kg = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.ae, ptr %i.kg, align 8, !tbaa !35
  br label %_ZNSt6vectorIN5zxing3RefINS0_6qrcode9DataBlockEEESaIS4_EED2Ev.exit

bb.aq:                                            ; preds = %.thread, %_ZN5zxing12ErrorHandlerD2Ev.exit149
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not4.i.i.i = icmp eq ptr %i.ad, %i.af
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN5zxing3RefINS0_6qrcode9DataBlockEEES4_EvT_S6_RSaIT0_E.exit.i.thread337, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.aq, %_ZSt8_DestroyIN5zxing3RefINS0_6qrcode9DataBlockEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.kp, %_ZSt8_DestroyIN5zxing3RefINS0_6qrcode9DataBlockEEEEvPT_.exit.i.i.i ], [ %i.ad, %bb.aq ] ; 2 uses
  %i.kh = load ptr, ptr %.05.i.i.i, align 8, !tbaa !30 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.kh, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN5zxing3RefINS0_6qrcode9DataBlockEEEEvPT_.exit.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i.i.i
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 8 ; 3 uses
  %i.kj = load i32, ptr %i.ki, align 8, !tbaa !8
  %i.kk = add i32 %i.kj, -1                       ; 2 uses
  store i32 %i.kk, ptr %i.ki, align 8, !tbaa !8
  %i.kl = icmp eq i32 %i.kk, 0
  br i1 %i.kl, label %bb.as, label %_ZSt8_DestroyIN5zxing3RefINS0_6qrcode9DataBlockEEEEvPT_.exit.i.i.i

bb.as:                                            ; preds = %bb.ar
  store i32 -559026175, ptr %i.ki, align 8, !tbaa !8
  %i.km = load ptr, ptr %i.kh, align 8, !tbaa !10
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 8
  %i.ko = load ptr, ptr %i.kn, align 8
  call void %i.ko(ptr noundef nonnull align 8 dereferenceable(12) %i.kh) #15, !inline_history !59
  br label %_ZSt8_DestroyIN5zxing3RefINS0_6qrcode9DataBlockEEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN5zxing3RefINS0_6qrcode9DataBlockEEEEvPT_.exit.i.i.i: ; preds = %bb.as, %bb.ar, %.lr.ph.i.i.i
  %i.kp = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i153 = icmp eq ptr %i.kp, %i.af
  br i1 %.not.i.i.i153, label %_ZSt8_DestroyIPN5zxing3RefINS0_6qrcode9DataBlockEEES4_EvT_S6_RSaIT0_E.exit.i.thread337, label %.lr.ph.i.i.i, !llvm.loop !60

_ZSt8_DestroyIPN5zxing3RefINS0_6qrcode9DataBlockEEES4_EvT_S6_RSaIT0_E.exit.i.thread337: ; preds = %_ZSt8_DestroyIN5zxing3RefINS0_6qrcode9DataBlockEEEEvPT_.exit.i.i.i, %bb.aq
  %i.kq = ptrtoint ptr %i.ae to i64
  %i.kr = ptrtoint ptr %i.ad to i64
  %i.ks = sub i64 %i.kq, %i.kr
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.ks) #16
  br label %_ZNSt6vectorIN5zxing3RefINS0_6qrcode9DataBlockEEESaIS4_EED2Ev.exit

_ZNSt6vectorIN5zxing3RefINS0_6qrcode9DataBlockEEESaIS4_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN5zxing3RefINS0_6qrcode9DataBlockEEES4_EvT_S6_RSaIT0_E.exit.i.thread, %_ZSt8_DestroyIPN5zxing3RefINS0_6qrcode9DataBlockEEES4_EvT_S6_RSaIT0_E.exit.i.thread337
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %.not.i.i.i154 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i154, label %_ZNSt6vectorIPN5zxing6qrcode3ECBESaIS3_EED2Ev.exit, label %bb.at

bb.at:                                            ; preds = %_ZNSt6vectorIN5zxing3RefINS0_6qrcode9DataBlockEEESaIS4_EED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.ac, i64 noundef %i.h) #16
  br label %_ZNSt6vectorIPN5zxing6qrcode3ECBESaIS3_EED2Ev.exit

_ZNSt6vectorIPN5zxing6qrcode3ECBESaIS3_EED2Ev.exit: ; preds = %_ZNSt6vectorIN5zxing3RefINS0_6qrcode9DataBlockEEESaIS4_EED2Ev.exit, %bb.at
  ret void

bb.au:                                            ; preds = %bb.y, %bb.z, %bb.m, %bb.aj, %_ZN5zxing12ErrorHandlerD2Ev.exit152, %_ZN5zxing12ErrorHandlerD2Ev.exit144, %bb.aa, %bb.q, %_ZN5zxing8ArrayRefIcED2Ev.exit140
  %.pn117.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cz, %bb.z ], [ %i.bk, %bb.m ], [ %i.cy, %bb.y ], [ %.pn108, %_ZN5zxing12ErrorHandlerD2Ev.exit152 ], [ %.pn, %_ZN5zxing12ErrorHandlerD2Ev.exit144 ], [ %i.gw, %bb.aj ], [ %lpad.phi, %bb.q ], [ %i.da, %bb.aa ], [ %i.db, %_ZN5zxing8ArrayRefIcED2Ev.exit140 ] ; 2 uses
  call void @_ZNSt6vectorIN5zxing3RefINS0_6qrcode9DataBlockEEESaIS4_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %.not.i.i.i155 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i155, label %_ZNSt6vectorIPN5zxing6qrcode3ECBESaIS3_EED2Ev.exit156, label %bb.av

bb.av:                                            ; preds = %.thread341, %.thread179, %bb.au
  %i.kt = phi ptr [ %i.j, %.thread179 ], [ %i.ac, %bb.au ], [ %i.j, %.thread341 ]
  %.pn126182 = phi { ptr, i32 } [ %i.aa, %.thread179 ], [ %.pn117.pn.pn.pn.pn.pn.pn, %bb.au ], [ %i.be, %.thread341 ]
  call void @_ZdlPvm(ptr noundef nonnull %i.kt, i64 noundef %i.h) #16
  br label %_ZNSt6vectorIPN5zxing6qrcode3ECBESaIS3_EED2Ev.exit156

_ZNSt6vectorIPN5zxing6qrcode3ECBESaIS3_EED2Ev.exit156: ; preds = %bb.au, %bb.av
  %.pn126183 = phi { ptr, i32 } [ %.pn117.pn.pn.pn.pn.pn.pn, %bb.au ], [ %.pn126182, %bb.av ]
  resume { ptr, i32 } %.pn126183
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZN5zxing6qrcode7Version19getECBlocksForLevelERNS0_20ErrorCorrectionLevelE(ptr noundef nonnull align 8 dereferenceable(52), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN5zxing6qrcode8ECBlocks11getECBlocksEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #4

declare noundef i32 @_ZN5zxing6qrcode3ECB8getCountEv(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
end_hunk_0
