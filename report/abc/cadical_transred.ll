Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cadical_transred?download=true
inline.NumInlined: 211
inline.NumDeleted: 115
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::vector.20" = type { %"struct.std::_Vector_base.21" }
%"struct.std::_Vector_base.21" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }

$_ZNSt6vectorIiSaIiEE9push_backERKi = comdat any

$_ZNSt6vectorIlSaIlEE9push_backERKl = comdat any

@.str = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL8Internal8transredEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.std::vector.20", align 8    ; 16 uses
  %i.a = alloca i32, align 4                      ; 6 uses
  %2 = alloca %"class.std::vector.20", align 8    ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4460
  %i.e = load i32, ptr %i.d, align 4, !tbaa !185
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.g = load i8, ptr %i.f, align 4, !tbaa !186, !range !187, !noundef !188
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 7272 ; 4 uses
  %i.j = load volatile i8, ptr %i.i, align 8, !tbaa !189, !range !187, !noundef !188
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3208 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3212 ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !190  ; 3 uses
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.n, -1
  store i32 %i.o, ptr %i.m, align 4, !tbaa !190
  %i.p = icmp eq i32 %i.n, 1
  br i1 %i.p, label %.sink.split.i, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 7264 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !191
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 400
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !210  ; 3 uses
  %.not3.i = icmp eq ptr %i.t, null
  br i1 %.not3.i, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load i32, ptr %i.l, align 8, !tbaa !211  ; 2 uses
  %i.v = add nsw i32 %i.u, -1
  store i32 %i.v, ptr %i.l, align 8, !tbaa !211
  %.not4.i = icmp eq i32 %i.u, 0
  br i1 %.not4.i, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 4416
  %i.x = load i32, ptr %i.w, align 8, !tbaa !212
  store i32 %i.x, ptr %i.l, align 8, !tbaa !211
  %i.y = load ptr, ptr %i.t, align 8, !tbaa !214
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(8) %i.t) #10, !inline_history !22
  br i1 %i.ab, label %.sink.split.i, label %bb.i

.sink.split.i:                                    ; preds = %bb.h, %bb.e
  store volatile i8 1, ptr %i.i, align 8, !tbaa !189
  br label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit

bb.i:                                             ; preds = %bb.g, %bb.f, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 5016
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !215
  %.not130 = icmp eq i64 %i.ad, 0
  br i1 %.not130, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 5024
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !216
  %.not131 = icmp eq i64 %i.af, 0
  br i1 %.not131, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit, label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 7256 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !217 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !218, !range !187, !noundef !188
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %._crit_edge288, label %bb.l

._crit_edge288:                                   ; preds = %bb.k
  %.pre = load i32, ptr %0, align 8, !tbaa !219
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.ah, i64 23
  %i.am = load i8, ptr %i.al, align 1, !tbaa !220, !range !187, !noundef !188
  %i.an = trunc nuw i8 %i.am to i1
  %.pre289 = load i32, ptr %0, align 8, !tbaa !219 ; 2 uses
  %i.ao = and i32 %.pre289, -1025
  %spec.select366 = select i1 %i.an, i32 %.pre289, i32 %i.ao
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge288
  %i.ap = phi i32 [ %.pre, %._crit_edge288 ], [ %spec.select366, %bb.l ]
  %i.aq = or i32 %i.ap, 34816
  store i32 %i.aq, ptr %0, align 8, !tbaa !219
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 6216 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !221
  %i.at = add nsw i64 %i.as, 1
  store i64 %i.at, ptr %i.ar, align 8, !tbaa !221
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4648 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !222
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 3216 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !223
  %i.ay = sub nsw i64 %i.av, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 4464
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !224
  %i.bb = sitofp i32 %i.ba to double
  %i.bc = fmul nnan double %i.bb, 1.000000e-03
  %i.bd = sitofp i64 %i.ay to double
  %i.be = fmul double %i.bc, %i.bd
  %i.bf = fptosi double %i.be to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4472
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !225
  %i.bi = sext i32 %i.bh to i64
  %spec.select = tail call i64 @llvm.smax.i64(i64 %i.bf, i64 %i.bi)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 4468
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !226
  %i.bl = sext i32 %i.bk to i64
  %.1 = tail call i64 @llvm.smin.i64(i64 %spec.select, i64 %i.bl)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 2280 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2288
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !227 ; 6 uses
  %i.bp = load ptr, ptr %i.bm, align 8, !tbaa !227 ; 5 uses
  %.not216241 = icmp eq ptr %i.bp, %i.bo
  br i1 %.not216241, label %._crit_edge248, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %bb.p
  %.sroa.0186.0242 = phi ptr [ %i.by, %bb.p ], [ %i.bp, %bb.m ] ; 3 uses
  %i.bq = load ptr, ptr %.sroa.0186.0242, align 8, !tbaa !228 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load i32, ptr %i.br, align 8            ; 3 uses
  %i.bt = and i32 %i.bs, 512
  %.not132 = icmp eq i32 %i.bt, 0
  br i1 %.not132, label %bb.n, label %bb.p

bb.n:                                             ; preds = %.lr.ph
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !14
  %.not133 = icmp eq i32 %i.bv, 2
  br i1 %.not133, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bw = and i32 %i.bs, 34816
  %or.cond150 = icmp ne i32 %i.bw, 34816
  %i.bx = and i32 %i.bs, 65536
  %.not136 = icmp eq i32 %i.bx, 0
  %or.cond211 = and i1 %or.cond150, %.not136
  br i1 %or.cond211, label %._crit_edge, label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.n, %bb.o
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0186.0242, i64 8 ; 3 uses
  %.not216 = icmp eq ptr %i.by, %i.bo
  br i1 %.not216, label %._crit_edge, label %.lr.ph, !llvm.loop !23

._crit_edge:                                      ; preds = %bb.p, %bb.o
  %.sroa.0186.0.lcssa = phi ptr [ %.sroa.0186.0242, %bb.o ], [ %i.by, %bb.p ] ; 2 uses
  %.not369 = icmp eq ptr %.sroa.0186.0.lcssa, %i.bo ; 2 uses
  %.sroa.0186.0.lcssa.mux = select i1 %.not369, ptr %i.bp, ptr %.sroa.0186.0.lcssa
  br i1 %.not369, label %.lr.ph247, label %._crit_edge248

.lr.ph247:                                        ; preds = %._crit_edge, %bb.r
  %.sroa.0186.1246 = phi ptr [ %i.ce, %bb.r ], [ %i.bp, %._crit_edge ] ; 2 uses
  %i.bz = load ptr, ptr %.sroa.0186.1246, align 8, !tbaa !228
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 8 ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8            ; 2 uses
  %i.cc = and i32 %i.cb, 65536
  %.not149 = icmp eq i32 %i.cc, 0
  br i1 %.not149, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph247
  %i.cd = and i32 %i.cb, -65537
  store i32 %i.cd, ptr %i.ca, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph247
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0186.1246, i64 8 ; 2 uses
  %.not217 = icmp eq ptr %i.ce, %i.bo
  br i1 %.not217, label %._crit_edge248.loopexit, label %.lr.ph247, !llvm.loop !24

._crit_edge248.loopexit:                          ; preds = %bb.r
  %.pre290 = load ptr, ptr %i.bm, align 8, !tbaa !227
  br label %._crit_edge248

._crit_edge248:                                   ; preds = %._crit_edge, %bb.m, %._crit_edge248.loopexit
  %.sroa.0186.2 = phi ptr [ %i.bp, %bb.m ], [ %.sroa.0186.0.lcssa.mux, %._crit_edge ], [ %.pre290, %._crit_edge248.loopexit ] ; 2 uses
  tail call void @_ZN7CaDiCaL8Internal12sort_watchesEv(ptr noundef nonnull align 8 dereferenceable(7296) %0) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, i8 0, i64 24, i1 false)
  %i.cf = load i8, ptr %i.f, align 4, !tbaa !186, !range !187, !noundef !188
  %i.cg = trunc nuw i8 %i.cf to i1
  %i.ch = icmp eq ptr %.sroa.0186.2, %i.bo
  %or.cond213.not259 = select i1 %i.cg, i1 true, i1 %i.ch
  br i1 %or.cond213.not259, label %.critedge, label %.lr.ph265

.lr.ph265:                                        ; preds = %._crit_edge248
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 4416
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 480 ; 4 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 6 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 6 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 9 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 6544 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 6568 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 6224 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %2, i64 16
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph265, %bb.ca
  %.0109263 = phi i64 [ 0, %.lr.ph265 ], [ %.3112, %bb.ca ] ; 11 uses
  %.0114262 = phi i64 [ 0, %.lr.ph265 ], [ %.3117, %bb.ca ] ; 12 uses
  %.0118261 = phi i64 [ 0, %.lr.ph265 ], [ %.3121, %bb.ca ] ; 11 uses
  %.sroa.0186.3260 = phi ptr [ %.sroa.0186.2, %.lr.ph265 ], [ %i.dp, %bb.ca ] ; 2 uses
  %i.cz = load volatile i8, ptr %i.i, align 8, !tbaa !189, !range !187, !noundef !188
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %.critedge, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.db = load i32, ptr %i.m, align 4, !tbaa !190 ; 3 uses
  %.not.i157 = icmp eq i32 %i.db, 0
  br i1 %.not.i157, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.dc = add nsw i32 %i.db, -1
  store i32 %i.dc, ptr %i.m, align 4, !tbaa !190
  %i.dd = icmp eq i32 %i.db, 1
  br i1 %i.dd, label %.sink.split.i161, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.de = load ptr, ptr %i.q, align 8, !tbaa !191
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 400
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !210 ; 3 uses
  %.not3.i158 = icmp eq ptr %i.dg, null
  br i1 %.not3.i158, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit162, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dh = load i32, ptr %i.l, align 8, !tbaa !211 ; 2 uses
  %i.di = add nsw i32 %i.dh, -1
  store i32 %i.di, ptr %i.l, align 8, !tbaa !211
  %.not4.i159 = icmp eq i32 %i.dh, 0
  br i1 %.not4.i159, label %bb.x, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit162

bb.x:                                             ; preds = %bb.w
  %i.dj = load i32, ptr %i.ci, align 8, !tbaa !212
  store i32 %i.dj, ptr %i.l, align 8, !tbaa !211
  %i.dk = load ptr, ptr %i.dg, align 8, !tbaa !214
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8
  %i.dn = call noundef zeroext i1 %i.dm(ptr noundef nonnull align 8 dereferenceable(8) %i.dg) #10, !inline_history !22
  br i1 %i.dn, label %.sink.split.i161, label %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit162

.sink.split.i161:                                 ; preds = %bb.x, %bb.u
  store volatile i8 1, ptr %i.i, align 8, !tbaa !189
  br label %.critedge

_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit162: ; preds = %bb.v, %bb.w, %bb.x
  %i.do = icmp slt i64 %.0109263, %.1
  br i1 %i.do, label %bb.y, label %.critedge

bb.y:                                             ; preds = %_ZN7CaDiCaL8Internal25terminated_asynchronouslyEi.exit162
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0186.3260, i64 8 ; 2 uses
  %i.dq = load ptr, ptr %.sroa.0186.3260, align 8, !tbaa !228 ; 6 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 3 uses
  %i.ds = load i32, ptr %i.dr, align 8            ; 4 uses
  %i.dt = and i32 %i.ds, 512
  %.not137 = icmp eq i32 %i.dt, 0
  br i1 %.not137, label %bb.z, label %bb.ca, !llvm.loop !25

bb.z:                                             ; preds = %bb.y
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !14
  %.not138 = icmp eq i32 %i.dv, 2
  br i1 %.not138, label %bb.aa, label %bb.ca, !llvm.loop !25

bb.aa:                                            ; preds = %bb.z
  %i.dw = and i32 %i.ds, 34816
  %or.cond153 = icmp ne i32 %i.dw, 34816
  %i.dx = and i32 %i.ds, 65536
  %.not141 = icmp eq i32 %i.dx, 0
  %or.cond214 = and i1 %or.cond153, %.not141
  br i1 %or.cond214, label %bb.ab, label %bb.ca, !llvm.loop !25

bb.ab:                                            ; preds = %bb.aa
  %i.dy = or disjoint i32 %i.ds, 65536
  store i32 %i.dy, ptr %i.dr, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !14 ; 4 uses
  %i.eb = sub nsw i32 0, %i.ea                    ; 3 uses
  store i32 %i.eb, ptr %i.a, align 4, !tbaa !14
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dq, i64 28
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !14 ; 5 uses
  %i.ee = load ptr, ptr %i.cj, align 8, !tbaa !230 ; 2 uses
  %i.ef = sext i32 %i.eb to i64
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !231
  %.not142 = icmp eq i8 %i.eh, 0
  br i1 %.not142, label %bb.ac, label %bb.bz, !llvm.loop !25

bb.ac:                                            ; preds = %bb.ab
  %i.ei = sext i32 %i.ed to i64
  %i.ej = getelementptr inbounds i8, ptr %i.ee, i64 %i.ei
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !231
  %.not143 = icmp eq i8 %i.ek, 0
  br i1 %.not143, label %bb.ad, label %bb.bz, !llvm.loop !25

bb.ad:                                            ; preds = %bb.ac
  %i.el = call noundef i32 @llvm.abs.i32(i32 %i.ea, i1 true)
  %i.em = call noundef i32 @llvm.fshl.i32(i32 %i.el, i32 %i.ea, i32 1)
  %i.en = zext i32 %i.em to i64
  %i.eo = load ptr, ptr %i.ck, align 8, !tbaa !232 ; 2 uses
  %i.ep = getelementptr inbounds nuw [24 x i8], ptr %i.eo, i64 %i.en ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !235
  %i.es = load ptr, ptr %i.ep, align 8, !tbaa !236
  %i.et = ptrtoint ptr %i.er to i64
  %i.eu = ptrtoint ptr %i.es to i64
  %i.ev = sub i64 %i.et, %i.eu
  %i.ew = call noundef i32 @llvm.abs.i32(i32 %i.ed, i1 true)
  %i.ex = call noundef i32 @llvm.fshl.i32(i32 %i.ew, i32 %i.ed, i32 1)
  %i.ey = zext i32 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [24 x i8], ptr %i.eo, i64 %i.ey ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !235
  %i.fc = load ptr, ptr %i.ez, align 8, !tbaa !236
  %i.fd = ptrtoint ptr %i.fb to i64
  %i.fe = ptrtoint ptr %i.fc to i64
  %i.ff = sub i64 %i.fd, %i.fe
  %i.fg = icmp ult i64 %i.ev, %i.ff
  br i1 %i.fg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fh = sub nsw i32 0, %i.ed                    ; 2 uses
  store i32 %i.fh, ptr %i.a, align 4, !tbaa !14
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.fi = phi i32 [ %i.fh, %bb.ae ], [ %i.eb, %bb.ad ] ; 2 uses
  %.0113 = phi i32 [ %i.ea, %bb.ae ], [ %i.ed, %bb.ad ]
  %i.fj = load i32, ptr %i.dr, align 8
  %i.fk = and i32 %i.fj, 32768
  %.not144 = icmp ne i32 %i.fk, 0
  %i.fl = call i8 @llvm.scmp.i8.i32(i32 %i.fi, i32 0)
  %i.fm = call noundef i32 @llvm.abs.i32(i32 %i.fi, i1 true)
  %i.fn = zext nneg i32 %i.fm to i64
  %i.fo = load ptr, ptr %i.cl, align 8, !tbaa !237
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.fn
  store i8 %i.fl, ptr %i.fp, align 1, !tbaa !231
  call void @_ZNSt6vectorIiSaIiEE9push_backERKi(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.fq = load ptr, ptr %i.cm, align 8, !tbaa !15 ; 2 uses
  %i.fr = load ptr, ptr %1, align 8, !tbaa !16    ; 3 uses
  %.not403 = icmp eq ptr %i.fq, %i.fr
  br i1 %.not403, label %.critedge3, label %.lr.ph398

bb.ag:                                            ; preds = %.critedge7
  %i.fs = ptrtoint ptr %i.in to i64
  %i.ft = ptrtoint ptr %i.io to i64
  %i.fu = sub i64 %i.fs, %i.ft
  %i.fv = ashr exact i64 %i.fu, 2
  %i.fw = icmp ult i64 %i.fy, %i.fv
  br i1 %i.fw, label %.lr.ph398, label %.critedge3, !llvm.loop !26

.lr.ph398:                                        ; preds = %bb.af, %bb.ag
  %i.fx = phi ptr [ %i.io, %bb.ag ], [ %i.fr, %bb.af ]
  %.1110251396 = phi i64 [ %i.gb, %bb.ag ], [ %.0109263, %bb.af ]
  %.096254395 = phi i64 [ %i.fy, %bb.ag ], [ 0, %bb.af ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  %i.fy = add nuw i64 %.096254395, 1              ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fx, i64 %.096254395
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !14 ; 3 uses
  store i32 %i.ga, ptr %i.b, align 4, !tbaa !14
  %i.gb = add nsw i64 %.1110251396, 1             ; 3 uses
  %i.gc = sub nsw i32 0, %i.ga
  %i.gd = call i32 @llvm.abs.i32(i32 %i.ga, i1 true)
  %i.ge = call noundef i32 @llvm.fshl.i32(i32 %i.gd, i32 %i.gc, i32 1)
  %i.gf = zext i32 %i.ge to i64
  %i.gg = load ptr, ptr %i.ck, align 8, !tbaa !232
end_hunk_0
