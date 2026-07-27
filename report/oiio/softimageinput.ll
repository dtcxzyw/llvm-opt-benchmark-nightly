inline.NumInlined: 3200
inline.NumDeleted: 979
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZNK11OpenImageIO4v3_110ImageInput8errorfmtIJmNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvPKcDpRKT_:bb.a
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #30, !noalias !151
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #30, !noalias !151
  %i.b = load i64, ptr %2, align 8, !tbaa !90, !noalias !154
  store i64 %i.b, ptr %4, align 16, !tbaa !62, !noalias !151
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load ptr, ptr %3, align 8, !tbaa !61, !noalias !151
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !60, !noalias !151
  store ptr %i.d, ptr %i.c, align 16, !tbaa !62, !noalias !151
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.f, ptr %i.g, align 8, !tbaa !62, !noalias !151
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull %1, i64 %i.a, i64 212, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #30, !noalias !151
  %i.h = load ptr, ptr %6, align 8, !tbaa !61
  store ptr %i.h, ptr %5, align 8, !tbaa !67
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !60
  store i64 %i.k, ptr %i.i, align 8, !tbaa !69
  invoke void @_ZNK11OpenImageIO4v3_110ImageInput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %6, align 8, !tbaa !61     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.m, align 8, !tbaa !62
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  %i.r = load ptr, ptr %6, align 8, !tbaa !61     ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.c
  %i.u = load i64, ptr %i.s, align 8, !tbaa !62
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #33
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  resume { ptr, i32 } %i.q
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_114SoftimageInput24read_pixels_uncompressedERKNS0_13softimage_pvt13ChannelPacketEPv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(376) %0, ptr noundef nonnull align 1 dereferenceable(4) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::vector.25", align 8    ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZNK11OpenImageIO4v3_113softimage_pvt13ChannelPacket8channelsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.25") align 8 %3, ptr noundef nonnull align 1 dereferenceable(4) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.b = load i8, ptr %i.a, align 1, !tbaa !95
  %i.c = lshr i8 %i.b, 3                          ; 2 uses
  %i.d = zext nneg i8 %i.c to i64                 ; 5 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 2 uses
  %i.f = load i16, ptr %i.e, align 4, !tbaa !96   ; 2 uses
  %.not65 = icmp eq i16 %i.f, 0
  br i1 %.not65, label %.thread53, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.not4457.not = icmp eq i8 %i.c, 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = load ptr, ptr %3, align 8, !tbaa !157
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !157
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %.thread53, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge63
  %i.m = phi i16 [ %i.ad, %._crit_edge63 ], [ %i.f, %.lr.ph ] ; 2 uses
  %.03564 = phi i64 [ %i.ae, %._crit_edge63 ], [ 0, %.lr.ph ] ; 2 uses
  %i.n = load ptr, ptr %3, align 8, !tbaa !157    ; 2 uses
  %i.o = load ptr, ptr %i.g, align 8, !tbaa !157  ; 2 uses
  %.not5659 = icmp eq ptr %i.n, %i.o
  br i1 %.not5659, label %._crit_edge63, label %.lr.ph62

.lr.ph62:                                         ; preds = %.lr.ph.split
  %i.p = mul nuw nsw i64 %.03564, %i.d
  br i1 %.not4457.not, label %._crit_edge63, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph62, %._crit_edge.us
  %.sroa.046.060.us = phi ptr [ %i.ac, %._crit_edge.us ], [ %i.n, %.lr.ph62 ] ; 2 uses
  %i.q = load i32, ptr %.sroa.046.060.us, align 4, !tbaa !3
  %i.r = sext i32 %i.q to i64
  %i.s = mul nsw i64 %i.r, %i.d
  %invariant.gep.us = getelementptr i8, ptr %2, i64 %i.s
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.t = add nuw nsw i64 %.03458.us, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %i.d
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c, !llvm.loop !158

bb.c:                                             ; preds = %.lr.ph.us, %bb.b
  %.03458.us = phi i64 [ 0, %.lr.ph.us ], [ %i.t, %bb.b ] ; 2 uses
  %i.u = xor i64 %.03458.us, -1
  %i.v = load i32, ptr %i.h, align 4, !tbaa !159
  %i.w = sext i32 %i.v to i64
  %i.x = mul nsw i64 %i.p, %i.w
  %gep.us = getelementptr i8, ptr %invariant.gep.us, i64 %i.x
  %i.y = getelementptr i8, ptr %gep.us, i64 %i.u
  %i.z = getelementptr i8, ptr %i.y, i64 %i.d
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !13
  %i.ab = call i64 @fread(ptr noundef %i.z, i64 noundef 1, i64 noundef 1, ptr noundef %i.aa)
  %.not43.us = icmp eq i64 %i.ab, 1
  br i1 %.not43.us, label %bb.b, label %.loopexit

._crit_edge.us:                                   ; preds = %bb.b
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.046.060.us, i64 4 ; 2 uses
  %.not56.us = icmp eq ptr %i.ac, %i.o
  br i1 %.not56.us, label %._crit_edge63.loopexit66, label %.lr.ph.us

._crit_edge63.loopexit66:                         ; preds = %._crit_edge.us
  %.pre = load i16, ptr %i.e, align 4, !tbaa !96
  br label %._crit_edge63

._crit_edge63:                                    ; preds = %.lr.ph62, %._crit_edge63.loopexit66, %.lr.ph.split
  %i.ad = phi i16 [ %.pre, %._crit_edge63.loopexit66 ], [ %i.m, %.lr.ph.split ], [ %i.m, %.lr.ph62 ] ; 2 uses
  %i.ae = add nuw nsw i64 %.03564, 1              ; 2 uses
  %i.af = zext i16 %i.ad to i64
  %i.ag = icmp samesign ult i64 %i.ae, %i.af
  br i1 %i.ag, label %.lr.ph.split, label %.thread53, !llvm.loop !160

bb.d:                                             ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !13
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.ak = load i16, ptr %i.aj, align 4, !tbaa !96
  %i.al = zext i16 %i.ak to i64
  %i.am = mul nuw nsw i64 %i.al, %i.d
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !82
  %i.ap = load ptr, ptr %3, align 8, !tbaa !85
  %i.aq = ptrtoint ptr %i.ao to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 2
  %i.au = mul i64 %i.am, %i.at
  %i.av = call i32 @fseek(ptr noundef %i.ai, i64 noundef %i.au, i32 noundef 1)
  %.not42 = icmp eq i32 %i.av, 0
  br i1 %.not42, label %.thread53, label %.loopexit

.thread53:                                        ; preds = %._crit_edge63, %.lr.ph, %.preheader, %bb.d
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.d, %.thread53
  %.7 = phi i1 [ true, %.thread53 ], [ false, %bb.d ], [ false, %bb.c ]
  %i.aw = load ptr, ptr %3, align 8, !tbaa !85    ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !86
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = ptrtoint ptr %i.aw to i64
  %i.bb = sub i64 %i.az, %i.ba
  call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef %i.bb) #33
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %.loopexit, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  ret i1 %.7
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_114SoftimageInput27read_pixels_pure_run_lengthERKNS0_13softimage_pvt13ChannelPacketEPv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(376) %0, ptr noundef nonnull align 1 dereferenceable(4) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 10 uses
  %3 = alloca %"class.std::vector.25", align 8    ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i8 0, ptr %i.a, align 1, !tbaa !62
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !95
  %.fr = freeze i8 %i.c
  %i.d = lshr i8 %.fr, 3                          ; 4 uses
  %i.e = zext nneg i8 %i.d to i64                 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZNK11OpenImageIO4v3_113softimage_pvt13ChannelPacket8channelsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.25") align 8 %3, ptr noundef nonnull align 1 dereferenceable(4) %1)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 4 uses
  %i.g = load i16, ptr %i.f, align 4, !tbaa !96
  %i.h = icmp eq i16 %i.g, 0
  br i1 %i.h, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %.not46 = icmp eq ptr %2, null
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  br i1 %.not46, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.c
  %.04262.us = phi i64 [ %i.y, %bb.c ], [ 0, %.lr.ph ]
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !13
  %i.m = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1, ptr noundef %i.l)
  %.not.us = icmp eq i64 %i.m, 1
  br i1 %.not.us, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph.split.us
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !13
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !82
  %i.p = load ptr, ptr %3, align 8, !tbaa !85
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = ptrtoint ptr %i.p to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2
  %i.u = mul i64 %i.t, %i.e
  %i.v = call i32 @fseek(ptr noundef %i.n, i64 noundef %i.u, i32 noundef 1)
  %.not47.us = icmp eq i32 %i.v, 0
  br i1 %.not47.us, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.w = load i8, ptr %i.a, align 1, !tbaa !62
  %i.x = zext i8 %i.w to i64
  %i.y = add nuw nsw i64 %.04262.us, %i.x         ; 2 uses
  %i.z = load i16, ptr %i.f, align 4, !tbaa !96
  %i.aa = zext i16 %i.z to i64
  %.not92 = icmp samesign ult i64 %i.y, %i.aa
  br i1 %.not92, label %.lr.ph.split.us, label %.critedge, !llvm.loop !162

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not86 = icmp eq i8 %i.d, 0
  br i1 %.not86, label %.lr.ph.split.split, label %.lr.ph.split.split.us.preheader

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  %xtraiter = and i64 %i.e, 1
  %i.ab = icmp eq i8 %i.d, 1
  %unroll_iter = and i64 %i.e, 30
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod129 = trunc i8 %i.d to i1
  br label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split.split.us.preheader, %._crit_edge60.split.us
  %.04262.us75 = phi i64 [ %i.bx, %._crit_edge60.split.us ], [ 0, %.lr.ph.split.split.us.preheader ] ; 2 uses
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !13
  %i.ad = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1, ptr noundef %i.ac)
  %.not.us76 = icmp eq i64 %i.ad, 1
  br i1 %.not.us76, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph.split.split.us
  %i.ae = load ptr, ptr %i.j, align 8, !tbaa !82
  %i.af = load ptr, ptr %3, align 8, !tbaa !85    ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64               ; 2 uses
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 2
  %i.ak = mul i64 %i.aj, %i.e                     ; 3 uses
  %i.al = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ak) #32
          to label %bb.e unwind label %.split.us  ; 3 uses

bb.e:                                             ; preds = %bb.d
  %i.am = load ptr, ptr %i.i, align 8, !tbaa !13
  %i.an = call i64 @fread(ptr noundef nonnull %i.al, i64 noundef %i.ak, i64 noundef 1, ptr noundef %i.am)
  %.not48.us = icmp eq i64 %i.an, %i.ak
  br i1 %.not48.us, label %.preheader52.us, label %.critedge

.preheader.us.new:                                ; preds = %.preheader.us, %.preheader.us.new
  %.03956.us = phi i64 [ %i.bo, %.preheader.us.new ], [ 0, %.preheader.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader.us.new ], [ 0, %.preheader.us ]
  %i.ao = xor i64 %.03956.us, -1
  %i.ap = add nsw i64 %i.ao, %i.e                 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.bs, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !62
  %i.as = load i32, ptr %i.k, align 4, !tbaa !159
  %i.at = sext i32 %i.as to i64
  %i.au = mul nsw i64 %i.bu, %i.at
  %i.av = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.aw = sext i32 %i.av to i64
  %i.ax = mul nsw i64 %i.aw, %i.e
  %i.ay = getelementptr i8, ptr %2, i64 %i.au
  %i.az = getelementptr i8, ptr %i.ay, i64 %i.ax
  %i.ba = getelementptr i8, ptr %i.az, i64 %i.ap
  store i8 %i.ar, ptr %i.ba, align 1, !tbaa !62
  %i.bb = xor i64 %.03956.us, -2
  %i.bc = add nsw i64 %i.bb, %i.e                 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bs, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !62
  %i.bf = load i32, ptr %i.k, align 4, !tbaa !159
  %i.bg = sext i32 %i.bf to i64
  %i.bh = mul nsw i64 %i.bu, %i.bg
  %i.bi = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.bj = sext i32 %i.bi to i64
  %i.bk = mul nsw i64 %i.bj, %i.e
  %i.bl = getelementptr i8, ptr %2, i64 %i.bh
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.bk
  %i.bn = getelementptr i8, ptr %i.bm, i64 %i.bc
  store i8 %i.be, ptr %i.bn, align 1, !tbaa !62
  %i.bo = add nuw nsw i64 %.03956.us, 2           ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.unr-lcssa, label %.preheader.us.new, !llvm.loop !163

._crit_edge60.split.us:                           ; preds = %._crit_edge58.us, %.preheader51.lr.ph.us, %.preheader52.us
  call void @_ZdaPv(ptr noundef nonnull %i.al) #33
  %i.bp = load i16, ptr %i.f, align 4, !tbaa !96
  %i.bq = zext i16 %i.bp to i64
  %.not91 = icmp samesign ult i64 %i.bx, %i.bq
  br i1 %.not91, label %.lr.ph.split.split.us, label %.critedge, !llvm.loop !162

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader51.us
  %.04057.us = phi i64 [ 0, %.preheader51.us ], [ %i.cl, %._crit_edge.us ] ; 3 uses
  %i.br = mul i64 %.04057.us, %i.e
  %i.bs = getelementptr i8, ptr %i.al, i64 %i.br  ; 3 uses
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %.04057.us ; 3 uses
  br i1 %i.ab, label %.epil.preheader, label %.preheader.us.new

.preheader51.us:                                  ; preds = %.preheader51.us.preheader, %._crit_edge58.us
  %.04159.us = phi i64 [ %i.cm, %._crit_edge58.us ], [ %.04262.us75, %.preheader51.us.preheader ] ; 2 uses
  %i.bu = mul nuw nsw i64 %.04159.us, %i.e        ; 3 uses
  br label %.preheader.us

.preheader52.us:                                  ; preds = %bb.e
  %i.bv = load i8, ptr %i.a, align 1, !tbaa !62   ; 2 uses
  %i.bw = zext i8 %i.bv to i64
  %i.bx = add nuw nsw i64 %.04262.us75, %i.bw     ; 3 uses
  %.not89 = icmp eq i8 %i.bv, 0
  br i1 %.not89, label %._crit_edge60.split.us, label %.preheader51.lr.ph.us

._crit_edge.us.unr-lcssa:                         ; preds = %.preheader.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.unr-lcssa, %.preheader.us
  %.03956.us.epil.init = phi i64 [ 0, %.preheader.us ], [ %i.bo, %._crit_edge.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod129)
  %i.by = xor i64 %.03956.us.epil.init, -1
  %i.bz = add nsw i64 %i.by, %i.e                 ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bs, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !62
  %i.cc = load i32, ptr %i.k, align 4, !tbaa !159
  %i.cd = sext i32 %i.cc to i64
  %i.ce = mul nsw i64 %i.bu, %i.cd
  %i.cf = load i32, ptr %i.bt, align 4, !tbaa !3
  %i.cg = sext i32 %i.cf to i64
  %i.ch = mul nsw i64 %i.cg, %i.e
  %i.ci = getelementptr i8, ptr %2, i64 %i.ce
  %i.cj = getelementptr i8, ptr %i.ci, i64 %i.ch
  %i.ck = getelementptr i8, ptr %i.cj, i64 %i.bz
  store i8 %i.cb, ptr %i.ck, align 1, !tbaa !62
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %._crit_edge.us.unr-lcssa, %.epil.preheader
  %i.cl = add nuw i64 %.04057.us, 1               ; 2 uses
  %exitcond100.not = icmp eq i64 %i.cl, %i.ct
  br i1 %exitcond100.not, label %._crit_edge58.us, label %.preheader.us, !llvm.loop !164

._crit_edge58.us:                                 ; preds = %._crit_edge.us
  %i.cm = add nuw nsw i64 %.04159.us, 1           ; 2 uses
  %i.cn = icmp samesign ult i64 %i.cm, %i.bx
  br i1 %i.cn, label %.preheader51.us, label %._crit_edge60.split.us, !llvm.loop !165

.preheader51.lr.ph.us:                            ; preds = %.preheader52.us
  %i.co = load ptr, ptr %i.j, align 8, !tbaa !82  ; 2 uses
  %i.cp = load ptr, ptr %3, align 8, !tbaa !85    ; 3 uses
  %.not90 = icmp eq ptr %i.co, %i.cp
  br i1 %.not90, label %._crit_edge60.split.us, label %.preheader51.us.preheader

.preheader51.us.preheader:                        ; preds = %.preheader51.lr.ph.us
  %i.cq = ptrtoint ptr %i.co to i64
  %i.cr = ptrtoint ptr %i.cp to i64
  %i.cs = sub i64 %i.cq, %i.cr
  %i.ct = ashr exact i64 %i.cs, 2
  br label %.preheader51.us

.split.us:                                        ; preds = %bb.d
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %.preheader52
  %.04262 = phi i64 [ %i.dd, %.preheader52 ], [ 0, %.lr.ph.split ]
  %i.cv = load ptr, ptr %i.i, align 8, !tbaa !13
  %i.cw = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1, ptr noundef %i.cv)
  %.not = icmp eq i64 %i.cw, 1
  br i1 %.not, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.lr.ph.split.split
  %i.cx = load ptr, ptr %3, align 8, !tbaa !85    ; 2 uses
  %i.cy = invoke noalias noundef nonnull ptr @_Znam(i64 noundef 0) #32
          to label %bb.g unwind label %.split     ; 2 uses

bb.g:                                             ; preds = %bb.f
  %i.cz = load ptr, ptr %i.i, align 8, !tbaa !13
  %i.da = call i64 @fread(ptr noundef nonnull %i.cy, i64 noundef 0, i64 noundef 1, ptr noundef %i.cz)
  %.not48 = icmp eq i64 %i.da, 0
  br i1 %.not48, label %.preheader52, label %.critedge

.preheader52:                                     ; preds = %bb.g
  %i.db = load i8, ptr %i.a, align 1, !tbaa !62
  call void @_ZdaPv(ptr noundef nonnull %i.cy) #33
  %i.dc = zext i8 %i.db to i64
  %i.dd = add nuw nsw i64 %.04262, %i.dc          ; 2 uses
  %i.de = load i16, ptr %i.f, align 4, !tbaa !96
  %i.df = zext i16 %i.de to i64
  %.not88 = icmp samesign ult i64 %i.dd, %i.df
  br i1 %.not88, label %.lr.ph.split.split, label %.critedge, !llvm.loop !162

.split:                                           ; preds = %bb.f
  %i.dg = landingpad { ptr, i32 }
          cleanup
  %4 = ptrtoint ptr %i.cx to i64
  br label %bb.h

bb.h:                                             ; preds = %.split.us, %.split
  %.us-phi79 = phi ptr [ %i.cx, %.split ], [ %i.af, %.split.us ] ; 2 uses
  %.us-phi80 = phi i64 [ %4, %.split ], [ %i.ah, %.split.us ]
  %.us-phi81 = phi { ptr, i32 } [ %i.dg, %.split ], [ %i.cu, %.split.us ]
  %.not.i.i.i = icmp eq ptr %.us-phi79, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !86
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = sub i64 %i.dj, %.us-phi80
  call void @_ZdlPvm(ptr noundef nonnull %.us-phi79, i64 noundef %i.dk) #33
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  resume { ptr, i32 } %.us-phi81

.critedge:                                        ; preds = %.lr.ph.split.split.us, %._crit_edge60.split.us, %bb.e, %.lr.ph.split.split, %.preheader52, %bb.g, %.lr.ph.split.us, %bb.b, %bb.c, %bb.a
  %.lcssa54 = phi i1 [ true, %bb.a ], [ false, %bb.g ], [ false, %bb.b ], [ true, %bb.c ], [ false, %.lr.ph.split.us ], [ true, %.preheader52 ], [ false, %.lr.ph.split.split ], [ false, %.lr.ph.split.split.us ], [ true, %._crit_edge60.split.us ], [ false, %bb.e ]
  %i.dl = load ptr, ptr %3, align 8, !tbaa !85    ; 3 uses
  %.not.i.i.i49 = icmp eq ptr %i.dl, null
  br i1 %.not.i.i.i49, label %_ZNSt6vectorIiSaIiEED2Ev.exit50, label %bb.j

bb.j:                                             ; preds = %.critedge
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !86
  %i.do = ptrtoint ptr %i.dn to i64
  %i.dp = ptrtoint ptr %i.dl to i64
  %i.dq = sub i64 %i.do, %i.dp
  call void @_ZdlPvm(ptr noundef nonnull %i.dl, i64 noundef %i.dq) #33
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit50

_ZNSt6vectorIiSaIiEED2Ev.exit50:                  ; preds = %.critedge, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret i1 %.lcssa54
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_114SoftimageInput28read_pixels_mixed_run_lengthERKNS0_13softimage_pvt13ChannelPacketEPv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(376) %0, ptr noundef nonnull align 1 dereferenceable(4) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 8 uses
  %3 = alloca %"class.std::vector.25", align 8    ; 14 uses
  %i.b = alloca i16, align 2                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i8 0, ptr %i.a, align 1, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.d = load i8, ptr %i.c, align 1, !tbaa !95
  %i.e = lshr i8 %i.d, 3                          ; 4 uses
  %i.f = zext nneg i8 %i.e to i64                 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #30
  call void @_ZNK11OpenImageIO4v3_113softimage_pvt13ChannelPacket8channelsEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.25") align 8 %3, ptr noundef nonnull align 1 dereferenceable(4) %1)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 3 uses
  %i.h = load i16, ptr %i.g, align 4, !tbaa !96
  %i.i = icmp eq i16 %i.h, 0
  br i1 %i.i, label %.loopexit, label %.lr.ph158

.lr.ph158:                                        ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 6 uses
  %.not101 = icmp eq ptr %2, null                 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %.not165 = icmp eq i8 %i.e, 0                   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 4 uses
  %xtraiter = and i64 %i.f, 1
  %i.m = icmp eq i8 %i.e, 1
  %unroll_iter = and i64 %i.f, 30
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod197 = trunc i8 %i.e to i1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph158, %.thread120
  %.081150 = phi i64 [ 0, %.lr.ph158 ], [ %.283, %.thread120 ] ; 7 uses
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.o = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 1, ptr noundef %i.n)
  %.not = icmp eq i64 %i.o, 1
  br i1 %.not, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.p = load i8, ptr %i.a, align 1, !tbaa !62    ; 4 uses
  %i.q = icmp sgt i8 %i.p, -1
  br i1 %i.q, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.r = add nuw i8 %i.p, 1                       ; 3 uses
  store i8 %i.r, ptr %i.a, align 1, !tbaa !62
  %i.s = zext i8 %i.r to i64
  %i.t = add nuw nsw i64 %.081150, %i.s
  %i.u = load i16, ptr %i.g, align 4, !tbaa !96
  %i.v = zext i16 %i.u to i64                     ; 2 uses
  %i.w = icmp samesign ugt i64 %i.t, %i.v
  br i1 %i.w, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.x = sub nsw i64 %i.v, %.081150
  %i.y = trunc i64 %i.x to i8                     ; 2 uses
  store i8 %i.y, ptr %i.a, align 1, !tbaa !62
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = phi i8 [ %i.y, %bb.e ], [ %i.r, %bb.d ]  ; 3 uses
  br i1 %.not101, label %bb.i, label %.preheader125

.preheader125:                                    ; preds = %bb.f
  %i.aa = zext i8 %i.z to i64                     ; 3 uses
  %i.ab = add nuw nsw i64 %.081150, %i.aa
  %.not168 = icmp eq i8 %i.z, 0
  br i1 %.not168, label %.thread120, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader125
  %i.ac = load ptr, ptr %3, align 8, !tbaa !157
  %i.ad = load ptr, ptr %i.k, align 8, !tbaa !157
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %.thread120, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %._crit_edge148
  %.093149 = phi i64 [ %i.av, %._crit_edge148 ], [ %.081150, %.lr.ph ] ; 2 uses
  %i.af = load ptr, ptr %3, align 8, !tbaa !157   ; 2 uses
  %i.ag = load ptr, ptr %i.k, align 8, !tbaa !157 ; 2 uses
  %.not123144 = icmp eq ptr %i.af, %i.ag
  br i1 %.not123144, label %._crit_edge148, label %.lr.ph147

.lr.ph147:                                        ; preds = %.lr.ph.split
  %i.ah = mul nuw nsw i64 %.093149, %i.f
  br i1 %.not165, label %._crit_edge148, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph147, %._crit_edge143.us
  %.sroa.0113.0145.us = phi ptr [ %i.au, %._crit_edge143.us ], [ %i.af, %.lr.ph147 ] ; 2 uses
  %i.ai = load i32, ptr %.sroa.0113.0145.us, align 4, !tbaa !3
  %i.aj = sext i32 %i.ai to i64
  %i.ak = mul nsw i64 %i.aj, %i.f
  %invariant.gep.us = getelementptr i8, ptr %2, i64 %i.ak
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %i.al = add nuw nsw i64 %.092141.us, 1          ; 2 uses
  %exitcond176.not = icmp eq i64 %i.al, %i.f
  br i1 %exitcond176.not, label %._crit_edge143.us, label %bb.h, !llvm.loop !166

bb.h:                                             ; preds = %.lr.ph.us, %bb.g
  %.092141.us = phi i64 [ 0, %.lr.ph.us ], [ %i.al, %bb.g ] ; 2 uses
  %i.am = xor i64 %.092141.us, -1
  %i.an = load i32, ptr %i.l, align 4, !tbaa !159
  %i.ao = sext i32 %i.an to i64
  %i.ap = mul nsw i64 %i.ah, %i.ao
  %gep.us = getelementptr i8, ptr %invariant.gep.us, i64 %i.ap
  %i.aq = getelementptr i8, ptr %gep.us, i64 %i.am
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.f
  %i.as = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.at = call i64 @fread(ptr noundef %i.ar, i64 noundef 1, i64 noundef 1, ptr noundef %i.as)
  %.not107.us = icmp eq i64 %i.at, 1
  br i1 %.not107.us, label %bb.g, label %.loopexit

._crit_edge143.us:                                ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0113.0145.us, i64 4 ; 2 uses
  %.not123.us = icmp eq ptr %i.au, %i.ag
  br i1 %.not123.us, label %._crit_edge148, label %.lr.ph.us

._crit_edge148:                                   ; preds = %._crit_edge143.us, %.lr.ph147, %.lr.ph.split
  %i.av = add nuw nsw i64 %.093149, 1             ; 2 uses
  %i.aw = icmp ult i64 %i.av, %i.ab
  br i1 %i.aw, label %.lr.ph.split, label %.thread120, !llvm.loop !167

bb.i:                                             ; preds = %bb.f
  %i.ax = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.ay = zext i8 %i.z to i64                     ; 2 uses
  %i.az = mul nuw nsw i64 %i.ay, %i.f
  %i.ba = load ptr, ptr %i.k, align 8, !tbaa !82
  %i.bb = load ptr, ptr %3, align 8, !tbaa !85
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 2
  %i.bg = mul i64 %i.az, %i.bf
  %i.bh = call i32 @fseek(ptr noundef %i.ax, i64 noundef %i.bg, i32 noundef 1)
  %.not106 = icmp eq i32 %i.bh, 0
  br i1 %.not106, label %.thread120, label %.loopexit

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  store i16 0, ptr %i.b, align 2, !tbaa !168
  %i.bi = icmp eq i8 %i.p, -128
  br i1 %i.bi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bj = load ptr, ptr %i.j, align 8, !tbaa !13
  %i.bk = call i64 @fread(ptr noundef nonnull %i.b, i64 noundef 1, i64 noundef 2, ptr noundef %i.bj)
  %.not100 = icmp eq i64 %i.bk, 2
  br i1 %.not100, label %.lr.ph.i.preheader, label %.critedge110

.lr.ph.i.preheader:                               ; preds = %bb.k
  %.promoted = load i16, ptr %i.b, align 2, !tbaa !168
  %i.bl = call i16 @llvm.bswap.i16(i16 %.promoted)
  br label %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit

bb.l:                                             ; preds = %bb.j
  %i.bm = zext i8 %i.p to i16
  %i.bn = add nsw i16 %i.bm, -127
  br label %_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit

_ZN11OpenImageIO4v3_111swap_endianItEEvPT_i.exit: ; preds = %.lr.ph.i.preheader, %bb.l
end_hunk_0
