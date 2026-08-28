Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/clipper?download=true
inline.NumInlined: 2345
inline.NumDeleted: 743
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN10ClipperLib7Clipper17ProcessHorizontalEPNS_5TEdgeE:bb.a

bb.dr:                                            ; preds = %bb.dq
  %i.tg = getelementptr inbounds nuw i8, ptr %i.rq, i64 40
  %i.th = load i64, ptr %i.tg, align 8
  %i.ti = icmp sgt i64 %i.sx, %i.th
  br i1 %i.ti, label %bb.ds, label %_ZN10ClipperLib11ClipperBase13DeleteFromAELEPNS_5TEdgeE.exit222

bb.ds:                                            ; preds = %bb.dr
  %i.tj = load ptr, ptr %0, align 8
  %i.tk = getelementptr i8, ptr %i.tj, i64 -24
  %i.tl = load i64, ptr %i.tk, align 8
  %i.tm = getelementptr inbounds i8, ptr %0, i64 %i.tl
  %i.tn = getelementptr inbounds nuw i8, ptr %i.tm, i64 40
  %i.to = load i8, ptr %i.tn, align 8, !range !6, !noundef !7
  %i.tp = trunc nuw i8 %i.to to i1
  %i.tq = tail call noundef zeroext i1 @_ZN10ClipperLib11SlopesEqualERKNS_5TEdgeES2_b(ptr noundef nonnull align 8 dereferenceable(136) %i.rj, ptr noundef nonnull align 8 dereferenceable(136) %i.rq, i1 noundef zeroext %i.tp)
  br i1 %i.tq, label %bb.dt, label %_ZN10ClipperLib11ClipperBase13DeleteFromAELEPNS_5TEdgeE.exit222

bb.dt:                                            ; preds = %bb.ds
  %i.tr = tail call noundef ptr @_ZN10ClipperLib7Clipper8AddOutPtEPNS_5TEdgeERKNS_8IntPointE(ptr noundef nonnull align 8 dereferenceable(135) %0, ptr noundef nonnull %i.rq, ptr noundef nonnull align 8 dereferenceable(16) %i.rj)
  %i.ts = getelementptr inbounds nuw i8, ptr %i.rj, i64 32
  %.sroa.0.0.copyload = load i64, ptr %i.ts, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.rj, i64 40
  %.sroa.2.0.copyload = load i64, ptr %.sroa.2.0..sroa_idx, align 8
  tail call void @_ZN10ClipperLib7Clipper7AddJoinEPNS_5OutPtES2_NS_8IntPointE(ptr noundef nonnull align 8 dereferenceable(135) %0, ptr noundef %i.re, ptr noundef %i.tr, i64 %.sroa.0.0.copyload, i64 %.sroa.2.0.copyload)
  br label %_ZN10ClipperLib11ClipperBase13DeleteFromAELEPNS_5TEdgeE.exit222

bb.du:                                            ; preds = %bb.dc
  %i.tt = load ptr, ptr %0, align 8
  %i.tu = getelementptr i8, ptr %i.tt, i64 -24
  %i.tv = load i64, ptr %i.tu, align 8
  %i.tw = getelementptr inbounds i8, ptr %0, i64 %i.tv
  call void @_ZN10ClipperLib11ClipperBase17UpdateEdgeIntoAELERPNS_5TEdgeE(ptr noundef nonnull align 8 dereferenceable(144) %i.tw, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN10ClipperLib11ClipperBase13DeleteFromAELEPNS_5TEdgeE.exit222

bb.dv:                                            ; preds = %bb.db
  br i1 %i.rc, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.tx = getelementptr inbounds nuw i8, ptr %i.ok, i64 32
  %i.ty = tail call noundef ptr @_ZN10ClipperLib7Clipper8AddOutPtEPNS_5TEdgeERKNS_8IntPointE(ptr noundef nonnull align 8 dereferenceable(135) %0, ptr noundef nonnull %i.ok, ptr noundef nonnull align 8 dereferenceable(16) %i.tx) ; 0 uses
  br label %bb.dx

bb.dx:                                            ; preds = %bb.dw, %bb.dv
  %i.tz = load ptr, ptr %0, align 8
  %i.ua = getelementptr i8, ptr %i.tz, i64 -24
  %i.ub = load i64, ptr %i.ua, align 8
  %i.uc = getelementptr inbounds i8, ptr %0, i64 %i.ub
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ok, i64 112
  %i.ue = load ptr, ptr %i.ud, align 8            ; 3 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %i.ok, i64 104 ; 2 uses
  %i.ug = load ptr, ptr %i.uf, align 8            ; 4 uses
  %i.uh = icmp ne ptr %i.ue, null                 ; 2 uses
  %i.ui = icmp ne ptr %i.ug, null                 ; 2 uses
  %or.cond.i219 = select i1 %i.uh, i1 true, i1 %i.ui
  %i.uj = getelementptr inbounds nuw i8, ptr %i.uc, i64 104 ; 2 uses
  %i.uk = load ptr, ptr %i.uj, align 8
  %.not.i220 = icmp eq ptr %i.ok, %i.uk
  %or.cond18.i221 = select i1 %or.cond.i219, i1 true, i1 %.not.i220
  br i1 %or.cond18.i221, label %bb.dy, label %_ZN10ClipperLib11ClipperBase13DeleteFromAELEPNS_5TEdgeE.exit222

bb.dy:                                            ; preds = %bb.dx
  br i1 %i.uh, label %bb.dz, label %bb.ea

bb.dz:                                            ; preds = %bb.dy
  %i.ul = getelementptr inbounds nuw i8, ptr %i.ue, i64 104
  store ptr %i.ug, ptr %i.ul, align 8
  br label %bb.eb

bb.ea:                                            ; preds = %bb.dy
  store ptr %i.ug, ptr %i.uj, align 8
  br label %bb.eb

bb.eb:                                            ; preds = %bb.ea, %bb.dz
  br i1 %i.ui, label %bb.ec, label %bb.ed

bb.ec:                                            ; preds = %bb.eb
  %i.um = getelementptr inbounds nuw i8, ptr %i.ug, i64 112
  store ptr %i.ue, ptr %i.um, align 8
  br label %bb.ed

bb.ed:                                            ; preds = %bb.ec, %bb.eb
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.uf, i8 0, i64 16, i1 false)
  br label %_ZN10ClipperLib11ClipperBase13DeleteFromAELEPNS_5TEdgeE.exit222

_ZN10ClipperLib11ClipperBase13DeleteFromAELEPNS_5TEdgeE.exit222: ; preds = %bb.bp, %_ZN10ClipperLib11ClipperBase13DeleteFromAELEPNS_5TEdgeE.exit, %bb.ed, %bb.dx, %bb.du, %bb.dm, %bb.dn, %bb.do, %bb.dp, %bb.dq, %bb.dr, %bb.ds, %bb.dt, %bb.dl, %bb.dd
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN10ClipperLib13GetMaximaPairEPNS_5TEdgeE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.c, align 8
  %i.f = load i64, ptr %i.d, align 8              ; 2 uses
  %i.g = icmp eq i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq i64 %i.i, %i.k
  %i.m = select i1 %i.g, i1 %i.l, i1 false
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.o = load ptr, ptr %i.n, align 8
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = load ptr, ptr %i.p, align 8              ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load i64, ptr %i.r, align 8
  %i.t = icmp eq i64 %i.s, %i.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.v = load i64, ptr %i.u, align 8
  %i.w = icmp eq i64 %i.v, %i.k
  %i.x = select i1 %i.t, i1 %i.w, i1 false
  br i1 %i.x, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.z = load ptr, ptr %i.y, align 8
  %.not9 = icmp eq ptr %i.z, null
  br i1 %.not9, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.b, %bb.e
  %.0 = phi ptr [ null, %bb.e ], [ %i.b, %bb.b ], [ %i.q, %bb.d ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef ptr @_ZN10ClipperLib15GetMaximaPairExEPNS_5TEdgeE(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load i64, ptr %i.c, align 8
  %i.f = load i64, ptr %i.d, align 8              ; 2 uses
  %i.g = icmp eq i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.i = load i64, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq i64 %i.i, %i.k
  %i.m = select i1 %i.g, i1 %i.l, i1 false
  br i1 %i.m, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.o = load ptr, ptr %i.n, align 8
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.q = load ptr, ptr %i.p, align 8              ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load i64, ptr %i.r, align 8
  %i.t = icmp eq i64 %i.s, %i.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 40
  %i.v = load i64, ptr %i.u, align 8
  %i.w = icmp eq i64 %i.v, %i.k
  %i.x = select i1 %i.t, i1 %i.w, i1 false
  br i1 %i.x, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 96
  %i.z = load ptr, ptr %i.y, align 8
  %.not9.i = icmp eq ptr %i.z, null
  br i1 %.not9.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.b, %bb.d
  %.0.i.ph = phi ptr [ %i.q, %bb.d ], [ %i.b, %bb.b ] ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.ph, i64 76
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = icmp eq i32 %i.ab, -2
  br i1 %i.ac, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %.0.i.ph, i64 104
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.ph, i64 112
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = icmp eq ptr %i.ae, %i.ag
  br i1 %i.ah, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i.ph, i64 48
  %i.aj = load double, ptr %i.ai, align 8
  %i.ak = fcmp oeq double %i.aj, -1.000000e+40
  br i1 %i.ak, label %_ZN10ClipperLib13GetMaximaPairEPNS_5TEdgeE.exit, label %bb.h

_ZN10ClipperLib13GetMaximaPairEPNS_5TEdgeE.exit:  ; preds = %bb.g
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.c, %bb.d, %bb.e, %bb.g, %_ZN10ClipperLib13GetMaximaPairEPNS_5TEdgeE.exit
  %.0 = phi ptr [ null, %bb.e ], [ null, %bb.g ], [ %.0.i.ph, %bb.f ], [ null, %bb.c ], [ null, %bb.d ], [ %.0.i.ph, %_ZN10ClipperLib13GetMaximaPairEPNS_5TEdgeE.exit ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZN10ClipperLib7Clipper18SwapPositionsInSELEPNS_5TEdgeES2_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(135) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %.not = icmp eq ptr %i.b, null                  ; 3 uses
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.d = load ptr, ptr %i.c, align 8
  %.not76 = icmp eq ptr %i.d, null
  br i1 %.not76, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 120 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 6 uses
  %.not77 = icmp eq ptr %i.f, null
  br i1 %.not77, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.h = load ptr, ptr %i.g, align 8
  %.not78 = icmp eq ptr %i.h, null
  br i1 %.not78, label %bb.x, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = icmp eq ptr %i.b, %2
  br i1 %i.i, label %bb.g, label %bb.o

.thread:                                          ; preds = %bb.c
  %i.j = icmp eq ptr %i.b, %2
  br i1 %i.j, label %bb.f, label %.thread90

bb.f:                                             ; preds = %.thread
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  store ptr %1, ptr %i.k, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %.not86 = icmp eq ptr %i.m, null
  br i1 %.not86, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 120
  store ptr %2, ptr %i.n, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 128
  store ptr %i.m, ptr %i.o, align 8
  store ptr %1, ptr %i.e, align 8
  store ptr %2, ptr %i.l, align 8
  store ptr %i.f, ptr %i.a, align 8
  br label %bb.v

.thread90:                                        ; preds = %.thread
  %i.p = icmp eq ptr %i.f, %1
  br i1 %i.p, label %bb.j, label %.thread91

.thread91:                                        ; preds = %.thread90
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8
  store ptr %i.f, ptr %i.a, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  store ptr %1, ptr %i.s, align 8
  br label %bb.p

bb.j:                                             ; preds = %.thread90
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %2, ptr %i.t, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 3 uses
  %.not84 = icmp eq ptr %i.v, null
  br i1 %.not84, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  store ptr %1, ptr %i.w, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 128
  store ptr %i.v, ptr %i.x, align 8
  store ptr %2, ptr %i.a, align 8
  store ptr %1, ptr %i.u, align 8
  store ptr %i.b, ptr %i.e, align 8
  br label %bb.v

bb.o:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8
  store ptr null, ptr %i.a, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread91
  %i.aa = phi ptr [ %i.r, %.thread91 ], [ %i.z, %bb.o ] ; 3 uses
  %i.ab = phi ptr [ %i.q, %.thread91 ], [ %i.y, %bb.o ]
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 128 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8            ; 3 uses
  store ptr %i.ad, ptr %i.ab, align 8
  %.not80 = icmp eq ptr %i.ad, null
  br i1 %.not80, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 120
  store ptr %1, ptr %i.ae, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  store ptr %i.b, ptr %i.e, align 8
  br i1 %.not, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %2, ptr %i.af, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  store ptr %i.aa, ptr %i.ac, align 8
  %.not82 = icmp eq ptr %i.aa, null
  br i1 %.not82, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 120
  store ptr %2, ptr %i.ag, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u, %bb.n, %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not87 = icmp eq ptr %i.ai, null
  br i1 %.not87, label %.sink.split, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aj = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ak = load ptr, ptr %i.aj, align 8
  %.not88 = icmp eq ptr %i.ak, null
  br i1 %.not88, label %.sink.split, label %bb.x

.sink.split:                                      ; preds = %bb.w, %bb.v
  %.sink = phi ptr [ %1, %bb.v ], [ %2, %bb.w ]
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %.sink, ptr %i.al, align 8
  br label %bb.x

bb.x:                                             ; preds = %.sink.split, %bb.w, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef ptr @_ZN10ClipperLib12GetNextInAELEPNS_5TEdgeENS_9DirectionE(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i32 %1, 1
  %.in.v = select i1 %i.a, i64 104, i64 112
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 %.in.v
  %i.b = load ptr, ptr %.in, align 8
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN10ClipperLib16GetHorzDirectionERNS_5TEdgeERNS_9DirectionERxS4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(136) %0, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %1, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = load i64, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = icmp slt i64 %i.a, %i.c                  ; 2 uses
  %. = tail call i64 @llvm.smin.i64(i64 %i.a, i64 %i.c)
  %.16 = zext i1 %i.d to i32
  store i64 %., ptr %2, align 8
  %.val = load i64, ptr %i.b, align 8
  %.val17 = load i64, ptr %0, align 8
  %storemerge13 = select i1 %i.d, i64 %.val, i64 %.val17
  store i64 %storemerge13, ptr %3, align 8
  store i32 %.16, ptr %1, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN10ClipperLib7Clipper18BuildIntersectListEx(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(135) %0, i64 noundef %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.ClipperLib::IntPoint", align 8 ; 7 uses
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 -24
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %.not = icmp eq ptr %i.f, null
end_hunk_0
