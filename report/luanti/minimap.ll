Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/minimap?download=true
inline.NumInlined: 2133
inline.NumDeleted: 822
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN7Minimap14getMinimapMaskEv:bb.a
  store i32 0, ptr %i.w, align 4, !tbaa !228
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store i32 512, ptr %3, align 4, !tbaa !230
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 512, ptr %i.x, align 4, !tbaa !231
  %i.y = load ptr, ptr %i.j, align 8, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 608
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = invoke noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %i.v, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(8) %3)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !157 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 2097256
  store ptr %i.ab, ptr %i.ad, align 8, !tbaa !206
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  %i.ae = load ptr, ptr %1, align 8, !tbaa !153   ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.m
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.ag = load i64, ptr %i.m, align 8, !tbaa !154
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #30
  %.pre33.pre = load ptr, ptr %i.c, align 8, !tbaa !157
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %.pre33 = phi ptr [ %.pre33.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.ac, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %bb.i

bb.e:                                             ; preds = %.noexc.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

bb.f:                                             ; preds = %.noexc
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #33
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pn12 = phi { ptr, i32 } [ %i.ak, %bb.g ], [ %i.aj, %bb.f ] ; 2 uses
  %i.al = load ptr, ptr %1, align 8, !tbaa !153   ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.m
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16: ; preds = %bb.h
  %i.an = load i64, ptr %i.m, align 8, !tbaa !154
  %i.ao = add i64 %i.an, 1
  call void @_ZdlPvm(ptr noundef %i.al, i64 noundef %i.ao) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16, %bb.e
  %.pn12.pn = phi { ptr, i32 } [ %i.ai, %bb.e ], [ %.pn12, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16 ], [ %.pn12, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %bb.s

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.b
  %i.ap = phi ptr [ %.pre33, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %bb.b ]
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 2097256
  br label %bb.r

bb.j:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 2097264
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !207
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %.noexc.i20, label %bb.q

.noexc.i20:                                       ; preds = %bb.j
  %i.at = load ptr, ptr %0, align 8, !tbaa !143   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !144 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 6 uses
  store ptr %i.aw, ptr %4, align 8, !tbaa !151
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 23, ptr %i.a, align 8, !tbaa !152
  %i.ax = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc21 unwind label %bb.m   ; 2 uses

.noexc21:                                         ; preds = %.noexc.i20
  store ptr %i.ax, ptr %4, align 8, !tbaa !153
  %i.ay = load i64, ptr %i.a, align 8, !tbaa !152 ; 3 uses
  store i64 %i.ay, ptr %i.aw, align 8, !tbaa !154
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.ax, ptr noundef nonnull align 1 dereferenceable(23) @.str.8, i64 23, i1 false)
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !155
  %i.ba = load ptr, ptr %4, align 8, !tbaa !153
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.ay
  store i8 0, ptr %i.bb, align 1, !tbaa !154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.bc = load ptr, ptr %i.av, align 8, !tbaa !20
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = invoke noundef ptr %i.be(ptr noundef nonnull align 8 dereferenceable(8) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef null)
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %.noexc21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  store i32 0, ptr %5, align 4, !tbaa !227
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.bg, align 4, !tbaa !228
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store i32 512, ptr %6, align 4, !tbaa !230
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 4
  store i32 512, ptr %i.bh, align 4, !tbaa !231
  %i.bi = load ptr, ptr %i.at, align 8, !tbaa !20
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 608
  %i.bk = load ptr, ptr %i.bj, align 8
  %i.bl = invoke noundef ptr %i.bk(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef %i.bf, ptr noundef nonnull align 4 dereferenceable(8) %5, ptr noundef nonnull align 4 dereferenceable(8) %6)
          to label %bb.l unwind label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !157 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 2097264
  store ptr %i.bl, ptr %i.bn, align 8, !tbaa !207
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.bo = load ptr, ptr %4, align 8, !tbaa !153   ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.aw
  br i1 %i.bp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23: ; preds = %bb.l
  %i.bq = load i64, ptr %i.aw, align 8, !tbaa !154
  %i.br = add i64 %i.bq, 1
  call void @_ZdlPvm(ptr noundef %i.bo, i64 noundef %i.br) #30
  %.pre.pre = load ptr, ptr %i.c, align 8, !tbaa !157
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23
  %.pre = phi ptr [ %.pre.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i23 ], [ %i.bm, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.q

bb.m:                                             ; preds = %.noexc.i20
  %i.bs = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

bb.n:                                             ; preds = %.noexc21
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.o:                                             ; preds = %bb.k
  %i.bu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.pn = phi { ptr, i32 } [ %i.bu, %bb.o ], [ %i.bt, %bb.n ] ; 2 uses
  %i.bv = load ptr, ptr %4, align 8, !tbaa !153   ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.aw
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26: ; preds = %bb.p
  %i.bx = load i64, ptr %i.aw, align 8, !tbaa !154
  %i.by = add i64 %i.bx, 1
  call void @_ZdlPvm(ptr noundef %i.bv, i64 noundef %i.by) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26, %bb.m
  %.pn.pn = phi { ptr, i32 } [ %i.bs, %bb.m ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i26 ], [ %.pn, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  br label %bb.s

bb.q:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25, %bb.j
  %i.bz = phi ptr [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit25 ], [ %i.d, %bb.j ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 2097264
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.i
  %.08.in = phi ptr [ %i.aq, %bb.i ], [ %i.ca, %bb.q ]
  %.08 = load ptr, ptr %.08.in, align 8, !tbaa !374
  ret ptr %.08

bb.s:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18
  %.pn12.pn.pn = phi { ptr, i32 } [ %.pn12.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit28 ]
  resume { ptr, i32 } %.pn12.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN7Minimap17getMinimapTextureEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.video::SColor", align 4     ; 7 uses
  %2 = alloca %"class.core::dimension2d", align 4 ; 7 uses
  %3 = alloca %"class.core::dimension2d", align 4 ; 5 uses
  %4 = alloca %"class.video::SColor", align 4     ; 4 uses
  %5 = alloca %"class.core::vector2d", align 4    ; 5 uses
  %6 = alloca %"class.video::SColor", align 4     ; 4 uses
  %7 = alloca %"class.core::string", align 8      ; 21 uses
  %8 = alloca %"class.core::string", align 8      ; 21 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !157  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 2097252
  %i.d = load i8, ptr %i.c, align 4, !tbaa !92, !range !93, !noundef !94
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.b, align 8, !tbaa !95
  %.not = icmp eq i32 %i.f, 3
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 2097272
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !208
  br label %bb.ah

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #33
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 42
  %i.j = load i16, ptr %i.i, align 2, !tbaa !96
  %i.k = zext i16 %i.j to i32                     ; 2 uses
  store i32 %i.k, ptr %2, align 4, !tbaa !230
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.k, ptr %i.l, align 4, !tbaa !231
  %i.m = load ptr, ptr %0, align 8, !tbaa !143    ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 600
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.m, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(8) %2) ; 10 uses
  %i.r = load ptr, ptr %0, align 8, !tbaa !143    ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !20
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 600
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call noundef ptr %i.u(ptr noundef nonnull align 8 dereferenceable(8) %i.r, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(8) %2) ; 4 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !143    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #33
  store i32 512, ptr %3, align 4, !tbaa !230
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 512, ptr %i.x, align 4, !tbaa !231
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 600
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = call noundef ptr %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.w, i32 noundef 3, ptr noundef nonnull align 4 dereferenceable(8) %3) ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #33
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !157 ; 4 uses
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !95
  switch i32 %i.ad, label %bb.l [
    i32 3, label %bb.j
    i32 1, label %bb.e
    i32 2, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  call void @_ZN7Minimap31blitMinimapPixelsToImageSurfaceEPN5video6IImageES2_(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %i.q, ptr noundef %i.v)
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #33
  store i32 -268435456, ptr %1, align 4, !tbaa !212
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 42
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !96 ; 2 uses
  %.not19.i = icmp eq i16 %i.af, 0
  br i1 %.not19.i, label %_ZN7Minimap29blitMinimapPixelsToImageRadarEPN5video6IImageE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.f, %._crit_edge.i
  %.pre.i = phi i16 [ %.pre21.i, %._crit_edge.i ], [ %i.af, %bb.f ] ; 2 uses
  %i.ag = phi ptr [ %i.aj, %._crit_edge.i ], [ %i.ac, %bb.f ] ; 2 uses
  %i.ah = phi i32 [ %i.al, %._crit_edge.i ], [ 0, %bb.f ] ; 2 uses
  %.01117.i = phi i16 [ %i.ak, %._crit_edge.i ], [ 0, %bb.f ]
  %.not20.i = icmp eq i16 %.pre.i, 0
  br i1 %.not20.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.ai = zext i16 %.pre.i to i32
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.i, %.preheader.i
  %.pre21.i = phi i16 [ 0, %.preheader.i ], [ %i.bv, %bb.i ] ; 2 uses
  %i.aj = phi ptr [ %i.ag, %.preheader.i ], [ %i.bt, %bb.i ]
  %i.ak = add i16 %.01117.i, 1                    ; 2 uses
  %i.al = sext i16 %i.ak to i32                   ; 2 uses
  %i.am = zext i16 %.pre21.i to i32
  %i.an = icmp slt i32 %i.al, %i.am
  br i1 %i.an, label %.preheader.i, label %_ZN7Minimap29blitMinimapPixelsToImageRadarEPN5video6IImageE.exit, !llvm.loop !7

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.preheader.i
  %i.ao = phi i32 [ %i.bw, %bb.i ], [ %i.ai, %.lr.ph.preheader.i ] ; 2 uses
  %i.ap = phi ptr [ %i.bt, %bb.i ], [ %i.ag, %.lr.ph.preheader.i ]
  %i.aq = phi i32 [ %i.bs, %bb.i ], [ 0, %.lr.ph.preheader.i ] ; 2 uses
  %.016.i = phi i16 [ %i.br, %bb.i ], [ 0, %.lr.ph.preheader.i ]
  %i.ar = mul nsw i32 %i.aq, %i.ao
  %i.as = add nsw i32 %i.ar, %i.ah
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr [8 x i8], ptr %i.ap, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 106
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !100 ; 2 uses
  %.not.i = icmp eq i16 %i.aw, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.ax = zext i16 %i.aw to i32
  %i.ay = shl nuw nsw i32 %i.ax, 3
  %i.az = add nuw nsw i32 %i.ay, 32
  %i.ba = uitofp nneg i32 %i.az to float
  %i.bb = fadd nsz float %i.ba, 5.000000e-01
  %i.bc = call nsz noundef float @llvm.floor.f32(float %i.bb)
  %i.bd = fptosi float %i.bc to i32
  %i.be = call noundef i32 @llvm.smin.i32(i32 %i.bd, i32 255)
  %i.bf = shl nuw nsw i32 %i.be, 8
  %i.bg = and i32 %i.bf, 65280
  %i.bh = load i32, ptr %1, align 4, !tbaa !212
  %i.bi = and i32 %i.bh, -65281
  %i.bj = or disjoint i32 %i.bi, %i.bg
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph.i
  %i.bk = load i32, ptr %1, align 4, !tbaa !212
  %i.bl = and i32 %i.bk, -65281
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %storemerge.i = phi i32 [ %i.bj, %bb.g ], [ %i.bl, %bb.h ]
  store i32 %storemerge.i, ptr %1, align 4, !tbaa !212
  %i.bm = xor i32 %i.aq, -1
  %i.bn = add nsw i32 %i.ao, %i.bm
  %i.bo = load ptr, ptr %i.q, align 8, !tbaa !20
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(41) %i.q, i32 noundef %i.ah, i32 noundef %i.bn, ptr noundef nonnull align 4 dereferenceable(4) %1, i1 noundef zeroext false), !inline_history !377
  %i.br = add i16 %.016.i, 1                      ; 2 uses
  %i.bs = sext i16 %i.br to i32                   ; 2 uses
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !157 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 42
  %i.bv = load i16, ptr %i.bu, align 2, !tbaa !96 ; 2 uses
  %i.bw = zext i16 %i.bv to i32                   ; 2 uses
  %i.bx = icmp slt i32 %i.bs, %i.bw
  br i1 %i.bx, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !8

_ZN7Minimap29blitMinimapPixelsToImageRadarEPN5video6IImageE.exit: ; preds = %._crit_edge.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #33
  br label %bb.l

bb.j:                                             ; preds = %bb.d
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !144 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.cb = load ptr, ptr %i.bz, align 8, !tbaa !20
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = call noundef ptr %i.cd(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, ptr noundef nonnull align 8 dereferenceable(32) %i.ca, ptr noundef null) ; 6 uses
  %i.cf = load ptr, ptr %0, align 8, !tbaa !143   ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 96
  %i.ch = load i32, ptr %i.cg, align 8, !tbaa !384
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 80
  %i.cj = load ptr, ptr %i.ce, align 8, !tbaa !20
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = call noundef ptr %i.ck(ptr noundef nonnull align 8 dereferenceable(112) %i.ce, i32 noundef 1, i32 noundef 0, i32 noundef 0, i32 noundef 1)
  %i.cm = load ptr, ptr %i.cf, align 8, !tbaa !20
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 592
  %i.co = load ptr, ptr %i.cn, align 8
  %i.cp = call noundef ptr %i.co(ptr noundef nonnull align 8 dereferenceable(8) %i.cf, i32 noundef %i.ch, ptr noundef nonnull align 4 dereferenceable(8) %i.ci, ptr noundef %i.cl, i1 noundef zeroext true, i1 noundef zeroext false) ; 6 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  %.sroa.0.0.copyload = load i32, ptr %9, align 4, !tbaa !196
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %.sroa.4.0.copyload = load i32, ptr %i.cq, align 4, !tbaa !196
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #33
  store i32 -16777216, ptr %4, align 4, !tbaa !212
  %i.cr = load ptr, ptr %i.q, align 8, !tbaa !20
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 80
  %i.ct = load ptr, ptr %i.cs, align 8
  call void %i.ct(ptr noundef nonnull align 8 dereferenceable(41) %i.q, ptr noundef nonnull align 4 dereferenceable(4) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !157 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 42
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !96
  %10 = zext i16 %i.cw to i32                     ; 2 uses
  %11 = sub nsw i32 %10, %.sroa.0.0.copyload
  %12 = ashr i32 %11, 1
  %13 = getelementptr inbounds nuw i8, ptr %i.cu, i64 88
  %14 = load i16, ptr %13, align 8, !tbaa !385
  %15 = sext i16 %14 to i32
  %16 = getelementptr inbounds nuw i8, ptr %i.cu, i64 80
  %17 = load i16, ptr %16, align 8, !tbaa !386
  %18 = zext i16 %17 to i32                       ; 2 uses
  %19 = sdiv i32 %15, %18
  %20 = sub nsw i32 %12, %19
  %21 = sub nsw i32 %10, %.sroa.4.0.copyload
  %22 = ashr i32 %21, 1
  %23 = getelementptr inbounds nuw i8, ptr %i.cu, i64 92
  %24 = load i16, ptr %23, align 4, !tbaa !387
  %25 = sext i16 %24 to i32
  %26 = sdiv i32 %25, %18
  %27 = add nsw i32 %26, %22
  store i32 %20, ptr %5, align 4, !tbaa !227
  %28 = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 %27, ptr %28, align 4, !tbaa !228
  %i.cx = load ptr, ptr %i.cp, align 8, !tbaa !20
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 56
  %i.cz = load ptr, ptr %i.cy, align 8
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(41) %i.cp, ptr noundef nonnull %i.q, ptr noundef nonnull align 4 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  %i.da = load ptr, ptr %i.cp, align 8, !tbaa !20
  %i.db = getelementptr i8, ptr %i.da, i64 -24
  %i.dc = load i64, ptr %i.db, align 8
  %i.dd = getelementptr inbounds i8, ptr %i.cp, i64 %i.dc ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 2 uses
  %i.df = load i32, ptr %i.de, align 8, !tbaa !161
  %i.dg = add nsw i32 %i.df, -1                   ; 2 uses
  store i32 %i.dg, ptr %i.de, align 8, !tbaa !161
  %.not.i43 = icmp eq i32 %i.dg, 0
  br i1 %.not.i43, label %bb.k, label %_ZNK17IReferenceCounted4dropEv.exit

bb.k:                                             ; preds = %bb.j
  %i.dh = load ptr, ptr %i.dd, align 8, !tbaa !20
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(12) %i.dd) #33, !inline_history !6
  br label %_ZNK17IReferenceCounted4dropEv.exit

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.j, %bb.k
  %i.dk = load ptr, ptr %i.ce, align 8, !tbaa !20
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(112) %i.ce)
  br label %bb.l

bb.l:                                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit, %_ZN7Minimap29blitMinimapPixelsToImageRadarEPN5video6IImageE.exit, %bb.e, %bb.d
  %i.dn = load ptr, ptr %i.q, align 8, !tbaa !20
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 48
  %i.dp = load ptr, ptr %i.do, align 8
  call void %i.dp(ptr noundef nonnull align 8 dereferenceable(41) %i.q, ptr noundef %i.ab)
  %i.dq = load ptr, ptr %i.q, align 8, !tbaa !20
  %i.dr = getelementptr i8, ptr %i.dq, i64 -24
  %i.ds = load i64, ptr %i.dr, align 8
  %i.dt = getelementptr inbounds i8, ptr %i.q, i64 %i.ds ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 2 uses
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !161
  %i.dw = add nsw i32 %i.dv, -1                   ; 2 uses
  store i32 %i.dw, ptr %i.du, align 8, !tbaa !161
  %.not.i44 = icmp eq i32 %i.dw, 0
  br i1 %.not.i44, label %bb.m, label %_ZNK17IReferenceCounted4dropEv.exit45

bb.m:                                             ; preds = %bb.l
  %i.dx = load ptr, ptr %i.dt, align 8, !tbaa !20
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(12) %i.dt) #33, !inline_history !6
  br label %_ZNK17IReferenceCounted4dropEv.exit45

_ZNK17IReferenceCounted4dropEv.exit45:            ; preds = %bb.l, %bb.m
  %i.ea = call noundef ptr @_ZN7Minimap14getMinimapMaskEv(ptr noundef nonnull align 8 dereferenceable(192) %0) ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %_ZNK17IReferenceCounted4dropEv.exit45, %bb.o
  %indvars.iv94 = phi i32 [ 0, %_ZNK17IReferenceCounted4dropEv.exit45 ], [ %indvars.iv.next95, %bb.o ] ; 3 uses
  br label %bb.p

bb.n:                                             ; preds = %bb.o
  %i.eb = load ptr, ptr %i.a, align 8, !tbaa !157 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 2097272
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !208 ; 2 uses
  %.not39 = icmp eq ptr %i.ed, null
  br i1 %.not39, label %bb.t, label %bb.s

bb.o:                                             ; preds = %bb.r
  %indvars.iv.next95 = add nuw nsw i32 %indvars.iv94, 1 ; 2 uses
  %exitcond97.not = icmp eq i32 %indvars.iv.next95, 512
  br i1 %exitcond97.not, label %bb.n, label %.preheader, !llvm.loop !375

bb.p:                                             ; preds = %.preheader, %bb.r
  %indvars.iv = phi i32 [ 0, %.preheader ], [ %indvars.iv.next, %bb.r ] ; 3 uses
  %i.ee = load ptr, ptr %i.ea, align 8, !tbaa !20
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = call i32 %i.eg(ptr noundef nonnull align 8 dereferenceable(41) %i.ea, i32 noundef %indvars.iv, i32 noundef %indvars.iv94)
  %.not42 = icmp ult i32 %i.eh, 16777216
  br i1 %.not42, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  store i32 0, ptr %6, align 4, !tbaa !212
  %i.ei = load ptr, ptr %i.ab, align 8, !tbaa !20
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8
  call void %i.ek(ptr noundef nonnull align 8 dereferenceable(41) %i.ab, i32 noundef %indvars.iv, i32 noundef %indvars.iv94, ptr noundef nonnull align 4 dereferenceable(4) %6, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i32 %indvars.iv.next, 512
  br i1 %exitcond.not, label %bb.o, label %bb.p, !llvm.loop !376

bb.s:                                             ; preds = %bb.n
  %i.el = load ptr, ptr %0, align 8, !tbaa !143   ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !20
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 192
  %i.eo = load ptr, ptr %i.en, align 8
  call void %i.eo(ptr noundef nonnull align 8 dereferenceable(8) %i.el, ptr noundef nonnull %i.ed)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !157
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %i.ep = phi ptr [ %.pre, %bb.s ], [ %i.eb, %bb.n ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 2097280
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !209 ; 2 uses
  %.not40 = icmp eq ptr %i.er, null
  br i1 %.not40, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.es = load ptr, ptr %0, align 8, !tbaa !143   ; 2 uses
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !20
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 192
  %i.ev = load ptr, ptr %i.eu, align 8
  call void %i.ev(ptr noundef nonnull align 8 dereferenceable(8) %i.es, ptr noundef nonnull %i.er)
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %i.ew = load ptr, ptr %0, align 8, !tbaa !143   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.ex = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  store ptr %i.ex, ptr %7, align 8, !tbaa !151
  %i.ey = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i64 0, ptr %i.ey, align 8, !tbaa !155
  store i8 0, ptr %i.ex, align 8, !tbaa !154
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 9, i8 noundef signext 0)
          to label %.lr.ph.i70.preheader unwind label %bb.x

.lr.ph.i70.preheader:                             ; preds = %bb.v
  %i.ez = load ptr, ptr %7, align 8, !tbaa !153
  store i8 109, ptr %i.ez, align 1, !tbaa !154
  %i.fa = load ptr, ptr %7, align 8, !tbaa !153
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 1
  store i8 105, ptr %i.fb, align 1, !tbaa !154
  %i.fc = load ptr, ptr %7, align 8, !tbaa !153
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 2
  store i8 110, ptr %i.fd, align 1, !tbaa !154
  %i.fe = load ptr, ptr %7, align 8, !tbaa !153
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 3
  store i8 105, ptr %i.ff, align 1, !tbaa !154
  %i.fg = load ptr, ptr %7, align 8, !tbaa !153
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4
  store i8 109, ptr %i.fh, align 1, !tbaa !154
  %i.fi = load ptr, ptr %7, align 8, !tbaa !153
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 5
  store i8 97, ptr %i.fj, align 1, !tbaa !154
  %i.fk = load ptr, ptr %7, align 8, !tbaa !153
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 6
  store i8 112, ptr %i.fl, align 1, !tbaa !154
  %i.fm = load ptr, ptr %7, align 8, !tbaa !153
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 7
  store i8 95, ptr %i.fn, align 1, !tbaa !154
  %i.fo = load ptr, ptr %7, align 8, !tbaa !153
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 8
  store i8 95, ptr %i.fp, align 1, !tbaa !154
  %i.fq = load i64, ptr %i.ey, align 8, !tbaa !155
  %i.fr = icmp ugt i64 %i.fq, 9
  br i1 %i.fr, label %bb.w, label %_ZN4core6stringIcEC2IcEEPKT_.exit

bb.w:                                             ; preds = %.lr.ph.i70.preheader
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %7, i64 noundef 9, i8 noundef signext 0)
          to label %_ZN4core6stringIcEC2IcEEPKT_.exit unwind label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.fs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ft = load ptr, ptr %7, align 8, !tbaa !153   ; 2 uses
  %i.fu = icmp eq ptr %i.ft, %i.ex
  br i1 %i.fu, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.x
  %i.fv = load i64, ptr %i.ex, align 8, !tbaa !154
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.ft, i64 noundef %i.fw) #30
  br label %common.resume

common.resume:                                    ; preds = %bb.aa, %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.ag
  %common.resume.op = phi { ptr, i32 } [ %.pn, %bb.ag ], [ %i.fs, %bb.x ], [ %i.fs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.hg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i49 ], [ %i.hg, %bb.aa ]
  resume { ptr, i32 } %common.resume.op

_ZN4core6stringIcEC2IcEEPKT_.exit:                ; preds = %.lr.ph.i70.preheader, %bb.w
  %i.fx = load ptr, ptr %i.ew, align 8, !tbaa !20
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 136
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = invoke noundef ptr %i.fz(ptr noundef nonnull align 8 dereferenceable(8) %i.ew, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %i.ab)
          to label %bb.y unwind label %bb.ae

bb.y:                                             ; preds = %_ZN4core6stringIcEC2IcEEPKT_.exit
  %i.gb = load ptr, ptr %i.a, align 8, !tbaa !157
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 2097272
  store ptr %i.ga, ptr %i.gc, align 8, !tbaa !208
  %i.gd = load ptr, ptr %7, align 8, !tbaa !153   ; 2 uses
  %i.ge = icmp eq ptr %i.gd, %i.ex
  br i1 %i.ge, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i48, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i46: ; preds = %bb.y
end_hunk_0
