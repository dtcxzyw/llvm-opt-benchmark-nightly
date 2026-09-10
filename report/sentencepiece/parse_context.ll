Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/parse_context?download=true
inline.NumInlined: 226
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6google8protobuf8internal18EpsCopyInputStream4NextEv:bb.a
bb.k:                                             ; preds = %bb.h
  %i.aj = icmp sgt i32 %i.aa, 0
  br i1 %i.aj, label %bb.l, label %bb.g, !llvm.loop !0

bb.l:                                             ; preds = %bb.k
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.am = zext nneg i32 %i.aa to i64              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr align 1 %i.al, i64 %i.am, i1 false)
  store ptr %i.e, ptr %i.b, align 8, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.am ; 3 uses
  store ptr %i.an, ptr %i.o, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !19
  %i.aq = icmp ugt i64 %i.ap, 1
  br i1 %i.aq, label %bb.m, label %.thread.i

bb.m:                                             ; preds = %bb.l
  store i64 1, ptr %i.ao, align 8, !tbaa !19
  br label %.thread.i

.thread.i:                                        ; preds = %bb.m, %bb.l, %bb.j, %bb.i
  %i.ar = phi ptr [ %i.an, %bb.m ], [ %i.an, %bb.l ], [ %i.ae, %bb.j ], [ %i.ae, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.q

bb.n:                                             ; preds = %bb.g
  store i32 0, ptr %i.q, align 4, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_121ParseEndsInSlopRegionEPKcii.exit.i

_ZN6google8protobuf8internal12_GLOBAL__N_121ParseEndsInSlopRegionEPKcii.exit.i: ; preds = %bb.n, %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !19
  %i.au = icmp eq i64 %i.at, 2
  br i1 %i.au, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_121ParseEndsInSlopRegionEPKcii.exit.i
  %i.av = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %i.c to i64
  %i.ay = sub i64 %i.aw, %i.ax
  store i64 %i.ay, ptr %i.as, align 8, !tbaa !19
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZN6google8protobuf8internal12_GLOBAL__N_121ParseEndsInSlopRegionEPKcii.exit.i
  store ptr null, ptr %i.b, align 8, !tbaa !16
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store ptr %i.az, ptr %i.o, align 8, !tbaa !18
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.ba, align 8, !tbaa !17
  br label %bb.q

_ZN6google8protobuf8internal18EpsCopyInputStream10NextBufferEii.exit: ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !18
  store ptr %i.bc, ptr %0, align 8, !tbaa !26
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 1, ptr %i.bd, align 8, !tbaa !27
  br label %bb.r

bb.q:                                             ; preds = %.thread.i, %bb.p, %bb.d, %bb.c
  %i.be = phi ptr [ %i.j, %bb.c ], [ %i.j, %bb.d ], [ %i.az, %bb.p ], [ %i.ar, %.thread.i ] ; 2 uses
  %.1.i.ph = phi ptr [ %i.c, %bb.c ], [ %i.c, %bb.d ], [ %i.e, %bb.p ], [ %i.e, %.thread.i ] ; 2 uses
  %i.bf = ptrtoint ptr %i.be to i64
  %i.bg = ptrtoint ptr %.1.i.ph to i64
  %.neg = sub i64 %i.bg, %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !28
  %i.bj = trunc i64 %.neg to i32
  %i.bk = add i32 %i.bi, %i.bj                    ; 2 uses
  store i32 %i.bk, ptr %i.bh, align 4, !tbaa !28
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.bk, i32 0)
  %i.bl = sext i32 %.sroa.speculated to i64
  %i.bm = getelementptr inbounds i8, ptr %i.be, i64 %i.bl
  store ptr %i.bm, ptr %0, align 8, !tbaa !26
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN6google8protobuf8internal18EpsCopyInputStream10NextBufferEii.exit
  %.0 = phi ptr [ null, %_ZN6google8protobuf8internal18EpsCopyInputStream10NextBufferEii.exit ], [ %.1.i.ph, %bb.q ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN6google8protobuf8internal10LogMessageC1ENS0_8LogLevelEPKci(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, ptr noundef, i32 noundef) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsEPKc(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN6google8protobuf8internal11LogFinisheraSERNS1_10LogMessageE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare void @_ZN6google8protobuf8internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream10NextBufferEii(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 3 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16   ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %.not = icmp eq ptr %i.d, %i.f
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i32, ptr %i.g, align 8, !tbaa !17
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds i8, ptr %i.d, i64 %i.i
  %i.k = getelementptr inbounds i8, ptr %i.j, i64 -16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !18
  store ptr %i.f, ptr %i.c, align 8, !tbaa !16
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !19
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.d, label %bb.aj

bb.d:                                             ; preds = %bb.c
  store i64 2, ptr %i.m, align 8, !tbaa !19
  br label %bb.aj

bb.e:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !18
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 1 dereferenceable(16) %i.q, i64 16, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 4 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !20
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %bb.f, label %_ZN6google8protobuf8internal12_GLOBAL__N_121ParseEndsInSlopRegionEPKcii.exit

bb.f:                                             ; preds = %bb.e
  %i.u = icmp slt i32 %2, 0
  br i1 %i.u, label %_ZN6google8protobuf8internal12_GLOBAL__N_121ParseEndsInSlopRegionEPKcii.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.w = icmp slt i32 %1, 16
  br i1 %i.w, label %.lr.ph.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_121ParseEndsInSlopRegionEPKcii.exit.thread

.lr.ph.i:                                         ; preds = %bb.g
  %i.x = sext i32 %1 to i64
  %i.y = getelementptr inbounds i8, ptr %i.f, i64 %i.x
  %i.z = ptrtoint ptr %i.v to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.y, %.lr.ph.i
  %.01554.i = phi i32 [ %2, %.lr.ph.i ], [ %.116.i, %bb.y ] ; 7 uses
  %.03553.i = phi ptr [ %i.y, %.lr.ph.i ], [ %.2.i, %bb.y ] ; 6 uses
  %i.aa = load i8, ptr %.03553.i, align 1, !tbaa !29 ; 2 uses
  %i.ab = zext i8 %i.aa to i32                    ; 2 uses
  %i.ac = icmp sgt i8 %i.aa, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %.03553.i, i64 1 ; 2 uses
  br i1 %i.ac, label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !29  ; 2 uses
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 7
  %i.ah = add nsw i32 %i.ab, -128
  %i.ai = or disjoint i32 %i.ag, %i.ah            ; 2 uses
  %i.aj = icmp sgt i8 %i.ae, -1
  %i.ak = getelementptr inbounds nuw i8, ptr %.03553.i, i64 2 ; 2 uses
  br i1 %i.aj, label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !29  ; 2 uses
  %i.am = zext i8 %i.al to i32
  %i.an = shl nuw nsw i32 %i.am, 14
  %i.ao = add nsw i32 %i.ai, -16384
  %i.ap = or disjoint i32 %i.an, %i.ao            ; 2 uses
  %i.aq = icmp slt i8 %i.al, 0
  br i1 %i.aq, label %.critedge.1.i.i.i, label %bb.k, !prof !30

.critedge.1.i.i.i:                                ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %.03553.i, i64 3
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !29  ; 2 uses
  %i.at = zext i8 %i.as to i32
  %i.au = shl nuw nsw i32 %i.at, 21
  %i.av = add nsw i32 %i.ap, -2097152
  %i.aw = add nsw i32 %i.av, %i.au                ; 2 uses
  %i.ax = icmp slt i8 %i.as, 0
  br i1 %i.ax, label %.critedge.2.i.i.i, label %bb.k, !prof !30

.critedge.2.i.i.i:                                ; preds = %.critedge.1.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.03553.i, i64 4
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !29  ; 2 uses
  %i.ba = zext i8 %i.az to i32
  %i.bb = shl i32 %i.ba, 28
  %i.bc = add i32 %i.aw, -268435456
  %i.bd = add i32 %i.bc, %i.bb
  %i.be = icmp slt i8 %i.az, 0
  br i1 %i.be, label %_ZN6google8protobuf8internal12_GLOBAL__N_121ParseEndsInSlopRegionEPKcii.exit.thread, label %bb.k, !prof !30

bb.k:                                             ; preds = %.critedge.2.i.i.i, %.critedge.1.i.i.i, %bb.j
  %.lcssa21.i.i.i = phi i64 [ 2, %bb.j ], [ 3, %.critedge.1.i.i.i ], [ 4, %.critedge.2.i.i.i ]
  %.lcssa.i.i.i = phi i32 [ %i.ap, %bb.j ], [ %i.aw, %.critedge.1.i.i.i ], [ %i.bd, %.critedge.2.i.i.i ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.03553.i, i64 %.lcssa21.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  br label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit.i

_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit.i: ; preds = %bb.k, %bb.i, %bb.h
  %.0.i = phi i32 [ %.lcssa.i.i.i, %bb.k ], [ %i.ab, %bb.h ], [ %i.ai, %bb.i ] ; 2 uses
  %.1.i.i = phi ptr [ %i.bg, %bb.k ], [ %i.ad, %bb.h ], [ %i.ak, %bb.i ] ; 13 uses
  %i.bh = icmp ugt ptr %.1.i.i, %i.v
  br i1 %i.bh, label %_ZN6google8protobuf8internal12_GLOBAL__N_121ParseEndsInSlopRegionEPKcii.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit.i
  %i.bi = icmp eq i32 %.0.i, 0
  br i1 %i.bi, label %_ZN6google8protobuf8internal12_GLOBAL__N_121ParseEndsInSlopRegionEPKcii.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = and i32 %.0.i, 7
  switch i32 %i.bj, label %_ZN6google8protobuf8internal12_GLOBAL__N_121ParseEndsInSlopRegionEPKcii.exit.thread [
    i32 0, label %bb.n
    i32 1, label %bb.o
    i32 2, label %bb.p
    i32 3, label %bb.v
    i32 4, label %bb.w
    i32 5, label %bb.x
  ]

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.bk = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef nonnull %.1.i.i, ptr noundef nonnull %i.a) ; 2 uses
  %.not.i = icmp eq ptr %i.bk, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br i1 %.not.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_121ParseEndsInSlopRegionEPKcii.exit.thread, label %bb.y

bb.o:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8
  br label %bb.y

bb.p:                                             ; preds = %bb.m
  %i.bm = load i8, ptr %.1.i.i, align 1, !tbaa !29 ; 2 uses
  %i.bn = zext i8 %i.bm to i32                    ; 2 uses
  %i.bo = icmp sgt i8 %i.bm, -1
  %i.bp = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1 ; 2 uses
  br i1 %i.bo, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !29  ; 2 uses
  %i.br = zext i8 %i.bq to i32
  %i.bs = shl nuw nsw i32 %i.br, 7
  %i.bt = add nsw i32 %i.bn, -128
  %i.bu = or disjoint i32 %i.bs, %i.bt            ; 2 uses
  %i.bv = icmp slt i8 %i.bq, 0
  br i1 %i.bv, label %.critedge.1.i.i29.i, label %bb.s, !prof !30

.critedge.1.i.i29.i:                              ; preds = %bb.q
  %i.bw = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 2
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !29  ; 2 uses
  %i.by = zext i8 %i.bx to i32
  %i.bz = shl nuw nsw i32 %i.by, 14
  %i.ca = add nsw i32 %i.bu, -16384
  %i.cb = or disjoint i32 %i.bz, %i.ca            ; 2 uses
  %i.cc = icmp slt i8 %i.bx, 0
  br i1 %i.cc, label %.critedge.2.i.i30.i, label %bb.s, !prof !30

.critedge.2.i.i30.i:                              ; preds = %.critedge.1.i.i29.i
  %i.cd = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 3
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !29  ; 2 uses
  %i.cf = zext i8 %i.ce to i32
  %i.cg = shl nuw nsw i32 %i.cf, 21
  %i.ch = add nsw i32 %i.cb, -2097152
  %i.ci = add nsw i32 %i.ch, %i.cg                ; 2 uses
  %i.cj = icmp slt i8 %i.ce, 0
  br i1 %i.cj, label %bb.r, label %bb.s, !prof !30

bb.r:                                             ; preds = %.critedge.2.i.i30.i
  %i.ck = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !29  ; 2 uses
  %i.cm = icmp ugt i8 %i.cl, 7
  br i1 %i.cm, label %_ZN6google8protobuf8internal12_GLOBAL__N_121ParseEndsInSlopRegionEPKcii.exit.thread, label %bb.t, !prof !30

bb.s:                                             ; preds = %.critedge.2.i.i30.i, %.critedge.1.i.i29.i, %bb.q
  %.lcssa35.i.i.i = phi i64 [ 1, %bb.q ], [ 2, %.critedge.1.i.i29.i ], [ 3, %.critedge.2.i.i30.i ]
  %.lcssa.i.i28.i = phi i32 [ %i.bu, %bb.q ], [ %i.cb, %.critedge.1.i.i29.i ], [ %i.ci, %.critedge.2.i.i30.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %.lcssa35.i.i.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 1
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.cp = zext nneg i8 %i.cl to i32
  %i.cq = shl nuw nsw i32 %i.cp, 28
  %i.cr = add nsw i32 %i.ci, -268435456
  %i.cs = add nsw i32 %i.cr, %i.cq                ; 2 uses
  %i.ct = icmp ugt i32 %i.cs, 2147483631
  %i.cu = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 5
  br i1 %i.ct, label %_ZN6google8protobuf8internal12_GLOBAL__N_121ParseEndsInSlopRegionEPKcii.exit.thread, label %bb.u, !prof !30

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.p
  %storemerge.i.ph.i = phi ptr [ %i.bp, %bb.p ], [ %i.co, %bb.s ], [ %i.cu, %bb.t ] ; 2 uses
  %.0.i.ph.i = phi i32 [ %i.bn, %bb.p ], [ %.lcssa.i.i28.i, %bb.s ], [ %i.cs, %bb.t ]
  %i.cv = sext i32 %.0.i.ph.i to i64              ; 2 uses
  %i.cw = ptrtoint ptr %storemerge.i.ph.i to i64
  %i.cx = sub i64 %i.z, %i.cw
  %i.cy = icmp slt i64 %i.cx, %i.cv
  br i1 %i.cy, label %_ZN6google8protobuf8internal12_GLOBAL__N_121ParseEndsInSlopRegionEPKcii.exit.thread, label %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.i

_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.i: ; preds = %bb.u
  %i.cz = getelementptr inbounds i8, ptr %storemerge.i.ph.i, i64 %i.cv
  br label %bb.y

bb.v:                                             ; preds = %bb.m
  %i.da = add nsw i32 %.01554.i, 1
  br label %bb.y

bb.w:                                             ; preds = %bb.m
  %i.db = add nsw i32 %.01554.i, -1
  %i.dc = icmp slt i32 %.01554.i, 1
  br i1 %i.dc, label %_ZN6google8protobuf8internal12_GLOBAL__N_121ParseEndsInSlopRegionEPKcii.exit, label %bb.y

bb.x:                                             ; preds = %bb.m
  %i.dd = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.i, %bb.o, %bb.n
  %.2.i = phi ptr [ %i.bk, %bb.n ], [ %i.bl, %bb.o ], [ %i.cz, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.i ], [ %.1.i.i, %bb.v ], [ %.1.i.i, %bb.w ], [ %i.dd, %bb.x ] ; 2 uses
  %.116.i = phi i32 [ %.01554.i, %bb.n ], [ %.01554.i, %bb.o ], [ %.01554.i, %_ZN6google8protobuf8internal8ReadSizeEPPKc.exit.i ], [ %i.da, %bb.v ], [ %i.db, %bb.w ], [ %.01554.i, %bb.x ]
  %i.de = icmp ult ptr %.2.i, %i.v
  br i1 %i.de, label %bb.h, label %_ZN6google8protobuf8internal12_GLOBAL__N_121ParseEndsInSlopRegionEPKcii.exit.thread, !llvm.loop !62

_ZN6google8protobuf8internal12_GLOBAL__N_121ParseEndsInSlopRegionEPKcii.exit.thread: ; preds = %bb.y, %bb.t, %bb.r, %bb.n, %bb.m, %bb.u, %.critedge.2.i.i.i, %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit.i, %bb.g, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.ad, %_ZN6google8protobuf8internal12_GLOBAL__N_121ParseEndsInSlopRegionEPKcii.exit.thread
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !21 ; 2 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !23
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = call noundef zeroext i1 %i.dk(ptr noundef nonnull align 8 dereferenceable(8) %i.dh, ptr noundef nonnull %i.b, ptr noundef nonnull %i.dg), !inline_history !63
  br i1 %i.dl, label %bb.aa, label %bb.ag

bb.aa:                                            ; preds = %bb.z
  %i.dm = load i32, ptr %i.dg, align 8, !tbaa !17 ; 4 uses
  %i.dn = load i32, ptr %i.r, align 4, !tbaa !20
  %i.do = sub nsw i32 %i.dn, %i.dm
  store i32 %i.do, ptr %i.r, align 4, !tbaa !20
  %i.dp = icmp sgt i32 %i.dm, 16
  br i1 %i.dp, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.dr = load ptr, ptr %i.b, align 8, !tbaa !24  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, ptr noundef nonnull align 1 dereferenceable(16) %i.dr, i64 16, i1 false)
  store ptr %i.dr, ptr %i.c, align 8, !tbaa !16
  store ptr %i.dq, ptr %i.p, align 8, !tbaa !18
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !19
  %i.du = icmp ugt i64 %i.dt, 1
  br i1 %i.du, label %bb.ac, label %.thread

bb.ac:                                            ; preds = %bb.ab
  store i64 1, ptr %i.ds, align 8, !tbaa !19
  br label %.thread

bb.ad:                                            ; preds = %bb.aa
  %i.dv = icmp sgt i32 %i.dm, 0
  br i1 %i.dv, label %bb.ae, label %bb.z, !llvm.loop !0

bb.ae:                                            ; preds = %bb.ad
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.dx = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.dy = zext nneg i32 %i.dm to i64              ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.dw, ptr align 1 %i.dx, i64 %i.dy, i1 false)
  store ptr %i.f, ptr %i.c, align 8, !tbaa !16
  %i.dz = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.dy
  store ptr %i.dz, ptr %i.p, align 8, !tbaa !18
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !19
  %i.ec = icmp ugt i64 %i.eb, 1
  br i1 %i.ec, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  store i64 1, ptr %i.ea, align 8, !tbaa !19
  br label %.thread

.thread:                                          ; preds = %bb.ae, %bb.af, %bb.ab, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.aj

bb.ag:                                            ; preds = %bb.z
  store i32 0, ptr %i.r, align 4, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_121ParseEndsInSlopRegionEPKcii.exit

end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8internal17PackedFloatParserEPvPKcPNS1_12ParseContextE:bb.a
  br i1 %i.x, label %bb.c, label %bb.d, !prof !30

bb.c:                                             ; preds = %.critedge.2.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.z = load i8, ptr %i.y, align 1, !tbaa !29    ; 2 uses
  %i.aa = icmp ugt i8 %i.z, 7
  br i1 %i.aa, label %_ZN6google8protobuf8internal11FixedParserIfEEPKcPvS4_PNS1_12ParseContextE.exit, label %bb.e, !prof !30

bb.d:                                             ; preds = %.critedge.2.i.i.i, %.critedge.1.i.i.i, %bb.b
  %.lcssa35.i.i.i = phi i64 [ 1, %bb.b ], [ 2, %.critedge.1.i.i.i ], [ 3, %.critedge.2.i.i.i ]
  %.lcssa.i.i.i = phi i32 [ %i.i, %bb.b ], [ %i.p, %.critedge.1.i.i.i ], [ %i.w, %.critedge.2.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.lcssa35.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ad = zext nneg i8 %i.z to i32
  %i.ae = shl nuw nsw i32 %i.ad, 28
  %i.af = add nsw i32 %i.w, -268435456
  %i.ag = add nsw i32 %i.af, %i.ae                ; 2 uses
  %i.ah = icmp ugt i32 %i.ag, 2147483631
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 5
  br i1 %i.ah, label %_ZN6google8protobuf8internal11FixedParserIfEEPKcPvS4_PNS1_12ParseContextE.exit, label %bb.f, !prof !30

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a
  %storemerge.i.ph.i = phi ptr [ %i.d, %bb.a ], [ %i.ac, %bb.d ], [ %i.ai, %bb.e ]
  %.0.i.ph.i = phi i32 [ %i.b, %bb.a ], [ %.lcssa.i.i.i, %bb.d ], [ %i.ag, %bb.e ]
  %i.aj = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream15ReadPackedFixedIfEEPKcS5_iPNS0_13RepeatedFieldIT_EE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull %storemerge.i.ph.i, i32 noundef %.0.i.ph.i, ptr noundef %0)
  br label %_ZN6google8protobuf8internal11FixedParserIfEEPKcPvS4_PNS1_12ParseContextE.exit

_ZN6google8protobuf8internal11FixedParserIfEEPKcPvS4_PNS1_12ParseContextE.exit: ; preds = %bb.c, %bb.e, %bb.f
  %.0.i = phi ptr [ %i.aj, %bb.f ], [ null, %bb.c ], [ null, %bb.e ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8internal18PackedDoubleParserEPvPKcPNS1_12ParseContextE(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !29      ; 2 uses
  %i.b = zext i8 %i.a to i32                      ; 2 uses
  %i.c = icmp sgt i8 %i.a, -1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %i.d, align 1, !tbaa !29    ; 2 uses
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 7
  %i.h = add nsw i32 %i.b, -128
  %i.i = or disjoint i32 %i.g, %i.h               ; 2 uses
  %i.j = icmp slt i8 %i.e, 0
  br i1 %i.j, label %.critedge.1.i.i.i, label %bb.d, !prof !30

.critedge.1.i.i.i:                                ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !29    ; 2 uses
  %i.m = zext i8 %i.l to i32
  %i.n = shl nuw nsw i32 %i.m, 14
  %i.o = add nsw i32 %i.i, -16384
  %i.p = or disjoint i32 %i.n, %i.o               ; 2 uses
  %i.q = icmp slt i8 %i.l, 0
  br i1 %i.q, label %.critedge.2.i.i.i, label %bb.d, !prof !30

.critedge.2.i.i.i:                                ; preds = %.critedge.1.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.s = load i8, ptr %i.r, align 1, !tbaa !29    ; 2 uses
  %i.t = zext i8 %i.s to i32
  %i.u = shl nuw nsw i32 %i.t, 21
  %i.v = add nsw i32 %i.p, -2097152
  %i.w = add nsw i32 %i.v, %i.u                   ; 2 uses
  %i.x = icmp slt i8 %i.s, 0
  br i1 %i.x, label %bb.c, label %bb.d, !prof !30

bb.c:                                             ; preds = %.critedge.2.i.i.i
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.z = load i8, ptr %i.y, align 1, !tbaa !29    ; 2 uses
  %i.aa = icmp ugt i8 %i.z, 7
  br i1 %i.aa, label %_ZN6google8protobuf8internal11FixedParserIdEEPKcPvS4_PNS1_12ParseContextE.exit, label %bb.e, !prof !30

bb.d:                                             ; preds = %.critedge.2.i.i.i, %.critedge.1.i.i.i, %bb.b
  %.lcssa35.i.i.i = phi i64 [ 1, %bb.b ], [ 2, %.critedge.1.i.i.i ], [ 3, %.critedge.2.i.i.i ]
  %.lcssa.i.i.i = phi i32 [ %i.i, %bb.b ], [ %i.p, %.critedge.1.i.i.i ], [ %i.w, %.critedge.2.i.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 %.lcssa35.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ad = zext nneg i8 %i.z to i32
  %i.ae = shl nuw nsw i32 %i.ad, 28
  %i.af = add nsw i32 %i.w, -268435456
  %i.ag = add nsw i32 %i.af, %i.ae                ; 2 uses
  %i.ah = icmp ugt i32 %i.ag, 2147483631
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 5
  br i1 %i.ah, label %_ZN6google8protobuf8internal11FixedParserIdEEPKcPvS4_PNS1_12ParseContextE.exit, label %bb.f, !prof !30

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.a
  %storemerge.i.ph.i = phi ptr [ %i.d, %bb.a ], [ %i.ac, %bb.d ], [ %i.ai, %bb.e ]
  %.0.i.ph.i = phi i32 [ %i.b, %bb.a ], [ %.lcssa.i.i.i, %bb.d ], [ %i.ag, %bb.e ]
  %i.aj = tail call noundef ptr @_ZN6google8protobuf8internal18EpsCopyInputStream15ReadPackedFixedIdEEPKcS5_iPNS0_13RepeatedFieldIT_EE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull %storemerge.i.ph.i, i32 noundef %.0.i.ph.i, ptr noundef %0)
  br label %_ZN6google8protobuf8internal11FixedParserIdEEPKcPvS4_PNS1_12ParseContextE.exit

_ZN6google8protobuf8internal11FixedParserIdEEPKcPvS4_PNS1_12ParseContextE.exit: ; preds = %bb.c, %bb.e, %bb.f
  %.0.i = phi ptr [ %i.aj, %bb.f ], [ null, %bb.c ], [ null, %bb.e ]
  ret ptr %.0.i
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8internal21UnknownGroupLiteParseEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcPNS1_12ParseContextE(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %"class.google::protobuf::internal::UnknownFieldLiteParserHelper", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  store ptr %0, ptr %3, align 8, !tbaa !45
  %i.a = call noundef ptr @_ZN6google8protobuf8internal16WireFormatParserINS1_28UnknownFieldLiteParserHelperEEEPKcRT_S5_PNS1_12ParseContextE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1, ptr noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #12
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN6google8protobuf8internal16WireFormatParserINS1_28UnknownFieldLiteParserHelperEEEPKcRT_S5_PNS1_12ParseContextE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 28
  br label %bb.b

bb.b:                                             ; preds = %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit, %bb.a
  %.015 = phi ptr [ %1, %bb.a ], [ %i.bg, %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit ] ; 4 uses
  %i.d = load i32, ptr %i.a, align 4, !tbaa !46
  %i.e = load ptr, ptr %2, align 8, !tbaa !26
  %i.f = icmp ult ptr %.015, %i.e
  br i1 %i.f, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread21, label %bb.c, !prof !31

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.h = ptrtoint ptr %.015 to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = trunc i64 %i.j to i32                    ; 3 uses
  %i.l = load i32, ptr %i.c, align 4, !tbaa !28
  %i.m = icmp eq i32 %i.l, %i.k
  br i1 %i.m, label %bb.d, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit

bb.d:                                             ; preds = %bb.c
  %i.n = icmp sgt i32 %i.k, 0
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = icmp eq ptr %i.p, null
  %or.cond.i.i = select i1 %i.n, i1 %i.q, i1 false
  %spec.select = select i1 %or.cond.i.i, ptr null, ptr %.015
  br label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit: ; preds = %bb.c
  %i.r = tail call { ptr, i8 } @_ZN6google8protobuf8internal18EpsCopyInputStream12DoneFallbackEii(ptr noundef nonnull align 8 dereferenceable(112) %2, i32 noundef %i.k, i32 noundef %i.d) ; 2 uses
  %.fca.0.extract.i.i = extractvalue { ptr, i8 } %i.r, 0 ; 2 uses
  %.fca.1.extract.i.i = extractvalue { ptr, i8 } %i.r, 1
  %i.s = trunc i8 %.fca.1.extract.i.i to i1
  br i1 %i.s, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread21

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread21: ; preds = %bb.b, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit
  %.21724 = phi ptr [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ], [ %.015, %bb.b ] ; 6 uses
  %i.t = load i8, ptr %.21724, align 1, !tbaa !29 ; 2 uses
  %i.u = zext i8 %i.t to i32                      ; 2 uses
  %i.v = icmp sgt i8 %i.t, -1
  %i.w = getelementptr inbounds nuw i8, ptr %.21724, i64 1 ; 2 uses
  br i1 %i.v, label %bb.h, label %bb.e

bb.e:                                             ; preds = %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread21
  %i.x = load i8, ptr %i.w, align 1, !tbaa !29    ; 2 uses
  %i.y = zext i8 %i.x to i32
  %i.z = shl nuw nsw i32 %i.y, 7
  %i.aa = add nsw i32 %i.u, -128
  %i.ab = or disjoint i32 %i.z, %i.aa             ; 2 uses
  %i.ac = icmp sgt i8 %i.x, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %.21724, i64 2 ; 2 uses
  br i1 %i.ac, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !29  ; 2 uses
  %i.af = zext i8 %i.ae to i32
  %i.ag = shl nuw nsw i32 %i.af, 14
  %i.ah = add nsw i32 %i.ab, -16384
  %i.ai = or disjoint i32 %i.ag, %i.ah            ; 2 uses
  %i.aj = icmp slt i8 %i.ae, 0
  br i1 %i.aj, label %.critedge.1.i.i, label %bb.g, !prof !30

.critedge.1.i.i:                                  ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %.21724, i64 3
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !29  ; 2 uses
  %i.am = zext i8 %i.al to i32
  %i.an = shl nuw nsw i32 %i.am, 21
  %i.ao = add nsw i32 %i.ai, -2097152
  %i.ap = add nsw i32 %i.ao, %i.an                ; 2 uses
  %i.aq = icmp slt i8 %i.al, 0
  br i1 %i.aq, label %.critedge.2.i.i, label %bb.g, !prof !30

.critedge.2.i.i:                                  ; preds = %.critedge.1.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.21724, i64 4
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !29  ; 2 uses
  %i.at = zext i8 %i.as to i32
  %i.au = shl i32 %i.at, 28
  %i.av = add i32 %i.ap, -268435456
  %i.aw = add i32 %i.av, %i.au
  %i.ax = icmp slt i8 %i.as, 0
  br i1 %i.ax, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %bb.g, !prof !30

bb.g:                                             ; preds = %.critedge.2.i.i, %.critedge.1.i.i, %bb.f
  %.lcssa21.i.i = phi i64 [ 2, %bb.f ], [ 3, %.critedge.1.i.i ], [ 4, %.critedge.2.i.i ]
  %.lcssa.i.i = phi i32 [ %i.ai, %bb.f ], [ %i.ap, %.critedge.1.i.i ], [ %i.aw, %.critedge.2.i.i ]
  %i.ay = getelementptr inbounds nuw i8, ptr %.21724, i64 %.lcssa21.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread21, %bb.g
  %.014.ph = phi i32 [ %.lcssa.i.i, %bb.g ], [ %i.u, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread21 ], [ %i.ab, %bb.e ] ; 4 uses
  %.1.i.ph = phi ptr [ %i.az, %bb.g ], [ %i.w, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread21 ], [ %i.ad, %bb.e ] ; 2 uses
  %i.ba = icmp eq i32 %.014.ph, 0
  %i.bb = and i32 %.014.ph, 7
  %i.bc = icmp eq i32 %i.bb, 4
  %or.cond = or i1 %i.ba, %i.bc
  br i1 %or.cond, label %bb.i, label %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit

bb.i:                                             ; preds = %bb.h
  %i.bd = add i32 %.014.ph, -1
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i32 %i.bd, ptr %i.be, align 8, !tbaa !27
  br label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread

_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit: ; preds = %bb.h
  %i.bf = zext i32 %.014.ph to i64
  %i.bg = tail call noundef ptr @_ZN6google8protobuf8internal11FieldParserINS1_28UnknownFieldLiteParserHelperEEEPKcmRT_S5_PNS1_12ParseContextE(i64 noundef %i.bf, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %.1.i.ph, ptr noundef nonnull %2) ; 2 uses
  %.not8.not = icmp eq ptr %i.bg, null
  br i1 %.not8.not, label %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread, label %bb.b

_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit.thread: ; preds = %.critedge.2.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit, %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit, %bb.d, %bb.i
  %.2 = phi ptr [ %spec.select, %bb.d ], [ %.1.i.ph, %bb.i ], [ null, %.critedge.2.i.i ], [ %.fca.0.extract.i.i, %_ZN6google8protobuf8internal12ParseContext4DoneEPPKc.exit ], [ null, %_ZN6google8protobuf8internal7ReadTagEPKcPjj.exit ]
  ret ptr %.2
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6google8protobuf8internal17UnknownFieldParseEjPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcPNS1_12ParseContextE(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.google::protobuf::internal::UnknownFieldLiteParserHelper", align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  store ptr %1, ptr %4, align 8, !tbaa !45
  %i.a = zext i32 %0 to i64
  %i.b = call noundef ptr @_ZN6google8protobuf8internal11FieldParserINS1_28UnknownFieldLiteParserHelperEEEPKcmRT_S5_PNS1_12ParseContextE(i64 noundef %i.a, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %2, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret ptr %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN6google8protobuf8internal11FieldParserINS1_28UnknownFieldLiteParserHelperEEEPKcmRT_S5_PNS1_12ParseContextE(i64 noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %4 = alloca %"class.google::protobuf::internal::LogMessage", align 8 ; 7 uses
  %5 = alloca %"class.google::protobuf::internal::LogFinisher", align 1 ; 4 uses
  %i.b = lshr i64 %0, 3
  %i.c = trunc i64 %i.b to i32                    ; 6 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %0, 7
  switch i64 %i.d, label %bb.p [
    i64 0, label %bb.c
    i64 1, label %bb.e
    i64 2, label %bb.f
    i64 3, label %bb.g
    i64 4, label %bb.h
    i64 5, label %bb.n
  ]

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.e = call noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %2, ptr noundef nonnull %i.a) ; 2 uses
  %.not40.not = icmp eq ptr %i.e, null
  br i1 %.not40.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load i64, ptr %i.a, align 8, !tbaa !37
  call void @_ZN6google8protobuf8internal28UnknownFieldLiteParserHelper9AddVarintEjm(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.c, i64 noundef %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.o

bb.e:                                             ; preds = %bb.b
  %.0.copyload.i.i = load i64, ptr %2, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  tail call void @_ZN6google8protobuf8internal28UnknownFieldLiteParserHelper10AddFixed64Ejm(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.c, i64 noundef %.0.copyload.i.i)
  br label %bb.o

bb.f:                                             ; preds = %bb.b
  %i.h = tail call noundef ptr @_ZN6google8protobuf8internal28UnknownFieldLiteParserHelper20ParseLengthDelimitedEjPKcPNS1_12ParseContextE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.c, ptr noundef %2, ptr noundef %3) ; 2 uses
  %.not39 = icmp eq ptr %i.h, null
  br i1 %.not39, label %bb.p, label %bb.o

bb.g:                                             ; preds = %bb.b
  %i.i = tail call noundef ptr @_ZN6google8protobuf8internal28UnknownFieldLiteParserHelper10ParseGroupEjPKcPNS1_12ParseContextE(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.c, ptr noundef %2, ptr noundef %3) ; 2 uses
  %.not38 = icmp eq ptr %i.i, null
  br i1 %.not38, label %bb.p, label %bb.o

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #12
  call void @_ZN6google8protobuf8internal10LogMessageC1ENS0_8LogLevelEPKci(ptr noundef nonnull align 8 dereferenceable(56) %4, i32 noundef 3, ptr noundef nonnull @.str.13, i32 noundef 758)
  %i.j = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZN6google8protobuf8internal10LogMessagelsEPKc(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull @.str.25)
          to label %bb.i unwind label %bb.k

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  invoke void @_ZN6google8protobuf8internal11LogFinisheraSERNS1_10LogMessageE(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(56) %i.j)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @_ZN6google8protobuf8internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  br label %bb.o

bb.k:                                             ; preds = %bb.h
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.l, %bb.l ], [ %i.k, %bb.k ]
  call void @_ZN6google8protobuf8internal10LogMessageD1Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %4) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  resume { ptr, i32 } %.pn

bb.n:                                             ; preds = %bb.b
  %.0.copyload.i.i41 = load i32, ptr %2, align 1
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  tail call void @_ZN6google8protobuf8internal28UnknownFieldLiteParserHelper10AddFixed32Ejj(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %i.c, i32 noundef %.0.copyload.i.i41)
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %bb.g, %bb.f, %bb.n, %bb.j, %bb.e
  %.033 = phi ptr [ %i.e, %bb.d ], [ %i.g, %bb.e ], [ %i.h, %bb.f ], [ %i.i, %bb.g ], [ %2, %bb.j ], [ %i.m, %bb.n ]
  br label %bb.p

.critedge:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  br label %bb.p

bb.p:                                             ; preds = %bb.b, %bb.g, %bb.f, %.critedge, %bb.a, %bb.o
  %.1 = phi ptr [ null, %bb.g ], [ %.033, %bb.o ], [ null, %bb.b ], [ null, %.critedge ], [ null, %bb.f ], [ null, %bb.a ]
  ret ptr %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN6google8protobuf8internal11VarintParseImEEPKcS4_PT_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !29      ; 3 uses
  %.not = icmp sgt i8 %i.a, -1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i8 %i.a to i64
  store i64 %i.b, ptr %1, align 8, !tbaa !37
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !29    ; 2 uses
  %i.f = zext i8 %i.e to i64
  %i.g = shl nuw nsw i64 %i.f, 7
  %.not16 = icmp sgt i8 %i.e, -1
  %i.h = and i8 %i.a, 127
  %.masked = zext nneg i8 %i.h to i64
  %i.i = or disjoint i64 %i.g, %.masked           ; 2 uses
  br i1 %.not16, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 %i.i, ptr %1, align 8, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.l = load i8, ptr %i.k, align 1, !tbaa !29    ; 2 uses
  %i.m = zext i8 %i.l to i64
  %i.n = shl nuw nsw i64 %i.m, 14
  %i.o = add nsw i64 %i.i, -16384
  %i.p = or disjoint i64 %i.o, %i.n               ; 2 uses
  %i.q = icmp slt i8 %i.l, 0
  br i1 %i.q, label %.critedge.1.i.i, label %bb.f, !prof !30

.critedge.1.i.i:                                  ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3
  %i.s = load i8, ptr %i.r, align 1, !tbaa !29    ; 2 uses
  %i.t = zext i8 %i.s to i64
  %i.u = shl nuw nsw i64 %i.t, 21
  %i.v = add nsw i64 %i.p, -2097152
end_hunk_1
