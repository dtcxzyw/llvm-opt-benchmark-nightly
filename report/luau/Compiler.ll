Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/Compiler?download=true
inline.NumInlined: 3176
inline.NumDeleted: 1468
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4Luau8Compiler18areLocalsRedundantEPNS_12AstStatLocalE:bb.a
  %.fr68 = freeze i32 %i.v
  %i.w = icmp eq i32 %.fr68, -1
  br i1 %i.l, label %.critedge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.x = load i8, ptr @_ZN5FFlag21LuauExportValueSyntaxE, align 8, !range !86
  %.fr67 = freeze i8 %i.x
  %i.y = trunc i8 %.fr67 to i1
  br i1 %i.y, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  br i1 %i.t, label %.lr.ph.split.split.us.split.us, label %.lr.ph.split.split.us.split

.lr.ph.split.split.us.split.us:                   ; preds = %.lr.ph.split.split.us
  br i1 %i.w, label %.lr.ph.split.split.us.split.us.split.us, label %.lr.ph.split.split.us.split.us.split

.lr.ph.split.split.us.split.us.split.us:          ; preds = %.lr.ph.split.split.us.split.us, %bb.i
  %.01628.us41.us.us = phi ptr [ %i.ar, %bb.i ], [ %i.g, %.lr.ph.split.split.us.split.us ] ; 2 uses
  %i.z = load ptr, ptr %.01628.us41.us.us, align 8, !tbaa !272 ; 4 uses
  %i.aa = icmp eq ptr %i.z, %i.n
  br i1 %i.aa, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph.split.split.us.split.us.split.us
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = mul i64 %i.ab, -4658895280553007687     ; 2 uses
  %i.ad = lshr i64 %i.ac, 31
  %i.ae = xor i64 %i.ad, %i.ac
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.pn.i.i.us.us.us = phi i64 [ %i.ae, %bb.c ], [ %i.ak, %bb.f ]
  %.01828.i.i.us.us.us = phi i64 [ 0, %bb.c ], [ %i.aj, %bb.f ]
  %.01929.i.i.us.us.us = and i64 %.pn.i.i.us.us.us, %i.q ; 2 uses
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %.01929.i.i.us.us.us ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !272 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, %i.z
  br i1 %i.ah, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = icmp eq ptr %i.ag, %i.n
  br i1 %i.ai, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = add i64 %.01828.i.i.us.us.us, 1         ; 3 uses
  %i.ak = add i64 %i.aj, %.01929.i.i.us.us.us
  %.not.i.i.us.us.us = icmp ugt i64 %i.aj, %i.q
  br i1 %.not.i.i.us.us.us, label %.critedge, label %bb.d, !llvm.loop !12

bb.g:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 17
  %i.am = load i8, ptr %i.al, align 1, !tbaa !416, !range !86, !noundef !87
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.z, i64 49
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !438, !range !86, !noundef !87
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %.01628.us41.us.us, i64 8 ; 2 uses
  %.not.us.us.us = icmp eq ptr %i.ar, %i.h
  br i1 %.not.us.us.us, label %.critedge, label %.lr.ph.split.split.us.split.us.split.us

.lr.ph.split.split.us.split.us.split:             ; preds = %.lr.ph.split.split.us.split.us, %bb.o
  %.01628.us41.us = phi ptr [ %i.bh, %bb.o ], [ %i.g, %.lr.ph.split.split.us.split.us ] ; 2 uses
  %i.as = load ptr, ptr %.01628.us41.us, align 8, !tbaa !272 ; 3 uses
  %i.at = icmp eq ptr %i.as, %i.n
  br i1 %i.at, label %.critedge, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.split.us.split.us.split
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = mul i64 %i.au, -4658895280553007687     ; 2 uses
  %i.aw = lshr i64 %i.av, 31
  %i.ax = xor i64 %i.aw, %i.av
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.j
  %.pn.i.i.us.us = phi i64 [ %i.ax, %bb.j ], [ %i.bd, %bb.m ]
  %.01828.i.i.us.us = phi i64 [ 0, %bb.j ], [ %i.bc, %bb.m ]
  %.01929.i.i.us.us = and i64 %.pn.i.i.us.us, %i.q ; 2 uses
  %i.ay = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %.01929.i.i.us.us ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !272 ; 2 uses
  %i.ba = icmp eq ptr %i.az, %i.as
  br i1 %i.ba, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = icmp eq ptr %i.az, %i.n
  br i1 %i.bb, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = add i64 %.01828.i.i.us.us, 1            ; 3 uses
  %i.bd = add i64 %i.bc, %.01929.i.i.us.us
  %.not.i.i.us.us = icmp ugt i64 %i.bc, %i.q
  br i1 %.not.i.i.us.us, label %.critedge, label %bb.k, !llvm.loop !12

bb.n:                                             ; preds = %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %i.ay, i64 17
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !416, !range !86, !noundef !87
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.o, label %.critedge

bb.o:                                             ; preds = %bb.n
  %i.bh = getelementptr inbounds nuw i8, ptr %.01628.us41.us, i64 8 ; 2 uses
  %.not.us.us = icmp eq ptr %i.bh, %i.h
  br i1 %.not.us.us, label %.critedge, label %.lr.ph.split.split.us.split.us.split

.lr.ph.split.split.us.split:                      ; preds = %.lr.ph.split.split.us, %bb.v
  %.01628.us41 = phi ptr [ %i.ca, %bb.v ], [ %i.g, %.lr.ph.split.split.us ] ; 2 uses
  %i.bi = load ptr, ptr %.01628.us41, align 8, !tbaa !272 ; 4 uses
  %i.bj = icmp eq ptr %i.bi, %i.n
  br i1 %i.bj, label %.critedge, label %bb.p

bb.p:                                             ; preds = %.lr.ph.split.split.us.split
  %i.bk = ptrtoint ptr %i.bi to i64
  %i.bl = mul i64 %i.bk, -4658895280553007687     ; 2 uses
  %i.bm = lshr i64 %i.bl, 31
  %i.bn = xor i64 %i.bm, %i.bl
  br label %bb.q

bb.q:                                             ; preds = %bb.s, %bb.p
  %.pn.i.i.us = phi i64 [ %i.bn, %bb.p ], [ %i.bt, %bb.s ]
  %.01828.i.i.us = phi i64 [ 0, %bb.p ], [ %i.bs, %bb.s ]
  %.01929.i.i.us = and i64 %.pn.i.i.us, %i.q      ; 2 uses
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %.01929.i.i.us ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !272 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.bi
  br i1 %i.bq, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.br = icmp eq ptr %i.bp, %i.n
  br i1 %i.br, label %.critedge, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bs = add i64 %.01828.i.i.us, 1               ; 3 uses
  %i.bt = add i64 %i.bs, %.01929.i.i.us
  %.not.i.i.us = icmp ugt i64 %i.bs, %i.q
  br i1 %.not.i.i.us, label %.critedge, label %bb.q, !llvm.loop !12

bb.t:                                             ; preds = %bb.q
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 17
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !416, !range !86, !noundef !87
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.u, label %.critedge

bb.u:                                             ; preds = %bb.t
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bi, i64 49
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !438, !range !86, !noundef !87
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %.critedge, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ca = getelementptr inbounds nuw i8, ptr %.01628.us41, i64 8 ; 2 uses
  %.not.us = icmp eq ptr %i.ca, %i.h
  br i1 %.not.us, label %.critedge, label %.lr.ph.split.split.us.split

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.ab
  %.01628 = phi ptr [ %i.cq, %bb.ab ], [ %i.g, %.lr.ph.split ] ; 2 uses
  %i.cb = load ptr, ptr %.01628, align 8, !tbaa !272 ; 3 uses
  %i.cc = icmp eq ptr %i.cb, %i.n
  br i1 %i.cc, label %.critedge, label %bb.w

bb.w:                                             ; preds = %.lr.ph.split.split
  %i.cd = ptrtoint ptr %i.cb to i64
  %i.ce = mul i64 %i.cd, -4658895280553007687     ; 2 uses
  %i.cf = lshr i64 %i.ce, 31
  %i.cg = xor i64 %i.cf, %i.ce
  br label %bb.x

bb.x:                                             ; preds = %bb.z, %bb.w
  %.pn.i.i = phi i64 [ %i.cg, %bb.w ], [ %i.cm, %bb.z ]
  %.01828.i.i = phi i64 [ 0, %bb.w ], [ %i.cl, %bb.z ]
  %.01929.i.i = and i64 %.pn.i.i, %i.q            ; 2 uses
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %.01929.i.i ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !272 ; 2 uses
  %i.cj = icmp eq ptr %i.ci, %i.cb
  br i1 %i.cj, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ck = icmp eq ptr %i.ci, %i.n
  br i1 %i.ck, label %.critedge, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cl = add i64 %.01828.i.i, 1                  ; 3 uses
  %i.cm = add i64 %i.cl, %.01929.i.i
  %.not.i.i = icmp ugt i64 %i.cl, %i.q
  br i1 %.not.i.i, label %.critedge, label %bb.x, !llvm.loop !12

bb.aa:                                            ; preds = %bb.x
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 17
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !416, !range !86, !noundef !87
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.aa
  %i.cq = getelementptr inbounds nuw i8, ptr %.01628, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.cq, %i.h
  br i1 %.not, label %.critedge, label %.lr.ph.split.split

.critedge:                                        ; preds = %.lr.ph.split.split, %bb.aa, %bb.ab, %bb.y, %bb.z, %.lr.ph.split.split.us.split, %bb.t, %bb.u, %bb.v, %bb.r, %bb.s, %.lr.ph.split.split.us.split.us.split, %bb.n, %bb.o, %bb.m, %bb.l, %.lr.ph.split.split.us.split.us.split.us, %bb.g, %bb.h, %bb.i, %bb.f, %bb.e, %.lr.ph, %bb.b, %bb.a
  %.3 = phi i1 [ false, %bb.a ], [ true, %bb.b ], [ false, %bb.t ], [ false, %bb.y ], [ false, %.lr.ph ], [ true, %bb.i ], [ false, %bb.r ], [ false, %bb.f ], [ false, %bb.m ], [ false, %bb.n ], [ false, %bb.e ], [ false, %bb.h ], [ false, %.lr.ph.split.split.us.split.us.split.us ], [ false, %bb.g ], [ false, %bb.l ], [ false, %.lr.ph.split.split.us.split.us.split ], [ true, %bb.o ], [ false, %bb.s ], [ false, %.lr.ph.split.split.us.split ], [ false, %bb.u ], [ true, %bb.v ], [ false, %bb.z ], [ false, %bb.aa ], [ false, %.lr.ph.split.split ], [ true, %bb.ab ]
  ret i1 %.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4Luau8Compiler21tryCompileUnrolledForEPNS_10AstStatForEii(ptr noundef nonnull align 8 dereferenceable(1904) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !494  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.g = load i64, ptr %i.f, align 8, !tbaa !446, !noalias !1001
  %i.h = icmp eq i64 %i.g, 0                      ; 2 uses
  br i1 %i.h, label %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit53, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !447, !noalias !1001 ; 2 uses
  %i.k = icmp eq ptr %i.d, %i.j
  br i1 %i.k, label %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit.thread117, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.m = load i64, ptr %i.l, align 8, !tbaa !448, !noalias !1001
  %i.n = add i64 %i.m, -1                         ; 2 uses
  %i.o = ptrtoint ptr %i.d to i64
  %i.p = mul i64 %i.o, -4658895280553007687       ; 2 uses
  %i.q = lshr i64 %i.p, 31
  %i.r = xor i64 %i.q, %i.p
  %i.s = load ptr, ptr %i.e, align 8, !tbaa !248, !noalias !1001
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.pn.i.i.i = phi i64 [ %i.r, %bb.c ], [ %i.y, %bb.f ]
  %.01828.i.i.i = phi i64 [ 0, %bb.c ], [ %i.x, %bb.f ]
  %.01929.i.i.i = and i64 %.pn.i.i.i, %i.n        ; 2 uses
  %i.t = getelementptr inbounds nuw [48 x i8], ptr %i.s, i64 %.01929.i.i.i ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !447, !noalias !1001 ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.d
  br i1 %i.v, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = icmp eq ptr %i.u, %i.j
  br i1 %i.w, label %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit.thread117, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = add i64 %.01828.i.i.i, 1                 ; 3 uses
  %i.y = add i64 %i.x, %.01929.i.i.i
  %.not.i.i.i = icmp ugt i64 %i.x, %i.n
  br i1 %.not.i.i.i, label %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit.thread117, label %bb.d, !llvm.loop !15

bb.g:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.065.0.copyload = load i32, ptr %i.z, align 8, !tbaa !483
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.567.0.copyload = load double, ptr %.sroa.567.0..sroa_idx, align 8
  %i.aa = icmp eq i32 %.sroa.065.0.copyload, 3
  br label %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit.thread117

_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit.thread117: ; preds = %bb.f, %bb.e, %bb.g, %bb.b
  %.sroa.567.0121 = phi double [ 0.000000e+00, %bb.b ], [ %.sroa.567.0.copyload, %bb.g ], [ 0.000000e+00, %bb.e ], [ 0.000000e+00, %bb.f ] ; 4 uses
  %.sroa.065.0120 = phi i1 [ false, %bb.b ], [ %i.aa, %bb.g ], [ false, %bb.e ], [ false, %bb.f ] ; 4 uses
  %.in = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ab = load ptr, ptr %.in, align 8, !tbaa !493 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !447, !noalias !1002 ; 2 uses
  %i.ae = icmp eq ptr %i.ab, %i.ad
  br i1 %i.ae, label %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit53.thread, label %bb.h

bb.h:                                             ; preds = %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit.thread117
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !448, !noalias !1002
  %i.ah = add i64 %i.ag, -1                       ; 2 uses
  %i.ai = ptrtoint ptr %i.ab to i64
  %i.aj = mul i64 %i.ai, -4658895280553007687     ; 2 uses
  %i.ak = lshr i64 %i.aj, 31
  %i.al = xor i64 %i.ak, %i.aj
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !248, !noalias !1002
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %bb.h
  %.pn.i.i.i48 = phi i64 [ %i.al, %bb.h ], [ %i.as, %bb.k ]
  %.01828.i.i.i49 = phi i64 [ 0, %bb.h ], [ %i.ar, %bb.k ]
  %.01929.i.i.i50 = and i64 %.pn.i.i.i48, %i.ah   ; 2 uses
  %i.an = getelementptr inbounds nuw [48 x i8], ptr %i.am, i64 %.01929.i.i.i50 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !447, !noalias !1002 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.ab
  br i1 %i.ap, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = icmp eq ptr %i.ao, %i.ad
  br i1 %i.aq, label %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit53, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = add i64 %.01828.i.i.i49, 1              ; 3 uses
  %i.as = add i64 %i.ar, %.01929.i.i.i50
  %.not.i.i.i51 = icmp ugt i64 %i.ar, %i.ah
  br i1 %.not.i.i.i51, label %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit53, label %bb.i, !llvm.loop !15

bb.l:                                             ; preds = %bb.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.061.0.copyload = load i32, ptr %i.at, align 8, !tbaa !483
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %.sroa.563.0.copyload = load double, ptr %.sroa.563.0..sroa_idx, align 8
  %i.au = icmp eq i32 %.sroa.061.0.copyload, 3
  br label %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit53

_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit53: ; preds = %bb.j, %bb.k, %bb.a, %bb.l
  %.sroa.567.0116 = phi double [ %.sroa.567.0121, %bb.l ], [ 0.000000e+00, %bb.a ], [ %.sroa.567.0121, %bb.k ], [ %.sroa.567.0121, %bb.j ] ; 2 uses
  %.sroa.065.0115 = phi i1 [ %.sroa.065.0120, %bb.l ], [ false, %bb.a ], [ %.sroa.065.0120, %bb.k ], [ %.sroa.065.0120, %bb.j ] ; 2 uses
  %.sroa.061.0 = phi i1 [ %i.au, %bb.l ], [ false, %bb.a ], [ false, %bb.k ], [ false, %bb.j ] ; 2 uses
  %.sroa.563.0 = phi double [ %.sroa.563.0.copyload, %bb.l ], [ 0.000000e+00, %bb.a ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %bb.j ] ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !495 ; 2 uses
  %.not = icmp eq ptr %i.aw, null
  br i1 %.not, label %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit59, label %bb.m

_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit53.thread: ; preds = %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit.thread117
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !495 ; 2 uses
  %.not126 = icmp eq ptr %i.ay, null
  br i1 %.not126, label %.thread, label %.thread135

bb.m:                                             ; preds = %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit53
  br i1 %i.h, label %.thread, label %.thread135

.thread135:                                       ; preds = %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit53.thread, %bb.m
  %.sroa.567.0116127143 = phi double [ %.sroa.567.0116, %bb.m ], [ %.sroa.567.0121, %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit53.thread ]
  %.sroa.065.0115129142 = phi i1 [ %.sroa.065.0115, %bb.m ], [ %.sroa.065.0120, %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit53.thread ]
  %.sroa.061.0131141 = phi i1 [ %.sroa.061.0, %bb.m ], [ false, %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit53.thread ]
  %.sroa.563.0133140 = phi double [ %.sroa.563.0, %bb.m ], [ 0.000000e+00, %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit53.thread ]
  %i.az = phi ptr [ %i.aw, %bb.m ], [ %i.ay, %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit53.thread ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !447, !noalias !1003 ; 2 uses
  %i.bc = icmp eq ptr %i.az, %i.bb
  br i1 %i.bc, label %.thread, label %bb.n

bb.n:                                             ; preds = %.thread135
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !448, !noalias !1003
  %i.bf = add i64 %i.be, -1                       ; 2 uses
  %i.bg = ptrtoint ptr %i.az to i64
  %i.bh = mul i64 %i.bg, -4658895280553007687     ; 2 uses
  %i.bi = lshr i64 %i.bh, 31
  %i.bj = xor i64 %i.bi, %i.bh
  %i.bk = load ptr, ptr %i.e, align 8, !tbaa !248, !noalias !1003
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %bb.n
  %.pn.i.i.i54 = phi i64 [ %i.bj, %bb.n ], [ %i.bq, %bb.q ]
  %.01828.i.i.i55 = phi i64 [ 0, %bb.n ], [ %i.bp, %bb.q ]
  %.01929.i.i.i56 = and i64 %.pn.i.i.i54, %i.bf   ; 2 uses
  %i.bl = getelementptr inbounds nuw [48 x i8], ptr %i.bk, i64 %.01929.i.i.i56 ; 3 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !447, !noalias !1003 ; 2 uses
  %i.bn = icmp eq ptr %i.bm, %i.az
  br i1 %i.bn, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = icmp eq ptr %i.bm, %i.bb
  br i1 %i.bo, label %.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = add i64 %.01828.i.i.i55, 1              ; 3 uses
  %i.bq = add i64 %i.bp, %.01929.i.i.i56
  %.not.i.i.i57 = icmp ugt i64 %i.bp, %i.bf
  br i1 %.not.i.i.i57, label %.thread, label %bb.o, !llvm.loop !15

bb.r:                                             ; preds = %bb.o
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.sroa.0.0.copyload = load i32, ptr %i.br, align 8, !tbaa !483
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %.sroa.7.0.copyload = load double, ptr %.sroa.7.0..sroa_idx, align 8
  %i.bs = icmp eq i32 %.sroa.0.0.copyload, 3
  br label %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit59

_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit59: ; preds = %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit53, %bb.r
  %.sroa.563.0134 = phi double [ %.sroa.563.0133140, %bb.r ], [ %.sroa.563.0, %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit53 ]
  %.sroa.061.0132 = phi i1 [ %.sroa.061.0131141, %bb.r ], [ %.sroa.061.0, %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit53 ]
  %.sroa.065.0115130 = phi i1 [ %.sroa.065.0115129142, %bb.r ], [ %.sroa.065.0115, %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit53 ]
  %.sroa.567.0116128 = phi double [ %.sroa.567.0116127143, %bb.r ], [ %.sroa.567.0116, %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit53 ] ; 2 uses
  %.sroa.0.0 = phi i1 [ %i.bs, %bb.r ], [ true, %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit53 ]
  %.sroa.7.0 = phi double [ %.sroa.7.0.copyload, %bb.r ], [ 1.000000e+00, %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit53 ] ; 2 uses
  %or.cond = select i1 %.sroa.065.0115130, i1 %.sroa.061.0132, i1 false
  %or.cond5 = select i1 %or.cond, i1 %.sroa.0.0, i1 false
  br i1 %or.cond5, label %bb.s, label %.thread

bb.s:                                             ; preds = %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit59
  %i.bt = tail call noundef i32 @_ZN4Luau7Compile12getTripCountEddd(double noundef %.sroa.567.0116128, double noundef %.sroa.563.0134, double noundef %.sroa.7.0) ; 8 uses
  %i.bu = icmp slt i32 %i.bt, 0
  br i1 %i.bu, label %.thread, label %bb.t

.thread:                                          ; preds = %bb.q, %bb.p, %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit53.thread, %.thread135, %bb.m, %_ZN4Luau8Compiler11getConstantEPNS_7AstExprE.exit59, %bb.s
  %i.bv = load ptr, ptr %0, align 8, !tbaa !265, !nonnull !87, !align !266
  tail call void (ptr, ptr, ...) @_ZN4Luau15BytecodeBuilder14addDebugRemarkEPKcz(ptr noundef nonnull align 8 dereferenceable(1048) %i.bv, ptr noundef nonnull @.str.166)
  br label %bb.ah

bb.t:                                             ; preds = %bb.s
  %i.bw = icmp sgt i32 %i.bt, %2
  br i1 %i.bw, label %bb.u, label %bb.v
end_hunk_0
