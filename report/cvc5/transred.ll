Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cvc5/original/transred?download=true
inline.NumInlined: 217
inline.NumDeleted: 117
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::vector.20" = type { %"struct.std::_Vector_base.21" }
%"struct.std::_Vector_base.21" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZNSt6vectorIiSaIiEE9push_backERKi = comdat any

$_ZNSt6vectorImSaImEE9push_backERKm = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal8transredEv(ptr noundef nonnull align 8 dereferenceable(5704) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::vector.20", align 8    ; 18 uses
  %i.a = alloca i32, align 4                      ; 7 uses
  %2 = alloca %"class.std::vector.20", align 8    ; 11 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.e = load i8, ptr %i.d, align 4, !tbaa !169, !range !170, !noundef !171
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5680 ; 4 uses
  %i.h = load volatile i8, ptr %i.g, align 8, !tbaa !172, !range !170, !noundef !171
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2960 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2964 ; 4 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !173  ; 3 uses
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = add nsw i32 %i.l, -1
  store i32 %i.m, ptr %i.k, align 4, !tbaa !173
  %i.n = icmp eq i32 %i.l, 1
  br i1 %i.n, label %.sink.split.i, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 5672 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !174
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 360
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !193  ; 3 uses
  %.not3.i = icmp eq ptr %i.r, null
  br i1 %.not3.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i32, ptr %i.j, align 8, !tbaa !194  ; 2 uses
  %i.t = add nsw i32 %i.s, -1
  store i32 %i.t, ptr %i.j, align 8, !tbaa !194
  %.not4.i = icmp eq i32 %i.s, 0
  br i1 %.not4.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3800
  %i.v = load i32, ptr %i.u, align 8, !tbaa !195
  store i32 %i.v, ptr %i.j, align 8, !tbaa !194
  %i.w = load ptr, ptr %i.r, align 8, !tbaa !197
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call noundef zeroext i1 %i.y(ptr noundef nonnull align 8 dereferenceable(8) %i.r), !inline_history !22
  br i1 %i.z, label %.sink.split.i, label %bb.h

.sink.split.i:                                    ; preds = %bb.g, %bb.d
  store volatile i8 1, ptr %i.g, align 8, !tbaa !172
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4208
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !198
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 4216
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !199
  %.not144 = icmp eq i64 %i.ad, 0
  br i1 %.not144, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !200, !range !170, !noundef !171
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %._crit_edge404, label %bb.k

._crit_edge404:                                   ; preds = %bb.j
  %.pre = load i32, ptr %0, align 8, !tbaa !201
  br label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !202, !range !170, !noundef !171
  %i.aj = trunc nuw i8 %i.ai to i1
  %.pre405 = load i32, ptr %0, align 8, !tbaa !201 ; 2 uses
  br i1 %i.aj, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = and i32 %.pre405, -257                  ; 2 uses
  store i32 %i.ak, ptr %0, align 8, !tbaa !201
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge404, %bb.l, %bb.k
  %i.al = phi i32 [ %.pre, %._crit_edge404 ], [ %i.ak, %bb.l ], [ %.pre405, %bb.k ]
  %i.am = or i32 %i.al, 4608
  store i32 %i.am, ptr %0, align 8, !tbaa !201
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 5120 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !203
  %i.ap = add nsw i64 %i.ao, 1
  store i64 %i.ap, ptr %i.an, align 8, !tbaa !203
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 3960 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !204
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2968 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !205
  %i.au = sub nsw i64 %i.ar, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 3844
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !206
  %i.ax = sitofp i32 %i.aw to double
  %i.ay = fmul nnan double %i.ax, 1.000000e-03
  %i.az = sitofp i64 %i.au to double
  %i.ba = fmul double %i.ay, %i.az
  %i.bb = fptosi double %i.ba to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 3840
  %i.bd = load i32, ptr %i.bc, align 8, !tbaa !207
  %i.be = sext i32 %i.bd to i64
  %spec.select = tail call i64 @llvm.smax.i64(i64 %i.bb, i64 %i.be)
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 3836
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !208
  %i.bh = sext i32 %i.bg to i64
  %.1 = tail call i64 @llvm.smin.i64(i64 %spec.select, i64 %i.bh)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 2208 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 2216
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !209 ; 6 uses
  %i.bl = load ptr, ptr %i.bi, align 8, !tbaa !209 ; 5 uses
  %.not268336 = icmp eq ptr %i.bl, %i.bk
  br i1 %.not268336, label %._crit_edge343, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %bb.p
  %.sroa.0238.0337 = phi ptr [ %i.bu, %bb.p ], [ %i.bl, %bb.m ] ; 3 uses
  %i.bm = load ptr, ptr %.sroa.0238.0337, align 8, !tbaa !210 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = load i32, ptr %i.bn, align 8            ; 3 uses
  %i.bp = and i32 %i.bo, 16
  %.not145 = icmp eq i32 %i.bp, 0
  br i1 %.not145, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.lr.ph
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.br = load i32, ptr %i.bq, align 8, !tbaa !14
  %.not146 = icmp eq i32 %i.br, 2
  br i1 %.not146, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bs = and i32 %i.bo, 2112
  %or.cond171 = icmp ne i32 %i.bs, 2112
  %i.bt = and i32 %i.bo, 4096
  %.not149 = icmp eq i32 %i.bt, 0
  %or.cond263 = and i1 %or.cond171, %.not149
  br i1 %or.cond263, label %._crit_edge, label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.n, %bb.o
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.0238.0337, i64 8 ; 3 uses
  %.not268 = icmp eq ptr %i.bu, %i.bk
  br i1 %.not268, label %._crit_edge, label %.lr.ph, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.p, %bb.o
  %.sroa.0238.0.lcssa = phi ptr [ %.sroa.0238.0337, %bb.o ], [ %i.bu, %bb.p ] ; 2 uses
  %.not530 = icmp eq ptr %.sroa.0238.0.lcssa, %i.bk ; 2 uses
  %.sroa.0238.0.lcssa.mux = select i1 %.not530, ptr %i.bl, ptr %.sroa.0238.0.lcssa
  br i1 %.not530, label %.lr.ph342, label %._crit_edge343

.lr.ph342:                                        ; preds = %._crit_edge, %bb.r
  %.sroa.0238.1341 = phi ptr [ %i.ca, %bb.r ], [ %i.bl, %._crit_edge ] ; 2 uses
  %i.bv = load ptr, ptr %.sroa.0238.1341, align 8, !tbaa !210
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8            ; 2 uses
  %i.by = and i32 %i.bx, 4096
  %.not170 = icmp eq i32 %i.by, 0
  br i1 %.not170, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph342
  %i.bz = and i32 %i.bx, -4097
  store i32 %i.bz, ptr %i.bw, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph342
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0238.1341, i64 8 ; 2 uses
  %.not269 = icmp eq ptr %i.ca, %i.bk
  br i1 %.not269, label %._crit_edge343.loopexit, label %.lr.ph342, !llvm.loop !24

._crit_edge343.loopexit:                          ; preds = %bb.r
  %.pre406 = load ptr, ptr %i.bi, align 8, !tbaa !209
  br label %._crit_edge343

._crit_edge343:                                   ; preds = %._crit_edge, %bb.m, %._crit_edge343.loopexit
  %.sroa.0238.2 = phi ptr [ %i.bl, %bb.m ], [ %.sroa.0238.0.lcssa.mux, %._crit_edge ], [ %.pre406, %._crit_edge343.loopexit ] ; 2 uses
  tail call void @_ZN7CaDiCaL8Internal12sort_watchesEv(ptr noundef nonnull align 8 dereferenceable(5704) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.cb = load i8, ptr %i.d, align 4, !tbaa !169, !range !170, !noundef !171
  %i.cc = trunc nuw i8 %i.cb to i1
  %i.cd = icmp eq ptr %.sroa.0238.2, %i.bk
  %or.cond265.not354 = select i1 %i.cc, i1 true, i1 %i.cd
  br i1 %or.cond265.not354, label %.critedge, label %.lr.ph360

.lr.ph360:                                        ; preds = %._crit_edge343
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 3800
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 9 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 9 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 5256 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 5280 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 5128 ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph360, %bb.cl
  %.0111358 = phi i64 [ 0, %.lr.ph360 ], [ %.3114, %bb.cl ] ; 11 uses
  %.0128357 = phi i64 [ 0, %.lr.ph360 ], [ %.3131, %bb.cl ] ; 12 uses
  %.0132356 = phi i64 [ 0, %.lr.ph360 ], [ %.3135, %bb.cl ] ; 11 uses
  %.sroa.0238.3355 = phi ptr [ %.sroa.0238.2, %.lr.ph360 ], [ %i.dm, %bb.cl ] ; 2 uses
  %i.cw = load volatile i8, ptr %i.g, align 8, !tbaa !172, !range !170, !noundef !171
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cy = load i32, ptr %i.k, align 4, !tbaa !173 ; 3 uses
  %.not.i178 = icmp eq i32 %i.cy, 0
  br i1 %.not.i178, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cz = add nsw i32 %i.cy, -1
  store i32 %i.cz, ptr %i.k, align 4, !tbaa !173
  %i.da = icmp eq i32 %i.cy, 1
  br i1 %i.da, label %.sink.split.i182, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.db = load ptr, ptr %i.o, align 8, !tbaa !174
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 360
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !193 ; 3 uses
  %.not3.i179 = icmp eq ptr %i.dd, null
  br i1 %.not3.i179, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit183, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.de = load i32, ptr %i.j, align 8, !tbaa !194 ; 2 uses
  %i.df = add nsw i32 %i.de, -1
  store i32 %i.df, ptr %i.j, align 8, !tbaa !194
  %.not4.i180 = icmp eq i32 %i.de, 0
  br i1 %.not4.i180, label %bb.x, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit183

bb.x:                                             ; preds = %bb.w
  %i.dg = load i32, ptr %i.ce, align 8, !tbaa !195
  store i32 %i.dg, ptr %i.j, align 8, !tbaa !194
  %i.dh = load ptr, ptr %i.dd, align 8, !tbaa !197
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = invoke noundef zeroext i1 %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %i.dd)
          to label %.noexc unwind label %.loopexit278, !inline_history !22

.noexc:                                           ; preds = %bb.x
  br i1 %i.dk, label %.sink.split.i182, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit183

.sink.split.i182:                                 ; preds = %.noexc, %bb.u
  store volatile i8 1, ptr %i.g, align 8, !tbaa !172
  br label %.critedge

_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit183: ; preds = %.noexc, %bb.w, %bb.v
  %i.dl = icmp slt i64 %.0111358, %.1
  br i1 %i.dl, label %bb.y, label %.critedge

bb.y:                                             ; preds = %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit183
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.0238.3355, i64 8 ; 2 uses
  %i.dn = load ptr, ptr %.sroa.0238.3355, align 8, !tbaa !210 ; 6 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 3 uses
  %i.dp = load i32, ptr %i.do, align 8            ; 4 uses
  %i.dq = and i32 %i.dp, 16
  %.not150 = icmp eq i32 %i.dq, 0
  br i1 %.not150, label %bb.z, label %bb.cl, !llvm.loop !25

.loopexit278:                                     ; preds = %bb.x
  %lpad.loopexit280 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

.loopexit.split-lp279:                            ; preds = %bb.ct
  %lpad.loopexit.split-lp281 = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.z:                                             ; preds = %bb.y
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !14
  %.not151 = icmp eq i32 %i.ds, 2
  br i1 %.not151, label %bb.aa, label %bb.cl, !llvm.loop !25

bb.aa:                                            ; preds = %bb.z
  %i.dt = and i32 %i.dp, 2112
  %or.cond174 = icmp ne i32 %i.dt, 2112
  %i.du = and i32 %i.dp, 4096
  %.not154 = icmp eq i32 %i.du, 0
  %or.cond266 = and i1 %or.cond174, %.not154
  br i1 %or.cond266, label %bb.ab, label %bb.cl, !llvm.loop !25

bb.ab:                                            ; preds = %bb.aa
  %i.dv = or disjoint i32 %i.dp, 4096
  store i32 %i.dv, ptr %i.do, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !14 ; 4 uses
  %i.dy = sub nsw i32 0, %i.dx                    ; 3 uses
  store i32 %i.dy, ptr %i.a, align 4, !tbaa !14
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dn, i64 28
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !14 ; 5 uses
  %i.eb = load ptr, ptr %i.cf, align 8, !tbaa !212 ; 2 uses
  %i.ec = sext i32 %i.dy to i64
  %i.ed = getelementptr inbounds i8, ptr %i.eb, i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !213
  %.not155 = icmp eq i8 %i.ee, 0
  br i1 %.not155, label %bb.ac, label %bb.ck, !llvm.loop !25

bb.ac:                                            ; preds = %bb.ab
  %i.ef = sext i32 %i.ea to i64
  %i.eg = getelementptr inbounds i8, ptr %i.eb, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !213
  %.not156 = icmp eq i8 %i.eh, 0
  br i1 %.not156, label %bb.ad, label %bb.ck, !llvm.loop !25

bb.ad:                                            ; preds = %bb.ac
  %i.ei = call noundef i32 @llvm.abs.i32(i32 %i.dx, i1 true)
  %i.ej = call noundef i32 @llvm.fshl.i32(i32 %i.ei, i32 %i.dx, i32 1)
  %i.ek = zext i32 %i.ej to i64
  %i.el = load ptr, ptr %i.cg, align 8, !tbaa !214 ; 2 uses
  %i.em = getelementptr inbounds nuw [24 x i8], ptr %i.el, i64 %i.ek ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !217
  %i.ep = load ptr, ptr %i.em, align 8, !tbaa !218
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = ptrtoint ptr %i.ep to i64
  %i.es = sub i64 %i.eq, %i.er
  %i.et = call noundef i32 @llvm.abs.i32(i32 %i.ea, i1 true)
  %i.eu = call noundef i32 @llvm.fshl.i32(i32 %i.et, i32 %i.ea, i32 1)
  %i.ev = zext i32 %i.eu to i64
  %i.ew = getelementptr inbounds nuw [24 x i8], ptr %i.el, i64 %i.ev ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !217
  %i.ez = load ptr, ptr %i.ew, align 8, !tbaa !218
  %i.fa = ptrtoint ptr %i.ey to i64
  %i.fb = ptrtoint ptr %i.ez to i64
  %i.fc = sub i64 %i.fa, %i.fb
  %i.fd = icmp ult i64 %i.es, %i.fc
  br i1 %i.fd, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fe = sub nsw i32 0, %i.ea                    ; 2 uses
  store i32 %i.fe, ptr %i.a, align 4, !tbaa !14
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.ff = phi i32 [ %i.fe, %bb.ae ], [ %i.dy, %bb.ad ] ; 2 uses
  %.0115 = phi i32 [ %i.dx, %bb.ae ], [ %i.ea, %bb.ad ]
  %i.fg = load i32, ptr %i.do, align 8
  %i.fh = and i32 %i.fg, 2048
  %.not157 = icmp ne i32 %i.fh, 0
  %i.fi = call i8 @llvm.scmp.i8.i32(i32 %i.ff, i32 0)
  %i.fj = call noundef i32 @llvm.abs.i32(i32 %i.ff, i1 true)
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = load ptr, ptr %i.ch, align 8, !tbaa !219
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 %i.fk
  store i8 %i.fi, ptr %i.fm, align 1, !tbaa !213
  invoke void @_ZNSt6vectorIiSaIiEE9push_backERKi(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
          to label %bb.ag unwind label %bb.ak

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.fn = load ptr, ptr %i.ci, align 8, !tbaa !15 ; 2 uses
  %i.fo = load ptr, ptr %1, align 8, !tbaa !16    ; 3 uses
  %.not582 = icmp eq ptr %i.fn, %i.fo
  br i1 %.not582, label %.critedge3, label %.lr.ph577

bb.ah:                                            ; preds = %.critedge7
  %i.fp = ptrtoint ptr %i.ka to i64
  %i.fq = ptrtoint ptr %i.kb to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = ashr exact i64 %i.fr, 2
  %i.ft = icmp ult i64 %i.fv, %i.fs
end_hunk_0
