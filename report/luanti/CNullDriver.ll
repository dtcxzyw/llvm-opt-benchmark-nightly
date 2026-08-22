Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CNullDriver?download=true
inline.NumInlined: 1983
inline.NumDeleted: 755
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZNK5video11CNullDriver26getCurrentRenderTargetSizeEv:bb.a
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !242
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 320
  %.0 = select i1 %i.c, ptr %i.d, ptr %i.a
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull align 4 dereferenceable(24) ptr @_ZN5video11CNullDriver13getFrameStatsEv(ptr nofree noundef nonnull readnone align 8 captures(ret: address, provenance) dereferenceable(933) %0) unnamed_addr #14 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @_ZNK5video11CNullDriver7getNameEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #14 align 2 {
bb.a:
  ret ptr @.str.7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZNK5video11CNullDriver9getLimitsEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.video::SDriverLimits") align 4 captures(none) initializes((0, 20)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #13 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 -1, ptr %i.a, align 4, !tbaa !243
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 65536, ptr %i.b, align 4, !tbaa !245
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK5video11CNullDriver19checkPrimitiveCountEj(ptr noundef nonnull align 8 dereferenceable(933) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"struct.video::SDriverLimits", align 4 ; 4 uses
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.b = load ptr, ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 536
  %i.d = load ptr, ptr %i.c, align 8
  call void %i.d(ptr dead_on_unwind nonnull writable sret(%"struct.video::SDriverLimits") align 4 %2, ptr noundef nonnull align 8 dereferenceable(933) %0)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i32, ptr %i.e, align 4, !tbaa !243  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.g = icmp ule i32 %1, %i.f                    ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.h = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 128, ptr noundef nonnull @.str.8, i32 noundef %1, i32 noundef %i.f) #33 ; 0 uses
  call void @_ZN2os7Printer3logEPKc10ELOG_LEVEL(ptr noundef nonnull %i.a, i32 noundef 3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.g
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #17

; Function Attrs: mustprogress uwtable
define void @_ZN5video11CNullDriver22setTextureCreationFlagENS_23E_TEXTURE_CREATION_FLAGEb(ptr noundef nonnull align 8 dereferenceable(933) %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 {
bb.a:
  br i1 %2, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.a = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %1)
  %i.b = icmp eq i32 %i.a, 1
  %i.c = and i32 %1, 15
  %switch = icmp ne i32 %i.c, 0
  %or.cond = and i1 %i.b, %switch
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 544
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(933) %0, i32 noundef 1, i1 noundef zeroext false)
  %i.g = load ptr, ptr %0, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 544
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(933) %0, i32 noundef 2, i1 noundef zeroext false)
  %i.j = load ptr, ptr %0, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 544
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(933) %0, i32 noundef 4, i1 noundef zeroext false)
  %i.m = load ptr, ptr %0, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 544
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(933) %0, i32 noundef 8, i1 noundef zeroext false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 420 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !99
  %i.r = or i32 %i.q, %1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !99
  br label %bb.e

.critedge:                                        ; preds = %bb.a
  %i.s = xor i32 %1, -1
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 420 ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !99
  %i.v = and i32 %i.u, %i.s
  store i32 %i.v, ptr %i.t, align 4, !tbaa !99
  br label %bb.e

bb.e:                                             ; preds = %.critedge, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef zeroext i1 @_ZNK5video11CNullDriver22getTextureCreationFlagENS_23E_TEXTURE_CREATION_FLAGE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(933) %0, i32 noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.b = load i32, ptr %i.a, align 4, !tbaa !99
  %i.c = and i32 %i.b, %1
  %i.d = icmp ne i32 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN5video11CNullDriver19createImageFromFileERKN4core6stringIcEE(ptr noundef nonnull align 8 dereferenceable(933) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !193
  %i.c = and i64 %i.b, 4294967295
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %_ZNK17IReferenceCounted4dropEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1) ; 4 uses
  %.not10 = icmp eq ptr %i.h, null
  br i1 %.not10, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN2os7Printer3logEPKcRKN4core6stringIcEE10ELOG_LEVEL(ptr noundef nonnull @.str.9, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef 2)
  br label %_ZNK17IReferenceCounted4dropEv.exit

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 568
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(933) %0, ptr noundef nonnull %i.h) ; 2 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.n = getelementptr i8, ptr %i.m, i64 -24
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %i.o ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !115  ; 2 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #34
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.t = add nsw i32 %i.r, -1                     ; 2 uses
  store i32 %i.t, ptr %i.q, align 8, !tbaa !115
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.g, label %_ZNK17IReferenceCounted4dropEv.exit

bb.g:                                             ; preds = %bb.f
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(12) %i.p) #33, !inline_history !153
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.g, %bb.f, %bb.c, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ %i.l, %bb.f ], [ %i.l, %bb.g ]
  ret ptr %.1
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN5video11CNullDriver19createImageFromFileEPN2io9IReadFileE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(933) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 8 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !118
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !122
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32
  %.03254 = add i32 %i.i, -1                      ; 2 uses
  %i.j = icmp sgt i32 %.03254, -1
  br i1 %i.j, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.b
  %2 = zext nneg i32 %.03254 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.h
  %indvars.iv = phi i64 [ %2, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.h ] ; 8 uses
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !118
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !122  ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %i.q = icmp ugt i64 %i.p, %indvars.iv
  br i1 %i.q, label %_ZN4core5arrayIPN5video12IImageLoaderEEixEj.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIPN5video12IImageLoaderEEixEj) #34
  unreachable

_ZN4core5arrayIPN5video12IImageLoaderEEixEj.exit: ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !120  ; 2 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef nonnull align 8 dereferenceable(32) ptr %i.v(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
  br i1 %i.z, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZN4core5arrayIPN5video12IImageLoaderEEixEj.exit
  %i.aa = load ptr, ptr %1, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call noundef zeroext i1 %i.ac(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0, i1 noundef zeroext false) ; 0 uses
  %i.ae = load ptr, ptr %i.b, align 8, !tbaa !118
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !122 ; 2 uses
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = sub i64 %i.ag, %i.ah
  %i.aj = ashr exact i64 %i.ai, 3
  %i.ak = icmp ugt i64 %i.aj, %indvars.iv
  br i1 %i.ak, label %_ZN4core5arrayIPN5video12IImageLoaderEEixEj.exit42, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIPN5video12IImageLoaderEEixEj) #34
  unreachable

_ZN4core5arrayIPN5video12IImageLoaderEEixEj.exit42: ; preds = %bb.d
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !120 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = tail call noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.am, ptr noundef nonnull %1)
  br i1 %i.aq, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN4core5arrayIPN5video12IImageLoaderEEixEj.exit42
  %i.ar = load ptr, ptr %1, align 8, !tbaa !8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = tail call noundef zeroext i1 %i.at(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0, i1 noundef zeroext false) ; 0 uses
  %i.av = load ptr, ptr %i.b, align 8, !tbaa !118
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !122 ; 2 uses
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = ptrtoint ptr %i.aw to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 3
  %i.bb = icmp ugt i64 %i.ba, %indvars.iv
  br i1 %i.bb, label %_ZN4core5arrayIPN5video12IImageLoaderEEixEj.exit43, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIPN5video12IImageLoaderEEixEj) #34
  unreachable

_ZN4core5arrayIPN5video12IImageLoaderEEixEj.exit43: ; preds = %bb.f
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %indvars.iv
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !120 ; 2 uses
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call noundef ptr %i.bg(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull %1) ; 2 uses
  %.not40 = icmp eq ptr %i.bh, null
  br i1 %.not40, label %bb.h, label %.loopexit

bb.h:                                             ; preds = %_ZN4core5arrayIPN5video12IImageLoaderEEixEj.exit43, %_ZN4core5arrayIPN5video12IImageLoaderEEixEj.exit42, %_ZN4core5arrayIPN5video12IImageLoaderEEixEj.exit
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.bi = icmp sgt i64 %indvars.iv, 0
  br i1 %i.bi, label %.lr.ph, label %._crit_edge, !llvm.loop !246

._crit_edge:                                      ; preds = %bb.h
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !118
  %.pre62 = load ptr, ptr %i.a, align 8, !tbaa !122
  %.pre63 = ptrtoint ptr %.pre to i64
  %.pre64 = ptrtoint ptr %.pre62 to i64
  %.pre66 = sub i64 %.pre63, %.pre64
  %.pre68 = lshr exact i64 %.pre66, 3
  %.pre70 = trunc i64 %.pre68 to i32
  %.pre72 = add i32 %.pre70, -1                   ; 2 uses
  %i.bj = icmp sgt i32 %.pre72, -1
  br i1 %i.bj, label %.lr.ph59.preheader, label %.loopexit

.lr.ph59.preheader:                               ; preds = %._crit_edge
  %3 = zext nneg i32 %.pre72 to i64
  br label %.lr.ph59

.lr.ph59:                                         ; preds = %.lr.ph59.preheader, %bb.n
  %indvars.iv63 = phi i64 [ %3, %.lr.ph59.preheader ], [ %indvars.iv.next64, %bb.n ] ; 8 uses
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !118
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !122 ; 2 uses
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = sub i64 %i.bm, %i.bn
  %i.bp = ashr exact i64 %i.bo, 3
  %i.bq = icmp ugt i64 %i.bp, %indvars.iv63
  br i1 %i.bq, label %_ZN4core5arrayIPN5video12IImageLoaderEEixEj.exit44, label %bb.i

bb.i:                                             ; preds = %.lr.ph59
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIPN5video12IImageLoaderEEixEj) #34
  unreachable

_ZN4core5arrayIPN5video12IImageLoaderEEixEj.exit44: ; preds = %.lr.ph59
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %indvars.iv63
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !120 ; 2 uses
  %i.bt = load ptr, ptr %1, align 8, !tbaa !8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = tail call noundef nonnull align 8 dereferenceable(32) ptr %i.bv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.bx = load ptr, ptr %i.bs, align 8, !tbaa !8
  %i.by = load ptr, ptr %i.bx, align 8
  %i.bz = tail call noundef zeroext i1 %i.by(ptr noundef nonnull align 8 dereferenceable(8) %i.bs, ptr noundef nonnull align 8 dereferenceable(32) %i.bw)
  br i1 %i.bz, label %bb.n, label %bb.j

bb.j:                                             ; preds = %_ZN4core5arrayIPN5video12IImageLoaderEEixEj.exit44
  %i.ca = load ptr, ptr %1, align 8, !tbaa !8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cc = load ptr, ptr %i.cb, align 8
  %i.cd = tail call noundef zeroext i1 %i.cc(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0, i1 noundef zeroext false) ; 0 uses
  %i.ce = load ptr, ptr %i.b, align 8, !tbaa !118
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !122 ; 2 uses
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %i.cj = ashr exact i64 %i.ci, 3
  %i.ck = icmp ugt i64 %i.cj, %indvars.iv63
  br i1 %i.ck, label %_ZN4core5arrayIPN5video12IImageLoaderEEixEj.exit45, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIPN5video12IImageLoaderEEixEj) #34
  unreachable

_ZN4core5arrayIPN5video12IImageLoaderEEixEj.exit45: ; preds = %bb.j
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv63
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !120 ; 2 uses
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load ptr, ptr %i.co, align 8
  %i.cq = tail call noundef zeroext i1 %i.cp(ptr noundef nonnull align 8 dereferenceable(8) %i.cm, ptr noundef nonnull %1)
  br i1 %i.cq, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_ZN4core5arrayIPN5video12IImageLoaderEEixEj.exit45
  %i.cr = load ptr, ptr %1, align 8, !tbaa !8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = tail call noundef zeroext i1 %i.ct(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0, i1 noundef zeroext false) ; 0 uses
  %i.cv = load ptr, ptr %i.b, align 8, !tbaa !118
  %i.cw = load ptr, ptr %i.a, align 8, !tbaa !122 ; 2 uses
  %i.cx = ptrtoint ptr %i.cv to i64
  %i.cy = ptrtoint ptr %i.cw to i64
  %i.cz = sub i64 %i.cx, %i.cy
  %i.da = ashr exact i64 %i.cz, 3
  %i.db = icmp ugt i64 %i.da, %indvars.iv63
  br i1 %i.db, label %_ZN4core5arrayIPN5video12IImageLoaderEEixEj.exit46, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIPN5video12IImageLoaderEEixEj) #34
  unreachable

_ZN4core5arrayIPN5video12IImageLoaderEEixEj.exit46: ; preds = %bb.l
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %indvars.iv63
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !120 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !8
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.dg = load ptr, ptr %i.df, align 8
  %i.dh = tail call noundef ptr %i.dg(ptr noundef nonnull align 8 dereferenceable(8) %i.dd, ptr noundef nonnull %1) ; 2 uses
  %.not41 = icmp eq ptr %i.dh, null
  br i1 %.not41, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %_ZN4core5arrayIPN5video12IImageLoaderEEixEj.exit46, %_ZN4core5arrayIPN5video12IImageLoaderEEixEj.exit45, %_ZN4core5arrayIPN5video12IImageLoaderEEixEj.exit44
  %indvars.iv.next64 = add nsw i64 %indvars.iv63, -1
  %i.di = icmp sgt i64 %indvars.iv63, 0
  br i1 %i.di, label %.lr.ph59, label %.loopexit, !llvm.loop !247

.loopexit:                                        ; preds = %_ZN4core5arrayIPN5video12IImageLoaderEEixEj.exit43, %bb.n, %_ZN4core5arrayIPN5video12IImageLoaderEEixEj.exit46, %bb.b, %._crit_edge, %bb.a
  %.8 = phi ptr [ null, %bb.a ], [ %i.dh, %_ZN4core5arrayIPN5video12IImageLoaderEEixEj.exit46 ], [ null, %._crit_edge ], [ null, %bb.b ], [ null, %bb.n ], [ %i.bh, %_ZN4core5arrayIPN5video12IImageLoaderEEixEj.exit43 ]
  ret ptr %.8
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5video11CNullDriver16writeImageToFileEPNS_6IImageERKN4core6stringIcEEj(ptr noundef nonnull align 8 dereferenceable(933) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !62   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef ptr %i.e(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext false) ; 4 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %_ZNK17IReferenceCounted4dropEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 584
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(933) %0, ptr noundef %1, ptr noundef nonnull %i.f, i32 noundef %3) ; 2 uses
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.l = getelementptr i8, ptr %i.k, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %i.f, i64 %i.m ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !115  ; 2 uses
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #34
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.r = add nsw i32 %i.p, -1                     ; 2 uses
  store i32 %i.r, ptr %i.o, align 8, !tbaa !115
  %.not.i = icmp eq i32 %i.r, 0
  br i1 %.not.i, label %bb.e, label %_ZNK17IReferenceCounted4dropEv.exit

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(12) %i.n) #33, !inline_history !153
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.e, %bb.d, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ %i.j, %bb.d ], [ %i.j, %bb.e ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5video11CNullDriver16writeImageToFileEPNS_6IImageEPN2io10IWriteFileEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(933) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !127
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 3
  %i.i = trunc i64 %i.h to i32
  %.01319 = add i32 %i.i, -1                      ; 2 uses
  %i.j = icmp sgt i32 %.01319, -1
  br i1 %i.j, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.b
  %4 = zext nneg i32 %.01319 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ %4, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 6 uses
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !127  ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 3
  %i.q = icmp ugt i64 %i.p, %indvars.iv
  br i1 %i.q, label %_ZN4core5arrayIPN5video12IImageWriterEEixEj.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIPN5video12IImageWriterEEixEj) #34
  unreachable

_ZN4core5arrayIPN5video12IImageWriterEEixEj.exit: ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !125  ; 2 uses
  %i.t = load ptr, ptr %2, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef nonnull align 8 dereferenceable(32) ptr %i.v(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %i.x = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef zeroext i1 %i.z(ptr noundef nonnull align 8 dereferenceable(12) %i.s, ptr noundef nonnull align 8 dereferenceable(32) %i.w)
  br i1 %i.aa, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN4core5arrayIPN5video12IImageWriterEEixEj.exit
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !123
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !127 ; 2 uses
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = sub i64 %i.ad, %i.ae
  %i.ag = ashr exact i64 %i.af, 3
  %i.ah = icmp ugt i64 %i.ag, %indvars.iv
  br i1 %i.ah, label %_ZN4core5arrayIPN5video12IImageWriterEEixEj.exit17, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIPN5video12IImageWriterEEixEj) #34
  unreachable

_ZN4core5arrayIPN5video12IImageWriterEEixEj.exit17: ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !125 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = tail call noundef zeroext i1 %i.am(ptr noundef nonnull align 8 dereferenceable(12) %i.aj, ptr noundef nonnull %2, ptr noundef %1, i32 noundef %3)
  br i1 %i.an, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %_ZN4core5arrayIPN5video12IImageWriterEEixEj.exit, %_ZN4core5arrayIPN5video12IImageWriterEEixEj.exit17
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.ao = icmp sgt i64 %indvars.iv, 0
  br i1 %i.ao, label %.lr.ph, label %.loopexit, !llvm.loop !248

.loopexit:                                        ; preds = %bb.f, %_ZN4core5arrayIPN5video12IImageWriterEEixEj.exit17, %bb.b, %bb.a
  %.4 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.f ], [ true, %_ZN4core5arrayIPN5video12IImageWriterEEixEj.exit17 ]
  ret i1 %.4
}

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN5video11CNullDriver19createImageFromDataENS_13ECOLOR_FORMATERKN4core11dimension2dIjEEPvbb(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30 ; 3 uses
  invoke void @_ZN5video6CImageC1ENS_13ECOLOR_FORMATERKN4core11dimension2dIjEEPvbb(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #32
  resume { ptr, i32 } %i.b
}

declare void @_ZN5video6CImageC1ENS_13ECOLOR_FORMATERKN4core11dimension2dIjEEPvbb(ptr noundef nonnull align 8 dereferenceable(64), i32 noundef, ptr noundef nonnull align 4 dereferenceable(8), ptr noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef nonnull ptr @_ZN5video11CNullDriver11createImageENS_13ECOLOR_FORMATERKN4core11dimension2dIjEE(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30 ; 3 uses
  invoke void @_ZN5video6CImageC1ENS_13ECOLOR_FORMATERKN4core11dimension2dIjEE(ptr noundef nonnull align 8 dereferenceable(64) %i.a, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  ret ptr %i.a

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 64) #32
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN5video11CNullDriver11createImageEPNS_8ITextureERKN4core8vector2dIiEERKNS3_11dimension2dIjEE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.core::dimension2d", align 8 ; 5 uses
  %i.a = load i32, ptr %2, align 4, !tbaa !249    ; 2 uses
  %i.b = icmp eq i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  %i.f = select i1 %i.b, i1 %i.e, i1 false
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  br i1 %i.f, label %bb.b, label %..critedge_crit_edge

..critedge_crit_edge:                             ; preds = %bb.a
  %.pre = load i32, ptr %i.g, align 4, !tbaa !114
  %.phi.trans.insert85 = getelementptr inbounds nuw i8, ptr %1, i64 84
  %.pre86 = load i32, ptr %.phi.trans.insert85, align 4, !tbaa !114
  %.pre87 = load i32, ptr %3, align 4, !tbaa !204
  %.phi.trans.insert88 = getelementptr inbounds nuw i8, ptr %3, i64 4
  %.pre89 = load i32, ptr %.phi.trans.insert88, align 4, !tbaa !205
  br label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.h = load i32, ptr %3, align 4, !tbaa !204    ; 2 uses
  %i.i = load i32, ptr %i.g, align 4, !tbaa !204  ; 2 uses
  %i.j = icmp eq i32 %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.l = load i32, ptr %i.k, align 4              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.n = load i32, ptr %i.m, align 4              ; 2 uses
  %i.o = icmp eq i32 %i.l, %i.n
  %i.p = select i1 %i.j, i1 %i.o, i1 false
  br i1 %i.p, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %1, align 8, !tbaa !8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 2 uses
  %.not47 = icmp eq ptr %i.s, null
  br i1 %.not47, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.v = load i32, ptr %i.u, align 8, !tbaa !212
  invoke void @_ZN5video6CImageC1ENS_13ECOLOR_FORMATERKN4core11dimension2dIjEEPvbb(ptr noundef nonnull align 8 dereferenceable(64) %i.t, i32 noundef %i.v, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull %i.s, i1 noundef zeroext false, i1 noundef zeroext false)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %1, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(112) %1)
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef 64) #32
  br label %bb.m

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.b
  %i.aa = phi i32 [ %.pre89, %..critedge_crit_edge ], [ %i.l, %bb.b ]
  %i.ab = phi i32 [ %.pre87, %..critedge_crit_edge ], [ %i.h, %bb.b ]
  %i.ac = phi i32 [ %.pre86, %..critedge_crit_edge ], [ %i.n, %bb.b ] ; 2 uses
  %i.ad = phi i32 [ %.pre, %..critedge_crit_edge ], [ %i.i, %bb.b ] ; 2 uses
  %i.ae = tail call noundef i32 @llvm.umin.i32(i32 %i.a, i32 %i.ad) ; 2 uses
  %i.af = tail call noundef i32 @llvm.umin.i32(i32 %i.d, i32 %i.ac) ; 2 uses
  %i.ag = tail call noundef i32 @llvm.umin.i32(i32 %i.ab, i32 %i.ad) ; 3 uses
  %i.ah = tail call noundef i32 @llvm.umin.i32(i32 %i.aa, i32 %i.ac) ; 4 uses
  %i.ai = xor i32 %i.ae, -1
  %.not.i = icmp ule i32 %i.ag, %i.ai
  %i.aj = xor i32 %i.af, -1
  %i.ak = icmp ule i32 %i.ah, %i.aj
  %i.al = and i1 %.not.i, %i.ak
  br i1 %i.al, label %bb.g, label %bb.l

bb.g:                                             ; preds = %.critedge
  %i.am = load ptr, ptr %1, align 8, !tbaa !8
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef ptr %i.an(ptr noundef nonnull align 8 dereferenceable(112) %1, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 1) ; 2 uses
  %.not = icmp eq ptr %i.ao, null
  br i1 %.not, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = tail call noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #30 ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !212
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %.sroa.2.0.insert.ext.i = zext i32 %i.ah to i64
  %.sroa.2.0.insert.shift.i = shl nuw i64 %.sroa.2.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.ag to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  store i64 %.sroa.0.0.insert.insert.i, ptr %4, align 8
  invoke void @_ZN5video6CImageC1ENS_13ECOLOR_FORMATERKN4core11dimension2dIjEE(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, i32 noundef %i.ar, ptr noundef nonnull align 4 dereferenceable(8) %4)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 100 ; 2 uses
  %.not84 = icmp eq i32 %i.ah, 0
  br i1 %.not84, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 32
  %i.au = load i32, ptr %i.at, align 8, !tbaa !250
  %i.av = mul i32 %i.au, %i.ae
  %i.aw = load i32, ptr %i.as, align 4, !tbaa !213
  %i.ax = mul i32 %i.aw, %i.af
  %i.ay = add i32 %i.av, %i.ax
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !187
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.ap, i64 36
  br label %bb.k

._crit_edge:                                      ; preds = %bb.k, %bb.i
  %i.bf = load ptr, ptr %1, align 8, !tbaa !8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(112) %1)
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.bi = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @_ZdlPvm(ptr noundef nonnull %i.ap, i64 noundef 64) #32
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph, %bb.k
  %.083 = phi i32 [ 0, %.lr.ph ], [ %i.br, %bb.k ]
  %.04082 = phi ptr [ %i.bc, %.lr.ph ], [ %i.bq, %bb.k ] ; 2 uses
  %.04181 = phi ptr [ %i.ba, %.lr.ph ], [ %i.bn, %bb.k ] ; 2 uses
  %i.bj = load i32, ptr %i.aq, align 8, !tbaa !212
  %i.bk = load i32, ptr %i.bd, align 8, !tbaa !190
  call void @_ZN5video15CColorConverter17convert_viaFormatEPKvNS_13ECOLOR_FORMATEiPvS3_(ptr noundef %.04181, i32 noundef %i.bj, i32 noundef %i.ag, ptr noundef %.04082, i32 noundef %i.bk)
  %i.bl = load i32, ptr %i.as, align 4, !tbaa !213
  %i.bm = zext i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw i8, ptr %.04181, i64 %i.bm
  %i.bo = load i32, ptr %i.be, align 4, !tbaa !251
  %i.bp = zext i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %.04082, i64 %i.bp
  %i.br = add nuw i32 %.083, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.br, %i.ah
  br i1 %exitcond.not, label %._crit_edge, label %bb.k, !llvm.loop !252

bb.l:                                             ; preds = %.critedge, %bb.g, %._crit_edge, %bb.e, %bb.c
  %.3 = phi ptr [ null, %bb.c ], [ %i.t, %bb.e ], [ null, %.critedge ], [ %i.ap, %._crit_edge ], [ null, %bb.g ]
  ret ptr %.3

bb.m:                                             ; preds = %bb.j, %bb.f
  %.pn = phi { ptr, i32 } [ %i.z, %bb.f ], [ %i.bi, %bb.j ]
  resume { ptr, i32 } %.pn
}
end_hunk_0
begin_hunk_1_@_ZN5video11CNullDriver20removeOcclusionQueryEPN5scene10ISceneNodeE:bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !8
  %i.c = getelementptr i8, ptr %i.b, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !115
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8, !tbaa !115
  br label %_ZN5video11CNullDriver9SOccQueryC2EPN5scene10ISceneNodeEPKNS2_5IMeshE.exit

_ZN5video11CNullDriver9SOccQueryC2EPN5scene10ISceneNodeEPKNS2_5IMeshE.exit: ; preds = %bb.a, %bb.b
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !318  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !318  ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = ashr i64 %i.n, 7                         ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5video11CNullDriver9SOccQueryC2EPN5scene10ISceneNodeEPKNS2_5IMeshE.exit
  %i.q = and i64 %i.n, -128
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.i, i64 %i.q ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.052.i.i.i.i = phi i64 [ %i.o, %.lr.ph.i.i.i.i ], [ %i.ad, %bb.g ] ; 2 uses
  %.sroa.032.051.i.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i.i ], [ %i.ac, %bb.g ] ; 9 uses
  %i.r = load ptr, ptr %.sroa.032.051.i.i.i.i, align 8, !tbaa !319
  %i.s = icmp eq ptr %1, %i.r
  br i1 %i.s, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !319
  %i.v = icmp eq ptr %1, %i.u
  br i1 %i.v, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !319
  %i.y = icmp eq ptr %1, %i.x
  br i1 %i.y, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit24, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 96
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !319
  %i.ab = icmp eq ptr %1, %i.aa
  br i1 %i.ab, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit26, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 128
  %i.ad = add nsw i64 %.052.i.i.i.i, -1
  %i.ae = icmp sgt i64 %.052.i.i.i.i, 1
  br i1 %i.ae, label %bb.c, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !322

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.g
  %.pre59.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre60.i.i.i.i = sub i64 %i.l, %.pre59.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZN5video11CNullDriver9SOccQueryC2EPN5scene10ISceneNodeEPKNS2_5IMeshE.exit
  %.pre-phi61.i.i.i.i = phi i64 [ %.pre60.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.n, %_ZN5video11CNullDriver9SOccQueryC2EPN5scene10ISceneNodeEPKNS2_5IMeshE.exit ]
  %.sroa.032.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.i, %_ZN5video11CNullDriver9SOccQueryC2EPN5scene10ISceneNodeEPKNS2_5IMeshE.exit ] ; 5 uses
  %i.af = ashr exact i64 %.pre-phi61.i.i.i.i, 5
  switch i64 %i.af, label %_ZNK4core5arrayIN5video11CNullDriver9SOccQueryEE13linear_searchERKS3_.exit [
    i64 3, label %bb.h
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ag = load ptr, ptr %.sroa.032.0.lcssa.i.i.i.i, align 8, !tbaa !319
  %i.ah = icmp eq ptr %1, %i.ag
  br i1 %i.ah, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i, i64 32
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i, %bb.i
  %.sroa.032.1.i.i.i.i = phi ptr [ %i.ai, %bb.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.aj = load ptr, ptr %.sroa.032.1.i.i.i.i, align 8, !tbaa !319
  %i.ak = icmp eq ptr %1, %i.aj
  br i1 %i.ak, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i, label %bb.j

bb.j:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i, i64 32
  br label %._crit_edge._crit_edge57.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i, %bb.j
  %.sroa.032.2.i.i.i.i = phi ptr [ %i.al, %bb.j ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.am = load ptr, ptr %.sroa.032.2.i.i.i.i, align 8, !tbaa !319
  %i.an = icmp eq ptr %1, %i.am
  %spec.select.i.i.i.i = select i1 %i.an, ptr %.sroa.032.2.i.i.i.i, ptr %i.k
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 32
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit24: ; preds = %bb.e
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 64
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit26: ; preds = %bb.f
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 96
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i: ; preds = %bb.c, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit24, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit26, %._crit_edge._crit_edge57.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i, %bb.h
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %bb.h ], [ %i.aq, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit26 ], [ %i.ao, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit ], [ %i.ap, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit24 ], [ %.sroa.032.051.i.i.i.i, %bb.c ] ; 2 uses
  %i.ar = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %i.k
  br i1 %i.ar, label %_ZNK4core5arrayIN5video11CNullDriver9SOccQueryEE13linear_searchERKS3_.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i
  %i.as = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i to i64
  %i.at = sub i64 %i.as, %i.m
  %i.au = lshr exact i64 %i.at, 5
  %i.av = trunc i64 %i.au to i32
  br label %_ZNK4core5arrayIN5video11CNullDriver9SOccQueryEE13linear_searchERKS3_.exit

_ZNK4core5arrayIN5video11CNullDriver9SOccQueryEE13linear_searchERKS3_.exit: ; preds = %bb.k, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i, %._crit_edge.i.i.i.i
  %.0.i = phi i32 [ %i.av, %bb.k ], [ -1, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i ], [ -1, %._crit_edge.i.i.i.i ] ; 2 uses
  br i1 %.not.i, label %_ZN5video11CNullDriver9SOccQueryD2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK4core5arrayIN5video11CNullDriver9SOccQueryEE13linear_searchERKS3_.exit
  %i.aw = load ptr, ptr %1, align 8, !tbaa !8
  %i.ax = getelementptr i8, ptr %i.aw, i64 -24
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr inbounds i8, ptr %1, i64 %i.ay ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !115 ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #34
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.bd = add nsw i32 %i.bb, -1                   ; 2 uses
  store i32 %i.bd, ptr %i.ba, align 8, !tbaa !115
  %.not.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not.i.i, label %bb.o, label %_ZN5video11CNullDriver9SOccQueryD2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.be = load ptr, ptr %i.az, align 8, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(12) %i.az) #33, !inline_history !323
  br label %_ZN5video11CNullDriver9SOccQueryD2Ev.exit

_ZN5video11CNullDriver9SOccQueryD2Ev.exit:        ; preds = %_ZNK4core5arrayIN5video11CNullDriver9SOccQueryEE13linear_searchERKS3_.exit, %bb.n, %bb.o
  %.not = icmp eq i32 %.0.i, -1
  br i1 %.not, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_ZN5video11CNullDriver9SOccQueryD2Ev.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 212 ; 2 uses
  %i.bi = load i16, ptr %i.bh, align 4, !tbaa !330
  %i.bj = and i16 %i.bi, -9
  store i16 %i.bj, ptr %i.bh, align 4, !tbaa !330
  %i.bk = zext i32 %.0.i to i64                   ; 2 uses
  %i.bl = load ptr, ptr %i.j, align 8, !tbaa !324
  %i.bm = load ptr, ptr %i.a, align 8, !tbaa !325 ; 2 uses
  %i.bn = ptrtoint ptr %i.bl to i64
  %i.bo = ptrtoint ptr %i.bm to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = ashr exact i64 %i.bp, 5
  %i.br = icmp ugt i64 %i.bq, %i.bk
  br i1 %i.br, label %_ZN4core5arrayIN5video11CNullDriver9SOccQueryEE5eraseEj.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 363, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN5video11CNullDriver9SOccQueryEE5eraseEj) #34
  unreachable

_ZN4core5arrayIN5video11CNullDriver9SOccQueryEE5eraseEj.exit: ; preds = %bb.p
  %.idx = shl nuw nsw i64 %i.bk, 5
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.idx
  %i.bt = tail call ptr @_ZNSt6vectorIN5video11CNullDriver9SOccQueryESaIS2_EE8_M_eraseEN9__gnu_cxx17__normal_iteratorIPS2_S4_EE(ptr noundef nonnull align 8 dereferenceable(25) %i.a, ptr %i.bs) ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %_ZN4core5arrayIN5video11CNullDriver9SOccQueryEE5eraseEj.exit, %_ZN5video11CNullDriver9SOccQueryD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5video11CNullDriver25removeAllOcclusionQueriesEv(ptr noundef nonnull align 8 dereferenceable(933) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !324
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !325
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = lshr exact i64 %i.g, 5
  %i.i = trunc i64 %i.h to i32
  %.03 = add i32 %i.i, -1                         ; 2 uses
  %i.j = icmp sgt i32 %.03, -1
  br i1 %i.j, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %1 = zext nneg i32 %.03 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN4core5arrayIN5video11CNullDriver9SOccQueryEEixEj.exit, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN4core5arrayIN5video11CNullDriver9SOccQueryEEixEj.exit
  %indvars.iv = phi i64 [ %1, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN4core5arrayIN5video11CNullDriver9SOccQueryEEixEj.exit ] ; 4 uses
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !324
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !325  ; 2 uses
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = ashr exact i64 %i.o, 5
  %i.q = icmp ugt i64 %i.p, %indvars.iv
  br i1 %i.q, label %_ZN4core5arrayIN5video11CNullDriver9SOccQueryEEixEj.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN5video11CNullDriver9SOccQueryEEixEj) #34
  unreachable

_ZN4core5arrayIN5video11CNullDriver9SOccQueryEEixEj.exit: ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.l, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !319
  %i.t = load ptr, ptr %0, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 240
  %i.v = load ptr, ptr %i.u, align 8
  tail call void %i.v(ptr noundef nonnull align 8 dereferenceable(933) %0, ptr noundef %i.s)
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.w = icmp sgt i64 %indvars.iv, 0
  br i1 %i.w, label %.lr.ph, label %._crit_edge, !llvm.loop !331
}

; Function Attrs: mustprogress uwtable
define void @_ZN5video11CNullDriver17runOcclusionQueryEPN5scene10ISceneNodeEb(ptr noundef nonnull align 8 dereferenceable(933) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.video::SMaterial", align 8  ; 21 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %.loopexit, label %_ZN5video11CNullDriver9SOccQueryC2EPN5scene10ISceneNodeEPKNS2_5IMeshE.exit

_ZN5video11CNullDriver9SOccQueryC2EPN5scene10ISceneNodeEPKNS2_5IMeshE.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !8
  %i.c = getelementptr i8, ptr %i.b, i64 -24      ; 2 uses
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %1, i64 %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !115
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8, !tbaa !115
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !318  ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !318  ; 3 uses
  %i.l = ptrtoint ptr %i.k to i64                 ; 2 uses
  %i.m = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %i.o = ashr i64 %i.n, 7                         ; 2 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN5video11CNullDriver9SOccQueryC2EPN5scene10ISceneNodeEPKNS2_5IMeshE.exit
  %i.q = and i64 %i.n, -128
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.i, i64 %i.q ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.052.i.i.i.i = phi i64 [ %i.o, %.lr.ph.i.i.i.i ], [ %i.ad, %bb.f ] ; 2 uses
  %.sroa.032.051.i.i.i.i = phi ptr [ %i.i, %.lr.ph.i.i.i.i ], [ %i.ac, %bb.f ] ; 9 uses
  %i.r = load ptr, ptr %.sroa.032.051.i.i.i.i, align 8, !tbaa !319
  %i.s = icmp eq ptr %1, %i.r
  br i1 %i.s, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !319
  %i.v = icmp eq ptr %1, %i.u
  br i1 %i.v, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !319
  %i.y = icmp eq ptr %1, %i.x
  br i1 %i.y, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit49, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 96
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !319
  %i.ab = icmp eq ptr %1, %i.aa
  br i1 %i.ab, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit51, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 128
  %i.ad = add nsw i64 %.052.i.i.i.i, -1
  %i.ae = icmp sgt i64 %.052.i.i.i.i, 1
  br i1 %i.ae, label %bb.b, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !322

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.f
  %.pre59.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre60.i.i.i.i = sub i64 %i.l, %.pre59.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZN5video11CNullDriver9SOccQueryC2EPN5scene10ISceneNodeEPKNS2_5IMeshE.exit
  %.pre-phi61.i.i.i.i = phi i64 [ %.pre60.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.n, %_ZN5video11CNullDriver9SOccQueryC2EPN5scene10ISceneNodeEPKNS2_5IMeshE.exit ]
  %.sroa.032.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.i, %_ZN5video11CNullDriver9SOccQueryC2EPN5scene10ISceneNodeEPKNS2_5IMeshE.exit ] ; 5 uses
  %i.af = ashr exact i64 %.pre-phi61.i.i.i.i, 5
  switch i64 %i.af, label %_ZNK4core5arrayIN5video11CNullDriver9SOccQueryEE13linear_searchERKS3_.exit [
    i64 3, label %bb.g
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i
  ]

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ag = load ptr, ptr %.sroa.032.0.lcssa.i.i.i.i, align 8, !tbaa !319
  %i.ah = icmp eq ptr %1, %i.ag
  br i1 %i.ah, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i, i64 32
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %._crit_edge.i.i.i.i, %bb.h
  %.sroa.032.1.i.i.i.i = phi ptr [ %i.ai, %bb.h ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.aj = load ptr, ptr %.sroa.032.1.i.i.i.i, align 8, !tbaa !319
  %i.ak = icmp eq ptr %1, %i.aj
  br i1 %i.ak, label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i, i64 32
  br label %._crit_edge._crit_edge57.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i:                 ; preds = %._crit_edge.i.i.i.i, %bb.i
  %.sroa.032.2.i.i.i.i = phi ptr [ %i.al, %bb.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.am = load ptr, ptr %.sroa.032.2.i.i.i.i, align 8, !tbaa !319
  %i.an = icmp eq ptr %1, %i.am
  %spec.select.i.i.i.i = select i1 %i.an, ptr %.sroa.032.2.i.i.i.i, ptr %i.k
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit: ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 32
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit49: ; preds = %bb.d
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 64
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit51: ; preds = %bb.e
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 96
  br label %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i

_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i: ; preds = %bb.b, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit49, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit51, %._crit_edge._crit_edge57.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i, %bb.g
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %bb.g ], [ %i.aq, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit51 ], [ %i.ao, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit ], [ %i.ap, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i.loopexit.split.loop.exit49 ], [ %.sroa.032.051.i.i.i.i, %bb.b ] ; 2 uses
  %i.ar = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %i.k
  br i1 %i.ar, label %_ZNK4core5arrayIN5video11CNullDriver9SOccQueryEE13linear_searchERKS3_.exit, label %bb.j

bb.j:                                             ; preds = %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i
  %i.as = ptrtoint ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i to i64
  %i.at = sub i64 %i.as, %i.m
  %i.au = lshr exact i64 %i.at, 5
  %i.av = trunc i64 %i.au to i32
  br label %_ZNK4core5arrayIN5video11CNullDriver9SOccQueryEE13linear_searchERKS3_.exit

_ZNK4core5arrayIN5video11CNullDriver9SOccQueryEE13linear_searchERKS3_.exit: ; preds = %._crit_edge.i.i.i.i, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i, %bb.j
  %.0.i = phi i32 [ %i.av, %bb.j ], [ -1, %_ZSt4findIN9__gnu_cxx17__normal_iteratorIPKN5video11CNullDriver9SOccQueryESt6vectorIS4_SaIS4_EEEES4_ET_SB_SB_RKT0_.exit.i ], [ -1, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.aw = load i64, ptr %i.c, align 8
  %i.ax = getelementptr inbounds i8, ptr %1, i64 %i.aw ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !115 ; 2 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNK4core5arrayIN5video11CNullDriver9SOccQueryEE13linear_searchERKS3_.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #34
  unreachable

bb.l:                                             ; preds = %_ZNK4core5arrayIN5video11CNullDriver9SOccQueryEE13linear_searchERKS3_.exit
  %i.bb = add nsw i32 %i.az, -1                   ; 2 uses
  store i32 %i.bb, ptr %i.ay, align 8, !tbaa !115
  %.not.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i, label %bb.m, label %_ZN5video11CNullDriver9SOccQueryD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.bc = load ptr, ptr %i.ax, align 8, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void %i.be(ptr noundef nonnull align 8 dereferenceable(12) %i.ax) #33, !inline_history !323
  br label %_ZN5video11CNullDriver9SOccQueryD2Ev.exit

_ZN5video11CNullDriver9SOccQueryD2Ev.exit:        ; preds = %bb.l, %bb.m
  %i.bf = icmp eq i32 %.0.i, -1
  br i1 %i.bf, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %_ZN5video11CNullDriver9SOccQueryD2Ev.exit
  %i.bg = zext i32 %.0.i to i64                   ; 4 uses
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !324
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !325 ; 2 uses
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = ashr exact i64 %i.bl, 5
  %i.bn = icmp ugt i64 %i.bm, %i.bg
  br i1 %i.bn, label %_ZN4core5arrayIN5video11CNullDriver9SOccQueryEEixEj.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @__assert_fail(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, i32 noundef 192, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN4core5arrayIN5video11CNullDriver9SOccQueryEEixEj) #34
  unreachable

_ZN4core5arrayIN5video11CNullDriver9SOccQueryEEixEj.exit: ; preds = %bb.n
  %i.bo = getelementptr inbounds nuw [32 x i8], ptr %i.bi, i64 %i.bg
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 28
  store i32 0, ptr %i.bp, align 4, !tbaa !328
  br i1 %2, label %bb.w, label %bb.p

bb.p:                                             ; preds = %_ZN4core5arrayIN5video11CNullDriver9SOccQueryEEixEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store ptr null, ptr %3, align 8, !tbaa !102
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.br = load i16, ptr %i.bq, align 8
  %i.bs = and i16 %i.br, -4096
  store i16 %i.bs, ptr %i.bq, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 10
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.bt, align 2, !tbaa !108
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, i8 0, i64 16, i1 false)
  %i.bw = load i16, ptr %i.bv, align 8
  %i.bx = and i16 %i.bw, -4096
  store i16 %i.bx, ptr %i.bv, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 34
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.by, align 2, !tbaa !108
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
end_hunk_1
