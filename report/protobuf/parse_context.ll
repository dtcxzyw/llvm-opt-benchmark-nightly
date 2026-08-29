Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/parse_context?download=true
inline.NumInlined: 1058
inline.NumDeleted: 369
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6google8protobuf8internal18EpsCopyInputStream23ReadMicroStringFallbackEPKciRNS1_11MicroStringEPNS0_5ArenaE:bb.a
  %i.hc = inttoptr i64 %i.hb to ptr
  store ptr %i.hc, ptr %3, align 8, !tbaa !67
  br label %"_ZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_m.exit"

_ZN6google8protobuf8internal11MicroString7DestroyEv.exit.i.thread: ; preds = %bb.b, %_ZN6google8protobuf8internal11MicroString7DestroyEv.exit.i
  %i.hd = icmp ult i32 %2, 255
  br i1 %i.hd, label %bb.ah, label %bb.an

bb.ah:                                            ; preds = %_ZN6google8protobuf8internal11MicroString7DestroyEv.exit.i.thread
  %i.he = call noundef ptr @_ZN6google8protobuf8internal11MicroString16AllocateMicroRepEmPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef range(i64 -2147483648, 2147483648) %i.c, ptr noundef %4) ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 2 ; 2 uses
  %i.hg = load ptr, ptr %i.a, align 8, !tbaa !66  ; 2 uses
  %i.hh = load i32, ptr %i.b, align 4, !tbaa !3
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !14
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.hl = ptrtoint ptr %i.hk to i64
  %i.hm = ptrtoint ptr %i.hg to i64
  %i.hn = sub i64 %i.hl, %i.hm
  %i.ho = trunc i64 %i.hn to i32
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.al, %bb.ah
  %.0.i.i60.i = phi ptr [ %i.hf, %bb.ah ], [ %i.hu, %bb.al ] ; 3 uses
  %.021.i.i.i.i61.i = phi ptr [ %i.hg, %bb.ah ], [ %i.ij, %bb.al ]
  %.020.i.i.i.i62.i = phi i32 [ %i.hh, %bb.ah ], [ %i.hv, %bb.al ]
  %.0.i.i.i.i63.i = phi i32 [ %i.ho, %bb.ah ], [ %i.io, %bb.al ] ; 2 uses
  %i.hr = load ptr, ptr %i.hp, align 8, !tbaa !7
  %i.hs = icmp eq ptr %i.hr, null
  br i1 %i.hs, label %"_ZZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_mENKUlPNS2_8MicroRepEE_clESD_.exit69.i", label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ht = sext i32 %.0.i.i.i.i63.i to i64         ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i60.i, ptr readonly align 1 %.021.i.i.i.i61.i, i64 %i.ht, i1 false)
  %i.hu = getelementptr inbounds nuw i8, ptr %.0.i.i60.i, i64 %i.ht ; 5 uses
  %i.hv = sub i32 %.020.i.i.i.i62.i, %.0.i.i.i.i63.i ; 4 uses
  %i.hw = load i32, ptr %i.hq, align 4, !tbaa !25
  %i.hx = icmp slt i32 %i.hw, 17
  br i1 %i.hx, label %"_ZZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_mENKUlPNS2_8MicroRepEE_clESD_.exit69.i", label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hy = call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream10NextBufferILb0EEEPKcii(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef 0, i32 noundef -1) ; 3 uses
  %i.hz = icmp eq ptr %i.hy, null
  %i.ia = load ptr, ptr %i.hi, align 8, !tbaa !14 ; 4 uses
  br i1 %i.hz, label %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread.i.i.i.i68.i, label %bb.al

_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread.i.i.i.i68.i: ; preds = %bb.ak
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1, ptr %i.ib, align 8, !tbaa !29
  store ptr %i.ia, ptr %0, align 8, !tbaa !28
  br label %"_ZZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_mENKUlPNS2_8MicroRepEE_clESD_.exit69.i"

bb.al:                                            ; preds = %bb.ak
  %i.ic = ptrtoint ptr %i.ia to i64
  %i.id = ptrtoint ptr %i.hy to i64
  %.neg.i.i.i.i.i64.i = sub i64 %i.id, %i.ic
  %i.ie = load i32, ptr %i.hq, align 4, !tbaa !25
  %i.if = trunc i64 %.neg.i.i.i.i.i64.i to i32
  %i.ig = add i32 %i.ie, %i.if                    ; 2 uses
  store i32 %i.ig, ptr %i.hq, align 4, !tbaa !25
  %.sroa.speculated.i.i.i.i.i65.i = call i32 @llvm.smin.i32(i32 %i.ig, i32 0)
  %i.ih = sext i32 %.sroa.speculated.i.i.i.i.i65.i to i64
  %i.ii = getelementptr inbounds i8, ptr %i.ia, i64 %i.ih
  store ptr %i.ii, ptr %0, align 8, !tbaa !28
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hy, i64 16 ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.il = ptrtoint ptr %i.ik to i64
  %i.im = ptrtoint ptr %i.ij to i64
  %i.in = sub i64 %i.il, %i.im
  %i.io = trunc i64 %i.in to i32                  ; 2 uses
  %i.ip = icmp ugt i32 %i.hv, %i.io
  br i1 %i.ip, label %bb.ai, label %bb.am, !llvm.loop !69

bb.am:                                            ; preds = %bb.al
  %i.iq = sext i32 %i.hv to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hu, ptr nonnull readonly align 1 %i.ij, i64 %i.iq, i1 false)
  %i.ir = getelementptr inbounds nuw i8, ptr %i.hu, i64 %i.iq
  %i.is = zext i32 %i.hv to i64
  %i.it = getelementptr inbounds nuw i8, ptr %i.ij, i64 %i.is
  br label %"_ZZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_mENKUlPNS2_8MicroRepEE_clESD_.exit69.i"

"_ZZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_mENKUlPNS2_8MicroRepEE_clESD_.exit69.i": ; preds = %bb.aj, %bb.ai, %bb.am, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread.i.i.i.i68.i
  %.1.i.i66.i = phi ptr [ %i.hu, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread.i.i.i.i68.i ], [ %i.ir, %bb.am ], [ %.0.i.i60.i, %bb.ai ], [ %i.hu, %bb.aj ]
  %.019.i.i.i.i67.i = phi ptr [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread.i.i.i.i68.i ], [ %i.it, %bb.am ], [ null, %bb.ai ], [ null, %bb.aj ]
  store ptr %.019.i.i.i.i67.i, ptr %i.a, align 8, !tbaa !66
  %i.iu = ptrtoint ptr %.1.i.i66.i to i64
  %i.iv = ptrtoint ptr %i.hf to i64
  %i.iw = sub i64 %i.iu, %i.iv
  %i.ix = trunc i64 %i.iw to i8
  store i8 %i.ix, ptr %i.he, align 1, !tbaa !72
  br label %"_ZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_m.exit"

bb.an:                                            ; preds = %_ZN6google8protobuf8internal11MicroString7DestroyEv.exit.i.thread
  %i.iy = icmp ult i32 %2, 50000001
  br i1 %i.iy, label %bb.ao, label %bb.au

bb.ao:                                            ; preds = %bb.an
  %i.iz = call noundef ptr @_ZN6google8protobuf8internal11MicroString16AllocateOwnedRepEmPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef range(i64 -2147483648, 2147483648) %i.c, ptr noundef %4) ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16 ; 2 uses
  %i.jb = load ptr, ptr %i.a, align 8, !tbaa !66  ; 2 uses
  %i.jc = load i32, ptr %i.b, align 4, !tbaa !3
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !14
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %i.jg = ptrtoint ptr %i.jf to i64
  %i.jh = ptrtoint ptr %i.jb to i64
  %i.ji = sub i64 %i.jg, %i.jh
  %i.jj = trunc i64 %i.ji to i32
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.as, %bb.ao
  %.0.i.i70.i = phi ptr [ %i.ja, %bb.ao ], [ %i.jp, %bb.as ] ; 3 uses
  %.021.i.i.i.i71.i = phi ptr [ %i.jb, %bb.ao ], [ %i.ke, %bb.as ]
  %.020.i.i.i.i72.i = phi i32 [ %i.jc, %bb.ao ], [ %i.jq, %bb.as ]
  %.0.i.i.i.i73.i = phi i32 [ %i.jj, %bb.ao ], [ %i.kj, %bb.as ] ; 2 uses
  %i.jm = load ptr, ptr %i.jk, align 8, !tbaa !7
  %i.jn = icmp eq ptr %i.jm, null
  br i1 %i.jn, label %"_ZZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_mENKUlPNS2_8LargeRepEE_clESD_.exit79.i", label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jo = sext i32 %.0.i.i.i.i73.i to i64         ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i70.i, ptr readonly align 1 %.021.i.i.i.i71.i, i64 %i.jo, i1 false)
  %i.jp = getelementptr inbounds nuw i8, ptr %.0.i.i70.i, i64 %i.jo ; 5 uses
  %i.jq = sub i32 %.020.i.i.i.i72.i, %.0.i.i.i.i73.i ; 4 uses
  %i.jr = load i32, ptr %i.jl, align 4, !tbaa !25
  %i.js = icmp slt i32 %i.jr, 17
  br i1 %i.js, label %"_ZZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_mENKUlPNS2_8LargeRepEE_clESD_.exit79.i", label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.jt = call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream10NextBufferILb0EEEPKcii(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef 0, i32 noundef -1) ; 3 uses
  %i.ju = icmp eq ptr %i.jt, null
  %i.jv = load ptr, ptr %i.jd, align 8, !tbaa !14 ; 4 uses
  br i1 %i.ju, label %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread.i.i.i.i78.i, label %bb.as

_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread.i.i.i.i78.i: ; preds = %bb.ar
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1, ptr %i.jw, align 8, !tbaa !29
  store ptr %i.jv, ptr %0, align 8, !tbaa !28
  br label %"_ZZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_mENKUlPNS2_8LargeRepEE_clESD_.exit79.i"

bb.as:                                            ; preds = %bb.ar
  %i.jx = ptrtoint ptr %i.jv to i64
  %i.jy = ptrtoint ptr %i.jt to i64
  %.neg.i.i.i.i.i74.i = sub i64 %i.jy, %i.jx
  %i.jz = load i32, ptr %i.jl, align 4, !tbaa !25
  %i.ka = trunc i64 %.neg.i.i.i.i.i74.i to i32
  %i.kb = add i32 %i.jz, %i.ka                    ; 2 uses
  store i32 %i.kb, ptr %i.jl, align 4, !tbaa !25
  %.sroa.speculated.i.i.i.i.i75.i = call i32 @llvm.smin.i32(i32 %i.kb, i32 0)
  %i.kc = sext i32 %.sroa.speculated.i.i.i.i.i75.i to i64
  %i.kd = getelementptr inbounds i8, ptr %i.jv, i64 %i.kc
  store ptr %i.kd, ptr %0, align 8, !tbaa !28
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jt, i64 16 ; 4 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %i.kg = ptrtoint ptr %i.kf to i64
  %i.kh = ptrtoint ptr %i.ke to i64
  %i.ki = sub i64 %i.kg, %i.kh
  %i.kj = trunc i64 %i.ki to i32                  ; 2 uses
  %i.kk = icmp ugt i32 %i.jq, %i.kj
  br i1 %i.kk, label %bb.ap, label %bb.at, !llvm.loop !69

bb.at:                                            ; preds = %bb.as
  %i.kl = sext i32 %i.jq to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.jp, ptr nonnull readonly align 1 %i.ke, i64 %i.kl, i1 false)
  %i.km = getelementptr inbounds nuw i8, ptr %i.jp, i64 %i.kl
  %i.kn = zext i32 %i.jq to i64
  %i.ko = getelementptr inbounds nuw i8, ptr %i.ke, i64 %i.kn
  br label %"_ZZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_mENKUlPNS2_8LargeRepEE_clESD_.exit79.i"

"_ZZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_mENKUlPNS2_8LargeRepEE_clESD_.exit79.i": ; preds = %bb.aq, %bb.ap, %bb.at, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread.i.i.i.i78.i
  %.1.i.i76.i = phi ptr [ %i.jp, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread.i.i.i.i78.i ], [ %i.km, %bb.at ], [ %.0.i.i70.i, %bb.ap ], [ %i.jp, %bb.aq ]
  %.019.i.i.i.i77.i = phi ptr [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv.exit.thread.i.i.i.i78.i ], [ %i.ko, %bb.at ], [ null, %bb.ap ], [ null, %bb.aq ]
  store ptr %.019.i.i.i.i77.i, ptr %i.a, align 8, !tbaa !66
  %i.kp = ptrtoint ptr %.1.i.i76.i to i64
  %i.kq = ptrtoint ptr %i.ja to i64
  %i.kr = sub i64 %i.kp, %i.kq
  %i.ks = trunc i64 %i.kr to i32
  %i.kt = getelementptr inbounds nuw i8, ptr %i.iz, i64 8
  store i32 %i.ks, ptr %i.kt, align 8, !tbaa !75
  br label %"_ZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_m.exit"

bb.au:                                            ; preds = %bb.an
  %i.ku = call noundef ptr @_ZN6google8protobuf8internal11MicroString17AllocateStringRepEPNS0_5ArenaE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4)
  call fastcc void @"_ZZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_mENKUlPNS2_9StringRepEE_clESD_"(ptr nonnull readonly align 8 %5, ptr noundef %i.ku)
  br label %"_ZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_m.exit"

"_ZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_m.exit": ; preds = %"_ZZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_mENKUlvE_clEv.exit.i", %"_ZZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_mENKUlPNS2_8MicroRepEE_clESD_.exit.i", %"_ZZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_mENKUlPNS2_8LargeRepEE_clESD_.exit.i", %bb.z, %"_ZZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_mENKUlvE_clEv.exit59.i", %"_ZZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_mENKUlPNS2_8MicroRepEE_clESD_.exit69.i", %"_ZZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_mENKUlPNS2_8LargeRepEE_clESD_.exit79.i", %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.kv = load ptr, ptr %i.a, align 8, !tbaa !66
  ret ptr %i.kv
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef i32 @_ZN6google8protobuf8internal30CountVarintsAssumingLargeArrayEPKcS3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = trunc i64 %i.c to i32                    ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %1, i64 -8 ; 4 uses
  %i.f = icmp ult ptr %0, %i.e
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = add i64 %i.a, -9
  %2 = sub i64 %i.g, %i.b                         ; 2 uses
  %i.h = lshr i64 %2, 3
  %i.i = add nuw nsw i64 %i.h, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %2, 24
  br i1 %min.iters.check, label %.lr.ph.preheader24, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.i, 4611686018427387900      ; 3 uses
  %i.j = shl i64 %n.vec, 3
  %i.k = getelementptr i8, ptr %0, i64 %i.j       ; 2 uses
  %i.l = insertelement <2 x i32> <i32 poison, i32 0>, i32 %i.d, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %i.l, %vector.ph ], [ %i.u, %vector.body ]
  %vec.phi22 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.v, %vector.body ]
  %i.m = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %0, i64 %i.m  ; 2 uses
  %i.n = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 1
  %wide.load23 = load <2 x i64>, ptr %i.n, align 1
  %i.o = and <2 x i64> %wide.load, splat (i64 -9187201950435737472)
  %i.p = and <2 x i64> %wide.load23, splat (i64 -9187201950435737472)
  %i.q = tail call range(i64 0, 9) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.o)
  %i.r = tail call range(i64 0, 9) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.p)
  %i.s = trunc nuw nsw <2 x i64> %i.q to <2 x i32>
  %i.t = trunc nuw nsw <2 x i64> %i.r to <2 x i32>
  %i.u = sub <2 x i32> %vec.phi, %i.s             ; 2 uses
  %i.v = sub <2 x i32> %vec.phi22, %i.t           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.w = icmp eq i64 %index.next, %n.vec
  br i1 %i.w, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.v, %i.u
  %i.x = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader24

.lr.ph.preheader24:                               ; preds = %.lr.ph.preheader, %middle.block
  %.015.ph = phi i32 [ %i.d, %.lr.ph.preheader ], [ %i.x, %middle.block ]
  %.01114.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader24, %.lr.ph
  %.015 = phi i32 [ %i.ab, %.lr.ph ], [ %.015.ph, %.lr.ph.preheader24 ]
  %.01114 = phi ptr [ %i.ac, %.lr.ph ], [ %.01114.ph, %.lr.ph.preheader24 ] ; 2 uses
  %.0.copyload.i = load i64, ptr %.01114, align 1
  %i.y = and i64 %.0.copyload.i, -9187201950435737472
  %i.z = tail call range(i64 0, 9) i64 @llvm.ctpop.i64(i64 %i.y)
  %i.aa = trunc nuw nsw i64 %i.z to i32
  %i.ab = sub nsw i32 %.015, %i.aa                ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.01114, i64 8 ; 3 uses
  %i.ad = icmp ult ptr %i.ac, %i.e
  br i1 %i.ad, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !79

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %.lcssa21 = phi i32 [ %i.x, %middle.block ], [ %i.ab, %.lr.ph ]
  %.lcssa = phi ptr [ %i.k, %middle.block ], [ %i.ac, %.lr.ph ]
  %.pre = ptrtoint ptr %.lcssa to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.b, %bb.a ]
  %.0.lcssa = phi i32 [ %.lcssa21, %._crit_edge.loopexit ], [ %i.d, %bb.a ]
  %.0.copyload.i13 = load i64, ptr %i.e, align 1
  %i.ae = ptrtoint ptr %i.e to i64
  %i.af = sub i64 %.pre-phi, %i.ae
  %i.ag = shl nsw i64 %i.af, 3
  %i.ah = shl i64 -9187201950435737472, %i.ag
  %i.ai = and i64 %.0.copyload.i13, %i.ah
  %i.aj = tail call range(i64 0, 9) i64 @llvm.ctpop.i64(i64 %i.ai)
  %i.ak = trunc nuw nsw i64 %i.aj to i32
  %i.al = sub nsw i32 %.0.lcssa, %i.ak
  ret i32 %i.al
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN6google8protobuf8internal29VerifyBoolsAssumingLargeArrayEPKcS3_(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -8 ; 3 uses
  %i.b = icmp ult ptr %0, %i.a
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = ptrtoaddr ptr %1 to i64
  %i.d = ptrtoaddr ptr %0 to i64
  %i.e = add i64 %i.c, -9
  %2 = sub i64 %i.e, %i.d                         ; 2 uses
  %i.f = lshr i64 %2, 3
  %i.g = add nuw nsw i64 %i.f, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %2, 24
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.g, 4611686018427387900      ; 3 uses
  %i.h = shl i64 %n.vec, 3
  %i.i = getelementptr i8, ptr %0, i64 %i.h
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.l, %vector.body ]
  %vec.phi16 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %i.j = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %0, i64 %i.j  ; 2 uses
  %i.k = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 1
  %wide.load17 = load <2 x i64>, ptr %i.k, align 1
  %i.l = or <2 x i64> %wide.load, %vec.phi        ; 2 uses
  %i.m = or <2 x i64> %wide.load17, %vec.phi16    ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.m, %i.l
  %i.o = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.g, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %.014.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.i, %middle.block ]
  %.01113.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %.014 = phi ptr [ %i.q, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader18 ] ; 2 uses
  %.01113 = phi i64 [ %i.p, %.lr.ph ], [ %.01113.ph, %.lr.ph.preheader18 ]
  %.0.copyload1 = load i64, ptr %.014, align 1
  %i.p = or i64 %.0.copyload1, %.01113            ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.014, i64 8 ; 2 uses
  %i.r = icmp ult ptr %i.q, %i.a
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !81

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.011.lcssa = phi i64 [ 0, %bb.a ], [ %i.o, %middle.block ], [ %i.p, %.lr.ph ]
  %.0.copyload = load i64, ptr %i.a, align 1
  %i.s = or i64 %.0.copyload, %.011.lcssa
  %i.t = and i64 %i.s, -72340172838076674
  %i.u = icmp eq i64 %i.t, 0
  ret i1 %i.u
}

declare i32 @utf8_range_IsValid(ptr noundef, i64 noundef) local_unnamed_addr #4

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #7

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef zeroext i1 @"_ZZN6google8protobuf8internal18EpsCopyInputStream18VerifyUTF8FallbackEPKcmENK3$_0clES4_i"(ptr %.0.val, ptr noundef %0, i32 noundef %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = sext i32 %1 to i64                       ; 3 uses
  %i.b = load i32, ptr %.0.val, align 4, !tbaa !40 ; 7 uses
  %i.c = zext i32 %i.b to i64                     ; 3 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %.critedge33.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = sub nsw i64 4, %i.c                      ; 4 uses
  %i.e = icmp ugt i64 %i.d, %i.a
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 4 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.c ; 8 uses
  br i1 %i.e, label %.critedge.i, label %bb.c

.critedge.i:                                      ; preds = %bb.b
  %i.h = icmp ult i32 %1, 4
  tail call void @llvm.assume(i1 %i.h)
  %.not.i.i.i = icmp eq i32 %1, 0
  br i1 %.not.i.i.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.critedge.i
  %i.i = load i8, ptr %0, align 1, !tbaa !37
  store i8 %i.i, ptr %i.g, align 1, !tbaa !37
  %exitcond.not.i.i.i = icmp eq i32 %1, 1
  br i1 %exitcond.not.i.i.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %.lr.ph.i.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !37
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i8 %i.k, ptr %i.l, align 1, !tbaa !37
  %exitcond.not.i.i.i.1 = icmp eq i32 %1, 2
  br i1 %exitcond.not.i.i.i.1, label %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, label %.lr.ph.i.i.i.2

.lr.ph.i.i.i.2:                                   ; preds = %.lr.ph.i.i.i.1
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !37
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store i8 %i.n, ptr %i.o, align 1, !tbaa !37
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i

_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i: ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.1, %.lr.ph.i.i.i.2, %.critedge.i
  %i.p = add i32 %i.b, %1                         ; 2 uses
  store i32 %i.p, ptr %.0.val, align 4, !tbaa !40
  %i.q = zext i32 %i.p to i64
  %i.r = tail call noundef i64 @utf8_range_ValidPrefix(ptr noundef nonnull %i.f, i64 noundef %i.q) ; 2 uses
  %i.s = trunc i64 %i.r to i32                    ; 2 uses
  %i.t = load i32, ptr %.0.val, align 4, !tbaa !40 ; 2 uses
  %i.u = sub i32 %i.t, %i.s                       ; 4 uses
  store i32 %i.u, ptr %.0.val, align 4, !tbaa !40
  %i.v = and i64 %i.r, 4294967295
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.v ; 3 uses
  %i.x = icmp ult i32 %i.u, 4
  tail call void @llvm.assume(i1 %i.x)
  %.not.i.i34.i = icmp eq i32 %i.t, %i.s
  br i1 %.not.i.i34.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_127IsViewValidUTF8WithLeftoverESt17basic_string_viewIcSt11char_traitsIcEERNS2_14LeftoverBufferE.exit, label %.lr.ph.i.i35.i

.lr.ph.i.i35.i:                                   ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i
  %i.y = load i8, ptr %i.w, align 1, !tbaa !37
  store i8 %i.y, ptr %i.f, align 4, !tbaa !37
  %exitcond.not.i.i37.i = icmp eq i32 %i.u, 1
  br i1 %exitcond.not.i.i37.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_127IsViewValidUTF8WithLeftoverESt17basic_string_viewIcSt11char_traitsIcEERNS2_14LeftoverBufferE.exit, label %.lr.ph.i.i35.i.1

.lr.ph.i.i35.i.1:                                 ; preds = %.lr.ph.i.i35.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !37
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.val, i64 5
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !37
  %exitcond.not.i.i37.i.1 = icmp eq i32 %i.u, 2
  br i1 %exitcond.not.i.i37.i.1, label %_ZN6google8protobuf8internal12_GLOBAL__N_127IsViewValidUTF8WithLeftoverESt17basic_string_viewIcSt11char_traitsIcEERNS2_14LeftoverBufferE.exit, label %.lr.ph.i.i35.i.2

.lr.ph.i.i35.i.2:                                 ; preds = %.lr.ph.i.i35.i.1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !37
  %i.ae = getelementptr inbounds nuw i8, ptr %.0.val, i64 6
  store i8 %i.ad, ptr %i.ae, align 2, !tbaa !37
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_127IsViewValidUTF8WithLeftoverESt17basic_string_viewIcSt11char_traitsIcEERNS2_14LeftoverBufferE.exit

bb.c:                                             ; preds = %bb.b
  %i.af = icmp ult i32 %i.b, 5
  tail call void @llvm.assume(i1 %i.af)
  %.not.i.i40.i = icmp eq i32 %i.b, 4
  br i1 %.not.i.i40.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44.i, label %.lr.ph.i.i41.i.preheader

.lr.ph.i.i41.i.preheader:                         ; preds = %bb.c
  %xtraiter = and i64 %i.d, 3                     ; 3 uses
  %i.ag = icmp samesign ult i32 %i.b, 4
  br i1 %i.ag, label %.lr.ph.i.i41.i.epil.preheader, label %.lr.ph.i.i41.i.preheader.new

.lr.ph.i.i41.i.preheader.new:                     ; preds = %.lr.ph.i.i41.i.preheader
  %unroll_iter = and i64 %i.d, -4
  br label %.lr.ph.i.i41.i

.lr.ph.i.i41.i:                                   ; preds = %.lr.ph.i.i41.i, %.lr.ph.i.i41.i.preheader.new
  %.07.i.i42.i = phi i64 [ 0, %.lr.ph.i.i41.i.preheader.new ], [ %i.aw, %.lr.ph.i.i41.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i41.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i41.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.07.i.i42.i
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !37
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 %.07.i.i42.i
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !37
  %i.ak = or disjoint i64 %.07.i.i42.i, 1         ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1, !tbaa !37
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ak
  store i8 %i.am, ptr %i.an, align 1, !tbaa !37
  %i.ao = or disjoint i64 %.07.i.i42.i, 2         ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !37
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ao
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !37
  %i.as = or disjoint i64 %.07.i.i42.i, 3         ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !37
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.as
  store i8 %i.au, ptr %i.av, align 1, !tbaa !37
  %i.aw = add nuw nsw i64 %.07.i.i42.i, 4         ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44.i.loopexit.unr-lcssa, label %.lr.ph.i.i41.i, !llvm.loop !82

_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i41.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44.i, label %.lr.ph.i.i41.i.epil.preheader

.lr.ph.i.i41.i.epil.preheader:                    ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44.i.loopexit.unr-lcssa, %.lr.ph.i.i41.i.preheader
  %.07.i.i42.i.epil.init = phi i64 [ 0, %.lr.ph.i.i41.i.preheader ], [ %i.aw, %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44.i.loopexit.unr-lcssa ]
  %lcmp.mod39 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod39)
  br label %.lr.ph.i.i41.i.epil
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal12_GLOBAL__N_119ParsingEndsInBufferEPKcS4_i:bb.a

.lr.ph:                                           ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.s
  %.01153 = phi i32 [ %2, %.lr.ph ], [ %.112, %bb.s ] ; 7 uses
  %.03152 = phi ptr [ %0, %.lr.ph ], [ %.233, %bb.s ] ; 6 uses
  %i.d = load i8, ptr %.03152, align 1, !tbaa !37 ; 2 uses
  %i.e = zext i8 %i.d to i32                      ; 2 uses
  %i.f = icmp sgt i8 %i.d, -1
  %i.g = getelementptr inbounds nuw i8, ptr %.03152, i64 1 ; 2 uses
  br i1 %i.f, label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load i8, ptr %i.g, align 1, !tbaa !37    ; 2 uses
  %i.i = zext i8 %i.h to i32
  %i.j = shl nuw nsw i32 %i.i, 7
  %i.k = add nsw i32 %i.e, -128
  %i.l = or disjoint i32 %i.j, %i.k               ; 2 uses
  %i.m = icmp sgt i8 %i.h, -1
  %i.n = getelementptr inbounds nuw i8, ptr %.03152, i64 2 ; 2 uses
  br i1 %i.m, label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load i8, ptr %i.n, align 1, !tbaa !37    ; 2 uses
  %i.p = zext i8 %i.o to i32
  %i.q = shl nuw nsw i32 %i.p, 14
  %i.r = add nsw i32 %i.l, -16384
  %i.s = or disjoint i32 %i.q, %i.r               ; 2 uses
  %i.t = icmp slt i8 %i.o, 0
  br i1 %i.t, label %.critedge.1.i.i, label %bb.e, !prof !26

.critedge.1.i.i:                                  ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.03152, i64 3
  %i.v = load i8, ptr %i.u, align 1, !tbaa !37    ; 2 uses
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 21
  %i.y = add nsw i32 %i.s, -2097152
  %i.z = add nsw i32 %i.y, %i.x                   ; 2 uses
  %i.aa = icmp slt i8 %i.v, 0
  br i1 %i.aa, label %.critedge.2.i.i, label %bb.e, !prof !26

.critedge.2.i.i:                                  ; preds = %.critedge.1.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.03152, i64 4
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !37  ; 2 uses
  %i.ad = zext i8 %i.ac to i32
  %i.ae = shl i32 %i.ad, 28
  %i.af = add i32 %i.z, -268435456
  %i.ag = add i32 %i.af, %i.ae
  %i.ah = icmp slt i8 %i.ac, 0
  br i1 %i.ah, label %.thread, label %bb.e, !prof !26

bb.e:                                             ; preds = %.critedge.2.i.i, %.critedge.1.i.i, %bb.d
  %.lcssa21.i.i = phi i64 [ 2, %bb.d ], [ 3, %.critedge.1.i.i ], [ 4, %.critedge.2.i.i ]
  %.lcssa.i.i = phi i32 [ %i.s, %bb.d ], [ %i.z, %.critedge.1.i.i ], [ %i.ag, %.critedge.2.i.i ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.03152, i64 %.lcssa21.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  br label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit

_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit: ; preds = %bb.c, %bb.b, %bb.e
  %.0 = phi i32 [ %.lcssa.i.i, %bb.e ], [ %i.e, %bb.b ], [ %i.l, %bb.c ] ; 2 uses
  %.1.i = phi ptr [ %i.aj, %bb.e ], [ %i.g, %bb.b ], [ %i.n, %bb.c ] ; 13 uses
  %i.ak = icmp ugt ptr %.1.i, %1
  br i1 %i.ak, label %.thread, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit
  %i.al = icmp eq i32 %.0, 0
  br i1 %i.al, label %.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = and i32 %.0, 7
  switch i32 %i.am, label %.thread [
    i32 0, label %bb.h
    i32 1, label %bb.i
    i32 2, label %bb.j
    i32 3, label %bb.p
    i32 4, label %bb.q
    i32 5, label %bb.r
  ]

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.an = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef nonnull %.1.i, ptr noundef nonnull %i.a) ; 2 uses
  %.not = icmp eq ptr %i.an, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br i1 %.not, label %.thread, label %bb.s

bb.i:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %.1.i, i64 8
  br label %bb.s

bb.j:                                             ; preds = %bb.g
  %i.ap = load i8, ptr %.1.i, align 1, !tbaa !37  ; 2 uses
  %i.aq = zext i8 %i.ap to i32                    ; 2 uses
  %i.ar = icmp sgt i8 %i.ap, -1
  %i.as = getelementptr inbounds nuw i8, ptr %.1.i, i64 1 ; 2 uses
  br i1 %i.ar, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = load i8, ptr %i.as, align 1, !tbaa !37  ; 2 uses
  %i.au = zext i8 %i.at to i32
  %i.av = shl nuw nsw i32 %i.au, 7
  %i.aw = add nsw i32 %i.aq, -128
  %i.ax = or disjoint i32 %i.av, %i.aw            ; 2 uses
  %i.ay = icmp slt i8 %i.at, 0
  br i1 %i.ay, label %.critedge.1.i.i25, label %bb.m, !prof !26

.critedge.1.i.i25:                                ; preds = %bb.k
  %i.az = getelementptr inbounds nuw i8, ptr %.1.i, i64 2
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !37  ; 2 uses
  %i.bb = zext i8 %i.ba to i32
  %i.bc = shl nuw nsw i32 %i.bb, 14
  %i.bd = add nsw i32 %i.ax, -16384
  %i.be = or disjoint i32 %i.bc, %i.bd            ; 2 uses
  %i.bf = icmp slt i8 %i.ba, 0
  br i1 %i.bf, label %.critedge.2.i.i26, label %bb.m, !prof !26

.critedge.2.i.i26:                                ; preds = %.critedge.1.i.i25
  %i.bg = getelementptr inbounds nuw i8, ptr %.1.i, i64 3
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !37  ; 2 uses
  %i.bi = zext i8 %i.bh to i32
  %i.bj = shl nuw nsw i32 %i.bi, 21
  %i.bk = add nsw i32 %i.be, -2097152
  %i.bl = add nsw i32 %i.bk, %i.bj                ; 2 uses
  %i.bm = icmp slt i8 %i.bh, 0
  br i1 %i.bm, label %bb.l, label %bb.m, !prof !26

bb.l:                                             ; preds = %.critedge.2.i.i26
  %i.bn = getelementptr inbounds nuw i8, ptr %.1.i, i64 4
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !37  ; 2 uses
  %i.bp = icmp ugt i8 %i.bo, 7
  br i1 %i.bp, label %.thread, label %bb.n, !prof !26

bb.m:                                             ; preds = %.critedge.2.i.i26, %.critedge.1.i.i25, %bb.k
  %.lcssa35.i.i = phi i64 [ 1, %bb.k ], [ 2, %.critedge.1.i.i25 ], [ 3, %.critedge.2.i.i26 ]
  %.lcssa.i.i24 = phi i32 [ %i.ax, %bb.k ], [ %i.be, %.critedge.1.i.i25 ], [ %i.bl, %.critedge.2.i.i26 ]
  %i.bq = getelementptr inbounds nuw i8, ptr %.1.i, i64 %.lcssa35.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bs = zext nneg i8 %i.bo to i32
  %i.bt = shl nuw nsw i32 %i.bs, 28
  %i.bu = add nsw i32 %i.bl, -268435456
  %i.bv = add nsw i32 %i.bu, %i.bt                ; 2 uses
  %i.bw = icmp ugt i32 %i.bv, 2147483631
  %i.bx = getelementptr inbounds nuw i8, ptr %.1.i, i64 5
  br i1 %i.bw, label %.thread, label %bb.o, !prof !26

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.j
  %storemerge.i.ph = phi ptr [ %i.as, %bb.j ], [ %i.br, %bb.m ], [ %i.bx, %bb.n ] ; 2 uses
  %.0.i.ph = phi i32 [ %i.aq, %bb.j ], [ %.lcssa.i.i24, %bb.m ], [ %i.bv, %bb.n ]
  %i.by = sext i32 %.0.i.ph to i64                ; 2 uses
  %i.bz = ptrtoint ptr %storemerge.i.ph to i64
  %i.ca = sub i64 %i.c, %i.bz
  %i.cb = icmp slt i64 %i.ca, %i.by
  br i1 %i.cb, label %.thread, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.o
  %i.cc = getelementptr inbounds i8, ptr %storemerge.i.ph, i64 %i.by
  br label %bb.s

bb.p:                                             ; preds = %bb.g
  %i.cd = add nsw i32 %.01153, 1
  br label %bb.s

bb.q:                                             ; preds = %bb.g
  %i.ce = add nsw i32 %.01153, -1
  %i.cf = icmp slt i32 %.01153, 1
  br i1 %i.cf, label %.thread, label %bb.s

bb.r:                                             ; preds = %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %.1.i, i64 4
  br label %bb.s

bb.s:                                             ; preds = %bb.i, %bb.p, %bb.r, %bb.h, %bb.q, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit
  %.233 = phi ptr [ %i.an, %bb.h ], [ %i.ao, %bb.i ], [ %i.cc, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ], [ %.1.i, %bb.p ], [ %.1.i, %bb.q ], [ %i.cg, %bb.r ] ; 2 uses
  %.112 = phi i32 [ %.01153, %bb.h ], [ %.01153, %bb.i ], [ %.01153, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ], [ %i.cd, %bb.p ], [ %i.ce, %bb.q ], [ %.01153, %bb.r ]
  %i.ch = icmp ult ptr %.233, %1
  br i1 %i.ch, label %bb.b, label %.thread

.thread:                                          ; preds = %bb.s, %bb.f, %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit, %bb.q, %bb.h, %bb.g, %.critedge.2.i.i, %bb.o, %bb.l, %bb.n, %bb.a
  %.5 = phi i1 [ false, %bb.a ], [ true, %bb.f ], [ false, %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit ], [ false, %.critedge.2.i.i ], [ false, %bb.o ], [ false, %bb.g ], [ false, %bb.h ], [ true, %bb.q ], [ false, %bb.l ], [ false, %bb.n ], [ false, %bb.s ]
  ret i1 %.5
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.ctpop.v2i64(<2 x i64>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #7

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind }
attributes #19 = { noreturn }
attributes #20 = { cold }
attributes #21 = { noreturn nounwind }
attributes #22 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 16}
!8 = !{!"_ZTSN6google8protobuf8internal18EpsCopyInputStreamE", !9, i64 0, !9, i64 8, !9, i64 16, !4, i64 24, !4, i64 28, !11, i64 32, !5, i64 40, !12, i64 72, !4, i64 80, !4, i64 84}
!9 = !{!"p1 omnipotent char", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTSN6google8protobuf2io19ZeroCopyInputStreamE", !10, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!8, !4, i64 24}
!14 = !{!8, !9, i64 8}
!15 = !{!8, !12, i64 72}
!16 = !{!8, !4, i64 84}
!17 = !{!8, !11, i64 32}
!18 = !{!19, !19, i64 0}
!19 = !{!"vtable pointer", !6, i64 0}
!20 = distinct !{null}
!21 = !{!10, !10, i64 0}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = distinct !{!24, !23}
!25 = !{!8, !4, i64 28}
!26 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!27 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!28 = !{!8, !9, i64 0}
!29 = !{!8, !4, i64 80}
!30 = distinct !{!30, !23}
!31 = distinct !{!31, !23}
!32 = distinct !{!32, !23}
!33 = !{!34, !12, i64 8}
!34 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !35, i64 0, !12, i64 8, !5, i64 16}
!35 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !9, i64 0}
!36 = !{!34, !9, i64 0}
!37 = !{!5, !5, i64 0}
!38 = distinct !{!38, !23}
!39 = distinct !{!39, !23}
!40 = !{!41, !4, i64 0}
!41 = !{!"_ZTSN6google8protobuf8internal12_GLOBAL__N_114LeftoverBufferE", !4, i64 0, !5, i64 4}
!42 = distinct !{!42, !23}
!43 = distinct !{!43, !23}
!44 = distinct !{!44, !23}
!45 = distinct !{null}
!46 = !{ptr @_ZN6google8protobuf8internal18EpsCopyInputStream8InitFromEPNS0_2io19ZeroCopyInputStreamE}
!47 = !{!48, !4, i64 88}
!48 = !{!"_ZTSN6google8protobuf8internal12ParseContextE", !8, i64 0, !4, i64 88, !4, i64 92, !49, i64 96}
!49 = !{!"_ZTSN6google8protobuf8internal12ParseContext4DataE", !50, i64 0, !51, i64 8}
!50 = !{!"p1 _ZTSN6google8protobuf14DescriptorPoolE", !10, i64 0}
!51 = !{!"p1 _ZTSN6google8protobuf14MessageFactoryE", !10, i64 0}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZN6google8protobuf8internal18EpsCopyInputStream9PushLimitEPKci: argument 0"}
!54 = distinct !{!54, !"_ZN6google8protobuf8internal18EpsCopyInputStream9PushLimitEPKci"}
!55 = !{!56, !4, i64 0}
!56 = !{!"_ZTSN6google8protobuf8internal18EpsCopyInputStream10LimitTokenE", !4, i64 0}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_ZN6google8protobuf8internal18EpsCopyInputStream9PushLimitEPKci: argument 0"}
!59 = distinct !{!59, !"_ZN6google8protobuf8internal18EpsCopyInputStream9PushLimitEPKci"}
!60 = distinct !{!60, !23}
!61 = !{!62, !63, i64 0}
!62 = !{!"_ZTSN6google8protobuf8internal28UnknownFieldLiteParserHelperE", !63, i64 0}
!63 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0}
!64 = !{!48, !4, i64 92}
!65 = !{!12, !12, i64 0}
!66 = !{!9, !9, i64 0}
!67 = !{!68, !10, i64 0}
!68 = !{!"_ZTSN6google8protobuf8internal11MicroStringE", !10, i64 0}
!69 = distinct !{!69, !23}
!70 = !{!71, !5, i64 1}
!71 = !{!"_ZTSN6google8protobuf8internal11MicroString8MicroRepE", !5, i64 0, !5, i64 1}
!72 = !{!71, !5, i64 0}
!73 = !{!74, !4, i64 12}
!74 = !{!"_ZTSN6google8protobuf8internal11MicroString8LargeRepE", !9, i64 0, !4, i64 8, !4, i64 12}
!75 = !{!74, !4, i64 8}
!76 = distinct !{!76, !23, !77, !78}
!77 = !{!"llvm.loop.isvectorized", i32 1}
!78 = !{!"llvm.loop.unroll.runtime.disable"}
!79 = distinct !{!79, !23, !78, !77}
!80 = distinct !{!80, !23, !77, !78}
!81 = distinct !{!81, !23, !78, !77}
!82 = distinct !{!82, !23, !77}
!83 = distinct !{!83, !84}
!84 = !{!"llvm.loop.unroll.disable"}
!85 = distinct !{!85, !23, !77}
!86 = distinct !{!86, !84}
!87 = !{!88, !4, i64 0}
!88 = !{!"_ZTSN6google8protobuf8internal30TaggedInternalMetadataResolverILj1EEE", !4, i64 0}
!89 = !{!90, !4, i64 4}
!90 = !{!"_ZTSN6google8protobuf8internal6SooRepILm8EEE", !88, i64 0, !4, i64 4, !5, i64 8}
!91 = distinct !{!91, !23}
!92 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
!93 = !{!94, !12, i64 8}
!94 = !{!"_ZTSN6google8protobuf8internal15ThreadSafeArena11ThreadCacheE", !12, i64 0, !12, i64 8, !95, i64 16}
!95 = !{!"p1 _ZTSN6google8protobuf8internal11SerialArenaE", !10, i64 0}
!96 = !{!97, !12, i64 0}
!97 = !{!"_ZTSN6google8protobuf8internal15ThreadSafeArenaE", !12, i64 0, !98, i64 8, !99, i64 16, !102, i64 24, !103, i64 32, !106, i64 40, !10, i64 160}
!98 = !{!"_ZTSN6google8protobuf8internal25TaggedAllocationPolicyPtrE", !12, i64 0}
!99 = !{!"_ZTSSt6atomicIPN6google8protobuf8internal15ThreadSafeArena16SerialArenaChunkEE", !100, i64 0}
!100 = !{!"_ZTSSt13__atomic_baseIPN6google8protobuf8internal15ThreadSafeArena16SerialArenaChunkEE", !101, i64 0}
!101 = !{!"p1 _ZTSN6google8protobuf8internal15ThreadSafeArena16SerialArenaChunkE", !10, i64 0}
!102 = !{!"_ZTSN6google8protobuf8internal26ThreadSafeArenaStatsHandleE"}
!103 = !{!"_ZTSN4absl12lts_202505125MutexE", !104, i64 0}
!104 = !{!"_ZTSSt6atomicIlE", !105, i64 0}
!105 = !{!"_ZTSSt13__atomic_baseIlE", !12, i64 0}
!106 = !{!"_ZTSN6google8protobuf8internal11SerialArenaE", !5, i64 0, !9, i64 8, !107, i64 16, !110, i64 24, !9, i64 32, !112, i64 40, !114, i64 48, !116, i64 56, !119, i64 64, !112, i64 72, !120, i64 80, !112, i64 112}
!107 = !{!"_ZTSSt6atomicIPN6google8protobuf8internal10ArenaBlockEE", !108, i64 0}
!108 = !{!"_ZTSSt13__atomic_baseIPN6google8protobuf8internal10ArenaBlockEE", !109, i64 0}
!109 = !{!"p1 _ZTSN6google8protobuf8internal10ArenaBlockE", !10, i64 0}
!110 = !{!"_ZTSSt6atomicIPcE", !111, i64 0}
!111 = !{!"_ZTSSt13__atomic_baseIPcE", !9, i64 0}
!112 = !{!"_ZTSSt6atomicImE", !113, i64 0}
!113 = !{!"_ZTSSt13__atomic_baseImE", !12, i64 0}
!114 = !{!"p2 _ZTSN6google8protobuf8internal11SerialArena11CachedBlockE", !115, i64 0}
!115 = !{!"any p2 pointer", !10, i64 0}
!116 = !{!"_ZTSSt6atomicIPN6google8protobuf8internal11StringBlockEE", !117, i64 0}
!117 = !{!"_ZTSSt13__atomic_baseIPN6google8protobuf8internal11StringBlockEE", !118, i64 0}
!118 = !{!"p1 _ZTSN6google8protobuf8internal11StringBlockE", !10, i64 0}
!119 = !{!"p1 _ZTSN6google8protobuf8internal15ThreadSafeArenaE", !10, i64 0}
!120 = !{!"_ZTSN6google8protobuf8internal7cleanup9ChunkListE", !121, i64 0, !122, i64 8, !122, i64 16, !9, i64 24}
!121 = !{!"p1 _ZTSN6google8protobuf8internal7cleanup9ChunkList5ChunkE", !10, i64 0}
!122 = !{!"p1 _ZTSN6google8protobuf8internal7cleanup11CleanupNodeE", !10, i64 0}
!123 = !{!94, !95, i64 16}
!124 = !{!106, !5, i64 0}
!125 = !{!106, !114, i64 48}
!126 = !{!127, !127, i64 0}
!127 = !{!"p1 _ZTSN6google8protobuf8internal11SerialArena11CachedBlockE", !10, i64 0}
!128 = !{!129, !127, i64 0}
!129 = !{!"_ZTSN6google8protobuf8internal11SerialArena11CachedBlockE", !127, i64 0}
!130 = distinct !{!130, !23}
!131 = distinct !{!131, !23}
!132 = distinct !{!132, !23}
!133 = distinct !{!133, !23}
!134 = distinct !{!134, !23}
!135 = !{!136, !136, i64 0}
!136 = !{!"bool", !5, i64 0}
!137 = distinct !{!137, !23}
!138 = distinct !{!138, !23}
!139 = distinct !{!139, !23}
!140 = distinct !{!140, !23}
!141 = distinct !{!141, !23}
!142 = distinct !{!142, !23}
!143 = distinct !{!143, !23}
!144 = !{!"branch_weights", i32 2002, i32 2000}
!145 = !{!146, !147, i64 0}
!146 = !{!"_ZTSZN6google8protobuf8internal18EpsCopyInputStream23ReadMicroStringFallbackEPKciRNS1_11MicroStringEPNS0_5ArenaEE3$_0", !147, i64 0, !148, i64 8, !149, i64 16}
!147 = !{!"p1 _ZTSN6google8protobuf8internal18EpsCopyInputStreamE", !10, i64 0}
!148 = !{!"p2 omnipotent char", !115, i64 0}
!149 = !{!"p1 int", !10, i64 0}
!150 = !{!146, !148, i64 8}
!151 = !{}
!152 = !{i64 8}
!153 = !{!146, !149, i64 16}
!154 = !{i64 4}
!155 = distinct !{!155, !23}
!156 = !{!74, !9, i64 0}
end_hunk_1
