inline.NumInlined: 1058
inline.NumDeleted: 369
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN6google8protobuf8internal18EpsCopyInputStream23ReadMicroStringFallbackEPKciRNS1_11MicroStringEPNS0_5ArenaE:bb.a
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
  %.021.i.i.i.i71.i = phi i32 [ %i.jc, %bb.ao ], [ %i.jq, %bb.as ]
  %.020.i.i.i.i72.i = phi ptr [ %i.jb, %bb.ao ], [ %i.ke, %bb.as ]
  %.0.i.i.i.i73.i = phi i32 [ %i.jj, %bb.ao ], [ %i.kj, %bb.as ] ; 2 uses
  %i.jm = load ptr, ptr %i.jk, align 8, !tbaa !7
  %i.jn = icmp eq ptr %i.jm, null
  br i1 %i.jn, label %"_ZZN6google8protobuf8internal11MicroString11SetInChunksIZNS1_18EpsCopyInputStream23ReadMicroStringFallbackEPKciRS2_PNS0_5ArenaEE3$_0EEvmS9_T_mENKUlPNS2_8LargeRepEE_clESD_.exit79.i", label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.jo = sext i32 %.0.i.i.i.i73.i to i64         ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0.i.i70.i, ptr readonly align 1 %.020.i.i.i.i72.i, i64 %i.jo, i1 false)
  %i.jp = getelementptr inbounds nuw i8, ptr %.0.i.i70.i, i64 %i.jo ; 5 uses
  %i.jq = sub i32 %.021.i.i.i.i71.i, %.0.i.i.i.i73.i ; 4 uses
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
  %i.b = ptrtoint ptr %0 to i64                   ; 4 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = trunc i64 %i.c to i32                    ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %1, i64 -8 ; 4 uses
  %i.f = icmp ult ptr %0, %i.e
  br i1 %i.f, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = add i64 %i.a, -8
  %i.h = add i64 %i.b, 8
  %i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.h)
  %i.j = xor i64 %i.b, -1
  %i.k = add i64 %i.i, %i.j                       ; 2 uses
  %i.l = lshr i64 %i.k, 3
  %i.m = add nuw nsw i64 %i.l, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.k, 24
  br i1 %min.iters.check, label %.lr.ph.preheader24, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.m, 4611686018427387900      ; 3 uses
  %i.n = shl i64 %n.vec, 3
  %i.o = getelementptr i8, ptr %0, i64 %i.n       ; 2 uses
  %i.p = insertelement <2 x i32> <i32 poison, i32 0>, i32 %i.d, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ %i.p, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi22 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %i.q = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %0, i64 %i.q  ; 2 uses
  %i.r = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 1
  %wide.load23 = load <2 x i64>, ptr %i.r, align 1
  %i.s = and <2 x i64> %wide.load, splat (i64 -9187201950435737472)
  %i.t = and <2 x i64> %wide.load23, splat (i64 -9187201950435737472)
  %i.u = tail call range(i64 0, 9) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.s)
  %i.v = tail call range(i64 0, 9) <2 x i64> @llvm.ctpop.v2i64(<2 x i64> %i.t)
  %i.w = trunc nuw nsw <2 x i64> %i.u to <2 x i32>
  %i.x = trunc nuw nsw <2 x i64> %i.v to <2 x i32>
  %i.y = sub <2 x i32> %vec.phi, %i.w             ; 2 uses
  %i.z = sub <2 x i32> %vec.phi22, %i.x           ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.z, %i.y
  %i.ab = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.m, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit, label %.lr.ph.preheader24

.lr.ph.preheader24:                               ; preds = %.lr.ph.preheader, %middle.block
  %.015.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.o, %middle.block ]
  %.01114.ph = phi i32 [ %i.d, %.lr.ph.preheader ], [ %i.ab, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader24, %.lr.ph
  %.015 = phi ptr [ %i.ag, %.lr.ph ], [ %.015.ph, %.lr.ph.preheader24 ] ; 2 uses
  %.01114 = phi i32 [ %i.af, %.lr.ph ], [ %.01114.ph, %.lr.ph.preheader24 ]
  %.0.copyload.i = load i64, ptr %.015, align 1
  %i.ac = and i64 %.0.copyload.i, -9187201950435737472
  %i.ad = tail call range(i64 0, 9) i64 @llvm.ctpop.i64(i64 %i.ac)
  %i.ae = trunc nuw nsw i64 %i.ad to i32
  %i.af = sub nsw i32 %.01114, %i.ae              ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.015, i64 8 ; 3 uses
  %i.ah = icmp ult ptr %i.ag, %i.e
  br i1 %i.ah, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !79

._crit_edge.loopexit:                             ; preds = %.lr.ph, %middle.block
  %.lcssa21 = phi i32 [ %i.ab, %middle.block ], [ %i.af, %.lr.ph ]
  %.lcssa = phi ptr [ %i.o, %middle.block ], [ %i.ag, %.lr.ph ]
  %.pre = ptrtoint ptr %.lcssa to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.pre-phi = phi i64 [ %.pre, %._crit_edge.loopexit ], [ %i.b, %bb.a ]
  %.011.lcssa = phi i32 [ %.lcssa21, %._crit_edge.loopexit ], [ %i.d, %bb.a ]
  %.0.copyload.i13 = load i64, ptr %i.e, align 1
  %i.ai = ptrtoint ptr %i.e to i64
  %i.aj = sub i64 %.pre-phi, %i.ai
  %i.ak = shl nsw i64 %i.aj, 3
  %i.al = shl i64 -9187201950435737472, %i.ak
  %i.am = and i64 %.0.copyload.i13, %i.al
  %i.an = tail call range(i64 0, 9) i64 @llvm.ctpop.i64(i64 %i.am)
  %i.ao = trunc nuw nsw i64 %i.an to i32
  %i.ap = sub nsw i32 %.011.lcssa, %i.ao
  ret i32 %i.ap
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN6google8protobuf8internal29VerifyBoolsAssumingLargeArrayEPKcS3_(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %1, i64 -8 ; 3 uses
  %i.b = icmp ult ptr %0, %i.a
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.c = ptrtoint ptr %1 to i64
  %2 = add i64 %i.c, -8
  %3 = ptrtoint ptr %0 to i64                     ; 2 uses
  %i.d = add i64 %3, 8
  %umax = tail call i64 @llvm.umax.i64(i64 %2, i64 %i.d)
  %i.e = xor i64 %3, -1
  %i.f = add i64 %umax, %i.e                      ; 2 uses
  %i.g = lshr i64 %i.f, 3
  %i.h = add nuw nsw i64 %i.g, 1                  ; 2 uses
  %min.iters.check = icmp ult i64 %i.f, 24
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.h, 4611686018427387900      ; 3 uses
  %i.i = shl i64 %n.vec, 3
  %i.j = getelementptr i8, ptr %0, i64 %i.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.m, %vector.body ]
  %vec.phi16 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %i.k = shl i64 %index, 3
  %next.gep = getelementptr i8, ptr %0, i64 %i.k  ; 2 uses
  %i.l = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 1
  %wide.load17 = load <2 x i64>, ptr %i.l, align 1
  %i.m = or <2 x i64> %wide.load, %vec.phi        ; 2 uses
  %i.n = or <2 x i64> %wide.load17, %vec.phi16    ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !80

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.n, %i.m
  %i.p = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %.014.ph = phi ptr [ %0, %.lr.ph.preheader ], [ %i.j, %middle.block ]
  %.01113.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %i.p, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %.014 = phi ptr [ %i.r, %.lr.ph ], [ %.014.ph, %.lr.ph.preheader18 ] ; 2 uses
  %.01113 = phi i64 [ %i.q, %.lr.ph ], [ %.01113.ph, %.lr.ph.preheader18 ]
  %.0.copyload1 = load i64, ptr %.014, align 1
  %i.q = or i64 %.0.copyload1, %.01113            ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.014, i64 8 ; 2 uses
  %i.s = icmp ult ptr %i.r, %i.a
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !81

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.011.lcssa = phi i64 [ 0, %bb.a ], [ %i.p, %middle.block ], [ %i.q, %.lr.ph ]
  %.0.copyload = load i64, ptr %i.a, align 1
  %i.t = or i64 %.0.copyload, %.011.lcssa
  %i.u = and i64 %i.t, -72340172838076674
  %i.v = icmp eq i64 %i.u, 0
  ret i1 %i.v
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
  %i.u = sub i32 %i.t, %i.s                       ; 3 uses
  store i32 %i.u, ptr %.0.val, align 4, !tbaa !40
  %i.v = and i64 %i.r, 4294967295
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.v
  %i.x = zext nneg i32 %i.u to i64
  %i.y = icmp ult i32 %i.u, 4
  tail call void @llvm.assume(i1 %i.y)
  %.not.i.i34.i = icmp eq i32 %i.t, %i.s
  br i1 %.not.i.i34.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_127IsViewValidUTF8WithLeftoverESt17basic_string_viewIcSt11char_traitsIcEERNS2_14LeftoverBufferE.exit, label %.lr.ph.i.i35.i

.lr.ph.i.i35.i:                                   ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i, %.lr.ph.i.i35.i
  %.07.i.i36.i = phi i64 [ %i.ac, %.lr.ph.i.i35.i ], [ 0, %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %.07.i.i36.i
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !37
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 %.07.i.i36.i
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !37
  %i.ac = add nuw nsw i64 %.07.i.i36.i, 1         ; 2 uses
  %exitcond.not.i.i37.i = icmp eq i64 %i.ac, %i.x
  br i1 %exitcond.not.i.i37.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_127IsViewValidUTF8WithLeftoverESt17basic_string_viewIcSt11char_traitsIcEERNS2_14LeftoverBufferE.exit, label %.lr.ph.i.i35.i, !llvm.loop !82

bb.c:                                             ; preds = %bb.b
  %i.ad = icmp ult i32 %i.b, 5
  tail call void @llvm.assume(i1 %i.ad)
  %.not.i.i40.i = icmp eq i32 %i.b, 4
  br i1 %.not.i.i40.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44.i, label %.lr.ph.i.i41.i.preheader

.lr.ph.i.i41.i.preheader:                         ; preds = %bb.c
  %xtraiter = and i64 %i.d, 3                     ; 3 uses
  %i.ae = icmp samesign ult i32 %i.b, 4
  br i1 %i.ae, label %.lr.ph.i.i41.i.epil.preheader, label %.lr.ph.i.i41.i.preheader.new

.lr.ph.i.i41.i.preheader.new:                     ; preds = %.lr.ph.i.i41.i.preheader
  %unroll_iter = and i64 %i.d, -4
  br label %.lr.ph.i.i41.i

.lr.ph.i.i41.i:                                   ; preds = %.lr.ph.i.i41.i, %.lr.ph.i.i41.i.preheader.new
  %.07.i.i42.i = phi i64 [ 0, %.lr.ph.i.i41.i.preheader.new ], [ %i.au, %.lr.ph.i.i41.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i41.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i41.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.07.i.i42.i
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !37
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 %.07.i.i42.i
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !37
  %i.ai = or disjoint i64 %.07.i.i42.i, 1         ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !37
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ai
  store i8 %i.ak, ptr %i.al, align 1, !tbaa !37
  %i.am = or disjoint i64 %.07.i.i42.i, 2         ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !37
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.am
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !37
  %i.aq = or disjoint i64 %.07.i.i42.i, 3         ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !37
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.aq
  store i8 %i.as, ptr %i.at, align 1, !tbaa !37
  %i.au = add nuw nsw i64 %.07.i.i42.i, 4         ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44.i.loopexit.unr-lcssa, label %.lr.ph.i.i41.i, !llvm.loop !83

_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i41.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44.i, label %.lr.ph.i.i41.i.epil.preheader

.lr.ph.i.i41.i.epil.preheader:                    ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44.i.loopexit.unr-lcssa, %.lr.ph.i.i41.i.preheader
  %.07.i.i42.i.epil.init = phi i64 [ 0, %.lr.ph.i.i41.i.preheader ], [ %i.au, %_ZN6google8protobuf8internal12_GLOBAL__N_114LeftoverBuffer6appendESt17basic_string_viewIcSt11char_traitsIcEE.exit44.i.loopexit.unr-lcssa ]
  %lcmp.mod71 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod71)
  br label %.lr.ph.i.i41.i.epil

.lr.ph.i.i41.i.epil:                              ; preds = %.lr.ph.i.i41.i.epil, %.lr.ph.i.i41.i.epil.preheader
  %.07.i.i42.i.epil = phi i64 [ %i.ay, %.lr.ph.i.i41.i.epil ], [ %.07.i.i42.i.epil.init, %.lr.ph.i.i41.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i41.i.epil ], [ 0, %.lr.ph.i.i41.i.epil.preheader ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 %.07.i.i42.i.epil
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !37
end_hunk_0
