inline.NumInlined: 299
inline.NumDeleted: 139
begin_hunk_0_@_ZN4llvh11raw_ostreamlsERKNS_14FormattedBytesE:bb.a
  store i8 46, ptr %i.b, align 1, !tbaa !22
  %i.ki = load ptr, ptr %0, align 8, !tbaa !7
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ki, i64 56
  %i.kk = load ptr, ptr %i.kj, align 8
  call void %i.kk(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %i.b, i64 noundef 1) #26, !inline_history !34
  br label %_ZN4llvh11raw_ostream5writeEh.exit.i88

tailrecurse.i.i90:                                ; preds = %.lr.ph.i89
  call void @_ZN4llvh11raw_ostream11SetBufferedEv(ptr noundef nonnull align 8 dereferenceable(36) %0), !inline_history !35
  %i.kl = load ptr, ptr %i.al, align 8, !tbaa !9  ; 3 uses
  %i.km = load ptr, ptr %i.ak, align 8, !tbaa !17
  %.not.i.i91 = icmp ult ptr %i.kl, %i.km
  br i1 %.not.i.i91, label %.loopexit.i.i87, label %bb.bc, !prof !36

._crit_edge.i83:                                  ; preds = %bb.bc, %.lr.ph.i.i81
  %.lcssa6.i84 = phi ptr [ %i.jk, %.lr.ph.i.i81 ], [ %i.kl, %bb.bc ]
  %.lcssa.i85 = phi ptr [ %i.ke, %.lr.ph.i.i81 ], [ %i.kf, %bb.bc ] ; 3 uses
  %i.kn = ptrtoint ptr %.lcssa6.i84 to i64
  %i.ko = ptrtoint ptr %.lcssa.i85 to i64
  %i.kp = sub i64 %i.kn, %i.ko
  store ptr %.lcssa.i85, ptr %i.al, align 8, !tbaa !9
  %i.kq = load ptr, ptr %0, align 8, !tbaa !7
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 56
  %i.ks = load ptr, ptr %i.kr, align 8
  call void %i.ks(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %.lcssa.i85, i64 noundef %i.kp) #26, !inline_history !37
  %.pre.i.i86 = load ptr, ptr %i.al, align 8, !tbaa !9
  br label %.loopexit.i.i87

.loopexit.i.i87:                                  ; preds = %tailrecurse.i.i90, %._crit_edge.i83
  %i.kt = phi ptr [ %.pre.i.i86, %._crit_edge.i83 ], [ %i.kl, %tailrecurse.i.i90 ] ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 1
  store ptr %i.ku, ptr %i.al, align 8, !tbaa !9
  store i8 46, ptr %i.kt, align 1, !tbaa !22
  br label %_ZN4llvh11raw_ostream5writeEh.exit.i88

_ZN4llvh11raw_ostream5writeEh.exit.i88:           ; preds = %.loopexit.i.i87, %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_ZN4llvh11raw_ostreamlsEc.exit79

bb.be:                                            ; preds = %bb.bb
  %i.kv = getelementptr inbounds nuw i8, ptr %i.jk, i64 1
  store ptr %i.kv, ptr %i.al, align 8, !tbaa !9
  store i8 46, ptr %i.jk, align 1, !tbaa !22
  br label %_ZN4llvh11raw_ostreamlsEc.exit79

_ZN4llvh11raw_ostreamlsEc.exit79:                 ; preds = %bb.be, %_ZN4llvh11raw_ostream5writeEh.exit.i88, %bb.ba, %_ZN4llvh11raw_ostream5writeEh.exit.i74
  %i.kw = getelementptr inbounds nuw i8, ptr %.051221, i64 1 ; 2 uses
  %.not53 = icmp eq ptr %i.kw, %i.im
  br i1 %.not53, label %._crit_edge223, label %.lr.ph222

_ZN4llvh11raw_ostreamlsEc.exit:                   ; preds = %bb.aw, %_ZN4llvh11raw_ostream5writeEh.exit.i, %._crit_edge212
  %i.kx = sub i64 %.sroa.6151.0226, %..i55        ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %.sroa.0150.0224, i64 %..i55
  %i.kz = add i64 %..i55, %.048227                ; 2 uses
  %i.la = icmp ult i64 %i.kz, %.fr
  br i1 %i.la, label %bb.bf, label %_ZN4llvh11raw_ostreamlsEc.exit107

bb.bf:                                            ; preds = %_ZN4llvh11raw_ostreamlsEc.exit
  %i.lb = load ptr, ptr %i.al, align 8, !tbaa !9  ; 4 uses
  %i.lc = load ptr, ptr %i.ak, align 8, !tbaa !17
  %.not.i94 = icmp ult ptr %i.lb, %i.lc
  br i1 %.not.i94, label %bb.bi, label %.lr.ph.i.i95

.lr.ph.i.i95:                                     ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ld = load ptr, ptr %i.am, align 8, !tbaa !14 ; 2 uses
  %.not2.i10.i96 = icmp eq ptr %i.ld, null
  br i1 %.not2.i10.i96, label %.lr.ph.i103, label %._crit_edge.i97, !prof !32

bb.bg:                                            ; preds = %tailrecurse.i.i104
  %i.le = load ptr, ptr %i.am, align 8, !tbaa !14 ; 2 uses
  %.not2.i.i106 = icmp eq ptr %i.le, null
  br i1 %.not2.i.i106, label %.lr.ph.i103, label %._crit_edge.i97, !prof !33

.lr.ph.i103:                                      ; preds = %.lr.ph.i.i95, %bb.bg
  %i.lf = load i32, ptr %i.an, align 8, !tbaa !16
  %i.lg = icmp eq i32 %i.lf, 0
  br i1 %i.lg, label %bb.bh, label %tailrecurse.i.i104

bb.bh:                                            ; preds = %.lr.ph.i103
  store i8 10, ptr %i.a, align 1, !tbaa !22
  %i.lh = load ptr, ptr %0, align 8, !tbaa !7
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 56
  %i.lj = load ptr, ptr %i.li, align 8
  call void %i.lj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %i.a, i64 noundef 1) #26, !inline_history !34
  br label %_ZN4llvh11raw_ostream5writeEh.exit.i102

tailrecurse.i.i104:                               ; preds = %.lr.ph.i103
  call void @_ZN4llvh11raw_ostream11SetBufferedEv(ptr noundef nonnull align 8 dereferenceable(36) %0), !inline_history !35
  %i.lk = load ptr, ptr %i.al, align 8, !tbaa !9  ; 3 uses
  %i.ll = load ptr, ptr %i.ak, align 8, !tbaa !17
  %.not.i.i105 = icmp ult ptr %i.lk, %i.ll
  br i1 %.not.i.i105, label %.loopexit.i.i101, label %bb.bg, !prof !36

._crit_edge.i97:                                  ; preds = %bb.bg, %.lr.ph.i.i95
  %.lcssa6.i98 = phi ptr [ %i.lb, %.lr.ph.i.i95 ], [ %i.lk, %bb.bg ]
  %.lcssa.i99 = phi ptr [ %i.ld, %.lr.ph.i.i95 ], [ %i.le, %bb.bg ] ; 3 uses
  %i.lm = ptrtoint ptr %.lcssa6.i98 to i64
  %i.ln = ptrtoint ptr %.lcssa.i99 to i64
  %i.lo = sub i64 %i.lm, %i.ln
  store ptr %.lcssa.i99, ptr %i.al, align 8, !tbaa !9
  %i.lp = load ptr, ptr %0, align 8, !tbaa !7
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 56
  %i.lr = load ptr, ptr %i.lq, align 8
  call void %i.lr(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %.lcssa.i99, i64 noundef %i.lo) #26, !inline_history !37
  %.pre.i.i100 = load ptr, ptr %i.al, align 8, !tbaa !9
  br label %.loopexit.i.i101

.loopexit.i.i101:                                 ; preds = %tailrecurse.i.i104, %._crit_edge.i97
  %i.ls = phi ptr [ %.pre.i.i100, %._crit_edge.i97 ], [ %i.lk, %tailrecurse.i.i104 ] ; 2 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 1
  store ptr %i.lt, ptr %i.al, align 8, !tbaa !9
  store i8 10, ptr %i.ls, align 1, !tbaa !22
  br label %_ZN4llvh11raw_ostream5writeEh.exit.i102

_ZN4llvh11raw_ostream5writeEh.exit.i102:          ; preds = %.loopexit.i.i101, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_ZN4llvh11raw_ostreamlsEc.exit107

bb.bi:                                            ; preds = %bb.bf
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lb, i64 1
  store ptr %i.lu, ptr %i.al, align 8, !tbaa !9
  store i8 10, ptr %i.lb, align 1, !tbaa !22
  br label %_ZN4llvh11raw_ostreamlsEc.exit107

_ZN4llvh11raw_ostreamlsEc.exit107:                ; preds = %bb.bi, %_ZN4llvh11raw_ostream5writeEh.exit.i102, %_ZN4llvh11raw_ostreamlsEc.exit
  %i.lv = icmp eq i64 %i.kx, 0
  br i1 %i.lv, label %.loopexit, label %bb.e, !llvm.loop !104

.loopexit:                                        ; preds = %_ZN4llvh11raw_ostreamlsEc.exit107, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream11write_zerosEj(ptr noundef nonnull returned align 8 dereferenceable(36) %0, i32 noundef %1) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = icmp ult i32 %1, 80
  br i1 %i.a, label %bb.b, label %.preheader.i

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64
  %i.c = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @_ZZL13write_paddingILc0EERN4llvh11raw_ostreamES2_jE5Chars, i64 noundef %i.b) ; 0 uses
  br label %_ZL13write_paddingILc0EERN4llvh11raw_ostreamES2_j.exit

.preheader.i:                                     ; preds = %bb.a, %.preheader.i
  %.01112.i = phi i32 [ %i.f, %.preheader.i ], [ %1, %bb.a ] ; 2 uses
  %.sroa.speculated.i = tail call i32 @llvm.umin.i32(i32 %.01112.i, i32 79) ; 2 uses
  %i.d = zext nneg i32 %.sroa.speculated.i to i64
  %i.e = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull @_ZZL13write_paddingILc0EERN4llvh11raw_ostreamES2_jE5Chars, i64 noundef %i.d) ; 0 uses
  %i.f = sub i32 %.01112.i, %.sroa.speculated.i   ; 2 uses
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %_ZL13write_paddingILc0EERN4llvh11raw_ostreamES2_j.exit, label %.preheader.i, !llvm.loop !105

_ZL13write_paddingILc0EERN4llvh11raw_ostreamES2_j.exit: ; preds = %.preheader.i, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN4llvh11raw_ostream6anchorEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @_ZN4llvh18format_object_base4homeEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #3 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh14raw_fd_ostreamC2ENS_9StringRefERSt10error_code(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) initializes((0, 41), (48, 52), (56, 64)) %0, ptr %1, i64 %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %3) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN4llvh14raw_fd_ostreamC2ENS_9StringRefERSt10error_codeNS_3sys2fs19CreationDispositionENS5_10FileAccessENS5_9OpenFlagsE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 0, i32 noundef 2, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh14raw_fd_ostreamC2ENS_9StringRefERSt10error_codeNS_3sys2fs19CreationDispositionENS5_10FileAccessENS5_9OpenFlagsE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) initializes((0, 41), (48, 52), (56, 64)) %0, ptr %1, i64 %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #4 align 2 {
bb.a:
  %7 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %8 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  %9 = alloca %"class.llvh::Twine", align 8       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %1, ptr %7, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %2, ptr %i.b, align 8
  %i.c = icmp eq i64 %2, 1
  br i1 %i.c, label %_ZNK4llvh9StringRef6equalsES0_.exit.i, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.i

_ZNK4llvh9StringRef6equalsES0_.exit.i:            ; preds = %bb.a
  %lhsc.i = load i8, ptr %1, align 1
  %i.d = icmp eq i8 %lhsc.i, 45
  br i1 %i.d, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread21.i, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread.i

_ZNK4llvh9StringRef6equalsES0_.exit.thread21.i:   ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i
  %i.e = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #29 ; 3 uses
  store i32 0, ptr %3, align 8, !tbaa !3
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.e, ptr %.sroa.417.0..sroa_idx.i, align 8, !tbaa !106
  %.not16.i = trunc nuw i32 %6 to i1
  br i1 %.not16.i, label %_ZL5getFDN4llvh9StringRefERSt10error_codeNS_3sys2fs19CreationDispositionENS4_10FileAccessENS4_9OpenFlagsE.exit, label %bb.b

bb.b:                                             ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread21.i
  %i.f = tail call { i32, ptr } @_ZN4llvh3sys20ChangeStdoutToBinaryEv() #26 ; 0 uses
  br label %_ZL5getFDN4llvh9StringRefERSt10error_codeNS_3sys2fs19CreationDispositionENS4_10FileAccessENS4_9OpenFlagsE.exit

_ZNK4llvh9StringRef6equalsES0_.exit.thread.i:     ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %.not.i = trunc nuw i32 %5 to i1
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #26
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i8 5, ptr %i.g, align 8, !tbaa !108
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 17
  store i8 1, ptr %i.h, align 1, !tbaa !111
  store ptr %7, ptr %8, align 8, !tbaa !22
  %i.i = call { i32, ptr } @_ZN4llvh3sys2fs8openFileERKNS_5TwineERiNS1_19CreationDispositionENS1_10FileAccessENS1_9OpenFlagsEj(ptr noundef nonnull align 8 dereferenceable(18) %8, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %4, i32 noundef 3, i32 noundef %6, i32 noundef 438) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #26
  br label %bb.e

bb.d:                                             ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread.i
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #26
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 16
  store i8 5, ptr %i.j, align 8, !tbaa !108
  %i.k = getelementptr inbounds nuw i8, ptr %9, i64 17
  store i8 1, ptr %i.k, align 1, !tbaa !111
  store ptr %7, ptr %9, align 8, !tbaa !22
  %i.l = call { i32, ptr } @_ZN4llvh3sys2fs8openFileERKNS_5TwineERiNS1_19CreationDispositionENS1_10FileAccessENS1_9OpenFlagsEj(ptr noundef nonnull align 8 dereferenceable(18) %9, ptr noundef nonnull align 4 dereferenceable(4) %i.a, i32 noundef %4, i32 noundef 2, i32 noundef %6, i32 noundef 438) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn.i = phi { i32, ptr } [ %i.i, %bb.c ], [ %i.l, %bb.d ] ; 2 uses
  %.sink.i = extractvalue { i32, ptr } %.pn.i, 1
  %.sink24.i = extractvalue { i32, ptr } %.pn.i, 0 ; 2 uses
  store i32 %.sink24.i, ptr %3, align 8, !tbaa !3
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %.sink.i, ptr %i.m, align 8, !tbaa !106
  %.not23.i = icmp eq i32 %.sink24.i, 0
  %i.n = load i32, ptr %i.a, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %.pre = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #29
  %spec.select = select i1 %.not23.i, i32 %i.n, i32 -1
  br label %_ZL5getFDN4llvh9StringRefERSt10error_codeNS_3sys2fs19CreationDispositionENS4_10FileAccessENS4_9OpenFlagsE.exit

_ZL5getFDN4llvh9StringRefERSt10error_codeNS_3sys2fs19CreationDispositionENS4_10FileAccessENS4_9OpenFlagsE.exit: ; preds = %bb.e, %_ZNK4llvh9StringRef6equalsES0_.exit.thread21.i, %bb.b
  %.pre-phi = phi ptr [ %.pre, %bb.e ], [ %i.e, %_ZNK4llvh9StringRef6equalsES0_.exit.thread21.i ], [ %i.e, %bb.b ]
  %.1.i = phi i32 [ %spec.select, %bb.e ], [ 1, %_ZNK4llvh9StringRef6equalsES0_.exit.thread21.i ], [ 1, %bb.b ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.o, align 8, !tbaa !16
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh14raw_fd_ostreamE, i64 16), ptr %0, align 8, !tbaa !7
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.1.i, ptr %i.q, align 4, !tbaa !112
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i8 1, ptr %i.r, align 8, !tbaa !116
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.s, align 8, !tbaa !117
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.pre-phi, ptr %i.t, align 8, !tbaa !118
  %i.u = icmp slt i32 %.1.i, 0
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZL5getFDN4llvh9StringRefERSt10error_codeNS_3sys2fs19CreationDispositionENS4_10FileAccessENS4_9OpenFlagsE.exit
  store i8 0, ptr %i.r, align 8, !tbaa !116
  br label %_ZN4llvh14raw_fd_ostreamC2Eibb.exit

bb.g:                                             ; preds = %_ZL5getFDN4llvh9StringRefERSt10error_codeNS_3sys2fs19CreationDispositionENS4_10FileAccessENS4_9OpenFlagsE.exit
  %i.v = icmp samesign ult i32 %.1.i, 3
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 0, ptr %i.r, align 8, !tbaa !116
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.w = call i64 @lseek(i32 noundef %.1.i, i64 noundef 0, i32 noundef 1) #26 ; 2 uses
  %i.x = icmp ne i64 %i.w, -1                     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.z = zext i1 %i.x to i8
  store i8 %i.z, ptr %i.y, align 1, !tbaa !119
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br i1 %i.x, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i64 0, ptr %i.aa, align 8, !tbaa !120
  br label %_ZN4llvh14raw_fd_ostreamC2Eibb.exit

bb.k:                                             ; preds = %bb.i
  store i64 %i.w, ptr %i.aa, align 8, !tbaa !120
  br label %_ZN4llvh14raw_fd_ostreamC2Eibb.exit

_ZN4llvh14raw_fd_ostreamC2Eibb.exit:              ; preds = %bb.f, %bb.j, %bb.k
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh14raw_fd_ostreamC2ENS_9StringRefERSt10error_codeNS_3sys2fs19CreationDispositionE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) initializes((0, 41), (48, 52), (56, 64)) %0, ptr %1, i64 %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %3, i32 noundef %4) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN4llvh14raw_fd_ostreamC2ENS_9StringRefERSt10error_codeNS_3sys2fs19CreationDispositionENS5_10FileAccessENS5_9OpenFlagsE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef %4, i32 noundef 2, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh14raw_fd_ostreamC2ENS_9StringRefERSt10error_codeNS_3sys2fs10FileAccessE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) initializes((0, 41), (48, 52), (56, 64)) %0, ptr %1, i64 %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %3, i32 noundef %4) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN4llvh14raw_fd_ostreamC2ENS_9StringRefERSt10error_codeNS_3sys2fs19CreationDispositionENS5_10FileAccessENS5_9OpenFlagsE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 0, i32 noundef %4, i32 noundef 0)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh14raw_fd_ostreamC2ENS_9StringRefERSt10error_codeNS_3sys2fs9OpenFlagsE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) initializes((0, 41), (48, 52), (56, 64)) %0, ptr %1, i64 %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 4), (8, 16)) %3, i32 noundef %4) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN4llvh14raw_fd_ostreamC2ENS_9StringRefERSt10error_codeNS_3sys2fs19CreationDispositionENS5_10FileAccessENS5_9OpenFlagsE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef 0, i32 noundef 2, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh14raw_fd_ostreamC2Eibb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) initializes((0, 41), (48, 52), (56, 64)) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #4 align 2 {
bb.a:
  %i.a = zext i1 %2 to i8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %not..i.i = xor i1 %3, true
  %i.c = zext i1 %not..i.i to i32
  store i32 %i.c, ptr %i.b, align 8, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh14raw_fd_ostreamE, i64 16), ptr %0, align 8, !tbaa !7
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %1, ptr %i.e, align 4, !tbaa !112
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store i8 %i.a, ptr %i.f, align 8, !tbaa !116
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.g, align 8, !tbaa !117
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V215system_categoryEv() #29
  store ptr %i.i, ptr %i.h, align 8, !tbaa !118
  %i.j = icmp slt i32 %1, 0
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.f, align 8, !tbaa !116
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.k = icmp samesign ult i32 %1, 3
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.f, align 8, !tbaa !116
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = tail call i64 @lseek(i32 noundef %1, i64 noundef 0, i32 noundef 1) #26 ; 2 uses
  %i.m = icmp ne i64 %i.l, -1                     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.o = zext i1 %i.m to i8
  store i8 %i.o, ptr %i.n, align 1, !tbaa !119
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 0, ptr %i.p, align 8, !tbaa !120
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i64 %i.l, ptr %i.p, align 8, !tbaa !120
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.b
  ret void
}

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvh14raw_fd_ostreamD2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(72) initializes((0, 8)) %0) unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 96) (i8, ptr @_ZTVN4llvh14raw_fd_ostreamE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !112
  %i.c = icmp sgt i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !9    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14   ; 4 uses
  %.not.i = icmp eq ptr %i.e, %i.g
  br i1 %.not.i, label %_ZN4llvh11raw_ostream5flushEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = ptrtoint ptr %i.e to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 2 uses
  store ptr %i.g, ptr %i.d, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !120
  %i.m = add i64 %i.l, %i.j
  store i64 %i.m, ptr %i.k, align 8, !tbaa !120
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %bb.c
  %.015.i = phi i64 [ %i.j, %bb.c ], [ %.116.i, %bb.g ] ; 4 uses
  %.07.i = phi ptr [ %i.g, %bb.c ], [ %.1.i, %bb.g ] ; 4 uses
  %.sroa.speculated.i = tail call i64 @llvm.umin.i64(i64 %.015.i, i64 1073741824)
  %i.n = load i32, ptr %i.a, align 4, !tbaa !112
  %i.o = tail call i64 @write(i32 noundef %i.n, ptr noundef %.07.i, i64 noundef %.sroa.speculated.i) #26 ; 3 uses
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = tail call ptr @__errno_location() #29
  %i.r = load i32, ptr %i.q, align 4, !tbaa !3    ; 2 uses
  switch i32 %i.r, label %.thread.i [
    i32 4, label %bb.g
    i32 11, label %bb.g
  ]

.thread.i:                                        ; preds = %bb.e
  %i.s = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3_V216generic_categoryEv() #29
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %i.r, ptr %i.t, align 8, !tbaa !3
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.s, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !106
  br label %_ZN4llvh11raw_ostream5flushEv.exit

end_hunk_0
