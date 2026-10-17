Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/euf_internalize?download=true
inline.NumInlined: 1083
inline.NumDeleted: 608
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZNK3euf6solver9is_sharedEPNS_5enodeE:bb.a
  %.not.i.i.i = icmp ult i32 %i.be, %i.bh
  br i1 %.not.i.i.i, label %_ZNK3euf6solver10fid2solverEi.exit.i, label %.critedge.i

_ZNK3euf6solver10fid2solverEi.exit.i:             ; preds = %_ZNK6vectorIPN3euf9th_solverELb0EjE4sizeEv.exit.i.i.i
  %i.bi = zext i32 %i.be to i64
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.bi
  %.0.i.sroa.speculate.load..i.i = load ptr, ptr %i.bj, align 8, !tbaa !512 ; 3 uses
  %.not.i = icmp eq ptr %.0.i.sroa.speculate.load..i.i, null
  br i1 %.not.i, label %.critedge.i, label %_ZNK6vectorIPN3euf9th_solverELb0EjE4sizeEv.exit.i.i12.i

_ZNK6vectorIPN3euf9th_solverELb0EjE4sizeEv.exit.i.i12.i: ; preds = %_ZNK3euf6solver10fid2solverEi.exit.i
  %i.bk = load ptr, ptr %.0.i.sroa.speculate.load..i.i, align 8, !tbaa !402
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 456
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = tail call noundef zeroext i1 %i.bm(ptr noundef nonnull align 8 dereferenceable(80) %.0.i.sroa.speculate.load..i.i, ptr noundef nonnull %i.an, ptr noundef nonnull %i.b), !inline_history !617
  br i1 %i.bn, label %.loopexit, label %.critedge.i

.critedge.i:                                      ; preds = %_ZNK6vectorIPN3euf9th_solverELb0EjE4sizeEv.exit.i.i12.i, %_ZNK3euf6solver10fid2solverEi.exit.i, %_ZNK6vectorIPN3euf9th_solverELb0EjE4sizeEv.exit.i.i.i, %.lr.ph.split.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.017.026.i, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !442 ; 3 uses
  %.not24.not.i = icmp eq ptr %i.bp, null
  br i1 %.not24.not.i, label %.loopexit111, label %.lr.ph.splitthread-pre-split.i, !llvm.loop !2

.loopexit111:                                     ; preds = %.critedge.i, %_ZNK3app13get_family_idEv.exit, %.lr.ph.i
  %.not70 = icmp eq i32 %i.av, %.055.lcssa
  %.not71 = icmp eq i32 %i.av, 0
  %or.cond107 = or i1 %.not70, %.not71
  br i1 %or.cond107, label %.loopexit, label %bb.k

.loopexit:                                        ; preds = %_ZNK6vectorIPN3euf9th_solverELb0EjE4sizeEv.exit.i.i12.i, %.loopexit111
  %i.bq = getelementptr inbounds nuw i8, ptr %.0116, i64 8 ; 2 uses
  %.not69 = icmp eq ptr %i.bq, %i.al
  br i1 %.not69, label %.critedge, label %bb.i

bb.k:                                             ; preds = %.loopexit111
  store i32 1, ptr %i.c, align 4, !tbaa !616
  br label %bb.l

.critedge:                                        ; preds = %.loopexit, %bb.h, %_ZNK3euf13enode_parents3endEv.exit
  %i.br = load i32, ptr %i.u, align 8
  %i.bs = icmp ugt i32 %i.br, -257
  br i1 %i.bs, label %.critedge76, label %.lr.ph119

.lr.ph119:                                        ; preds = %.critedge
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 2456 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !511 ; 2 uses
  %i.bv = icmp eq ptr %i.bu, null
  br i1 %i.bv, label %.critedge76, label %.lr.ph119.split

.lr.ph119.splitthread-pre-split:                  ; preds = %_ZNK3euf6solver10fid2solverEi.exit.thread
  %.pr = load ptr, ptr %i.bt, align 8, !tbaa !511
  br label %.lr.ph119.split

.lr.ph119.split:                                  ; preds = %.lr.ph119, %.lr.ph119.splitthread-pre-split
  %i.bw = phi ptr [ %.pr, %.lr.ph119.splitthread-pre-split ], [ %i.bu, %.lr.ph119 ] ; 3 uses
  %.sroa.083.0118 = phi ptr [ %i.cl, %.lr.ph119.splitthread-pre-split ], [ %i.u, %.lr.ph119 ] ; 2 uses
  %i.bx = load i32, ptr %.sroa.083.0118, align 8  ; 2 uses
  %i.by = shl i32 %i.bx, 24
  %i.bz = ashr exact i32 %i.by, 24                ; 2 uses
  %i.ca = icmp eq ptr %i.bw, null
  br i1 %i.ca, label %_ZNK3euf6solver10fid2solverEi.exit.thread, label %_ZNK6vectorIPN3euf9th_solverELb0EjE4sizeEv.exit.i.i

_ZNK6vectorIPN3euf9th_solverELb0EjE4sizeEv.exit.i.i: ; preds = %.lr.ph119.split
  %i.cb = getelementptr inbounds i8, ptr %i.bw, i64 -4
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !19
  %.not.i.i = icmp ult i32 %i.bz, %i.cc
  br i1 %.not.i.i, label %_ZNK3euf6solver10fid2solverEi.exit, label %_ZNK3euf6solver10fid2solverEi.exit.thread

_ZNK3euf6solver10fid2solverEi.exit:               ; preds = %_ZNK6vectorIPN3euf9th_solverELb0EjE4sizeEv.exit.i.i
  %i.cd = zext i32 %i.bz to i64
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.cd
  %.0.i.sroa.speculate.load..i = load ptr, ptr %i.ce, align 8, !tbaa !512 ; 3 uses
  %.not72 = icmp eq ptr %.0.i.sroa.speculate.load..i, null
  br i1 %.not72, label %_ZNK3euf6solver10fid2solverEi.exit.thread, label %_ZNK6vectorIPN3euf9th_solverELb0EjE4sizeEv.exit.i.i78

_ZNK6vectorIPN3euf9th_solverELb0EjE4sizeEv.exit.i.i78: ; preds = %_ZNK3euf6solver10fid2solverEi.exit
  %i.cf = ashr i32 %i.bx, 8
  %i.cg = load ptr, ptr %.0.i.sroa.speculate.load..i, align 8, !tbaa !402
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 448
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = tail call noundef zeroext i1 %i.ci(ptr noundef nonnull align 8 dereferenceable(80) %.0.i.sroa.speculate.load..i, i32 noundef %i.cf)
  br i1 %i.cj, label %.critedge74, label %_ZNK3euf6solver10fid2solverEi.exit.thread

.critedge74:                                      ; preds = %_ZNK6vectorIPN3euf9th_solverELb0EjE4sizeEv.exit.i.i78
  store i32 1, ptr %i.c, align 4, !tbaa !616
  br label %bb.l

_ZNK3euf6solver10fid2solverEi.exit.thread:        ; preds = %.lr.ph119.split, %_ZNK6vectorIPN3euf9th_solverELb0EjE4sizeEv.exit.i.i, %_ZNK6vectorIPN3euf9th_solverELb0EjE4sizeEv.exit.i.i78, %_ZNK3euf6solver10fid2solverEi.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.083.0118, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !442 ; 2 uses
  %.not110 = icmp eq ptr %i.cl, null
  br i1 %.not110, label %.critedge76, label %.lr.ph119.splitthread-pre-split, !llvm.loop !615

.critedge76:                                      ; preds = %_ZNK3euf6solver10fid2solverEi.exit.thread, %.lr.ph119, %.critedge
  store i32 -1, ptr %i.c, align 4, !tbaa !616
  br label %bb.l

bb.l:                                             ; preds = %.critedge74, %bb.k, %.thread97, %bb.g, %.critedge76, %bb.a, %bb.e, %bb.b
  %.10 = phi i1 [ true, %bb.e ], [ true, %bb.a ], [ false, %bb.b ], [ true, %bb.g ], [ false, %.critedge76 ], [ true, %.critedge74 ], [ true, %bb.k ], [ true, %.thread97 ]
  ret i1 %.10
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK3euf6solver13is_beta_redexEPNS_5enodeES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8528) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp ult i32 %i.b, -256
  br i1 %i.c, label %.lr.ph, label %select.unfold._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2456 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !511  ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %select.unfold._crit_edge, label %.lr.ph.split

.lr.ph.splitthread-pre-split:                     ; preds = %.critedge
  %.pr = load ptr, ptr %i.d, align 8, !tbaa !511
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.g = phi ptr [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.e, %.lr.ph ] ; 3 uses
  %.sroa.017.026 = phi ptr [ %i.u, %.lr.ph.splitthread-pre-split ], [ %i.a, %.lr.ph ] ; 2 uses
  %i.h = load i32, ptr %.sroa.017.026, align 8
  %i.i = shl i32 %i.h, 24
  %i.j = ashr exact i32 %i.i, 24                  ; 2 uses
  %i.k = icmp eq ptr %i.g, null
  br i1 %i.k, label %.critedge, label %_ZNK6vectorIPN3euf9th_solverELb0EjE4sizeEv.exit.i.i

_ZNK6vectorIPN3euf9th_solverELb0EjE4sizeEv.exit.i.i: ; preds = %.lr.ph.split
  %i.l = getelementptr inbounds i8, ptr %i.g, i64 -4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !19
  %.not.i.i = icmp ult i32 %i.j, %i.m
  br i1 %.not.i.i, label %_ZNK3euf6solver10fid2solverEi.exit, label %.critedge

_ZNK3euf6solver10fid2solverEi.exit:               ; preds = %_ZNK6vectorIPN3euf9th_solverELb0EjE4sizeEv.exit.i.i
  %i.n = zext i32 %i.j to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.n
  %.0.i.sroa.speculate.load..i = load ptr, ptr %i.o, align 8, !tbaa !512 ; 3 uses
  %.not = icmp eq ptr %.0.i.sroa.speculate.load..i, null
  br i1 %.not, label %.critedge, label %_ZNK6vectorIPN3euf9th_solverELb0EjE4sizeEv.exit.i.i12

_ZNK6vectorIPN3euf9th_solverELb0EjE4sizeEv.exit.i.i12: ; preds = %_ZNK3euf6solver10fid2solverEi.exit
  %i.p = load ptr, ptr %.0.i.sroa.speculate.load..i, align 8, !tbaa !402
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 456
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef zeroext i1 %i.r(ptr noundef nonnull align 8 dereferenceable(80) %.0.i.sroa.speculate.load..i, ptr noundef %1, ptr noundef %2)
  br i1 %i.s, label %select.unfold._crit_edge, label %.critedge

.critedge:                                        ; preds = %.lr.ph.split, %_ZNK6vectorIPN3euf9th_solverELb0EjE4sizeEv.exit.i.i, %_ZNK6vectorIPN3euf9th_solverELb0EjE4sizeEv.exit.i.i12, %_ZNK3euf6solver10fid2solverEi.exit
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.017.026, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !442  ; 2 uses
  %.not24.not = icmp eq ptr %i.u, null
  br i1 %.not24.not, label %select.unfold._crit_edge, label %.lr.ph.splitthread-pre-split, !llvm.loop !2

select.unfold._crit_edge:                         ; preds = %_ZNK6vectorIPN3euf9th_solverELb0EjE4sizeEv.exit.i.i12, %.critedge, %.lr.ph, %bb.a
  %.not24.lcssa = phi i1 [ false, %bb.a ], [ false, %.lr.ph ], [ false, %.critedge ], [ true, %_ZNK6vectorIPN3euf9th_solverELb0EjE4sizeEv.exit.i.i12 ]
  ret i1 %.not24.lcssa
}

declare noundef zeroext i1 @_ZNK11ast_manager9are_equalEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef, ptr noundef) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK11ast_manager12are_distinctEP4exprS1_(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden noundef i32 @_ZNK3euf6solver18get_max_generationEP4expr(ptr noundef nonnull align 8 dereferenceable(8528) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.std::allocator", align 1    ; 4 uses
  %4 = alloca %class.ast_fast_mark, align 8       ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.a, ptr %4, align 8, !tbaa !515
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 7 uses
  store i32 0, ptr %i.b, align 8, !tbaa !516
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  store i32 16, ptr %i.c, align 4, !tbaa !623
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2376 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !406  ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !19   ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.j = load i32, ptr %i.i, align 4, !tbaa !19
  %i.k = icmp eq i32 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  invoke void @_ZN6vectorIP4exprLb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.c
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !406 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds i8, ptr %.pre.i, i64 -4
  %.pre2.i = load i32, ptr %.phi.trans.insert.i, align 4, !tbaa !19
  br label %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit

_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit:     ; preds = %.noexc, %bb.b
  %i.l = phi i32 [ %.pre2.i, %.noexc ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = phi ptr [ %.pre.i, %.noexc ], [ %i.e, %bb.b ] ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -4
  %i.o = zext i32 %i.l to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.o
  store ptr %1, ptr %i.p, align 8, !tbaa !409
  %i.q = add i32 %i.l, 1
  store i32 %i.q, ptr %i.n, align 4, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1776
  br label %.outer.split

.outer.split:                                     ; preds = %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit, %.loopexit
  %5 = phi ptr [ %i.m, %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit ], [ %.pre, %.loopexit ] ; 2 uses
  %.045.ph58 = phi i32 [ 0, %_ZN6vectorIP4exprLb0EjE9push_backERKS1_.exit ], [ %.1, %.loopexit ] ; 6 uses
  %i.s = getelementptr inbounds i8, ptr %5, i64 -4 ; 2 uses
  %.promoted = load i32, ptr %i.s, align 4, !tbaa !19 ; 2 uses
  %i.t = icmp eq i32 %.promoted, 0
  br i1 %i.t, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread.split, label %.lr.ph103

.lr.ph103:                                        ; preds = %.outer.split
  %i.u = zext i32 %.promoted to i64
  br label %bb.d

_ZNK6vectorIP4exprLb0EjE5emptyEv.exit:            ; preds = %bb.d
  %i.v = icmp eq i64 %i.w, 0
  br i1 %i.v, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread.split, label %bb.d, !llvm.loop !618

bb.d:                                             ; preds = %.lr.ph103, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit
  %indvars.iv102 = phi i64 [ %i.u, %.lr.ph103 ], [ %i.w, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit ]
  %i.w = add nsw i64 %indvars.iv102, -1           ; 4 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %i.w
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !409  ; 6 uses
  %indvars = trunc nuw i64 %i.w to i32
  store i32 %indvars, ptr %i.s, align 4, !tbaa !19
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.aa = load i32, ptr %i.z, align 4             ; 2 uses
  %i.ab = and i32 %i.aa, 65536
  %.not48 = icmp eq i32 %i.ab, 0
  br i1 %.not48, label %bb.e, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit, !llvm.loop !618

.loopexit49:                                      ; preds = %bb.f, %bb.g
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.c
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.ad = or disjoint i32 %i.aa, 65536
  store i32 %i.ad, ptr %i.ac, align 4
  %i.ae = load i32, ptr %i.b, align 8, !tbaa !516 ; 2 uses
  %i.af = load i32, ptr %i.c, align 4, !tbaa !623 ; 2 uses
  %.not.i.i = icmp ult i32 %i.ae, %i.af
  br i1 %.not.i.i, label %._crit_edge.i.i, label %bb.f

._crit_edge.i.i:                                  ; preds = %bb.e
  %.pre.i.i = load ptr, ptr %4, align 8, !tbaa !515
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ag = shl i32 %i.af, 1                        ; 2 uses
  %i.ah = zext i32 %i.ag to i64
  %i.ai = shl nuw nsw i64 %i.ah, 3
  %i.aj = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef %i.ai)
          to label %.noexc17 unwind label %.loopexit49 ; 9 uses

.noexc17:                                         ; preds = %bb.f
  %i.ak = load i32, ptr %i.b, align 8, !tbaa !516 ; 4 uses
  %.not.i.i.i = icmp eq i32 %i.ak, 0
  %.pre.i.i.i = load ptr, ptr %4, align 8, !tbaa !515 ; 10 uses
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.noexc17
  %.pre.i.i.i107 = ptrtoaddr ptr %.pre.i.i.i to i64
  %i.al = ptrtoaddr ptr %i.aj to i64
  %wide.trip.count.i.i.i = zext i32 %i.ak to i64  ; 5 uses
  %min.iters.check = icmp ult i32 %i.ak, 4
  %i.am = sub i64 %.pre.i.i.i107, %i.al
  %diff.check = icmp ugt i64 %i.am, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 4294967292 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %index ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ao, align 8, !tbaa !518
  %wide.load108 = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !518
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store <2 x ptr> %wide.load, ptr %i.an, align 8, !tbaa !518
  store <2 x ptr> %wide.load108, ptr %i.aq, align 8, !tbaa !518
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ar = icmp eq i64 %index.next, %n.vec
  br i1 %i.ar, label %middle.block, label %vector.body, !llvm.loop !619

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %._crit_edge.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i.i.i.prol
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !518
  store ptr %i.au, ptr %i.as, align 8, !tbaa !518
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !620

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.av = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.aw = icmp ugt i64 %i.av, -4
  br i1 %i.aw, label %._crit_edge.i.i.i, label %scalar.ph

._crit_edge.i.i.i:                                ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.noexc17
  %.not.i.i.i.i = icmp eq ptr %.pre.i.i.i, %i.a
  %i.ax = icmp eq ptr %.pre.i.i.i, null
  %or.cond.i.i.i.i = or i1 %.not.i.i.i.i, %i.ax
  br i1 %or.cond.i.i.i.i, label %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i, label %bb.g

bb.g:                                             ; preds = %._crit_edge.i.i.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %.pre.i.i.i)
          to label %.noexc18 unwind label %.loopexit49

.noexc18:                                         ; preds = %bb.g
  %.pre2.pre.i.i = load i32, ptr %i.b, align 8, !tbaa !516
  br label %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.i.i.i
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.i.i.i
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !518
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !518
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.next.i.i.i
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !518
  store ptr %i.bd, ptr %i.bb, align 8, !tbaa !518
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.next.i.i.i.1
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !518
  store ptr %i.bg, ptr %i.be, align 8, !tbaa !518
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv.next.i.i.i.2
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !518
  store ptr %i.bj, ptr %i.bh, align 8, !tbaa !518
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.i.i.i, label %scalar.ph, !llvm.loop !621

_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i:     ; preds = %.noexc18, %._crit_edge.i.i.i
  %.pre2.i.i = phi i32 [ %i.ak, %._crit_edge.i.i.i ], [ %.pre2.pre.i.i, %.noexc18 ]
  store ptr %i.aj, ptr %4, align 8, !tbaa !515
  store i32 %i.ag, ptr %i.c, align 4, !tbaa !623
  br label %bb.h

bb.h:                                             ; preds = %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i, %._crit_edge.i.i
  %i.bk = phi i32 [ %i.ae, %._crit_edge.i.i ], [ %.pre2.i.i, %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i ] ; 2 uses
  %i.bl = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.aj, %_ZN6bufferIP3astLb0ELj16EE6expandEv.exit.i.i ]
  %i.bm = zext i32 %i.bk to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.bm
  store ptr %i.y, ptr %i.bn, align 8, !tbaa !518
  %i.bo = add i32 %i.bk, 1
  store i32 %i.bo, ptr %i.b, align 8, !tbaa !516
  %i.bp = load i32, ptr %i.y, align 4, !tbaa !13  ; 2 uses
  %i.bq = load ptr, ptr %i.r, align 8, !tbaa !18  ; 3 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %_ZNK3euf6egraph4findEP4expr.exit.thread, label %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i

_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i:  ; preds = %bb.h
  %i.bs = getelementptr inbounds i8, ptr %i.bq, i64 -4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !19
  %.not.i.i19 = icmp ult i32 %i.bp, %i.bt
  br i1 %.not.i.i19, label %_ZNK3euf6egraph4findEP4expr.exit, label %_ZNK3euf6egraph4findEP4expr.exit.thread

_ZNK3euf6egraph4findEP4expr.exit:                 ; preds = %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i
  %i.bu = zext i32 %i.bp to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bu
  %.0.i.sroa.speculate.load..i = load ptr, ptr %i.bv, align 8, !tbaa !21 ; 2 uses
  %.not = icmp eq ptr %.0.i.sroa.speculate.load..i, null
  br i1 %.not, label %_ZNK3euf6egraph4findEP4expr.exit.thread, label %bb.i

bb.i:                                             ; preds = %_ZNK3euf6egraph4findEP4expr.exit
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i.sroa.speculate.load..i, i64 40
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !624
  %.sroa.speculated = call i32 @llvm.umax.i32(i32 %.045.ph58, i32 %i.bx)
  br label %.loopexit

_ZNK3euf6egraph4findEP4expr.exit.thread:          ; preds = %bb.h, %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i, %_ZNK3euf6egraph4findEP4expr.exit
  %i.by = load i32, ptr %i.ac, align 4
  %i.bz = and i32 %i.by, 65535
  %i.ca = icmp eq i32 %i.bz, 0
  br i1 %i.ca, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %_ZNK3euf6egraph4findEP4expr.exit.thread
  %i.cb = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !440 ; 2 uses
  %i.ce = zext i32 %i.cd to i64
  %.idx = shl nuw nsw i64 %i.ce, 3
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx
  %.not1456 = icmp eq i32 %i.cd, 0
  br i1 %.not1456, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.j
  %.pre66 = load ptr, ptr %i.d, align 8, !tbaa !406
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.v
  %i.cg = phi ptr [ %i.dv, %bb.v ], [ %.pre66, %.lr.ph.preheader ] ; 4 uses
  %.057 = phi ptr [ %i.eb, %bb.v ], [ %i.cb, %.lr.ph.preheader ] ; 2 uses
  %i.ch = load ptr, ptr %.057, align 8, !tbaa !409
  %i.ci = icmp eq ptr %i.cg, null
  br i1 %i.ci, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.cj = getelementptr inbounds i8, ptr %i.cg, i64 -4
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !19 ; 5 uses
  %i.cl = getelementptr inbounds i8, ptr %i.cg, i64 -8 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !19
  %i.cn = icmp eq i32 %i.ck, %i.cm
  br i1 %i.cn, label %bb.m, label %bb.v

bb.l:                                             ; preds = %.lr.ph
  %i.co = invoke noalias noundef ptr @_ZN6memory8allocateEm(i64 noundef 24)
          to label %.noexc32 unwind label %bb.w   ; 3 uses

.noexc32:                                         ; preds = %bb.l
  store i32 2, ptr %i.co, align 4, !tbaa !19
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 4
  store i32 0, ptr %i.cp, align 4, !tbaa !19
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8 ; 2 uses
  store ptr %i.cq, ptr %i.d, align 8, !tbaa !406
  br label %.noexc23

bb.m:                                             ; preds = %bb.k
  %i.cr = mul i32 %i.ck, 3
  %i.cs = add i32 %i.cr, 1
  %i.ct = lshr i32 %i.cs, 1                       ; 3 uses
  %i.cu = shl i32 %i.ct, 3
  %i.cv = add i32 %i.cu, 8                        ; 2 uses
  %.not.i29 = icmp ugt i32 %i.ct, %i.ck
  br i1 %.not.i29, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cw = shl i32 %i.ck, 3
  %i.cx = add i32 %i.cw, 8
  %.not27.i = icmp ugt i32 %i.cv, %i.cx
  br i1 %.not27.i, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cy = call ptr @__cxa_allocate_exception(i64 40) #21 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.9, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.p unwind label %bb.s

bb.p:                                             ; preds = %bb.o
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV17default_exception, i64 16), ptr %i.cy, align 8, !tbaa !402
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 24 ; 3 uses
  store ptr %i.da, ptr %i.cz, align 8, !tbaa !497
  %i.db = load ptr, ptr %2, align 8, !tbaa !498   ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %bb.q, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.df = load i64, ptr %i.de, align 8, !tbaa !499 ; 3 uses
  %i.dg = icmp ult i64 %i.df, 16
  call void @llvm.assume(i1 %i.dg)
  %i.dh = add nuw nsw i64 %i.df, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.da, ptr noundef nonnull align 8 dereferenceable(1) %i.dc, i64 %i.dh, i1 false)
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.p
  store ptr %i.db, ptr %i.cz, align 8, !tbaa !498
  %i.di = load i64, ptr %i.dc, align 8, !tbaa !423
  store i64 %i.di, ptr %i.da, align 8, !tbaa !423
  %.phi.trans.insert.i30 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.pre.i31 = load i64, ptr %.phi.trans.insert.i30, align 8, !tbaa !499
  br label %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.q
  %i.dj = phi i64 [ %i.df, %bb.q ], [ %.pre.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store i64 %i.dj, ptr %i.dl, align 8, !tbaa !499
  store ptr %i.dc, ptr %2, align 8, !tbaa !498
  store i64 0, ptr %i.dk, align 8, !tbaa !499
  store i8 0, ptr %i.dc, align 8, !tbaa !423
  invoke void @__cxa_throw(ptr nonnull %i.cy, ptr nonnull @_ZTI17default_exception, ptr nonnull @_ZN17default_exceptionD2Ev) #23
          to label %bb.u unwind label %bb.r

bb.r:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  %i.dm = landingpad { ptr, i32 }
          cleanup
  %i.dn = load ptr, ptr %2, align 8, !tbaa !498   ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.dc
  br i1 %i.do, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i: ; preds = %bb.r
  %i.dp = load i64, ptr %i.dc, align 8, !tbaa !423
  %i.dq = add i64 %i.dp, 1
  call void @_ZdlPvm(ptr noundef %i.dn, i64 noundef %i.dq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %.body

bb.s:                                             ; preds = %bb.o
  %i.dr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  call void @__cxa_free_exception(ptr %i.cy) #21
  br label %.body

bb.t:                                             ; preds = %bb.n
  %i.ds = zext i32 %i.cv to i64
  %i.dt = invoke noalias noundef ptr @_ZN6memory10reallocateEPvm(ptr noundef nonnull %i.cl, i64 noundef %i.ds)
          to label %.noexc33 unwind label %bb.w   ; 2 uses

.noexc33:                                         ; preds = %bb.t
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 8 ; 2 uses
  store ptr %i.du, ptr %i.d, align 8, !tbaa !406
  store i32 %i.ct, ptr %i.dt, align 4, !tbaa !19
  br label %.noexc23

bb.u:                                             ; preds = %_ZN17default_exceptionC2EONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  unreachable

.noexc23:                                         ; preds = %.noexc33, %.noexc32
  %.pre.i20 = phi ptr [ %i.du, %.noexc33 ], [ %i.cq, %.noexc32 ] ; 2 uses
  %.phi.trans.insert.i21 = getelementptr inbounds i8, ptr %.pre.i20, i64 -4
  %.pre2.i22 = load i32, ptr %.phi.trans.insert.i21, align 4, !tbaa !19
  br label %bb.v

bb.v:                                             ; preds = %.noexc23, %bb.k
  %i.dv = phi ptr [ %.pre.i20, %.noexc23 ], [ %i.cg, %bb.k ] ; 3 uses
  %i.dw = phi i32 [ %.pre2.i22, %.noexc23 ], [ %i.ck, %bb.k ] ; 2 uses
  %i.dx = getelementptr inbounds i8, ptr %i.dv, i64 -4
  %i.dy = zext i32 %i.dw to i64
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dy
  store ptr %i.ch, ptr %i.dz, align 8, !tbaa !409
  %i.ea = add i32 %i.dw, 1
  store i32 %i.ea, ptr %i.dx, align 4, !tbaa !19
  %i.eb = getelementptr inbounds nuw i8, ptr %.057, i64 8 ; 2 uses
  %.not14 = icmp eq ptr %i.eb, %i.cf
  br i1 %.not14, label %.loopexit, label %.lr.ph

bb.w:                                             ; preds = %bb.t, %bb.l
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %bb.v, %bb.j, %_ZNK3euf6egraph4findEP4expr.exit.thread, %bb.i
  %.1 = phi i32 [ %.sroa.speculated, %bb.i ], [ %.045.ph58, %_ZNK3euf6egraph4findEP4expr.exit.thread ], [ %.045.ph58, %bb.j ], [ %.045.ph58, %bb.v ] ; 2 uses
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !406 ; 2 uses
  %i.ed = icmp eq ptr %.pre, null
  br i1 %i.ed, label %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread.split, label %.outer.split, !llvm.loop !618

_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread.split: ; preds = %.loopexit, %.outer.split, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit
  %.045.ph.lcssa.split = phi i32 [ %.045.ph58, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit ], [ %.1, %.loopexit ], [ %.045.ph58, %.outer.split ]
  %i.ee = load ptr, ptr %4, align 8, !tbaa !515   ; 4 uses
  %i.ef = load i32, ptr %i.b, align 8, !tbaa !516 ; 2 uses
  %i.eg = zext i32 %i.ef to i64
  %.idx.i.i = shl nuw nsw i64 %i.eg, 3            ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.idx.i.i
  %.not8.i.i = icmp eq i32 %i.ef, 0
  br i1 %.not8.i.i, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread.split
  %i.ei = add nsw i64 %.idx.i.i, -8               ; 2 uses
  %i.ej = lshr exact i64 %i.ei, 3
  %i.ek = add nuw nsw i64 %i.ej, 1
  %xtraiter117 = and i64 %i.ek, 3                 ; 2 uses
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  br i1 %lcmp.mod118.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.09.i.i.prol = phi ptr [ %i.ep, %.lr.ph.i.i.prol ], [ %i.ee, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter119 = phi i64 [ %prol.iter119.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.el = load ptr, ptr %.09.i.i.prol, align 8, !tbaa !518
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 4 ; 2 uses
  %i.en = load i32, ptr %i.em, align 4
  %i.eo = and i32 %i.en, -65537
  store i32 %i.eo, ptr %i.em, align 4
  %i.ep = getelementptr inbounds nuw i8, ptr %.09.i.i.prol, i64 8 ; 2 uses
  %prol.iter119.next = add i64 %prol.iter119, 1   ; 2 uses
  %prol.iter119.cmp.not = icmp eq i64 %prol.iter119.next, %xtraiter117
  br i1 %prol.iter119.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !622

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.09.i.i.unr = phi ptr [ %i.ee, %.lr.ph.i.i.preheader ], [ %i.ep, %.lr.ph.i.i.prol ]
  %i.eq = icmp ult i64 %i.ei, 24
  br i1 %i.eq, label %.loopexit.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.fk, %.lr.ph.i.i ], [ %.09.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 5 uses
  %i.er = load ptr, ptr %.09.i.i, align 8, !tbaa !518
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4 ; 2 uses
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = and i32 %i.et, -65537
  store i32 %i.eu, ptr %i.es, align 4
  %i.ev = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !518
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 4 ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4
  %i.ez = and i32 %i.ey, -65537
  store i32 %i.ez, ptr %i.ex, align 4
  %i.fa = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 16
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !518
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 4 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4
  %i.fe = and i32 %i.fd, -65537
  store i32 %i.fe, ptr %i.fc, align 4
  %i.ff = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !518
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 4 ; 2 uses
  %i.fi = load i32, ptr %i.fh, align 4
  %i.fj = and i32 %i.fi, -65537
  store i32 %i.fj, ptr %i.fh, align 4
  %i.fk = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 32 ; 2 uses
  %.not.i.i25.3 = icmp eq ptr %i.fk, %i.eh
  br i1 %.not.i.i25.3, label %.loopexit.loopexit.i, label %.lr.ph.i.i

.loopexit.loopexit.i:                             ; preds = %.lr.ph.i.i, %.lr.ph.i.i.prol.loopexit
  %.pre.i26 = load ptr, ptr %4, align 8, !tbaa !515
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread.split
  %i.fl = phi ptr [ %.pre.i26, %.loopexit.loopexit.i ], [ %i.ee, %_ZNK6vectorIP4exprLb0EjE5emptyEv.exit.thread.split ] ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !516
  %.not.i.i.i.i27 = icmp eq ptr %i.fl, %i.a
  %i.fm = icmp eq ptr %i.fl, null
  %or.cond.i.i.i.i28 = or i1 %.not.i.i.i.i27, %i.fm
  br i1 %or.cond.i.i.i.i28, label %_ZN13ast_fast_markILj1EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %.loopexit.i
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.fl)
          to label %_ZN13ast_fast_markILj1EED2Ev.exit unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fn = landingpad { ptr, i32 }
          catch ptr null
  %i.fo = extractvalue { ptr, i32 } %i.fn, 0
  call void @__clang_call_terminate(ptr %i.fo) #22
  unreachable

_ZN13ast_fast_markILj1EED2Ev.exit:                ; preds = %.loopexit.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  ret i32 %.045.ph.lcssa.split

.body:                                            ; preds = %.loopexit49, %.loopexit.split-lp, %bb.w, %bb.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn.pn = phi { ptr, i32 } [ %i.dm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.dr, %bb.s ], [ %i.ec, %bb.w ], [ %lpad.loopexit, %.loopexit49 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @_ZN13ast_fast_markILj1EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %4) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN13ast_fast_markILj1EED2Ev(ptr noundef nonnull align 8 dead_on_return(144) dereferenceable(144) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !515    ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !516  ; 2 uses
  %i.d = zext i32 %i.c to i64
  %.idx.i = shl nuw nsw i64 %i.d, 3               ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i
  %.not8.i = icmp eq i32 %i.c, 0
  br i1 %.not8.i, label %.loopexit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.f = add nsw i64 %.idx.i, -8                  ; 2 uses
  %i.g = lshr exact i64 %i.f, 3
  %i.h = add nuw nsw i64 %i.g, 1
  %xtraiter = and i64 %i.h, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.09.i.prol = phi ptr [ %i.m, %.lr.ph.i.prol ], [ %i.a, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.i = load ptr, ptr %.09.i.prol, align 8, !tbaa !518
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = and i32 %i.k, -65537
  store i32 %i.l, ptr %i.j, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %.09.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !625

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.09.i.unr = phi ptr [ %i.a, %.lr.ph.i.preheader ], [ %i.m, %.lr.ph.i.prol ]
  %i.n = icmp ult i64 %i.f, 24
  br i1 %i.n, label %.loopexit.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.09.i = phi ptr [ %i.ah, %.lr.ph.i ], [ %.09.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.o = load ptr, ptr %.09.i, align 8, !tbaa !518
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 4 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, -65537
  store i32 %i.r, ptr %i.p, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !518
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = and i32 %i.v, -65537
  store i32 %i.w, ptr %i.u, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %.09.i, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !518
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = and i32 %i.aa, -65537
  store i32 %i.ab, ptr %i.z, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %.09.i, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !518
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = and i32 %i.af, -65537
  store i32 %i.ag, ptr %i.ae, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %.09.i, i64 32 ; 2 uses
  %.not.i.3 = icmp eq ptr %i.ah, %i.e
  br i1 %.not.i.3, label %.loopexit.loopexit, label %.lr.ph.i

.loopexit.loopexit:                               ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %.pre = load ptr, ptr %0, align 8, !tbaa !515
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %i.ai = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.a, %bb.a ] ; 3 uses
  store i32 0, ptr %i.b, align 8, !tbaa !516
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i.i.i = icmp eq ptr %i.ai, %i.aj
  %i.ak = icmp eq ptr %i.ai, null
  %or.cond.i.i.i = or i1 %.not.i.i.i, %i.ak
  br i1 %or.cond.i.i.i, label %_ZN6bufferIP3astLb0ELj16EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %.loopexit
  invoke void @_ZN6memory10deallocateEPv(ptr noundef nonnull %i.ai)
          to label %_ZN6bufferIP3astLb0ELj16EED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  tail call void @__clang_call_terminate(ptr %i.am) #22
  unreachable

_ZN6bufferIP3astLb0ELj16EED2Ev.exit:              ; preds = %.loopexit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN3euf6solver13e_internalizeEP4expr(ptr noundef nonnull align 8 dereferenceable(8528) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1776 ; 2 uses
  %i.b = load i32, ptr %1, align 4, !tbaa !13     ; 2 uses
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %_ZNK3euf6egraph4findEP4expr.exit.thread, label %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i

_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i:  ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.c, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !19
  %.not.i.i = icmp ult i32 %i.b, %i.f
  br i1 %.not.i.i, label %_ZNK3euf6egraph4findEP4expr.exit, label %_ZNK3euf6egraph4findEP4expr.exit.thread

_ZNK3euf6egraph4findEP4expr.exit:                 ; preds = %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i
  %i.g = zext i32 %i.b to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %i.g
  %.0.i.sroa.speculate.load..i = load ptr, ptr %i.h, align 8, !tbaa !21 ; 2 uses
  %.not = icmp eq ptr %.0.i.sroa.speculate.load..i, null
  br i1 %.not, label %_ZNK3euf6egraph4findEP4expr.exit.thread, label %_ZNK3euf6egraph4findEP4expr.exit11

_ZNK3euf6egraph4findEP4expr.exit.thread:          ; preds = %bb.a, %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i, %_ZNK3euf6egraph4findEP4expr.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !402
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 480
  %i.k = load ptr, ptr %i.j, align 8
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(8528) %0, ptr noundef nonnull %1)
  %i.l = load i32, ptr %1, align 4, !tbaa !13     ; 2 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %_ZNK3euf6egraph4findEP4expr.exit11, label %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i7

_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i7: ; preds = %_ZNK3euf6egraph4findEP4expr.exit.thread
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !19
  %.not.i.i8 = icmp ult i32 %i.l, %i.p
  br i1 %.not.i.i8, label %bb.b, label %_ZNK3euf6egraph4findEP4expr.exit11

bb.b:                                             ; preds = %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i7
  %i.q = zext i32 %i.l to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.q
  %.0.i.sroa.speculate.load..i10 = load ptr, ptr %i.r, align 8, !tbaa !21
  br label %_ZNK3euf6egraph4findEP4expr.exit11

_ZNK3euf6egraph4findEP4expr.exit11:               ; preds = %bb.b, %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i7, %_ZNK3euf6egraph4findEP4expr.exit.thread, %_ZNK3euf6egraph4findEP4expr.exit
  %.0 = phi ptr [ %.0.i.sroa.speculate.load..i, %_ZNK3euf6egraph4findEP4expr.exit ], [ %.0.i.sroa.speculate.load..i10, %bb.b ], [ null, %_ZNK6vectorIPN3euf5enodeELb0EjE4sizeEv.exit.i.i7 ], [ null, %_ZNK3euf6egraph4findEP4expr.exit.thread ]
  ret ptr %.0
}

declare noundef ptr @_ZN3euf6egraph2mkEP4exprjjPKPNS_5enodeE(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN3euf6egraph20set_merge_tf_enabledEPNS_5enodeEb(ptr noundef nonnull align 8 dereferenceable(536), ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK11ast_manager8is_valueEP4expr(ptr noundef nonnull align 8 dereferenceable(952), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN3euf6solver7mk_trueEv(ptr noundef nonnull align 8 dereferenceable(8528)) local_unnamed_addr #2

declare noundef ptr @_ZN3euf6solver8mk_falseEv(ptr noundef nonnull align 8 dereferenceable(8528)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define hidden void @_ZN3euf6solver10add_clauseEjPKN3sat7literalE(ptr noundef nonnull align 8 dereferenceable(8528) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.svector.59, align 8          ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8448 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  store ptr null, ptr %3, align 8, !tbaa !501
  %.not.i.i = icmp eq i32 %1, 0
  br i1 %.not.i.i, label %_ZN7svectorIN3sat7literalEjEC2EjPKS1_.exit, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %wide.trip.count.i.i = zext i32 %1 to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i, %.lr.ph.preheader.i.i
  %i.b = phi ptr [ null, %.lr.ph.preheader.i.i ], [ %i.j, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i ] ; 4 uses
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i ] ; 2 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.i
  %i.d = icmp eq ptr %i.b, null
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !19   ; 2 uses
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.h = load i32, ptr %i.g, align 4, !tbaa !19
  %i.i = icmp eq i32 %i.f, %i.h
  br i1 %i.i, label %bb.c, label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  call void @_ZN6vectorIN3sat7literalELb0EjE13expand_vectorEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %.pre.i.i.i = load ptr, ptr %3, align 8, !tbaa !501 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr inbounds i8, ptr %.pre.i.i.i, i64 -4
  %.pre2.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 4, !tbaa !19
  br label %_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i

_ZN6vectorIN3sat7literalELb0EjE9push_backERKS1_.exit.i.i: ; preds = %bb.c, %bb.b
  %i.j = phi ptr [ %.pre.i.i.i, %bb.c ], [ %i.b, %bb.b ] ; 4 uses
end_hunk_0
