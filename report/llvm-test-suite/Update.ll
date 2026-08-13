inline.NumInlined: 461
inline.NumDeleted: 136
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN18COutMultiVolStream5WriteEPKvjPj:bb.a
          to label %bb.ao unwind label %bb.af, !llvm.loop !63 ; 0 uses

bb.ao:                                            ; preds = %bb.an, %bb.ad
  %.1 = phi i32 [ %i.do, %bb.ad ], [ %.0.ph, %bb.an ] ; 2 uses
  %i.fe = icmp eq ptr %.sroa.0.1, null
  br i1 %i.fe, label %_ZN11CStringBaseIwED2Ev.exit132, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1) #21
  br label %_ZN11CStringBaseIwED2Ev.exit132

_ZN11CStringBaseIwED2Ev.exit132:                  ; preds = %bb.ao, %bb.ap
  %i.ff = icmp eq ptr %.sroa.0188.0.lcssa, null
  br i1 %i.ff, label %_ZN11CStringBaseIwED2Ev.exit133, label %bb.aq

bb.aq:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit132
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0188.0.lcssa) #21
  br label %_ZN11CStringBaseIwED2Ev.exit133

_ZN11CStringBaseIwED2Ev.exit133:                  ; preds = %_ZN11CStringBaseIwED2Ev.exit132, %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.fg = load ptr, ptr %i.g, align 8, !tbaa !34  ; 2 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %_ZN11CStringBaseIwED2Ev.exit.i134, label %bb.ar

bb.ar:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit133
  call void @_ZdaPv(ptr noundef nonnull %i.fg) #21
  br label %_ZN11CStringBaseIwED2Ev.exit.i134

_ZN11CStringBaseIwED2Ev.exit.i134:                ; preds = %bb.ar, %_ZN11CStringBaseIwED2Ev.exit133
  %i.fi = load ptr, ptr %i.f, align 8, !tbaa !58  ; 3 uses
  %.not.i.i135 = icmp eq ptr %i.fi, null
  br i1 %.not.i.i135, label %_ZN18COutMultiVolStream14CSubStreamInfoD2Ev.exit, label %bb.as

bb.as:                                            ; preds = %_ZN11CStringBaseIwED2Ev.exit.i134
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !48
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8
  %i.fm = invoke noundef i32 %i.fl(ptr noundef nonnull align 8 dereferenceable(8) %i.fi)
          to label %_ZN18COutMultiVolStream14CSubStreamInfoD2Ev.exit unwind label %bb.at ; 0 uses

bb.at:                                            ; preds = %bb.as
  %i.fn = landingpad { ptr, i32 }
          catch ptr null
  %i.fo = extractvalue { ptr, i32 } %i.fn, 0
  call void @__clang_call_terminate(ptr %i.fo) #23
  unreachable

_ZN18COutMultiVolStream14CSubStreamInfoD2Ev.exit: ; preds = %_ZN11CStringBaseIwED2Ev.exit.i134, %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br i1 %i.dm, label %.outer.split.outer, label %.thread

.body122:                                         ; preds = %bb.af, %bb.aj, %bb.ag
  %.pn = phi { ptr, i32 } [ %i.dr, %bb.ag ], [ %i.dq, %bb.af ], [ %i.eg, %bb.aj ] ; 2 uses
  %i.fp = icmp eq ptr %.sroa.0.1, null
  br i1 %i.fp, label %.body109, label %bb.au

bb.au:                                            ; preds = %.body122
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.1) #21
  br label %.body109

.body109:                                         ; preds = %bb.w, %bb.x, %bb.ae, %.body122, %bb.au, %bb.p, %_ZN11CStringBaseIwED2Ev.exit101
  %.sroa.0188.0217 = phi ptr [ %.sroa.0188.0288, %bb.p ], [ %.sroa.0188.0288, %_ZN11CStringBaseIwED2Ev.exit101 ], [ %.sroa.0188.0.lcssa, %bb.w ], [ %.sroa.0188.0.lcssa, %bb.ae ], [ %.sroa.0188.0.lcssa, %bb.x ], [ %.sroa.0188.0.lcssa, %.body122 ], [ %.sroa.0188.0.lcssa, %bb.au ] ; 2 uses
  %.pn85.pn.pn = phi { ptr, i32 } [ %i.bj, %bb.p ], [ %.pn85, %_ZN11CStringBaseIwED2Ev.exit101 ], [ %i.ct, %bb.w ], [ %i.dp, %bb.ae ], [ %i.ct, %bb.x ], [ %.pn, %.body122 ], [ %.pn, %bb.au ] ; 2 uses
  %i.fq = icmp eq ptr %.sroa.0188.0217, null
  br i1 %i.fq, label %_ZN11CStringBaseIwED2Ev.exit137, label %bb.av

bb.av:                                            ; preds = %.body109
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0188.0217) #21
  br label %_ZN11CStringBaseIwED2Ev.exit137

_ZN11CStringBaseIwED2Ev.exit137:                  ; preds = %bb.o, %.body109, %bb.av, %bb.n
  %.pn85.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bh, %bb.n ], [ %i.bi, %bb.o ], [ %.pn85.pn.pn, %.body109 ], [ %.pn85.pn.pn, %bb.av ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  call void @_ZN18COutMultiVolStream14CSubStreamInfoD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  resume { ptr, i32 } %.pn85.pn.pn.pn.pn

bb.aw:                                            ; preds = %.outer.split
  %i.fr = load ptr, ptr %i.o, align 8, !tbaa !12
  %i.fs = sext i32 %i.v to i64
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.fs
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !13 ; 4 uses
  %i.fv = load i32, ptr %i.p, align 4, !tbaa !8
  %i.fw = add nsw i32 %i.fv, -1
  %spec.select = call i32 @llvm.smin.i32(i32 %i.v, i32 %i.fw)
  %i.fx = load ptr, ptr %i.q, align 8, !tbaa !12
  %i.fy = sext i32 %spec.select to i64
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.fx, i64 %i.fy
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !64 ; 5 uses
  %i.gb = load i64, ptr %i.r, align 8, !tbaa !65  ; 5 uses
  %.not79 = icmp ult i64 %i.gb, %i.ga
  br i1 %.not79, label %bb.ax, label %.outer

bb.ax:                                            ; preds = %bb.aw
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fu, i64 32 ; 4 uses
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !66
  %.not80 = icmp eq i64 %i.gb, %i.gd
  br i1 %.not80, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !58 ; 2 uses
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !48
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 48
  %i.gi = load ptr, ptr %i.gh, align 8
  %i.gj = call noundef i32 %i.gi(ptr noundef nonnull align 8 dereferenceable(8) %i.gf, i64 noundef %i.gb, i32 noundef 0, ptr noundef null) ; 2 uses
  %.not81 = icmp eq i32 %i.gj, 0
  br i1 %.not81, label %bb.az, label %.thread

bb.az:                                            ; preds = %bb.ay
  %i.gk = load i64, ptr %i.r, align 8, !tbaa !65  ; 2 uses
  store i64 %i.gk, ptr %i.gc, align 8, !tbaa !66
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ax
  %i.gl = phi i64 [ %i.gk, %bb.az ], [ %i.gb, %bb.ax ] ; 2 uses
  %i.gm = zext i32 %2 to i64
  %i.gn = sub i64 %i.ga, %i.gl
  %i.go = call noundef i64 @llvm.umin.i64(i64 %i.gm, i64 %i.gn)
  %i.gp = trunc nuw i64 %i.go to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.gq = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !58 ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !48
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 40
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = call noundef i32 %i.gu(ptr noundef nonnull align 8 dereferenceable(8) %i.gr, ptr noundef %1, i32 noundef %i.gp, ptr noundef nonnull %i.b) ; 2 uses
  %.not82 = icmp eq i32 %i.gv, 0
  br i1 %.not82, label %bb.bb, label %.thread.sink.split

bb.bb:                                            ; preds = %bb.ba
  %i.gw = load i32, ptr %i.b, align 4, !tbaa !4   ; 3 uses
  %i.gx = zext i32 %i.gw to i64                   ; 3 uses
  %i.gy = load i64, ptr %i.gc, align 8, !tbaa !66
  %i.gz = add i64 %i.gy, %i.gx                    ; 2 uses
  store i64 %i.gz, ptr %i.gc, align 8, !tbaa !66
  %i.ha = load i64, ptr %i.r, align 8, !tbaa !65
  %i.hb = add i64 %i.ha, %i.gx                    ; 3 uses
  store i64 %i.hb, ptr %i.r, align 8, !tbaa !65
  %i.hc = load i64, ptr %i.s, align 8, !tbaa !67
  %i.hd = add i64 %i.hc, %i.gx                    ; 3 uses
  store i64 %i.hd, ptr %i.s, align 8, !tbaa !67
  %i.he = load i64, ptr %i.t, align 8, !tbaa !68
  %i.hf = icmp ugt i64 %i.hd, %i.he
  br i1 %i.hf, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i64 %i.hd, ptr %i.t, align 8, !tbaa !68
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.hg = getelementptr inbounds nuw i8, ptr %i.fu, i64 40 ; 2 uses
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !69
  %i.hi = icmp ugt i64 %i.hb, %i.hh
  br i1 %i.hi, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  store i64 %i.hb, ptr %i.hg, align 8, !tbaa !69
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  br i1 %.not, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hj = load i32, ptr %3, align 4, !tbaa !4
  %i.hk = add i32 %i.hj, %i.gw
  store i32 %i.hk, ptr %3, align 4, !tbaa !4
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %i.hl = icmp eq i64 %i.gz, %i.ga
  br i1 %i.hl, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.hm = load i32, ptr %i.c, align 4, !tbaa !24
  %i.hn = add nsw i32 %i.hm, 1
  store i32 %i.hn, ptr %i.c, align 4, !tbaa !24
  store i64 0, ptr %i.r, align 8, !tbaa !65
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.ho = icmp eq i32 %i.gw, 0
  %i.hp = icmp ne i64 %i.ga, %i.gl
  %or.cond = and i1 %i.hp, %i.ho
  %spec.select452 = select i1 %or.cond, i32 -2147467259, i32 0
  br label %.thread.sink.split

.outer:                                           ; preds = %bb.aw
  %i.hq = sub nuw i64 %i.gb, %i.ga
  store i64 %i.hq, ptr %i.r, align 8, !tbaa !65
  %i.hr = add nsw i32 %i.v, 1                     ; 2 uses
  store i32 %i.hr, ptr %i.c, align 4, !tbaa !24
  br label %.outer.split

.thread.sink.split:                               ; preds = %bb.bj, %bb.ba
  %.7.ph = phi i32 [ %spec.select452, %bb.bj ], [ %i.gv, %bb.ba ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  br label %.thread

.thread:                                          ; preds = %_ZN18COutMultiVolStream14CSubStreamInfoD2Ev.exit, %.outer.preheader, %.thread.sink.split, %bb.ay
  %.7 = phi i32 [ %i.gj, %bb.ay ], [ %.7.ph, %.thread.sink.split ], [ 0, %.outer.preheader ], [ %.1, %_ZN18COutMultiVolStream14CSubStreamInfoD2Ev.exit ]
  ret i32 %.7
}

declare void @_Z21ConvertUInt32ToStringjPw(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN11CStringBaseIwEaSERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq ptr %1, %0
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !43
  %i.c = load ptr, ptr %0, align 8, !tbaa !34     ; 3 uses
  store i32 0, ptr %i.c, align 4, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !43   ; 2 uses
  %i.f = add nsw i32 %i.e, 1                      ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !37   ; 2 uses
  %i.i = icmp eq i32 %i.f, %i.h
  br i1 %i.i, label %_ZN11CStringBaseIwE11SetCapacityEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = zext nneg i32 %i.f to i64
  %i.k = icmp slt i32 %i.e, -1
  %i.l = shl nuw nsw i64 %i.j, 2
  %i.m = select i1 %i.k, i64 -1, i64 %i.l
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #20 ; 3 uses
  %i.o = icmp sgt i32 %i.h, 0
  br i1 %i.o, label %._crit_edge.thread.i, label %bb.d

._crit_edge.thread.i:                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.c) #21
  %.pre = load i32, ptr %i.b, align 8, !tbaa !43
  %i.p = sext i32 %.pre to i64
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.thread.i, %bb.c
  %i.q = phi i64 [ %i.p, %._crit_edge.thread.i ], [ 0, %bb.c ]
  store ptr %i.n, ptr %0, align 8, !tbaa !34
  %i.r = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.q
  store i32 0, ptr %i.r, align 4, !tbaa !35
  store i32 %i.f, ptr %i.g, align 4, !tbaa !37
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit

_ZN11CStringBaseIwE11SetCapacityEi.exit:          ; preds = %bb.b, %bb.d
  %i.s = phi ptr [ %i.c, %bb.b ], [ %i.n, %bb.d ]
  %i.t = load ptr, ptr %1, align 8, !tbaa !34
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN11CStringBaseIwE11SetCapacityEi.exit
  %.04.i = phi ptr [ %i.t, %_ZN11CStringBaseIwE11SetCapacityEi.exit ], [ %i.u, %bb.e ] ; 2 uses
  %.0.i = phi ptr [ %i.s, %_ZN11CStringBaseIwE11SetCapacityEi.exit ], [ %i.w, %bb.e ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.04.i, i64 4
  %i.v = load i32, ptr %.04.i, align 4, !tbaa !35 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  store i32 %i.v, ptr %.0.i, align 4, !tbaa !35
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %_Z12MyStringCopyIwEPT_S1_PKS0_.exit, label %bb.e, !llvm.loop !38

_Z12MyStringCopyIwEPT_S1_PKS0_.exit:              ; preds = %bb.e
  %i.x = load i32, ptr %i.d, align 8, !tbaa !43
  store i32 %i.x, ptr %i.b, align 8, !tbaa !43
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %_Z12MyStringCopyIwEPT_S1_PKS0_.exit
  ret ptr %0
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN14COutFileStreamC2Ev(ptr noundef nonnull align 8 dereferenceable(1112) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.a, align 8, !tbaa !47
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV14COutFileStream, i64 16), ptr %0, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8NWindows5NFile3NIO9CFileBaseE, i64 16), ptr %i.b, align 8, !tbaa !48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 -1, ptr %i.c, align 8, !tbaa !50
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %i.f = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znam(i64 noundef 4) #20 ; 2 uses
  store ptr %i.f, ptr %i.d, align 8, !tbaa !54
  store i8 0, ptr %i.f, align 1, !tbaa !55
  store i32 4, ptr %i.e, align 4, !tbaa !56
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN8NWindows5NFile3NIO8COutFileE, i64 16), ptr %i.b, align 8, !tbaa !48
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN13CObjectVectorIN18COutMultiVolStream14CSubStreamInfoEE3AddERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #20 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58   ; 3 uses
  %i.e = load <2 x ptr>, ptr %1, align 8, !tbaa !13
  store <2 x ptr> %i.e, ptr %i.a, align 8, !tbaa !13
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZN9CMyComPtrI10IOutStreamEC2ERKS1_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = invoke noundef i32 %i.h(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %_ZN9CMyComPtrI10IOutStreamEC2ERKS1_.exit.i unwind label %bb.i, !inline_history !70 ; 0 uses

_ZN9CMyComPtrI10IOutStreamEC2ERKS1_.exit.i:       ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, i8 0, i64 16, i1 false)
  %i.m = load i32, ptr %i.l, align 8, !tbaa !43   ; 3 uses
  %i.n = add nsw i32 %i.m, 1                      ; 3 uses
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN9CMyComPtrI10IOutStreamEC2ERKS1_.exit.i
  %i.p = zext nneg i32 %i.n to i64
  %i.q = icmp slt i32 %i.m, -1
  %i.r = shl nuw nsw i64 %i.p, 2
  %i.s = select i1 %i.q, i64 -1, i64 %i.r
  %i.t = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.s) #20
          to label %.noexc.i unwind label %bb.e   ; 3 uses

.noexc.i:                                         ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store ptr %i.t, ptr %i.j, align 8, !tbaa !34
  store i32 0, ptr %i.t, align 4, !tbaa !35
  store i32 %i.n, ptr %i.u, align 4, !tbaa !37
  br label %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i

_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i:      ; preds = %.noexc.i, %_ZN9CMyComPtrI10IOutStreamEC2ERKS1_.exit.i
  %i.v = phi ptr [ null, %_ZN9CMyComPtrI10IOutStreamEC2ERKS1_.exit.i ], [ %i.t, %.noexc.i ]
  %i.w = load ptr, ptr %i.k, align 8, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i
  %.04.i.i.i = phi ptr [ %i.w, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.x, %bb.d ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.v, %_ZN11CStringBaseIwE11SetCapacityEi.exit.i.i ], [ %i.z, %bb.d ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.04.i.i.i, i64 4
  %i.y = load i32, ptr %.04.i.i.i, align 4, !tbaa !35 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  store i32 %i.y, ptr %.0.i.i.i, align 4, !tbaa !35
  %.not.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.d, !llvm.loop !38

bb.e:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ab = load ptr, ptr %i.b, align 8, !tbaa !58  ; 3 uses
  %.not.i6.i = icmp eq ptr %i.ab, null
  br i1 %.not.i6.i, label %.body, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = invoke noundef i32 %i.ae(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %.body unwind label %bb.g      ; 0 uses

bb.g:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #23
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %i.m, ptr %i.ai, align 8, !tbaa !43
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false)
  tail call void @_ZN17CBaseRecordVector18ReserveOnePositionEv(ptr noundef nonnull align 8 dereferenceable(32) %0)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !12
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !8  ; 3 uses
  %i.ap = sext i32 %i.ao to i64
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ap
  store ptr %i.a, ptr %i.aq, align 8, !tbaa !13
  %i.ar = add nsw i32 %i.ao, 1
  store i32 %i.ar, ptr %i.an, align 4, !tbaa !8
  ret i32 %i.ao

bb.i:                                             ; preds = %bb.b
end_hunk_0
