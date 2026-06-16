inline.NumInlined: 29
inline.NumDeleted: 20
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm ".globl _ZSt21ios_base_library_initv"

@.str = private unnamed_addr constant [26 x i8] c"basic_string_view::substr\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"%s: __pos (which is %zu) > __size (which is %zu)\00", align 1

; Function Attrs: mustprogress uwtable
define { i64, ptr } @_ZN4absl12lts_2025051213cord_internal18CordRepBtreeReader4ReadEmmRPNS1_7CordRepE(ptr noundef nonnull align 8 dereferenceable(120) %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq i64 %2, 0
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 7 uses
  %i.d = load i8, ptr %i.c, align 4, !tbaa !10    ; 2 uses
  %i.e = zext i8 %i.d to i64                      ; 2 uses
  br i1 %.not, label %bb.b, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4NextEv.exit.thread

_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4NextEv.exit.thread: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.e
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11   ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13
  %i.j = sub i64 %i.i, %2
  br label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4NextEv.exit

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 15
  %i.l = load i8, ptr %i.k, align 1, !tbaa !10
  %i.m = zext i8 %i.l to i64
  %i.n = add nsw i64 %i.m, -1
  %i.o = icmp eq i64 %i.n, %i.e
  br i1 %i.o, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !19   ; 2 uses
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %i.q, i32 0)
  %wide.trip.count.i.i = zext nneg i32 %smax.i.i to i64
  %exitcond.not.i.i74 = icmp slt i32 %i.q, 1
  br i1 %exitcond.not.i.i74, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4NextEv.exit, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %indvars.iv.next38.i.i = add nuw i32 %indvars.iv37.i.i75, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4NextEv.exit, label %.lr.ph, !llvm.loop !21

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %indvars.iv.i.i76 = phi i64 [ %indvars.iv.next.i.i, %bb.d ], [ 0, %bb.c ] ; 2 uses
  %indvars.iv37.i.i75 = phi i32 [ %indvars.iv.next38.i.i, %bb.d ], [ 1, %bb.c ] ; 3 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i76, 1 ; 5 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next.i.i
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !7    ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next.i.i
  %i.u = load i8, ptr %i.t, align 1, !tbaa !10
  %i.v = zext i8 %i.u to i64
  %i.w = add nuw nsw i64 %i.v, 1                  ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 15
  %i.y = load i8, ptr %i.x, align 1, !tbaa !10
  %i.z = zext i8 %i.y to i64
  %i.aa = icmp eq i64 %i.w, %i.z
  br i1 %i.aa, label %bb.d, label %bb.e, !llvm.loop !21

bb.e:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.next.i.i
  %i.ac = trunc i64 %i.w to i8
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !10
  %4 = sext i32 %indvars.iv37.i.i75 to i64        ; 2 uses
  %5 = and i32 %indvars.iv37.i.i75, 1
  %lcmp.mod.not = icmp eq i32 %5, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.w
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !11 ; 4 uses
  %indvars.iv.next41.i.i.prol = add nsw i64 %4, -1 ; 3 uses
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv.next41.i.i.prol
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 14
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !10  ; 2 uses
  %i.aj = zext i8 %i.ai to i64                    ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv.next41.i.i.prol
  store i8 %i.ai, ptr %i.ak, align 1, !tbaa !10
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.e
  %indvars.iv40.i.i.unr = phi i64 [ %4, %bb.e ], [ %indvars.iv.next41.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.017.i.i.unr = phi ptr [ %i.s, %bb.e ], [ %i.af, %.prol.loopexit.unr-lcssa ]
  %.016.i.i.unr = phi i64 [ %i.w, %bb.e ], [ %i.aj, %.prol.loopexit.unr-lcssa ]
  %.lcssa77.unr = phi ptr [ poison, %bb.e ], [ %i.af, %.prol.loopexit.unr-lcssa ]
  %.lcssa.unr = phi i64 [ poison, %bb.e ], [ %i.aj, %.prol.loopexit.unr-lcssa ]
  %i.al = icmp eq i64 %indvars.iv.i.i76, 0
  br i1 %i.al, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %indvars.iv40.i.i = phi i64 [ %indvars.iv.next41.i.i.1, %.new ], [ %indvars.iv40.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.017.i.i = phi ptr [ %i.aw, %.new ], [ %.017.i.i.unr, %.prol.loopexit ]
  %.016.i.i = phi i64 [ %i.ba, %.new ], [ %.016.i.i.unr, %.prol.loopexit ]
  %i.am = getelementptr inbounds nuw i8, ptr %.017.i.i, i64 16
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.am, i64 %.016.i.i
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !11 ; 3 uses
  %indvars.iv.next41.i.i = add nsw i64 %indvars.iv40.i.i, -1 ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv.next41.i.i
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !7
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 14
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !10  ; 2 uses
  %i.as = zext i8 %i.ar to i64
  %i.at = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv.next41.i.i
  store i8 %i.ar, ptr %i.at, align 1, !tbaa !10
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.as
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !11 ; 4 uses
  %indvars.iv.next41.i.i.1 = add nsw i64 %indvars.iv40.i.i, -2 ; 3 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %i.a, i64 %indvars.iv.next41.i.i.1
  store ptr %i.aw, ptr %i.ax, align 8, !tbaa !7
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 14
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !10  ; 2 uses
  %i.ba = zext i8 %i.az to i64                    ; 2 uses
  %i.bb = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv.next41.i.i.1
  store i8 %i.az, ptr %i.bb, align 1, !tbaa !10
  %i.bc = icmp sgt i64 %indvars.iv40.i.i, 2
  br i1 %i.bc, label %.new, label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i, !llvm.loop !23

bb.f:                                             ; preds = %bb.b
  %i.bd = add i8 %i.d, 1                          ; 2 uses
  store i8 %i.bd, ptr %i.c, align 4, !tbaa !10
  %i.be = zext i8 %i.bd to i64
  br label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i

_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i: ; preds = %.prol.loopexit, %.new, %bb.f
  %.lcssa12.sink.i = phi ptr [ %i.b, %bb.f ], [ %.lcssa77.unr, %.prol.loopexit ], [ %i.aw, %.new ]
  %.lcssa.sink.i = phi i64 [ %i.be, %bb.f ], [ %.lcssa.unr, %.prol.loopexit ], [ %i.ba, %.new ]
  %i.bf = getelementptr inbounds nuw i8, ptr %.lcssa12.sink.i, i64 16
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.lcssa.sink.i
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !11
  br label %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4NextEv.exit

_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4NextEv.exit: ; preds = %bb.d, %bb.c, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4NextEv.exit.thread
  %i.bi = phi ptr [ %i.h, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4NextEv.exit.thread ], [ %i.bh, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i ], [ null, %bb.c ], [ null, %bb.d ] ; 5 uses
  %i.bj = phi i64 [ %i.j, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4NextEv.exit.thread ], [ 0, %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator6NextUpEv.exit.sink.split.i ], [ 0, %bb.c ], [ 0, %bb.d ]
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bl = tail call { ptr, i64 } @_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4ReadEmm(ptr noundef nonnull align 8 dereferenceable(112) %i.bk, i64 noundef %i.bj, i64 noundef %1) ; 2 uses
  %i.bm = extractvalue { ptr, i64 } %i.bl, 0
  %i.bn = extractvalue { ptr, i64 } %i.bl, 1      ; 9 uses
  store ptr %i.bm, ptr %3, align 8, !tbaa !11
  %i.bo = icmp ult i64 %1, %2
  br i1 %i.bo, label %bb.g, label %bb.m

bb.g:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4NextEv.exit
  %i.bp = load i64, ptr %i.bi, align 8, !tbaa !13 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.br = load i8, ptr %i.bq, align 4, !tbaa !24  ; 2 uses
  %i.bs = icmp eq i8 %i.br, 1
  br i1 %i.bs, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !25
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !27 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 4, !tbaa !24
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bx = phi i8 [ %.pre.i, %bb.h ], [ %i.br, %bb.g ]
  %.010.i = phi i64 [ %i.bu, %bb.h ], [ 0, %bb.g ]
  %.0.i = phi ptr [ %i.bw, %bb.h ], [ %i.bi, %bb.g ] ; 2 uses
  %i.by = icmp ugt i8 %i.bx, 5
  br i1 %i.by, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.0.i, i64 13
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit

bb.k:                                             ; preds = %bb.i
  %i.ca = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !28
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit

_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit: ; preds = %bb.j, %bb.k
  %.pn.i = phi ptr [ %i.bz, %bb.j ], [ %i.cb, %bb.k ]
  %i.cc = icmp ugt i64 %i.bn, %i.bp
  br i1 %i.cc, label %bb.l, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit

bb.l:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef %i.bn, i64 noundef %i.bp) #4
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit: ; preds = %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit
  %.sroa.3.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 %.010.i
  %i.cd = sub nuw i64 %i.bp, %i.bn
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i, i64 %i.bn
  br label %bb.u

bb.m:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4NextEv.exit
  %i.cf = add i64 %2, %i.bn
  %i.cg = sub i64 %1, %i.cf                       ; 2 uses
  %i.ch = load i64, ptr %0, align 8, !tbaa !31    ; 2 uses
  %.not20 = icmp ult i64 %i.cg, %i.ch
  br i1 %.not20, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i64 0, ptr %0, align 8, !tbaa !31
  br label %bb.u

bb.o:                                             ; preds = %bb.m
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !7
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cl = load i8, ptr %i.ck, align 4, !tbaa !10
  %i.cm = zext i8 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %i.cm
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !11 ; 5 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !13 ; 4 uses
  %i.cr = add i64 %i.cg, %i.cq
  %i.cs = sub i64 %i.ch, %i.cr
  store i64 %i.cs, ptr %0, align 8, !tbaa !31
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 12
  %i.cu = load i8, ptr %i.ct, align 4, !tbaa !24  ; 2 uses
  %i.cv = icmp eq i8 %i.cu, 1
  br i1 %i.cv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !25
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !27 ; 2 uses
  %.phi.trans.insert.i29 = getelementptr inbounds nuw i8, ptr %i.cz, i64 12
  %.pre.i30 = load i8, ptr %.phi.trans.insert.i29, align 4, !tbaa !24
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.da = phi i8 [ %.pre.i30, %bb.p ], [ %i.cu, %bb.o ]
  %.010.i23 = phi i64 [ %i.cx, %bb.p ], [ 0, %bb.o ]
  %.0.i24 = phi ptr [ %i.cz, %bb.p ], [ %i.cp, %bb.o ] ; 2 uses
  %i.db = icmp ugt i8 %i.da, 5
  br i1 %i.db, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dc = getelementptr inbounds nuw i8, ptr %.0.i24, i64 13
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit31

bb.s:                                             ; preds = %bb.q
  %i.dd = getelementptr inbounds nuw i8, ptr %.0.i24, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !28
  br label %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit31

_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit31: ; preds = %bb.r, %bb.s
  %.pn.i25 = phi ptr [ %i.dc, %bb.r ], [ %i.de, %bb.s ]
  %i.df = icmp ugt i64 %i.bn, %i.cq
  br i1 %i.df, label %bb.t, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit34

bb.t:                                             ; preds = %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit31
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str, i64 noundef %i.bn, i64 noundef %i.cq) #4
  unreachable

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit34: ; preds = %_ZN4absl12lts_2025051213cord_internal8EdgeDataEPKNS1_7CordRepE.exit31
  %.sroa.3.0.i26 = getelementptr inbounds nuw i8, ptr %.pn.i25, i64 %.010.i23
  %i.dg = sub nuw i64 %i.cq, %i.bn
  %i.dh = getelementptr inbounds nuw i8, ptr %.sroa.3.0.i26, i64 %i.bn
  br label %bb.u

bb.u:                                             ; preds = %bb.n, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit34, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit
  %.sroa.438.0 = phi ptr [ %i.ce, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ], [ %i.dh, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit34 ], [ null, %bb.n ]
  %.sroa.037.0 = phi i64 [ %i.cd, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit ], [ %i.dg, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE6substrEmm.exit34 ], [ 0, %bb.n ]
  %.fca.0.insert = insertvalue { i64, ptr } poison, i64 %.sroa.037.0, 0
  %.fca.1.insert = insertvalue { i64, ptr } %.fca.0.insert, ptr %.sroa.438.0, 1
  ret { i64, ptr } %.fca.1.insert
}

declare { ptr, i64 } @_ZN4absl12lts_2025051213cord_internal21CordRepBtreeNavigator4ReadEmm(ptr noundef nonnull align 8 dereferenceable(112), i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #3

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0, !1}
end_hunk_0
