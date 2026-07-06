inline.NumInlined: 5240
inline.NumDeleted: 880
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN6google8protobuf8internal8TcParser17MpRepeatedVarintTILb0EbLt0EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm:bb.a
  %i.bt = and i64 %.071, %.073
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.e
  %.191 = phi ptr [ %i.t, %bb.e ], [ %.090, %bb.q ]
  %.172 = phi i64 [ %i.w, %bb.e ], [ %i.bt, %bb.q ]
  %i.bu = and i64 %.172, %i.r
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.d
  %.074.ph = phi i64 [ %i.r, %bb.d ], [ %i.bu, %bb.r ]
  %.0.i.ph = phi ptr [ %i.p, %bb.d ], [ %.191, %bb.r ] ; 6 uses
  %i.bv = icmp ne i64 %.074.ph, 0
  %i.bw = load i32, ptr %i.f, align 4, !tbaa !216
  %i.bx = and i32 %i.bw, 1
  %i.by = icmp eq i32 %i.bx, 0                    ; 2 uses
  %i.bz = load i32, ptr %i.n, align 4, !tbaa !218 ; 8 uses
  br i1 %i.by, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i: ; preds = %bb.s
  %i.ca = icmp eq i32 %i.bz, 8
  br i1 %i.ca, label %.thread43.i, label %.thread.i, !prof !7

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i: ; preds = %bb.s
  %i.cb = load ptr, ptr %i.o, align 8, !tbaa !39  ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !39
  %i.cd = icmp eq i32 %i.bz, %i.cc
  br i1 %i.cd, label %.thread43.i, label %.thread54.i, !prof !7

.thread54.i:                                      ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i
  %.pre4056.i = add nsw i32 %i.bz, 1
  br label %_ZN6google8protobuf13RepeatedFieldIbE12AddWithArenaEPNS0_5ArenaEb.exit

.thread43.i:                                      ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i
  %i.ce = add nsw i32 %i.bz, 1                    ; 2 uses
  tail call void @_ZN6google8protobuf13RepeatedFieldIbE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef %.0.i.i, i1 noundef zeroext %i.by, i32 noundef %i.bz, i32 noundef %i.ce)
  %i.cf = load ptr, ptr %i.o, align 8, !tbaa !39
  %.pre38.i = load i32, ptr %i.n, align 4, !tbaa !218
  br label %_ZN6google8protobuf13RepeatedFieldIbE12AddWithArenaEPNS0_5ArenaEb.exit

.thread.i:                                        ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i
  %.pre40.i = add nsw i32 %i.bz, 1
  br label %_ZN6google8protobuf13RepeatedFieldIbE12AddWithArenaEPNS0_5ArenaEb.exit

_ZN6google8protobuf13RepeatedFieldIbE12AddWithArenaEPNS0_5ArenaEb.exit: ; preds = %.thread54.i, %.thread43.i, %.thread.i
  %.pre40.i.sink = phi i32 [ %.pre40.i, %.thread.i ], [ %i.ce, %.thread43.i ], [ %.pre4056.i, %.thread54.i ]
  %.sink142 = phi i32 [ %i.bz, %.thread.i ], [ %.pre38.i, %.thread43.i ], [ %i.bz, %.thread54.i ]
  %i.cg = phi ptr [ %i.f, %.thread.i ], [ %i.cf, %.thread43.i ], [ %i.cb, %.thread54.i ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = zext i1 %i.bv to i8
  store i32 %.pre40.i.sink, ptr %i.n, align 4, !tbaa !218
  %i.cj = sext i32 %.sink142 to i64
  %i.ck = getelementptr inbounds i8, ptr %i.ch, i64 %i.cj
  store i8 %i.ci, ptr %i.ck, align 1, !tbaa !70
  %i.cl = load ptr, ptr %2, align 8, !tbaa !108
  %i.cm = icmp ult ptr %.0.i.ph, %i.cl
  br i1 %i.cm, label %bb.t, label %_ZN6google8protobuf8internal19ShiftMixParseVarintImLi10EEEPKcS4_Rl.exit, !prof !29

bb.t:                                             ; preds = %_ZN6google8protobuf13RepeatedFieldIbE12AddWithArenaEPNS0_5ArenaEb.exit
  %i.cn = load i8, ptr %.0.i.ph, align 1, !tbaa !39 ; 2 uses
  %i.co = zext i8 %i.cn to i32                    ; 2 uses
  %i.cp = icmp sgt i8 %i.cn, -1
  %i.cq = getelementptr inbounds nuw i8, ptr %.0.i.ph, i64 1 ; 2 uses
  br i1 %i.cp, label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !39  ; 2 uses
  %i.cs = zext i8 %i.cr to i32
  %i.ct = shl nuw nsw i32 %i.cs, 7
  %i.cu = add nsw i32 %i.co, -128
  %i.cv = or disjoint i32 %i.ct, %i.cu            ; 2 uses
  %i.cw = icmp sgt i8 %i.cr, -1
  br i1 %i.cw, label %bb.v, label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit

bb.v:                                             ; preds = %bb.u
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i.ph, i64 2
  br label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit.thread

_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit: ; preds = %bb.u
  %i.cy = tail call { ptr, i32 } @_ZN6google8protobuf8internal15ReadTagFallbackEPKcj(ptr noundef nonnull %.0.i.ph, i32 noundef %i.cv) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.cy, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.cy, 1
  %i.cz = icmp eq ptr %.fca.0.extract.i, null
  br i1 %i.cz, label %select.unfold, label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit.thread, !prof !444

_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit.thread: ; preds = %bb.t, %bb.v, %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit
  %.1.i116 = phi ptr [ %.fca.0.extract.i, %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit ], [ %i.cx, %bb.v ], [ %i.cq, %bb.t ]
  %.2115 = phi i32 [ %.fca.1.extract.i, %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit ], [ %i.cv, %bb.v ], [ %i.co, %bb.t ]
  %i.da = icmp eq i32 %.2115, %i.c
  br i1 %i.da, label %bb.d, label %_ZN6google8protobuf8internal19ShiftMixParseVarintImLi10EEEPKcS4_Rl.exit, !llvm.loop !451

_ZN6google8protobuf8internal19ShiftMixParseVarintImLi10EEEPKcS4_Rl.exit: ; preds = %_ZN6google8protobuf13RepeatedFieldIbE12AddWithArenaEPNS0_5ArenaEb.exit, %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit.thread
  %i.db = load i16, ptr %4, align 8, !tbaa !8
  %i.dc = trunc i64 %5 to i32
  %i.dd = zext i16 %i.db to i64
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 %i.dd ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !3
  %i.dg = or i32 %i.df, %i.dc
  store i32 %i.dg, ptr %i.de, align 4, !tbaa !3
  ret ptr %.0.i.ph

select.unfold:                                    ; preds = %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit, %bb.n
  %i.dh = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef nonnull %0, ptr poison, ptr poison, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.dh
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldImE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldImE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldImE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldImE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 1                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.d = load i32, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit, label %.thread, !prof !392

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = or disjoint i32 %i.g, 1
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 1, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  %i.l = add nuw nsw i64 %i.j, 8                  ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #33
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeImLi8EEEiii.exit
  %i.n = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.l)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.n, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !39
  %i.o = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !39
  %i.p = icmp sgt i32 %3, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.s
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.t = zext nneg i32 %3 to i64
  %i.u = shl nuw nsw i64 %i.t, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 8 %.0.i.i.i, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !39   ; 8 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !39
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 3
  %i.aa = add nsw i64 %i.z, 8                     ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #26
  br label %_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !328
  %i.ae = load i64, ptr %1, align 8, !tbaa !331
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !29

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !357 ; 4 uses
  %i.ai = icmp ugt i64 %i.aa, 15
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %5 = trunc nuw nsw i64 %i.aj to i32
  %6 = sub nuw nsw i32 59, %5                     ; 2 uses
  %i.ak = load i8, ptr %i.ah, align 8, !tbaa !452 ; 4 uses
  %7 = zext i8 %i.ak to i32
  %.not.i.i.i.i = icmp samesign ult i32 %6, %7
  %8 = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 2 uses
  %9 = load ptr, ptr %8, align 8, !tbaa !453      ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !29

bb.k:                                             ; preds = %bb.j
  %i.al = lshr exact i64 %i.aa, 3                 ; 2 uses
  %i.am = icmp ugt i8 %i.ak, 1
  br i1 %i.am, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !29

bb.l:                                             ; preds = %bb.k
  %i.an = icmp eq i8 %i.ak, 1
  br i1 %i.an, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ao = load ptr, ptr %9, align 8, !tbaa !454
  store ptr %i.ao, ptr %i.w, align 8, !tbaa !454
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %10 = zext i8 %i.ak to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %10, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %9, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.ah, align 8, !tbaa !452
  %i.ap = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.al, %i.ap
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.aq = phi i64 [ %i.ap, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.aq, 3      ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.aa, %.idx24.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ar, i8 0, i64 %gepdiff.i.i.i.i, i1 false), !tbaa !454
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.w, ptr %8, align 8, !tbaa !453
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.al, i64 64)
  %i.as = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.as, ptr %i.ah, align 8, !tbaa !452
  br label %_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %11 = zext nneg i32 %6 to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %11 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !454
  store ptr %i.au, ptr %i.w, align 8, !tbaa !456
  store ptr %i.w, ptr %i.at, align 8, !tbaa !454
  br label %_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldImE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.av = load i32, ptr %0, align 8, !tbaa !216
  %i.aw = or i32 %i.av, 1
  store i32 %i.aw, ptr %0, align 8, !tbaa !216
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ax, align 8, !tbaa !39
  ret void
}

declare void @_ZN4absl12lts_2025051212log_internal10LogMessage19CopyToEncodedBufferILNS2_10StringTypeE0EEEvSt17basic_string_viewIcSt11char_traitsIcEE(ptr noundef nonnull align 8 dereferenceable(16), i64, ptr) local_unnamed_addr #13

declare noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168), i64 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIjE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIjE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIjE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 2                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.d = load i32, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit, label %.thread, !prof !392

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 2, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = add nsw i32 %i.g, 2
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 2, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 2, %_ZNK6google8protobuf13RepeatedFieldIjE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit
  %i.l = add nuw nsw i64 %i.j, 8
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #33
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIjLi8EEEiii.exit
  %i.n = add nuw nsw i64 %i.j, 12
  %i.o = and i64 %i.n, 17179869176
  %i.p = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.o)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.p, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !39
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !39
  %i.r = icmp sgt i32 %3, 0
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.u
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.v = zext nneg i32 %3 to i64
  %i.w = shl nuw nsw i64 %i.v, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 4 %.0.i.i.i, i64 %i.w, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !39   ; 8 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !39
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = add nsw i64 %i.ab, 8                    ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #26
  br label %_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !328
  %i.ag = load i64, ptr %1, align 8, !tbaa !331
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !29

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !357 ; 4 uses
  %i.ak = icmp ugt i64 %i.ac, 15
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 true)
  %5 = trunc nuw nsw i64 %i.al to i32
  %6 = sub nuw nsw i32 59, %5                     ; 2 uses
  %i.am = load i8, ptr %i.aj, align 8, !tbaa !452 ; 4 uses
  %7 = zext i8 %i.am to i32
  %.not.i.i.i.i = icmp samesign ult i32 %6, %7
  %8 = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %9 = load ptr, ptr %8, align 8, !tbaa !453      ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !29

bb.k:                                             ; preds = %bb.j
  %i.an = lshr i64 %i.ac, 3                       ; 2 uses
  %i.ao = icmp ugt i8 %i.am, 1
  br i1 %i.ao, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !29

bb.l:                                             ; preds = %bb.k
  %i.ap = icmp eq i8 %i.am, 1
  br i1 %i.ap, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.aq = load ptr, ptr %9, align 8, !tbaa !454
  store ptr %i.aq, ptr %i.y, align 8, !tbaa !454
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %10 = zext i8 %i.am to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %10, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %9, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.aj, align 8, !tbaa !452
  %i.ar = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.an, %i.ar
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.as = phi i64 [ %i.ar, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.as, 3      ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.ac, %.idx24.i.i.i.i
  %i.au = and i64 %gepdiff.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.at, i8 0, i64 %i.au, i1 false), !tbaa !454
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.y, ptr %8, align 8, !tbaa !453
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.an, i64 64)
  %i.av = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.av, ptr %i.aj, align 8, !tbaa !452
  br label %_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %11 = zext nneg i32 %6 to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %11 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !454
  store ptr %i.ax, ptr %i.y, align 8, !tbaa !456
  store ptr %i.y, ptr %i.aw, align 8, !tbaa !454
  br label %_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIjE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.ay = load i32, ptr %0, align 8, !tbaa !216
  %i.az = or i32 %i.ay, 1
  store i32 %i.az, ptr %0, align 8, !tbaa !216
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ba, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIbE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIbE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIbE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 8                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.d = load i32, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit, label %.thread, !prof !392

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 8, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = add nsw i32 %i.g, 8
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 8, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 8, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64               ; 2 uses
  %i.j = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.j, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit
  %i.k = add nuw nsw i64 %i.i, 8
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.k) #33
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIbLi8EEEiii.exit
  %i.m = add nuw nsw i64 %i.i, 15
  %i.n = and i64 %i.m, 4294967288
  %i.o = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.n)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.o, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.l, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !39
  %i.p = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.p, align 4, !tbaa !39
  %i.q = icmp sgt i32 %3, 0
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.t
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.u = zext nneg i32 %3 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.r, ptr nonnull align 1 %.0.i.i.i, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !39   ; 8 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !39
  %i.y = sext i32 %i.x to i64
  %i.z = add nsw i64 %i.y, 8                      ; 5 uses
  br i1 %i.j, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.z) #26
  br label %_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !328
  %i.ad = load i64, ptr %1, align 8, !tbaa !331
  %i.ae = icmp eq i64 %i.ac, %i.ad
  br i1 %i.ae, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !29

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ag = load ptr, ptr %i.af, align 16, !tbaa !357 ; 4 uses
  %i.ah = icmp ugt i64 %i.z, 15
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.z, i1 true)
  %5 = trunc nuw nsw i64 %i.ai to i32
  %6 = sub nuw nsw i32 59, %5                     ; 2 uses
  %i.aj = load i8, ptr %i.ag, align 8, !tbaa !452 ; 4 uses
  %7 = zext i8 %i.aj to i32
  %.not.i.i.i.i = icmp samesign ult i32 %6, %7
  %8 = getelementptr inbounds nuw i8, ptr %i.ag, i64 48 ; 2 uses
  %9 = load ptr, ptr %8, align 8, !tbaa !453      ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !29

bb.k:                                             ; preds = %bb.j
  %i.ak = lshr i64 %i.z, 3                        ; 2 uses
  %i.al = icmp ugt i8 %i.aj, 1
  br i1 %i.al, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !29

bb.l:                                             ; preds = %bb.k
  %i.am = icmp eq i8 %i.aj, 1
  br i1 %i.am, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.an = load ptr, ptr %9, align 8, !tbaa !454
  store ptr %i.an, ptr %i.w, align 8, !tbaa !454
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %10 = zext i8 %i.aj to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %10, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %9, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.ag, align 8, !tbaa !452
  %i.ao = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.ak, %i.ao
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.ap = phi i64 [ %i.ao, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.ap, 3      ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.z, %.idx24.i.i.i.i
  %i.ar = and i64 %gepdiff.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.aq, i8 0, i64 %i.ar, i1 false), !tbaa !454
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.w, ptr %8, align 8, !tbaa !453
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 64)
  %i.as = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.as, ptr %i.ag, align 8, !tbaa !452
  br label %_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %11 = zext nneg i32 %6 to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %11 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !454
  store ptr %i.au, ptr %i.w, align 8, !tbaa !456
  store ptr %i.w, ptr %i.at, align 8, !tbaa !454
  br label %_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIbE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.av = load i32, ptr %0, align 8, !tbaa !216
  %i.aw = or i32 %i.av, 1
  store i32 %i.aw, ptr %0, align 8, !tbaa !216
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ax, align 8, !tbaa !39
  ret void
}

declare noundef zeroext i1 @_ZN6google8protobuf8internal12ValidateEnumEiPKj(i32 noundef, ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream16ReadPackedVarintIZNS1_8TcParser15MpPackedVarintTILb0EmLt0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_ZNS2_16ReadPackedVarintISG_EES7_S7_T_EUliE_EES7_S7_SI_T0_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr %2, ptr %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [26 x i8], align 16               ; 6 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !39      ; 2 uses
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = icmp sgt i8 %i.b, -1
  br i1 %i.d, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.b

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.a
  %i.f = tail call { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef nonnull %1, i32 noundef %i.c) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.f, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.f, 1
  %.not = icmp eq ptr %.fca.0.extract.i, null
  br i1 %.not, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_8TcParser15MpPackedVarintTILb0EmLt0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_EES7_S7_S7_T_.exit.thread, label %bb.b

bb.b:                                             ; preds = %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit
  %.0.i102 = phi i32 [ %i.c, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.1.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 3 uses
  %storemerge.i101 = phi ptr [ %i.e, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.0.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !109  ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %storemerge.i101 to i64
  %i.k = sub i64 %i.i, %i.j
  %.035127 = trunc i64 %i.k to i32                ; 2 uses
  %i.l = icmp sgt i32 %.0.i102, %.035127
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.l
  %i.p = phi ptr [ %i.h, %.lr.ph ], [ %i.cj, %bb.l ] ; 3 uses
  %.035130 = phi i32 [ %.035127, %.lr.ph ], [ %.035, %bb.l ] ; 2 uses
  %.031129 = phi i32 [ %.0.i102, %.lr.ph ], [ %i.cc, %bb.l ] ; 2 uses
  %.096128 = phi ptr [ %storemerge.i101, %.lr.ph ], [ %i.ci, %bb.l ] ; 3 uses
  %i.q = icmp ult ptr %.096128, %i.p
  br i1 %i.q, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_8TcParser15MpPackedVarintTILb0EmLt0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_EES7_S7_S7_T_.exit.thread104

.lr.ph.i:                                         ; preds = %bb.c, %bb.e
  %.0714.i = phi ptr [ %.0.i11.i, %bb.e ], [ %.096128, %bb.c ] ; 3 uses
  %i.r = load i8, ptr %.0714.i, align 1, !tbaa !39 ; 3 uses
  %i.s = icmp sgt i8 %i.r, -1
  br i1 %i.s, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.t = zext nneg i8 %i.r to i64
  %i.u = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.d

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.v = zext i8 %i.r to i32
  %i.w = tail call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.v) ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.w, 0        ; 2 uses
  %i.y = extractvalue { ptr, i64 } %i.w, 1
  %i.z = icmp eq ptr %i.x, null
  br i1 %i.z, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_8TcParser15MpPackedVarintTILb0EmLt0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_EES7_S7_S7_T_.exit.thread, label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.u, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.x, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.t, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.y, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %i.aa = load i32, ptr %2, align 4, !tbaa !216
  %i.ab = and i32 %i.aa, 1
  %i.ac = icmp eq i32 %i.ab, 0                    ; 2 uses
  %i.ad = load i32, ptr %i.m, align 4, !tbaa !218 ; 8 uses
  br i1 %i.ac, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i: ; preds = %bb.d
  %i.ae = icmp eq i32 %i.ad, 1
  br i1 %i.ae, label %.thread43.i.i.i, label %.thread.i.i.i, !prof !7

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i: ; preds = %bb.d
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !39  ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !39
  %i.ah = icmp eq i32 %i.ad, %i.ag
  br i1 %i.ah, label %.thread43.i.i.i, label %.thread54.i.i.i, !prof !7

.thread54.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i
  %.pre4056.i.i.i = add nsw i32 %i.ad, 1
  br label %bb.e

.thread43.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i
  %i.ai = add nsw i32 %i.ad, 1                    ; 2 uses
  tail call void @_ZN6google8protobuf13RepeatedFieldImE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i1 noundef zeroext %i.ac, i32 noundef %i.ad, i32 noundef %i.ai)
  %i.aj = load ptr, ptr %i.n, align 8, !tbaa !39
  %.pre38.i.i.i = load i32, ptr %i.m, align 4, !tbaa !218
  br label %bb.e

.thread.i.i.i:                                    ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i
  %.pre40.i.i.i = add nsw i32 %i.ad, 1
  br label %bb.e

bb.e:                                             ; preds = %.thread54.i.i.i, %.thread43.i.i.i, %.thread.i.i.i
  %.sink.sink = phi i32 [ %.pre40.i.i.i, %.thread.i.i.i ], [ %i.ai, %.thread43.i.i.i ], [ %.pre4056.i.i.i, %.thread54.i.i.i ]
  %.pre38.i.i.i.sink.sink = phi i32 [ %i.ad, %.thread.i.i.i ], [ %.pre38.i.i.i, %.thread43.i.i.i ], [ %i.ad, %.thread54.i.i.i ]
  %i.ak = phi ptr [ %2, %.thread.i.i.i ], [ %i.aj, %.thread43.i.i.i ], [ %i.af, %.thread54.i.i.i ]
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store i32 %.sink.sink, ptr %i.m, align 4, !tbaa !218
  %i.am = sext i32 %.pre38.i.i.i.sink.sink to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.am
  store i64 %.sink.i10.i, ptr %i.an, align 8, !tbaa !73
  %i.ao = icmp ult ptr %.0.i11.i, %i.p
  br i1 %i.ao, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_8TcParser15MpPackedVarintTILb0EmLt0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_EES7_S7_S7_T_.exit.thread104.loopexit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_8TcParser15MpPackedVarintTILb0EmLt0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_EES7_S7_S7_T_.exit.thread104.loopexit: ; preds = %bb.e
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !109
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_8TcParser15MpPackedVarintTILb0EmLt0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_EES7_S7_S7_T_.exit.thread104

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_8TcParser15MpPackedVarintTILb0EmLt0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_EES7_S7_S7_T_.exit.thread104: ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_8TcParser15MpPackedVarintTILb0EmLt0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_EES7_S7_S7_T_.exit.thread104.loopexit, %bb.c
  %i.ap = phi ptr [ %i.p, %bb.c ], [ %.pre, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_8TcParser15MpPackedVarintTILb0EmLt0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_EES7_S7_S7_T_.exit.thread104.loopexit ] ; 2 uses
  %.2.i106 = phi ptr [ %.096128, %bb.c ], [ %.0.i11.i, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_8TcParser15MpPackedVarintTILb0EmLt0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_EES7_S7_S7_T_.exit.thread104.loopexit ]
  %i.aq = ptrtoint ptr %.2.i106 to i64
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = sub i64 %i.aq, %i.ar                    ; 3 uses
  %i.at = sub nsw i32 %.031129, %.035130          ; 2 uses
  %i.au = icmp slt i32 %i.at, 17
  br i1 %i.au, label %bb.f, label %bb.j

bb.f:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_8TcParser15MpPackedVarintTILb0EmLt0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_EES7_S7_S7_T_.exit.thread104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(26) %i.a, i8 0, i64 26, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %i.ap, i64 16, i1 false)
  %i.av = sext i32 %i.at to i64                   ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %i.a, i64 %i.av ; 2 uses
  %sext44 = shl i64 %i.as, 32
  %i.ax = ashr exact i64 %sext44, 32              ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.a, i64 %i.ax ; 2 uses
  %i.az = icmp slt i64 %i.ax, %i.av
  br i1 %i.az, label %.lr.ph.i47, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_8TcParser15MpPackedVarintTILb0EmLt0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_EES7_S7_S7_T_.exit68

.lr.ph.i47:                                       ; preds = %bb.f, %bb.h
  %.0714.i48 = phi ptr [ %.0.i11.i50, %bb.h ], [ %i.ay, %bb.f ] ; 3 uses
  %i.ba = load i8, ptr %.0714.i48, align 1, !tbaa !39 ; 3 uses
  %i.bb = icmp sgt i8 %i.ba, -1
  br i1 %i.bb, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i67, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i67: ; preds = %.lr.ph.i47
  %i.bc = zext nneg i8 %i.ba to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %.0714.i48, i64 1
  br label %bb.g

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49: ; preds = %.lr.ph.i47
  %i.be = zext i8 %i.ba to i32
  %i.bf = call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i48, i32 noundef %i.be) ; 2 uses
  %i.bg = extractvalue { ptr, i64 } %i.bf, 0      ; 2 uses
  %i.bh = extractvalue { ptr, i64 } %i.bf, 1
  %i.bi = icmp eq ptr %i.bg, null
  br i1 %i.bi, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS1_8TcParser15MpPackedVarintTILb0EmLt0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_EES7_S7_S7_T_.exit68.thread, label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i67
  %.0.i11.i50 = phi ptr [ %i.bd, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i67 ], [ %i.bg, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ] ; 3 uses
  %.sink.i10.i51 = phi i64 [ %i.bc, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i67 ], [ %i.bh, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i49 ]
  %i.bj = load i32, ptr %2, align 4, !tbaa !216
  %i.bk = and i32 %i.bj, 1
  %i.bl = icmp eq i32 %i.bk, 0                    ; 2 uses
  %i.bm = load i32, ptr %i.m, align 4, !tbaa !218 ; 8 uses
  br i1 %i.bl, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i64, label %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i52

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i64: ; preds = %bb.g
  %i.bn = icmp eq i32 %i.bm, 1
  br i1 %i.bn, label %.thread43.i.i.i60, label %.thread.i.i.i65, !prof !7

_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i52: ; preds = %bb.g
  %i.bo = load ptr, ptr %i.n, align 8, !tbaa !39  ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !39
  %i.bq = icmp eq i32 %i.bm, %i.bp
  br i1 %i.bq, label %.thread43.i.i.i60, label %.thread54.i.i.i53, !prof !7

.thread54.i.i.i53:                                ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i52
  %.pre4056.i.i.i54 = add nsw i32 %i.bm, 1
  br label %bb.h

.thread43.i.i.i60:                                ; preds = %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.thread.i.i.i52, %_ZNK6google8protobuf13RepeatedFieldImE8CapacityEb.exit.i.i.i64
  %i.br = add nsw i32 %i.bm, 1                    ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldImE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, i1 noundef zeroext %i.bl, i32 noundef %i.bm, i32 noundef %i.br)
  %i.bs = load ptr, ptr %i.n, align 8, !tbaa !39
  %.pre38.i.i.i61 = load i32, ptr %i.m, align 4, !tbaa !218
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal8TcParser17SingularVarBigintIltLb1EEEPKcPNS0_11MessageLiteES5_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm:bb.a
bb.f:                                             ; preds = %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 7 ; 2 uses
  %i.ah = load i8, ptr %i.aa, align 1, !tbaa !39
  %i.ai = sext i8 %i.ah to i64
  %i.aj = tail call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 -128, i64 42)
  %i.ak = and i64 %i.aj, %i.y                     ; 4 uses
  %i.al = icmp sgt i64 %i.ak, -1
  br i1 %i.al, label %bb.m, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.an = load i8, ptr %i.ag, align 1, !tbaa !39
  %i.ao = sext i8 %i.an to i64
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 -128, i64 49)
  %i.aq = and i64 %i.ap, %i.ae                    ; 6 uses
  %i.ar = icmp sgt i64 %i.aq, -1
  br i1 %i.ar, label %bb.m, label %bb.h, !prof !7

bb.h:                                             ; preds = %bb.g
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 9 ; 2 uses
  %i.at = load i8, ptr %i.am, align 1, !tbaa !39
  %i.au = zext i8 %i.at to i64
  %i.av = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 -128, i64 56)
  %i.aw = and i64 %i.av, %i.ak                    ; 5 uses
  %i.ax = icmp sgt i64 %i.aw, -1
  br i1 %i.ax, label %bb.m, label %bb.i, !prof !7

bb.i:                                             ; preds = %bb.h
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 10 ; 3 uses
  %i.az = load i8, ptr %i.as, align 1, !tbaa !39  ; 3 uses
  %i.ba = icmp eq i8 %i.az, 1
  br i1 %i.ba, label %bb.m, label %bb.j, !prof !29

bb.j:                                             ; preds = %bb.i
  %.not.i = icmp sgt i8 %i.az, -1
  br i1 %.not.i, label %bb.k, label %bb.n, !prof !29

bb.k:                                             ; preds = %bb.j
  %i.bb = and i8 %i.az, 1
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bd = tail call i64 asm "btc $1, $0", "=r,i,0,~{dirflag},~{fpsr},~{flags}"(i32 63, i64 %i.aw) #31, !srcloc !224
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.064 = phi ptr [ %i.j, %bb.b ], [ %i.o, %bb.c ], [ %i.u, %bb.d ], [ %i.aa, %bb.e ], [ %i.ag, %bb.f ], [ %i.am, %bb.g ], [ %i.as, %bb.h ], [ %i.ay, %bb.i ], [ %i.ay, %bb.l ], [ %i.ay, %bb.k ]
  %.049 = phi i64 [ %i.m, %bb.b ], [ %i.m, %bb.c ], [ %i.y, %bb.d ], [ %i.y, %bb.e ], [ %i.ak, %bb.f ], [ %i.ak, %bb.g ], [ %i.aw, %bb.h ], [ %i.aw, %bb.i ], [ %i.bd, %bb.l ], [ %i.aw, %bb.k ]
  %.0 = phi i64 [ %i.h, %bb.b ], [ %i.s, %bb.c ], [ %i.s, %bb.d ], [ %i.ae, %bb.e ], [ %i.ae, %bb.f ], [ %i.aq, %bb.g ], [ %i.aq, %bb.h ], [ %i.aq, %bb.i ], [ %i.aq, %bb.l ], [ %i.aq, %bb.k ]
  %i.be = and i64 %.0, %.049
  br label %bb.o

bb.n:                                             ; preds = %bb.j
  %i.bf = musttail call noundef ptr @_ZN6google8protobuf8internal8TcParser5ErrorEPNS0_11MessageLiteEPKcPNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEm(ptr noundef %0, ptr poison, ptr poison, i64 poison, ptr noundef %4, i64 noundef %5)
  ret ptr %i.bf

bb.o:                                             ; preds = %bb.m, %bb.a
  %.165 = phi ptr [ %i.e, %bb.a ], [ %.064, %bb.m ] ; 4 uses
  %.1 = phi i64 [ %i.h, %bb.a ], [ %i.be, %bb.m ]
  %i.bg = and i64 %.1, %i.d                       ; 2 uses
  %i.bh = lshr i64 %i.bg, 1
  %i.bi = and i64 %i.bg, 1
  %i.bj = sub nsw i64 0, %i.bi
  %i.bk = xor i64 %i.bh, %i.bj
  %i.bl = lshr i64 %3, 48
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 %i.bl
  store i64 %i.bk, ptr %i.bm, align 8, !tbaa !73
  %i.bn = load ptr, ptr %2, align 8, !tbaa !108
  %i.bo = icmp ult ptr %.165, %i.bn
  br i1 %i.bo, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = load i16, ptr %4, align 8, !tbaa !8
  %i.bq = trunc i64 %5 to i32
  %i.br = zext i16 %i.bp to i64
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3
  %i.bu = or i32 %i.bt, %i.bq
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !3
  ret ptr %.165

bb.q:                                             ; preds = %bb.o
  %.0.copyload.i.i = load i16, ptr %.165, align 1 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !112
  %i.bx = zext i8 %i.bw to i16
  %i.by = and i16 %.0.copyload.i.i, %i.bx
  %i.bz = zext nneg i16 %i.by to i64              ; 2 uses
  %i.ca = and i64 %i.bz, 7
  %i.cb = icmp eq i64 %i.ca, 0
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = lshr exact i64 %i.bz, 3
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.ce = getelementptr inbounds nuw [16 x i8], ptr %i.cd, i64 %i.cc ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %.sroa.01.0.copyload.i = load i64, ptr %i.cf, align 8, !tbaa !39
  %i.cg = zext i16 %.0.copyload.i.i to i64
  %i.ch = xor i64 %.sroa.01.0.copyload.i, %i.cg
  %i.ci = load ptr, ptr %i.ce, align 8, !tbaa !113
  %i.cj = musttail call noundef ptr %i.ci(ptr noundef nonnull %0, ptr noundef nonnull %.165, ptr noundef nonnull %2, i64 %i.ch, ptr noundef nonnull %4, i64 noundef %5), !inline_history !116
  ret ptr %i.cj
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIiE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIiE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 2                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.d = load i32, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit, label %.thread, !prof !392

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 2, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = add nsw i32 %i.g, 2
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 2, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 2, %_ZNK6google8protobuf13RepeatedFieldIiE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 2                  ; 2 uses
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit
  %i.l = add nuw nsw i64 %i.j, 8
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #33
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIiLi8EEEiii.exit
  %i.n = add nuw nsw i64 %i.j, 12
  %i.o = and i64 %i.n, 17179869176
  %i.p = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.o)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.p, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !39
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.q, align 4, !tbaa !39
  %i.r = icmp sgt i32 %3, 0
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.u
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.v = zext nneg i32 %3 to i64
  %i.w = shl nuw nsw i64 %i.v, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr nonnull align 4 %.0.i.i.i, i64 %i.w, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !39   ; 8 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !39
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 2
  %i.ac = add nsw i64 %i.ab, 8                    ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.y, i64 noundef %i.ac) #26
  br label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ad = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !328
  %i.ag = load i64, ptr %1, align 8, !tbaa !331
  %i.ah = icmp eq i64 %i.af, %i.ag
  br i1 %i.ah, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !29

bb.j:                                             ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.aj = load ptr, ptr %i.ai, align 16, !tbaa !357 ; 4 uses
  %i.ak = icmp ugt i64 %i.ac, 15
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ac, i1 true)
  %5 = trunc nuw nsw i64 %i.al to i32
  %6 = sub nuw nsw i32 59, %5                     ; 2 uses
  %i.am = load i8, ptr %i.aj, align 8, !tbaa !452 ; 4 uses
  %7 = zext i8 %i.am to i32
  %.not.i.i.i.i = icmp samesign ult i32 %6, %7
  %8 = getelementptr inbounds nuw i8, ptr %i.aj, i64 48 ; 2 uses
  %9 = load ptr, ptr %8, align 8, !tbaa !453      ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !29

bb.k:                                             ; preds = %bb.j
  %i.an = lshr i64 %i.ac, 3                       ; 2 uses
  %i.ao = icmp ugt i8 %i.am, 1
  br i1 %i.ao, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !29

bb.l:                                             ; preds = %bb.k
  %i.ap = icmp eq i8 %i.am, 1
  br i1 %i.ap, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.aq = load ptr, ptr %9, align 8, !tbaa !454
  store ptr %i.aq, ptr %i.y, align 8, !tbaa !454
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %10 = zext i8 %i.am to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %10, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.y, ptr align 8 %9, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.aj, align 8, !tbaa !452
  %i.ar = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.an, %i.ar
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.as = phi i64 [ %i.ar, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.as, 3      ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.y, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.ac, %.idx24.i.i.i.i
  %i.au = and i64 %gepdiff.i.i.i.i, -8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.at, i8 0, i64 %i.au, i1 false), !tbaa !454
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.y, ptr %8, align 8, !tbaa !453
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.an, i64 64)
  %i.av = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.av, ptr %i.aj, align 8, !tbaa !452
  br label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %11 = zext nneg i32 %6 to i64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %11 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !454
  store ptr %i.ax, ptr %i.y, align 8, !tbaa !456
  store ptr %i.y, ptr %i.aw, align 8, !tbaa !454
  br label %_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIiE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.ay = load i32, ptr %0, align 8, !tbaa !216
  %i.az = or i32 %i.ay, 1
  store i32 %i.az, ptr %0, align 8, !tbaa !216
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ba, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIlE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 comdat align 2 {
_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEv.exit:
  tail call void @_ZN6google8protobuf13RepeatedFieldIlE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4)
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr hidden void @_ZN6google8protobuf13RepeatedFieldIlE14GrowNoAnnotateEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp slt i32 %4, 1                       ; 2 uses
  br i1 %2, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread, label %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit, label %bb.b

_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread: ; preds = %bb.a
  br i1 %i.a, label %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit, label %.thread

bb.b:                                             ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !39
  %i.d = load i32, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %i.e = icmp sgt i32 %i.d, 1073741819
  br i1 %i.e, label %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit, label %.thread, !prof !392

.thread:                                          ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread, %bb.b
  %i.f = phi i32 [ %i.d, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread ]
  %i.g = shl nsw i32 %i.f, 1
  %i.h = or disjoint i32 %i.g, 1
  %.sroa.speculated.i = tail call i32 @llvm.smax.i32(i32 %i.h, i32 %4)
  br label %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit

_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit: ; preds = %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit, %bb.b, %.thread
  %.1.i = phi i32 [ 1, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit ], [ %.sroa.speculated.i, %.thread ], [ 2147483647, %bb.b ], [ 1, %_ZNK6google8protobuf13RepeatedFieldIlE8CapacityEb.exit.thread ] ; 2 uses
  %i.i = zext nneg i32 %.1.i to i64
  %i.j = shl nuw nsw i64 %i.i, 3
  %i.k = icmp eq ptr %1, null                     ; 2 uses
  %i.l = add nuw nsw i64 %i.j, 8                  ; 2 uses
  br i1 %i.k, label %bb.c, label %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit

bb.c:                                             ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit
  %i.m = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.l) #33
  br label %bb.d

_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit: ; preds = %_ZN6google8protobuf8internal20CalculateReserveSizeIlLi8EEEiii.exit
  %i.n = tail call noundef ptr @_ZN6google8protobuf5Arena16AllocateForArrayEm(ptr noundef nonnull align 8 dereferenceable(168) %1, i64 noundef %i.l)
  br label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit, %bb.c
  %.sink = phi ptr [ %i.n, %_ZN6google8protobuf5Arena11CreateArrayIcEEPT_PS1_m.exit ], [ %i.m, %bb.c ] ; 4 uses
  store i32 %.1.i, ptr %.sink, align 8, !tbaa !39
  %i.o = getelementptr inbounds nuw i8, ptr %.sink, i64 4
  store i32 0, ptr %i.o, align 4, !tbaa !39
  %i.p = icmp sgt i32 %3, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sink, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  %.0.v.i.i.i = select i1 %2, ptr %0, ptr %i.s
  %.0.i.i.i = getelementptr inbounds nuw i8, ptr %.0.v.i.i.i, i64 8
  %i.t = zext nneg i32 %3 to i64
  %i.u = shl nuw nsw i64 %i.t, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull align 8 %.0.i.i.i, i64 %i.u, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %2, label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !39   ; 8 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !39
  %i.y = sext i32 %i.x to i64
  %i.z = shl nsw i64 %i.y, 3
  %i.aa = add nsw i64 %i.z, 8                     ; 5 uses
  br i1 %i.k, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.aa) #26
  br label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.i:                                             ; preds = %bb.g
  %i.ab = tail call noundef nonnull align 32 dereferenceable(24) ptr @llvm.threadlocal.address.p0(ptr align 32 @_ZN6google8protobuf8internal15ThreadSafeArena13thread_cache_E) ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !328
  %i.ae = load i64, ptr %1, align 8, !tbaa !331
  %i.af = icmp eq i64 %i.ad, %i.ae
  br i1 %i.af, label %bb.j, label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit, !prof !29

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ah = load ptr, ptr %i.ag, align 16, !tbaa !357 ; 4 uses
  %i.ai = icmp ugt i64 %i.aa, 15
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.aa, i1 true)
  %5 = trunc nuw nsw i64 %i.aj to i32
  %6 = sub nuw nsw i32 59, %5                     ; 2 uses
  %i.ak = load i8, ptr %i.ah, align 8, !tbaa !452 ; 4 uses
  %7 = zext i8 %i.ak to i32
  %.not.i.i.i.i = icmp samesign ult i32 %6, %7
  %8 = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 2 uses
  %9 = load ptr, ptr %8, align 8, !tbaa !453      ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.k, !prof !29

bb.k:                                             ; preds = %bb.j
  %i.al = lshr exact i64 %i.aa, 3                 ; 2 uses
  %i.am = icmp ugt i8 %i.ak, 1
  br i1 %i.am, label %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, label %bb.l, !prof !29

bb.l:                                             ; preds = %bb.k
  %i.an = icmp eq i8 %i.ak, 1
  br i1 %i.an, label %bb.m, label %.lr.ph.preheader.i.i.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.ao = load ptr, ptr %9, align 8, !tbaa !454
  store ptr %i.ao, ptr %i.w, align 8, !tbaa !454
  br label %.lr.ph.preheader.i.i.i.i.i.i.i

_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i: ; preds = %bb.k
  %10 = zext i8 %i.ak to i64
  %.idx.i.i.i.i = shl nuw nsw i64 %10, 3
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %9, i64 %.idx.i.i.i.i, i1 false)
  %.pre.i.i.i.i = load i8, ptr %i.ah, align 8, !tbaa !452
  %i.ap = zext i8 %.pre.i.i.i.i to i64            ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp samesign eq i64 %i.al, %i.ap
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, label %.lr.ph.preheader.i.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i.i:                   ; preds = %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i, %bb.m, %bb.l
  %i.aq = phi i64 [ %i.ap, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i ], [ 1, %bb.m ], [ 0, %bb.l ]
  %.idx24.i.i.i.i = shl nuw nsw i64 %i.aq, 3      ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx24.i.i.i.i
  %gepdiff.i.i.i.i = sub nsw i64 %i.aa, %.idx24.i.i.i.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ar, i8 0, i64 %gepdiff.i.i.i.i, i1 false), !tbaa !454
  br label %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i

_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i: ; preds = %.lr.ph.preheader.i.i.i.i.i.i.i, %_ZSt4copyIPPN6google8protobuf8internal11SerialArena11CachedBlockES6_ET0_T_S8_S7_.exit.i.i.i.i
  store ptr %i.w, ptr %8, align 8, !tbaa !453
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.al, i64 64)
  %i.as = trunc nuw nsw i64 %.sroa.speculated.i.i.i.i to i8
  store i8 %i.as, ptr %i.ah, align 8, !tbaa !452
  br label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

bb.n:                                             ; preds = %bb.j
  %11 = zext nneg i32 %6 to i64
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %9, i64 %11 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !454
  store ptr %i.au, ptr %i.w, align 8, !tbaa !456
  store ptr %i.w, ptr %i.at, align 8, !tbaa !454
  br label %_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit

_ZN6google8protobuf13RepeatedFieldIlE18InternalDeallocateILb0EEEvPNS0_5ArenaE.exit: ; preds = %bb.n, %_ZSt4fillIPPN6google8protobuf8internal11SerialArena11CachedBlockEDnEvT_S7_RKT0_.exit.i.i.i.i, %bb.i, %bb.h, %bb.f
  %i.av = load i32, ptr %0, align 8, !tbaa !216
  %i.aw = or i32 %i.av, 1
  store i32 %i.aw, ptr %0, align 8, !tbaa !216
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink, ptr %i.ax, align 8, !tbaa !39
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [26 x i8], align 16               ; 6 uses
  %i.b = load i8, ptr %1, align 1, !tbaa !39      ; 2 uses
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = icmp sgt i8 %i.b, -1
  br i1 %i.d, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.b

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit:  ; preds = %bb.a
  %i.f = tail call { ptr, i32 } @_ZN6google8protobuf8internal16ReadSizeFallbackEPKcj(ptr noundef nonnull %1, i32 noundef %i.c) ; 2 uses
  %.fca.0.extract.i = extractvalue { ptr, i32 } %i.f, 0 ; 2 uses
  %.fca.1.extract.i = extractvalue { ptr, i32 } %i.f, 1
  %.not = icmp eq ptr %.fca.0.extract.i, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit
  %.0.i57 = phi i32 [ %i.c, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.1.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 3 uses
  %storemerge.i56 = phi ptr [ %i.e, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.thread ], [ %.fca.0.extract.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit ] ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !109  ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %storemerge.i56 to i64
  %i.k = sub i64 %i.i, %i.j
  %.03272 = trunc i64 %i.k to i32                 ; 2 uses
  %i.l = icmp sgt i32 %.0.i57, %.03272
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.k
  %i.n = phi ptr [ %i.h, %.lr.ph ], [ %i.bp, %bb.k ]
  %.03275 = phi i32 [ %.03272, %.lr.ph ], [ %.032, %bb.k ] ; 2 uses
  %.02874 = phi i32 [ %.0.i57, %.lr.ph ], [ %i.bi, %bb.k ] ; 2 uses
  %.04973 = phi ptr [ %storemerge.i56, %.lr.ph ], [ %i.bo, %bb.k ]
  %i.o = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef %.04973, ptr noundef %i.n, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !109  ; 2 uses
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = sub i64 %i.r, %i.s                       ; 3 uses
  %i.u = sub nsw i32 %.02874, %.03275             ; 2 uses
  %i.v = icmp slt i32 %i.u, 17
  br i1 %i.v, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(10) %i.w, i8 0, i64 10, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 1 dereferenceable(16) %i.q, i64 16, i1 false)
  %i.x = sext i32 %i.u to i64                     ; 3 uses
  %i.y = getelementptr inbounds i8, ptr %i.a, i64 %i.x ; 2 uses
  %sext41 = shl i64 %i.t, 32
  %i.z = ashr exact i64 %sext41, 32               ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.a, i64 %i.z ; 2 uses
  %i.ab = icmp slt i64 %i.z, %i.x
  br i1 %i.ab, label %.lr.ph.i.preheader, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.g
  %.0714.i = phi ptr [ %.0.i11.i, %bb.g ], [ %i.aa, %.lr.ph.i.preheader ] ; 3 uses
  %i.ae = load i8, ptr %.0714.i, align 1, !tbaa !39 ; 3 uses
  %i.af = icmp sgt i8 %i.ae, -1
  br i1 %i.af, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i, label %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i: ; preds = %.lr.ph.i
  %i.ag = zext nneg i8 %i.ae to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %.0714.i, i64 1
  br label %bb.f

_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i: ; preds = %.lr.ph.i
  %i.ai = zext i8 %i.ae to i32
  %i.aj = call { ptr, i64 } @_ZN6google8protobuf8internal17VarintParseSlow64EPKcj(ptr noundef nonnull %.0714.i, i32 noundef %i.ai) ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0      ; 2 uses
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  %i.am = icmp eq ptr %i.ak, null
  br i1 %i.am, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i
  %.0.i11.i = phi ptr [ %i.ah, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.ak, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ] ; 3 uses
  %.sink.i10.i = phi i64 [ %i.ag, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.thread.i ], [ %i.al, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  %i.an = icmp ne i64 %.sink.i10.i, 0
  %i.ao = load i32, ptr %3, align 8, !tbaa !216
  %i.ap = and i32 %i.ao, 1
  %i.aq = icmp eq i32 %i.ap, 0                    ; 2 uses
  %i.ar = load i32, ptr %i.ac, align 4, !tbaa !218 ; 8 uses
  br i1 %i.aq, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i, label %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i: ; preds = %bb.f
  %i.as = icmp eq i32 %i.ar, 8
  br i1 %i.as, label %.thread43.i.i.i, label %.thread.i.i.i, !prof !7

_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i: ; preds = %bb.f
  %i.at = load ptr, ptr %i.ad, align 8, !tbaa !39 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !39
  %i.av = icmp eq i32 %i.ar, %i.au
  br i1 %i.av, label %.thread43.i.i.i, label %.thread54.i.i.i, !prof !7

.thread54.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i
  %.pre4056.i.i.i = add nsw i32 %i.ar, 1
  br label %bb.g

.thread43.i.i.i:                                  ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.thread.i.i.i, %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i
  %i.aw = add nsw i32 %i.ar, 1                    ; 2 uses
  call void @_ZN6google8protobuf13RepeatedFieldIbE4GrowEPNS0_5ArenaEbii(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %2, i1 noundef zeroext %i.aq, i32 noundef %i.ar, i32 noundef %i.aw)
  %i.ax = load ptr, ptr %i.ad, align 8, !tbaa !39
  %.pre38.i.i.i = load i32, ptr %i.ac, align 4, !tbaa !218
  br label %bb.g

.thread.i.i.i:                                    ; preds = %_ZNK6google8protobuf13RepeatedFieldIbE8CapacityEb.exit.i.i.i
  %.pre40.i.i.i = add nsw i32 %i.ar, 1
  br label %bb.g

bb.g:                                             ; preds = %.thread54.i.i.i, %.thread43.i.i.i, %.thread.i.i.i
  %.sink111.sink = phi i32 [ %.pre40.i.i.i, %.thread.i.i.i ], [ %i.aw, %.thread43.i.i.i ], [ %.pre4056.i.i.i, %.thread54.i.i.i ]
  %.pre38.i.i.i.sink.sink = phi i32 [ %i.ar, %.thread.i.i.i ], [ %.pre38.i.i.i, %.thread43.i.i.i ], [ %i.ar, %.thread54.i.i.i ]
  %i.ay = phi ptr [ %3, %.thread.i.i.i ], [ %i.ax, %.thread43.i.i.i ], [ %i.at, %.thread54.i.i.i ]
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = zext i1 %i.an to i8
  store i32 %.sink111.sink, ptr %i.ac, align 4, !tbaa !218
  %i.bb = sext i32 %.pre38.i.i.i.sink.sink to i64
  %i.bc = getelementptr inbounds i8, ptr %i.az, i64 %i.bb
  store i8 %i.ba, ptr %i.bc, align 1, !tbaa !70
  %i.bd = icmp ult ptr %.0.i11.i, %i.y
  br i1 %i.bd, label %.lr.ph.i, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit: ; preds = %bb.g, %bb.e
  %.2.i = phi ptr [ %i.aa, %bb.e ], [ %.0.i11.i, %bb.g ]
  %.not42 = icmp eq ptr %.2.i, %i.y
  br i1 %.not42, label %bb.h, label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread

bb.h:                                             ; preds = %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit
  %i.be = load ptr, ptr %i.g, align 8, !tbaa !109
  %i.bf = getelementptr inbounds i8, ptr %i.be, i64 %i.x
  br label %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread

_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit.thread: ; preds = %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit, %bb.h
  %.1 = phi ptr [ %i.bf, %bb.h ], [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream21ReadPackedVarintArrayIZNS2_25ReadPackedVarintWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES8_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES8_S8_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EEEUlmE_EES8_S8_S8_SK_.exit ], [ null, %_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  br label %.thread

bb.i:                                             ; preds = %bb.d
  %i.bg = trunc i64 %i.t to i32
  %i.bh = add i32 %.03275, %i.bg
  %i.bi = sub i32 %.02874, %i.bh                  ; 3 uses
  %i.bj = load i32, ptr %i.m, align 4, !tbaa !110
  %i.bk = icmp slt i32 %i.bj, 17
  br i1 %i.bk, label %.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bl = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv(ptr noundef nonnull align 8 dereferenceable(88) %0) ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %sext = shl i64 %i.t, 32
  %i.bn = ashr exact i64 %sext, 32
  %i.bo = getelementptr inbounds i8, ptr %i.bl, i64 %i.bn ; 3 uses
  %i.bp = load ptr, ptr %i.g, align 8, !tbaa !109 ; 2 uses
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = sub i64 %i.bq, %i.br
  %.032 = trunc i64 %i.bs to i32                  ; 2 uses
  %i.bt = icmp sgt i32 %i.bi, %.032
  br i1 %i.bt, label %bb.c, label %._crit_edge, !llvm.loop !528

._crit_edge:                                      ; preds = %bb.k, %bb.b
  %.049.lcssa = phi ptr [ %storemerge.i56, %bb.b ], [ %i.bo, %bb.k ] ; 2 uses
  %.028.lcssa = phi i32 [ %.0.i57, %bb.b ], [ %i.bi, %bb.k ]
  %i.bu = sext i32 %.028.lcssa to i64
  %i.bv = getelementptr inbounds i8, ptr %.049.lcssa, i64 %i.bu ; 2 uses
  %i.bw = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream30ReadPackedVarintArrayWithFieldIZNS1_8TcParser12PackedVarintIbhLb0EEEPKcPNS0_11MessageLiteES7_PNS1_12ParseContextENS1_11TcFieldDataEPKNS1_16TcParseTableBaseEmEUlmE_bEES7_S7_S7_PNS0_5ArenaET_RNS0_13RepeatedFieldIT0_EE(ptr noundef %.049.lcssa, ptr noundef %i.bv, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(16) %3) ; 2 uses
  %i.bx = icmp eq ptr %i.bv, %i.bw
end_hunk_1
