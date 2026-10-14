Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/boost/original/static_string?download=true
inline.NumInlined: 13637
inline.NumDeleted: 1357
loop-unroll.NumCompletelyUnrolled: 5361
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 5371
loop-unroll.NumUnrolledNotLatch: 27
begin_hunk_0_@_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6insertEmPKcm:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %1 ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 %3 ; 2 uses
  %i.h = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.i = ptrtoint ptr %i.e to i64
  %i.j = sub nsw i64 420, %i.c
  %i.k = icmp ugt i64 %3, %i.j
  br i1 %i.k, label %bb.d, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.4) #31
  unreachable

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i:         ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 %3 ; 2 uses
  %i.m = sub nuw nsw i64 %i.c, %1
  %i.n = add nuw nsw i64 %i.m, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.l, ptr noundef nonnull align 1 dereferenceable(1) %i.f, i64 %i.n, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.c
  %i.p = icmp uge ptr %2, %i.e
  %i.q = icmp ult ptr %2, %i.o
  %i.r = and i1 %i.p, %i.q
  %.not.i = icmp ugt ptr %i.g, %i.f
  %or.cond.i = and i1 %.not.i, %i.r
  br i1 %or.cond.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i
  %.not7.i.i = icmp samesign eq i64 %3, 0
  br i1 %.not7.i.i, label %_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6insertIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueEPcE4typeES7_S9_S9_.exit, label %iter.check

iter.check:                                       ; preds = %bb.e
  %min.iters.check = icmp ult i64 %3, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.s = add i64 %1, %i.a
  %i.t = sub i64 %i.s, %i.h
  %i.u = add i64 %i.t, 1
  %diff.check = icmp ult i64 %i.u, 31
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check11 = icmp ult i64 %3, 32
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.v = and i64 %3, 24
  %n.vec = and i64 %3, -32                        ; 5 uses
  %i.w = getelementptr i8, ptr %i.f, i64 %n.vec
  %i.x = getelementptr i8, ptr %2, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.f, i64 %index ; 2 uses
  %next.gep12 = getelementptr i8, ptr %2, i64 %index ; 2 uses
  %i.y = getelementptr i8, ptr %next.gep12, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep12, align 1, !tbaa !26
  %wide.load13 = load <16 x i8>, ptr %i.y, align 1, !tbaa !26
  %i.z = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !26
  store <16 x i8> %wide.load13, ptr %i.z, align 1, !tbaa !26
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !158

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6insertIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueEPcE4typeES7_S9_S9_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.v, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !41

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %3, -8                       ; 4 uses
  %i.ab = getelementptr i8, ptr %i.f, i64 %n.vec15
  %i.ac = getelementptr i8, ptr %2, i64 %n.vec15
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next20, %vec.epilog.vector.body ] ; 3 uses
  %next.gep17 = getelementptr i8, ptr %i.f, i64 %index16
  %next.gep18 = getelementptr i8, ptr %2, i64 %index16
  %wide.load19 = load <8 x i8>, ptr %next.gep18, align 1, !tbaa !26
  store <8 x i8> %wide.load19, ptr %next.gep17, align 1, !tbaa !26
  %index.next20 = add nuw i64 %index16, 8         ; 2 uses
  %i.ad = icmp eq i64 %index.next20, %n.vec15
  br i1 %i.ad, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !159

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n21 = icmp eq i64 %3, %n.vec15
  br i1 %cmp.n21, label %_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6insertIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueEPcE4typeES7_S9_S9_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.ph = phi ptr [ %i.f, %iter.check ], [ %i.f, %vector.memcheck ], [ %i.w, %vec.epilog.iter.check ], [ %i.ab, %vec.epilog.middle.block ] ; 2 uses
  %.068.i.i.ph = phi ptr [ %2, %iter.check ], [ %2, %vector.memcheck ], [ %i.x, %vec.epilog.iter.check ], [ %i.ac, %vec.epilog.middle.block ] ; 3 uses
  %i.ae = add i64 %3, %i.h                        ; 2 uses
  %.068.i.i.ph24 = ptrtoaddr ptr %.068.i.i.ph to i64 ; 2 uses
  %i.af = sub i64 %i.ae, %.068.i.i.ph24
  %xtraiter = and i64 %i.af, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.09.i.i.prol = phi ptr [ %i.ai, %.lr.ph.i.i.prol ], [ %.09.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.068.i.i.prol = phi ptr [ %i.ah, %.lr.ph.i.i.prol ], [ %.068.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ag = load i8, ptr %.068.i.i.prol, align 1, !tbaa !26
  store i8 %i.ag, ptr %.09.i.i.prol, align 1, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %.068.i.i.prol, i64 1 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.09.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !160

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.09.i.i.unr = phi ptr [ %.09.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ai, %.lr.ph.i.i.prol ]
  %.068.i.i.unr = phi ptr [ %.068.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ah, %.lr.ph.i.i.prol ]
  %i.aj = sub i64 %.068.i.i.ph24, %i.ae
  %i.ak = icmp ugt i64 %i.aj, -8
  br i1 %i.ak, label %_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6insertIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueEPcE4typeES7_S9_S9_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.bi, %.lr.ph.i.i ], [ %.09.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %.068.i.i = phi ptr [ %i.bh, %.lr.ph.i.i ], [ %.068.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 9 uses
  %i.al = load i8, ptr %.068.i.i, align 1, !tbaa !26
  store i8 %i.al, ptr %.09.i.i, align 1, !tbaa !26
  %i.am = getelementptr inbounds nuw i8, ptr %.068.i.i, i64 1
  %i.an = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 1
  %i.ao = load i8, ptr %i.am, align 1, !tbaa !26
  store i8 %i.ao, ptr %i.an, align 1, !tbaa !26
  %i.ap = getelementptr inbounds nuw i8, ptr %.068.i.i, i64 2
  %i.aq = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 2
  %i.ar = load i8, ptr %i.ap, align 1, !tbaa !26
  store i8 %i.ar, ptr %i.aq, align 1, !tbaa !26
  %i.as = getelementptr inbounds nuw i8, ptr %.068.i.i, i64 3
  %i.at = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 3
  %i.au = load i8, ptr %i.as, align 1, !tbaa !26
  store i8 %i.au, ptr %i.at, align 1, !tbaa !26
  %i.av = getelementptr inbounds nuw i8, ptr %.068.i.i, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 4
  %i.ax = load i8, ptr %i.av, align 1, !tbaa !26
  store i8 %i.ax, ptr %i.aw, align 1, !tbaa !26
  %i.ay = getelementptr inbounds nuw i8, ptr %.068.i.i, i64 5
  %i.az = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 5
  %i.ba = load i8, ptr %i.ay, align 1, !tbaa !26
  store i8 %i.ba, ptr %i.az, align 1, !tbaa !26
  %i.bb = getelementptr inbounds nuw i8, ptr %.068.i.i, i64 6
  %i.bc = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 6
  %i.bd = load i8, ptr %i.bb, align 1, !tbaa !26
  store i8 %i.bd, ptr %i.bc, align 1, !tbaa !26
  %i.be = getelementptr inbounds nuw i8, ptr %.068.i.i, i64 7
  %i.bf = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 7
  %i.bg = load i8, ptr %i.be, align 1, !tbaa !26
  store i8 %i.bg, ptr %i.bf, align 1, !tbaa !26
  %i.bh = getelementptr inbounds nuw i8, ptr %.068.i.i, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.09.i.i, i64 8
  %.not.i.i.7 = icmp eq ptr %i.bh, %i.g
  br i1 %.not.i.i.7, label %_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6insertIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueEPcE4typeES7_S9_S9_.exit, label %.lr.ph.i.i, !llvm.loop !161

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i
  %i.bj = sub i64 %i.h, %i.i                      ; 4 uses
  %i.bk = icmp ult i64 %i.bj, %1
  br i1 %i.bk, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i, label %bb.h

_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i:         ; preds = %bb.f
  %i.bl = sub nuw nsw i64 %1, %i.bj               ; 4 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.bj
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull align 1 %i.bm, i64 %i.bl, i1 false)
  %i.bn = icmp eq i64 %3, %i.bl
  br i1 %i.bn, label %_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6insertIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueEPcE4typeES7_S9_S9_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i
  %i.bo = sub i64 %3, %i.bl
  %i.bp = getelementptr i8, ptr %i.f, i64 %i.bl
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bp, ptr nonnull align 1 %i.l, i64 %i.bo, i1 false)
  br label %_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6insertIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueEPcE4typeES7_S9_S9_.exit

bb.h:                                             ; preds = %bb.f
  %i.bq = icmp samesign eq i64 %3, 0
  br i1 %i.bq, label %_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6insertIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueEPcE4typeES7_S9_S9_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.br = getelementptr i8, ptr %i.e, i64 %i.bj
  %i.bs = getelementptr i8, ptr %i.br, i64 %3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr align 1 %i.bs, i64 %3, i1 false)
  br label %_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6insertIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueEPcE4typeES7_S9_S9_.exit

_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6insertIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueEPcE4typeES7_S9_S9_.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %vec.epilog.middle.block, %bb.e, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i, %bb.g, %bb.h, %bb.i
  %i.bt = trunc i64 %3 to i16
  %i.bu = add i16 %i.b, %i.bt
  store i16 %i.bu, ptr %0, align 2, !tbaa !25
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 2 dereferenceable(423) ptr @_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6insertEmRKS4_(ptr noundef nonnull align 2 dereferenceable(423) %0, i64 noundef %1, ptr noundef nonnull align 2 dereferenceable(423) %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 2 ; 9 uses
  %i.d = load i16, ptr %2, align 2, !tbaa !25     ; 6 uses
  %i.e = zext i16 %i.d to i64                     ; 13 uses
  %i.f = load i16, ptr %0, align 2, !tbaa !25     ; 2 uses
  %i.g = zext i16 %i.f to i64                     ; 4 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.3) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %1 ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.e ; 2 uses
  %i.l = ptrtoint ptr %i.c to i64
  %i.m = ptrtoint ptr %i.i to i64
  %i.n = sub nsw i64 420, %i.g
  %i.o = icmp ult i64 %i.n, %i.e
  br i1 %i.o, label %bb.d, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.4) #31
  unreachable

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i:       ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.e ; 2 uses
  %reass.sub = sub nsw i64 %i.g, %1
  %i.q = add nsw i64 %reass.sub, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.p, ptr noundef nonnull align 1 dereferenceable(1) %i.j, i64 %i.q, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  %i.s = icmp uge ptr %2, %0
  %i.t = icmp ult ptr %i.c, %i.r
  %i.u = and i1 %i.s, %i.t
  %.not.i.i = icmp ugt ptr %i.k, %i.j
  %or.cond.i.i = and i1 %.not.i.i, %i.u
  br i1 %or.cond.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i
  %.not7.i.i.i = icmp eq i16 %i.d, 0
  br i1 %.not7.i.i.i, label %_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6insertEmPKcm.exit, label %iter.check

iter.check:                                       ; preds = %bb.e
  %min.iters.check = icmp ult i16 %i.d, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.v = add i64 %1, %i.b
  %i.w = sub i64 %i.a, %i.v
  %diff.check = icmp ugt i64 %i.w, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check8 = icmp ult i16 %i.d, 32
  br i1 %min.iters.check8, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.x = and i64 %i.e, 24
  %n.vec = and i64 %i.e, 65504                    ; 5 uses
  %i.y = getelementptr i8, ptr %i.j, i64 %n.vec
  %i.z = getelementptr i8, ptr %i.c, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.j, i64 %index ; 2 uses
  %next.gep9 = getelementptr i8, ptr %i.c, i64 %index ; 2 uses
  %i.aa = getelementptr i8, ptr %next.gep9, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep9, align 2, !tbaa !26
  %wide.load10 = load <16 x i8>, ptr %i.aa, align 2, !tbaa !26
  %i.ab = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !26
  store <16 x i8> %wide.load10, ptr %i.ab, align 1, !tbaa !26
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !162

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.e
  br i1 %cmp.n, label %_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6insertEmPKcm.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.x, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !41

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec12 = and i64 %i.e, 65528                  ; 4 uses
  %i.ad = getelementptr i8, ptr %i.j, i64 %n.vec12
  %i.ae = getelementptr i8, ptr %i.c, i64 %n.vec12
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next17, %vec.epilog.vector.body ] ; 3 uses
  %next.gep14 = getelementptr i8, ptr %i.j, i64 %index13
  %next.gep15 = getelementptr i8, ptr %i.c, i64 %index13
  %wide.load16 = load <8 x i8>, ptr %next.gep15, align 2, !tbaa !26
  store <8 x i8> %wide.load16, ptr %next.gep14, align 1, !tbaa !26
  %index.next17 = add nuw i64 %index13, 8         ; 2 uses
  %i.af = icmp eq i64 %index.next17, %n.vec12
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !163

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n18 = icmp eq i64 %n.vec12, %i.e
  br i1 %cmp.n18, label %_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6insertEmPKcm.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.ph = phi ptr [ %i.j, %iter.check ], [ %i.j, %vector.memcheck ], [ %i.y, %vec.epilog.iter.check ], [ %i.ad, %vec.epilog.middle.block ] ; 2 uses
  %.068.i.i.i.ph = phi ptr [ %i.c, %iter.check ], [ %i.c, %vector.memcheck ], [ %i.z, %vec.epilog.iter.check ], [ %i.ae, %vec.epilog.middle.block ] ; 3 uses
  %i.ag = add i64 %i.a, %i.e                      ; 2 uses
  %i.ah = add i64 %i.ag, 2
  %.068.i.i.i.ph21 = ptrtoaddr ptr %.068.i.i.i.ph to i64 ; 2 uses
  %i.ai = sub i64 %i.ah, %.068.i.i.i.ph21
  %i.aj = add i64 %i.ag, 1
  %i.ak = sub i64 %i.aj, %.068.i.i.i.ph21
  %xtraiter = and i64 %i.ai, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.09.i.i.i.prol = phi ptr [ %i.an, %.lr.ph.i.i.i.prol ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i.prol = phi ptr [ %i.am, %.lr.ph.i.i.i.prol ], [ %.068.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.al = load i8, ptr %.068.i.i.i.prol, align 1, !tbaa !26
  store i8 %i.al, ptr %.09.i.i.i.prol, align 1, !tbaa !26
  %i.am = getelementptr inbounds nuw i8, ptr %.068.i.i.i.prol, i64 1 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.09.i.i.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !164

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.09.i.i.i.unr = phi ptr [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.an, %.lr.ph.i.i.i.prol ]
  %.068.i.i.i.unr = phi ptr [ %.068.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.am, %.lr.ph.i.i.i.prol ]
  %i.ao = icmp ult i64 %i.ak, 7
  br i1 %i.ao, label %_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6insertEmPKcm.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.bm, %.lr.ph.i.i.i ], [ %.09.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.068.i.i.i = phi ptr [ %i.bl, %.lr.ph.i.i.i ], [ %.068.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %i.ap = load i8, ptr %.068.i.i.i, align 1, !tbaa !26
  store i8 %i.ap, ptr %.09.i.i.i, align 1, !tbaa !26
  %i.aq = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 1
  %i.as = load i8, ptr %i.aq, align 1, !tbaa !26
  store i8 %i.as, ptr %i.ar, align 1, !tbaa !26
  %i.at = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 2
  %i.au = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 2
  %i.av = load i8, ptr %i.at, align 1, !tbaa !26
  store i8 %i.av, ptr %i.au, align 1, !tbaa !26
  %i.aw = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 3
  %i.ax = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 3
  %i.ay = load i8, ptr %i.aw, align 1, !tbaa !26
  store i8 %i.ay, ptr %i.ax, align 1, !tbaa !26
  %i.az = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 4
  %i.ba = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 4
  %i.bb = load i8, ptr %i.az, align 1, !tbaa !26
  store i8 %i.bb, ptr %i.ba, align 1, !tbaa !26
  %i.bc = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 5
  %i.bd = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 5
  %i.be = load i8, ptr %i.bc, align 1, !tbaa !26
  store i8 %i.be, ptr %i.bd, align 1, !tbaa !26
  %i.bf = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 6
  %i.bg = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 6
  %i.bh = load i8, ptr %i.bf, align 1, !tbaa !26
  store i8 %i.bh, ptr %i.bg, align 1, !tbaa !26
  %i.bi = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 7
  %i.bj = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 7
  %i.bk = load i8, ptr %i.bi, align 1, !tbaa !26
  store i8 %i.bk, ptr %i.bj, align 1, !tbaa !26
  %i.bl = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 8 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 8
  %.not.i.i.i.7 = icmp eq ptr %i.bl, %i.k
  br i1 %.not.i.i.i.7, label %_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6insertEmPKcm.exit, label %.lr.ph.i.i.i, !llvm.loop !165

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i
  %i.bn = sub i64 %i.l, %i.m                      ; 4 uses
  %i.bo = icmp ult i64 %i.bn, %1
  br i1 %i.bo, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i, label %bb.h

_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i:       ; preds = %bb.f
  %i.bp = sub nuw nsw i64 %1, %i.bn               ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.bn
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull align 2 %i.bq, i64 %i.bp, i1 false)
  %i.br = icmp eq i64 %i.bp, %i.e
  br i1 %i.br, label %_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6insertEmPKcm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i
  %i.bs = sub nsw i64 %i.e, %i.bp
  %i.bt = getelementptr i8, ptr %i.j, i64 %i.bp
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bt, ptr nonnull align 1 %i.p, i64 %i.bs, i1 false)
  br label %_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6insertEmPKcm.exit

bb.h:                                             ; preds = %bb.f
  %i.bu = icmp eq i16 %i.d, 0
  br i1 %i.bu, label %_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6insertEmPKcm.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bv = getelementptr i8, ptr %i.i, i64 %i.bn
  %i.bw = getelementptr i8, ptr %i.bv, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.bw, i64 %i.e, i1 false)
  br label %_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6insertEmPKcm.exit

_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6insertEmPKcm.exit: ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.e, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i, %bb.g, %bb.h, %bb.i
  %i.bx = add i16 %i.f, %i.d
  store i16 %i.bx, ptr %0, align 2, !tbaa !25
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef nonnull align 2 dereferenceable(423) ptr @_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6insertEmRKS4_mm(ptr noundef nonnull align 2 dereferenceable(423) %0, i64 noundef %1, ptr noundef nonnull align 2 dereferenceable(423) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %3 ; 10 uses
  %i.e = load i16, ptr %2, align 2, !tbaa !25
  %i.f = zext i16 %i.e to i64                     ; 2 uses
  %i.g = icmp ugt i64 %3, %i.f
  br i1 %i.g, label %bb.b, label %_ZNK5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE13capped_lengthEmm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.3) #31
  unreachable

_ZNK5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE13capped_lengthEmm.exit: ; preds = %bb.a
  %i.h = sub nuw nsw i64 %i.f, %3
  %.sroa.speculated.i = tail call noundef i64 @llvm.umin.i64(i64 %4, i64 %i.h) ; 17 uses
  %i.i = load i16, ptr %0, align 2, !tbaa !25     ; 2 uses
  %i.j = zext i16 %i.i to i64                     ; 4 uses
  %i.k = icmp ugt i64 %1, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE13capped_lengthEmm.exit
  tail call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.3) #31
  unreachable

bb.d:                                             ; preds = %_ZNK5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE13capped_lengthEmm.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %1 ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.speculated.i ; 2 uses
  %i.o = ptrtoint ptr %i.d to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub nsw i64 420, %i.j
  %i.r = icmp ugt i64 %.sroa.speculated.i, %i.q
  br i1 %i.r, label %bb.e, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.4) #31
  unreachable

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i:       ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.speculated.i ; 2 uses
  %reass.sub = sub nsw i64 %i.j, %1
  %i.t = add nsw i64 %reass.sub, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.s, ptr noundef nonnull align 1 dereferenceable(1) %i.m, i64 %i.t, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  %i.v = icmp uge ptr %i.d, %i.l
  %i.w = icmp ult ptr %i.d, %i.u
  %i.x = and i1 %i.v, %i.w
  %.not.i.i = icmp ugt ptr %i.n, %i.m
  %or.cond.i.i = and i1 %.not.i.i, %i.x
  br i1 %or.cond.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i
  %.not7.i.i.i = icmp samesign eq i64 %.sroa.speculated.i, 0
  br i1 %.not7.i.i.i, label %_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6insertEmPKcm.exit, label %iter.check

iter.check:                                       ; preds = %bb.f
  %min.iters.check = icmp samesign ult i64 %.sroa.speculated.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.y = add i64 %1, %i.b
  %i.z = add i64 %3, %i.a
  %i.aa = sub i64 %i.z, %i.y
  %diff.check = icmp ugt i64 %i.aa, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check13 = icmp samesign ult i64 %.sroa.speculated.i, 32
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %.sroa.speculated.i, 24
  %n.vec = and i64 %.sroa.speculated.i, 65504     ; 5 uses
  %i.ac = getelementptr i8, ptr %i.m, i64 %n.vec
  %i.ad = getelementptr i8, ptr %i.d, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %index ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.d, i64 %index ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep14, align 1, !tbaa !26
  %wide.load15 = load <16 x i8>, ptr %i.ae, align 1, !tbaa !26
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !26
  store <16 x i8> %wide.load15, ptr %i.af, align 1, !tbaa !26
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !166

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.speculated.i, %n.vec
  br i1 %cmp.n, label %_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6insertEmPKcm.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !41

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec17 = and i64 %.sroa.speculated.i, 65528   ; 4 uses
  %i.ah = getelementptr i8, ptr %i.m, i64 %n.vec17
  %i.ai = getelementptr i8, ptr %i.d, i64 %n.vec17
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next22, %vec.epilog.vector.body ] ; 3 uses
  %next.gep19 = getelementptr i8, ptr %i.m, i64 %index18
  %next.gep20 = getelementptr i8, ptr %i.d, i64 %index18
  %wide.load21 = load <8 x i8>, ptr %next.gep20, align 1, !tbaa !26
  store <8 x i8> %wide.load21, ptr %next.gep19, align 1, !tbaa !26
  %index.next22 = add nuw i64 %index18, 8         ; 2 uses
  %i.aj = icmp eq i64 %index.next22, %n.vec17
  br i1 %i.aj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !167

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n23 = icmp eq i64 %.sroa.speculated.i, %n.vec17
  br i1 %cmp.n23, label %_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6insertEmPKcm.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.ph = phi ptr [ %i.m, %iter.check ], [ %i.m, %vector.memcheck ], [ %i.ac, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ]
  %.068.i.i.i.ph = phi ptr [ %i.d, %iter.check ], [ %i.d, %vector.memcheck ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.068.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.ak = load i8, ptr %.068.i.i.i, align 1, !tbaa !26
  store i8 %i.ak, ptr %.09.i.i.i, align 1, !tbaa !26
  %i.al = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 1
  %.not.i.i.i = icmp eq ptr %i.al, %i.n
  br i1 %.not.i.i.i, label %_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6insertEmPKcm.exit, label %.lr.ph.i.i.i, !llvm.loop !168

bb.g:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i
  %i.an = sub i64 %i.o, %i.p                      ; 4 uses
  %i.ao = icmp ult i64 %i.an, %1
  br i1 %i.ao, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i, label %bb.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i:       ; preds = %bb.g
  %i.ap = sub nuw nsw i64 %1, %i.an               ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.an
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 1 %i.aq, i64 %i.ap, i1 false)
  %i.ar = icmp eq i64 %.sroa.speculated.i, %i.ap
  br i1 %i.ar, label %_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6insertEmPKcm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i
  %i.as = sub nsw i64 %.sroa.speculated.i, %i.ap
  %i.at = getelementptr i8, ptr %i.m, i64 %i.ap
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr nonnull align 1 %i.s, i64 %i.as, i1 false)
  br label %_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6insertEmPKcm.exit

bb.i:                                             ; preds = %bb.g
  %i.au = icmp samesign eq i64 %.sroa.speculated.i, 0
  br i1 %i.au, label %_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6insertEmPKcm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr i8, ptr %i.l, i64 %i.an
  %i.aw = getelementptr i8, ptr %i.av, i64 %.sroa.speculated.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %i.aw, i64 %.sroa.speculated.i, i1 false)
  br label %_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6insertEmPKcm.exit

_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6insertEmPKcm.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.f, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i, %bb.h, %bb.i, %bb.j
  %i.ax = trunc nuw i64 %.sroa.speculated.i to i16
  %i.ay = add i16 %i.i, %i.ax
  store i16 %i.ay, ptr %0, align 2, !tbaa !25
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef i64 @_ZNK5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE13capped_lengthEmm(ptr noundef nonnull align 2 dereferenceable(423) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !25
  %i.b = zext i16 %i.a to i64                     ; 2 uses
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.3) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = sub nuw nsw i64 %i.b, %1
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %2, i64 %i.d)
  ret i64 %.sroa.speculated
}

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6insertEPKcc(ptr noundef nonnull align 2 dereferenceable(423) %0, ptr noundef %1, i8 noundef signext %2) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !25     ; 3 uses
  %i.b = icmp eq i16 %i.a, 420
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.4) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = zext i16 %i.a to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.e = ptrtoint ptr %1 to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = getelementptr i8, ptr %i.d, i64 %i.g     ; 4 uses
  %i.i = sub i64 %i.c, %i.g
  %i.j = add i64 %i.i, 1                          ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6insertEPKcmc.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %i.h, i64 1
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.h, i64 %i.j, i1 false)
  br label %_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6insertEPKcmc.exit

_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6insertEPKcmc.exit: ; preds = %bb.c, %bb.d
  store i8 %2, ptr %i.h, align 1
  %i.m = add i16 %i.a, 1
  store i16 %i.m, ptr %0, align 2, !tbaa !25
  ret ptr %i.h
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define weak_odr hidden noundef ptr @_ZN5boost14static_strings19basic_static_stringILm420EcSt11char_traitsIcEE6insertEPKcSt16initializer_listIcE(ptr noundef nonnull align 2 dereferenceable(423) %0, ptr noundef %1, ptr %2, i64 %3) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = load i16, ptr %0, align 2, !tbaa !25     ; 2 uses
  %i.b = zext i16 %i.a to i64                     ; 2 uses
  %i.c = sub nsw i64 420, %i.b
  %i.d = icmp ugt i64 %3, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.4) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 3 uses
  %i.f = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = getelementptr i8, ptr %i.e, i64 %i.h     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = sub i64 %i.k, %i.f
  %i.m = add nsw i64 %i.l, 1                      ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %i.i, i64 %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %1, i64 %i.m, i1 false)
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i:         ; preds = %bb.d, %bb.c
  %i.p = icmp eq i64 %3, 0
end_hunk_0
begin_hunk_1_@_ZN5boost14static_strings19basic_static_stringILm10EcSt11char_traitsIcEE7replaceIPKcEENSt9enable_ifIXsr6detail19is_forward_iteratorIT_EE5valueERS4_E4typeES7_S7_S9_S9_:bb.a
  br i1 %min.iters.check118, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ae = and i64 %i.ac, 24
  %n.vec = and i64 %i.ac, -32                     ; 5 uses
  %i.af = getelementptr i8, ptr %i.w, i64 %n.vec
  %i.ag = getelementptr i8, ptr %3, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %index ; 2 uses
  %next.gep119 = getelementptr i8, ptr %3, i64 %index ; 2 uses
  %i.ah = getelementptr i8, ptr %next.gep119, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep119, align 1, !tbaa !26
  %wide.load120 = load <16 x i8>, ptr %i.ah, align 1, !tbaa !26
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !26
  store <16 x i8> %wide.load120, ptr %i.ai, align 1, !tbaa !26
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !967

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ae, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !41

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec122 = and i64 %i.ac, -8                   ; 4 uses
  %i.ak = getelementptr i8, ptr %i.w, i64 %n.vec122
  %i.al = getelementptr i8, ptr %3, i64 %n.vec122
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index123 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next127, %vec.epilog.vector.body ] ; 3 uses
  %next.gep124 = getelementptr i8, ptr %i.w, i64 %index123
  %next.gep125 = getelementptr i8, ptr %3, i64 %index123
  %wide.load126 = load <8 x i8>, ptr %next.gep125, align 1, !tbaa !26
  store <8 x i8> %wide.load126, ptr %next.gep124, align 1, !tbaa !26
  %index.next127 = add nuw i64 %index123, 8       ; 2 uses
  %i.am = icmp eq i64 %index.next127, %n.vec122
  br i1 %i.am, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !968

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n128 = icmp eq i64 %i.ac, %n.vec122
  br i1 %cmp.n128, label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.ph = phi ptr [ %i.w, %iter.check ], [ %i.af, %vec.epilog.iter.check ], [ %i.ak, %vec.epilog.middle.block ] ; 2 uses
  %.068.i.ph = phi ptr [ %3, %iter.check ], [ %i.ag, %vec.epilog.iter.check ], [ %i.al, %vec.epilog.middle.block ] ; 3 uses
  %.068.i.ph131 = ptrtoaddr ptr %.068.i.ph to i64 ; 2 uses
  %i.an = sub i64 %i.g, %.068.i.ph131
  %xtraiter = and i64 %i.an, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.09.i.prol = phi ptr [ %i.aq, %.lr.ph.i.prol ], [ %.09.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.068.i.prol = phi ptr [ %i.ap, %.lr.ph.i.prol ], [ %.068.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ao = load i8, ptr %.068.i.prol, align 1, !tbaa !26
  store i8 %i.ao, ptr %.09.i.prol, align 1, !tbaa !26
  %i.ap = getelementptr inbounds nuw i8, ptr %.068.i.prol, i64 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.09.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !969

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.09.i.unr = phi ptr [ %.09.i.ph, %.lr.ph.i.preheader ], [ %i.aq, %.lr.ph.i.prol ]
  %.068.i.unr = phi ptr [ %.068.i.ph, %.lr.ph.i.preheader ], [ %i.ap, %.lr.ph.i.prol ]
  %i.ar = sub i64 %.068.i.ph131, %i.g
  %i.as = icmp ugt i64 %i.ar, -8
  br i1 %i.as, label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.09.i = phi ptr [ %i.bq, %.lr.ph.i ], [ %.09.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %.068.i = phi ptr [ %i.bp, %.lr.ph.i ], [ %.068.i.unr, %.lr.ph.i.prol.loopexit ] ; 9 uses
  %i.at = load i8, ptr %.068.i, align 1, !tbaa !26
  store i8 %i.at, ptr %.09.i, align 1, !tbaa !26
  %i.au = getelementptr inbounds nuw i8, ptr %.068.i, i64 1
  %i.av = getelementptr inbounds nuw i8, ptr %.09.i, i64 1
  %i.aw = load i8, ptr %i.au, align 1, !tbaa !26
  store i8 %i.aw, ptr %i.av, align 1, !tbaa !26
  %i.ax = getelementptr inbounds nuw i8, ptr %.068.i, i64 2
  %i.ay = getelementptr inbounds nuw i8, ptr %.09.i, i64 2
  %i.az = load i8, ptr %i.ax, align 1, !tbaa !26
  store i8 %i.az, ptr %i.ay, align 1, !tbaa !26
  %i.ba = getelementptr inbounds nuw i8, ptr %.068.i, i64 3
  %i.bb = getelementptr inbounds nuw i8, ptr %.09.i, i64 3
  %i.bc = load i8, ptr %i.ba, align 1, !tbaa !26
  store i8 %i.bc, ptr %i.bb, align 1, !tbaa !26
  %i.bd = getelementptr inbounds nuw i8, ptr %.068.i, i64 4
  %i.be = getelementptr inbounds nuw i8, ptr %.09.i, i64 4
  %i.bf = load i8, ptr %i.bd, align 1, !tbaa !26
  store i8 %i.bf, ptr %i.be, align 1, !tbaa !26
  %i.bg = getelementptr inbounds nuw i8, ptr %.068.i, i64 5
  %i.bh = getelementptr inbounds nuw i8, ptr %.09.i, i64 5
  %i.bi = load i8, ptr %i.bg, align 1, !tbaa !26
  store i8 %i.bi, ptr %i.bh, align 1, !tbaa !26
  %i.bj = getelementptr inbounds nuw i8, ptr %.068.i, i64 6
  %i.bk = getelementptr inbounds nuw i8, ptr %.09.i, i64 6
  %i.bl = load i8, ptr %i.bj, align 1, !tbaa !26
  store i8 %i.bl, ptr %i.bk, align 1, !tbaa !26
  %i.bm = getelementptr inbounds nuw i8, ptr %.068.i, i64 7
  %i.bn = getelementptr inbounds nuw i8, ptr %.09.i, i64 7
  %i.bo = load i8, ptr %i.bm, align 1, !tbaa !26
  store i8 %i.bo, ptr %i.bn, align 1, !tbaa !26
  %i.bp = getelementptr inbounds nuw i8, ptr %.068.i, i64 8 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.09.i, i64 8
  %.not.i.7 = icmp eq ptr %i.bp, %4
  br i1 %.not.i.7, label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit, label %.lr.ph.i, !llvm.loop !970

bb.g:                                             ; preds = %bb.d
  %i.br = sub i64 %i.h, %i.j                      ; 5 uses
  %.not71 = icmp ult i64 %i.i, %i.f
  br i1 %.not71, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bs = sub i64 %i.d, %i.j                      ; 2 uses
  %.not72 = icmp ugt i64 %i.br, %i.bs
  %i.bt = sub i64 %i.bs, %i.br
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %i.i, i64 %i.bt)
  %i.bu = select i1 %.not72, i64 0, i64 %.sroa.speculated ; 6 uses
  %i.bv = getelementptr i8, ptr %i.c, i64 %i.k    ; 4 uses
  %i.bw = sub i64 %i.m, %i.f
  %i.bx = add i64 %i.bw, 1                        ; 2 uses
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bz = getelementptr i8, ptr %i.bv, i64 %i.f
  %i.ca = getelementptr i8, ptr %i.bv, i64 %i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ca, ptr align 1 %i.bz, i64 %i.bx, i1 false)
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76

_ZNSt11char_traitsIcE4moveEPcPKcm.exit76:         ; preds = %bb.h, %bb.i
  %i.cb = icmp eq i64 %i.bu, 0
  br i1 %i.cb, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit77, label %bb.j

bb.j:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76
  %i.cc = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.br
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.bv, ptr nonnull align 1 %i.cc, i64 %i.bu, i1 false)
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit77

_ZNSt11char_traitsIcE4moveEPcPKcm.exit77:         ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit76, %bb.j
  %i.cd = icmp eq i64 %i.i, %i.bu
  br i1 %i.cd, label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit77
  %i.ce = sub nsw i64 %i.i, %i.bu
  %i.cf = sub i64 %i.br, %i.f
  %i.cg = getelementptr i8, ptr %i.c, i64 %i.cf
  %i.ch = getelementptr i8, ptr %i.cg, i64 %i.i
  %i.ci = getelementptr i8, ptr %i.ch, i64 %i.bu
  %i.cj = getelementptr i8, ptr %i.bv, i64 %i.bu
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cj, ptr align 1 %i.ci, i64 %i.ce, i1 false)
  br label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit

bb.l:                                             ; preds = %bb.g
  %i.ck = getelementptr i8, ptr %i.c, i64 %i.k    ; 3 uses
  %i.cl = icmp eq ptr %4, %3
  br i1 %i.cl, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit79, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cm = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.br
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ck, ptr nonnull align 1 %i.cm, i64 %i.i, i1 false)
  br label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit79

_ZNSt11char_traitsIcE4moveEPcPKcm.exit79:         ; preds = %bb.l, %bb.m
  %i.cn = sub i64 %i.m, %i.f
  %i.co = add i64 %i.cn, 1                        ; 2 uses
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit, label %bb.n

bb.n:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit79
  %i.cq = getelementptr i8, ptr %i.ck, i64 %i.f
  %i.cr = getelementptr i8, ptr %i.ck, i64 %i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cr, ptr align 1 %i.cq, i64 %i.co, i1 false)
  br label %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit

_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %bb.n, %_ZNSt11char_traitsIcE4moveEPcPKcm.exit79, %bb.k, %_ZNSt11char_traitsIcE4moveEPcPKcm.exit77, %_ZNSt11char_traitsIcE4moveEPcPKcm.exit
  %i.cs = sub i64 %i.i, %i.f
  %i.ct = trunc i64 %i.cs to i8
  %i.cu = add i8 %i.a, %i.ct
  store i8 %i.cu, ptr %0, align 1, !tbaa !128
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %_ZN5boost14static_strings6detail16copy_with_traitsISt11char_traitsIcEPKccEEvT0_S7_PT1_.exit
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 1 dereferenceable(12) ptr @_ZN5boost14static_strings19basic_static_stringILm10EcSt11char_traitsIcEE6insertEmRKS4_mm(ptr noundef nonnull align 1 dereferenceable(12) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(12) %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 %3 ; 10 uses
  %i.e = load i8, ptr %2, align 1, !tbaa !128
  %i.f = zext i8 %i.e to i64                      ; 2 uses
  %i.g = icmp ugt i64 %3, %i.f
  br i1 %i.g, label %bb.b, label %_ZNK5boost14static_strings19basic_static_stringILm10EcSt11char_traitsIcEE13capped_lengthEmm.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.3) #31
  unreachable

_ZNK5boost14static_strings19basic_static_stringILm10EcSt11char_traitsIcEE13capped_lengthEmm.exit: ; preds = %bb.a
  %i.h = sub nuw nsw i64 %i.f, %3
  %.sroa.speculated.i = tail call noundef i64 @llvm.umin.i64(i64 %4, i64 %i.h) ; 17 uses
  %i.i = load i8, ptr %0, align 1, !tbaa !128     ; 2 uses
  %i.j = zext i8 %i.i to i64                      ; 4 uses
  %i.k = icmp ugt i64 %1, %i.j
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK5boost14static_strings19basic_static_stringILm10EcSt11char_traitsIcEE13capped_lengthEmm.exit
  tail call void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.3) #31
  unreachable

bb.d:                                             ; preds = %_ZNK5boost14static_strings19basic_static_stringILm10EcSt11char_traitsIcEE13capped_lengthEmm.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %1 ; 12 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.speculated.i ; 2 uses
  %i.o = ptrtoint ptr %i.d to i64
  %i.p = ptrtoint ptr %i.l to i64
  %i.q = sub nsw i64 10, %i.j
  %i.r = icmp ugt i64 %.sroa.speculated.i, %i.q
  br i1 %i.r, label %bb.e, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.4) #31
  unreachable

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i:       ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.speculated.i ; 2 uses
  %reass.sub = sub nsw i64 %i.j, %1
  %i.t = add nsw i64 %reass.sub, 1
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.s, ptr noundef nonnull align 1 dereferenceable(1) %i.m, i64 %i.t, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.j
  %i.v = icmp uge ptr %i.d, %i.l
  %i.w = icmp ult ptr %i.d, %i.u
  %i.x = and i1 %i.v, %i.w
  %.not.i.i = icmp ugt ptr %i.n, %i.m
  %or.cond.i.i = and i1 %.not.i.i, %i.x
  br i1 %or.cond.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i
  %.not7.i.i.i = icmp samesign eq i64 %.sroa.speculated.i, 0
  br i1 %.not7.i.i.i, label %_ZN5boost14static_strings19basic_static_stringILm10EcSt11char_traitsIcEE6insertEmPKcm.exit, label %iter.check

iter.check:                                       ; preds = %bb.f
  %min.iters.check = icmp samesign ult i64 %.sroa.speculated.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.y = add i64 %1, %i.b
  %i.z = add i64 %3, %i.a
  %i.aa = sub i64 %i.z, %i.y
  %diff.check = icmp ugt i64 %i.aa, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check13 = icmp samesign ult i64 %.sroa.speculated.i, 32
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ab = and i64 %.sroa.speculated.i, 24
  %n.vec = and i64 %.sroa.speculated.i, 224       ; 5 uses
  %i.ac = getelementptr i8, ptr %i.m, i64 %n.vec
  %i.ad = getelementptr i8, ptr %i.d, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %index ; 2 uses
  %next.gep14 = getelementptr i8, ptr %i.d, i64 %index ; 2 uses
  %i.ae = getelementptr i8, ptr %next.gep14, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep14, align 1, !tbaa !26
  %wide.load15 = load <16 x i8>, ptr %i.ae, align 1, !tbaa !26
  %i.af = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !26
  store <16 x i8> %wide.load15, ptr %i.af, align 1, !tbaa !26
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ag = icmp eq i64 %index.next, %n.vec
  br i1 %i.ag, label %middle.block, label %vector.body, !llvm.loop !971

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.sroa.speculated.i, %n.vec
  br i1 %cmp.n, label %_ZN5boost14static_strings19basic_static_stringILm10EcSt11char_traitsIcEE6insertEmPKcm.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ab, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !41

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec17 = and i64 %.sroa.speculated.i, 248     ; 4 uses
  %i.ah = getelementptr i8, ptr %i.m, i64 %n.vec17
  %i.ai = getelementptr i8, ptr %i.d, i64 %n.vec17
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index18 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next22, %vec.epilog.vector.body ] ; 3 uses
  %next.gep19 = getelementptr i8, ptr %i.m, i64 %index18
  %next.gep20 = getelementptr i8, ptr %i.d, i64 %index18
  %wide.load21 = load <8 x i8>, ptr %next.gep20, align 1, !tbaa !26
  store <8 x i8> %wide.load21, ptr %next.gep19, align 1, !tbaa !26
  %index.next22 = add nuw i64 %index18, 8         ; 2 uses
  %i.aj = icmp eq i64 %index.next22, %n.vec17
  br i1 %i.aj, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !972

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n23 = icmp eq i64 %.sroa.speculated.i, %n.vec17
  br i1 %cmp.n23, label %_ZN5boost14static_strings19basic_static_stringILm10EcSt11char_traitsIcEE6insertEmPKcm.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.09.i.i.i.ph = phi ptr [ %i.m, %iter.check ], [ %i.m, %vector.memcheck ], [ %i.ac, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ]
  %.068.i.i.i.ph = phi ptr [ %i.d, %iter.check ], [ %i.d, %vector.memcheck ], [ %i.ad, %vec.epilog.iter.check ], [ %i.ai, %vec.epilog.middle.block ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.09.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.09.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.068.i.i.i = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %.068.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %i.ak = load i8, ptr %.068.i.i.i, align 1, !tbaa !26
  store i8 %i.ak, ptr %.09.i.i.i, align 1, !tbaa !26
  %i.al = getelementptr inbounds nuw i8, ptr %.068.i.i.i, i64 1 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.09.i.i.i, i64 1
  %.not.i.i.i = icmp eq ptr %i.al, %i.n
  br i1 %.not.i.i.i, label %_ZN5boost14static_strings19basic_static_stringILm10EcSt11char_traitsIcEE6insertEmPKcm.exit, label %.lr.ph.i.i.i, !llvm.loop !973

bb.g:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i
  %i.an = sub i64 %i.o, %i.p                      ; 4 uses
  %i.ao = icmp ult i64 %i.an, %1
  br i1 %i.ao, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i, label %bb.i

_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i:       ; preds = %bb.g
  %i.ap = sub nuw nsw i64 %1, %i.an               ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.an
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull align 1 %i.aq, i64 %i.ap, i1 false)
  %i.ar = icmp eq i64 %.sroa.speculated.i, %i.ap
  br i1 %i.ar, label %_ZN5boost14static_strings19basic_static_stringILm10EcSt11char_traitsIcEE6insertEmPKcm.exit, label %bb.h

bb.h:                                             ; preds = %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i
  %i.as = sub nsw i64 %.sroa.speculated.i, %i.ap
  %i.at = getelementptr i8, ptr %i.m, i64 %i.ap
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.at, ptr nonnull align 1 %i.s, i64 %i.as, i1 false)
  br label %_ZN5boost14static_strings19basic_static_stringILm10EcSt11char_traitsIcEE6insertEmPKcm.exit

bb.i:                                             ; preds = %bb.g
  %i.au = icmp samesign eq i64 %.sroa.speculated.i, 0
  br i1 %i.au, label %_ZN5boost14static_strings19basic_static_stringILm10EcSt11char_traitsIcEE6insertEmPKcm.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = getelementptr i8, ptr %i.l, i64 %i.an
  %i.aw = getelementptr i8, ptr %i.av, i64 %.sroa.speculated.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %i.aw, i64 %.sroa.speculated.i, i1 false)
  br label %_ZN5boost14static_strings19basic_static_stringILm10EcSt11char_traitsIcEE6insertEmPKcm.exit

_ZN5boost14static_strings19basic_static_stringILm10EcSt11char_traitsIcEE6insertEmPKcm.exit: ; preds = %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.f, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i, %bb.h, %bb.i, %bb.j
  %i.ax = trunc nuw i64 %.sroa.speculated.i to i8
  %i.ay = add i8 %i.i, %i.ax
  store i8 %i.ay, ptr %0, align 1, !tbaa !128
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZN5boost14static_strings5testIINS0_19basic_static_stringILm100EcSt11char_traitsIcEEEEEbT_NS6_9size_typeEPKNS6_10value_typeES7_S6_(ptr noundef byval(%"class.boost::static_strings::basic_static_string.45") align 8 %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef byval(%"class.boost::static_strings::basic_static_string.45") align 8 %4) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !tbaa !138     ; 2 uses
  %i.b = zext i8 %i.a to i64                      ; 4 uses
  %.not = icmp ugt i64 %1, %i.b
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 7 uses
  %i.d = getelementptr i8, ptr %i.c, i64 %1       ; 7 uses
  %i.e = ptrtoint ptr %2 to i64
  %i.f = ptrtoint ptr %i.c to i64
  %i.g = sub nsw i64 100, %i.b
  %i.h = icmp ugt i64 %3, %i.g
  br i1 %i.h, label %bb.c, label %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i

bb.c:                                             ; preds = %bb.b
  call void @_ZN5boost14static_strings6detail15throw_exceptionISt12length_errorEEvPKc(ptr noundef nonnull @.str.4) #31
  unreachable

_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i:       ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %3
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %3 ; 2 uses
  %reass.sub = sub nsw i64 %i.b, %1
  %i.k = add nsw i64 %reass.sub, 1
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.j, ptr noundef nonnull align 1 dereferenceable(1) %i.d, i64 %i.k, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.b
  %i.m = icmp uge ptr %2, %i.c
  %i.n = icmp ult ptr %2, %i.l
  %i.o = and i1 %i.m, %i.n
  %.not.i.i = icmp ugt ptr %i.i, %i.d
  %or.cond.i.i = and i1 %.not.i.i, %i.o
  br i1 %or.cond.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i
  %.not7.i.i.i = icmp samesign eq i64 %3, 0
  br i1 %.not7.i.i.i, label %_ZN5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEE6insertEmPKcm.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.d, ptr align 1 %2, i64 %3, i1 false), !tbaa !26
  br label %_ZN5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEE6insertEmPKcm.exit

bb.e:                                             ; preds = %_ZNSt11char_traitsIcE4moveEPcPKcm.exit.i.i
  %i.p = sub i64 %i.e, %i.f                       ; 4 uses
  %i.q = icmp ult i64 %i.p, %1
  br i1 %i.q, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i, label %bb.g

_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i:       ; preds = %bb.e
  %i.r = sub nuw nsw i64 %1, %i.p                 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.p
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.d, ptr nonnull align 1 %i.s, i64 %i.r, i1 false)
  %i.t = icmp eq i64 %3, %i.r
  br i1 %i.t, label %_ZN5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEE6insertEmPKcm.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i
  %i.u = sub i64 %3, %i.r
  %i.v = getelementptr i8, ptr %i.d, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.v, ptr nonnull align 1 %i.j, i64 %i.u, i1 false)
  br label %_ZN5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEE6insertEmPKcm.exit

bb.g:                                             ; preds = %bb.e
  %i.w = icmp samesign eq i64 %3, 0
  br i1 %i.w, label %_ZN5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEE6insertEmPKcm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %i.c, i64 %i.p
  %i.y = getelementptr i8, ptr %i.x, i64 %3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.d, ptr align 1 %i.y, i64 %3, i1 false)
  br label %_ZN5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEE6insertEmPKcm.exit

_ZN5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEE6insertEmPKcm.exit: ; preds = %.lr.ph.i.i.i.preheader, %bb.d, %_ZNSt11char_traitsIcE4copyEPcPKcm.exit.i.i, %bb.f, %bb.g, %bb.h
  %i.z = trunc i64 %3 to i8
  %i.aa = add i8 %i.a, %i.z                       ; 3 uses
  %i.ab = zext i8 %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 1
  %i.ad = load i8, ptr %4, align 8, !tbaa !138
  %or.cond.not.i = icmp eq i8 %i.aa, %i.ad
  br i1 %or.cond.not.i, label %bb.i, label %_ZN5boost14static_stringseqILm100ELm100EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET1_T2_EERKNS4_IXT0_ES5_S6_EE.exit

bb.i:                                             ; preds = %_ZN5boost14static_strings19basic_static_stringILm100EcSt11char_traitsIcEE6insertEmPKcm.exit
  %i.ae = icmp eq i8 %i.aa, 0
  br i1 %i.ae, label %_ZN5boost14static_stringseqILm100ELm100EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET1_T2_EERKNS4_IXT0_ES5_S6_EE.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.c, ptr nonnull %i.ac, i64 %i.ab)
  %i.af = icmp eq i32 %bcmp.i, 0
  br label %_ZN5boost14static_stringseqILm100ELm100EcSt11char_traitsIcEEEbRKNS0_19basic_static_stringIXT_ET1_T2_EERKNS4_IXT0_ES5_S6_EE.exit

bb.k:                                             ; preds = %bb.a
  invoke void @_ZN5boost14static_strings6detail15throw_exceptionISt12out_of_rangeEEvPKc(ptr noundef nonnull @.str.3) #31
          to label %.noexc unwind label %bb.l
end_hunk_1
