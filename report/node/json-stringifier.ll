Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/json-stringifier?download=true
inline.NumInlined: 8192
inline.NumDeleted: 1259
loop-unroll.NumCompletelyUnrolled: 91
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 94
begin_hunk_0_@_ZN2v88internal15JsonStringifier16SerializeJSProxyENS0_6HandleINS0_7JSProxyEEENS2_INS0_6ObjectEEE:bb.a
  %i.cs = load i64, ptr %i.cf, align 8
  %i.ct = load i64, ptr %i.ci, align 8
  %i.cu = icmp eq i64 %i.cs, %i.ct
  br i1 %i.cu, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread98.sink.split, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread98, !prof !32

.critedge:                                        ; preds = %bb.d, %bb.b, %_ZNKR2v85MaybeIbE8FromJustEv.exit
  %i.cv = tail call noundef i32 @_ZN2v88internal15JsonStringifier23SerializeJSReceiverSlowENS0_12DirectHandleINS0_10JSReceiverEEE(ptr noundef nonnull align 8 dereferenceable(2688) %0, ptr nonnull %1) ; 2 uses
  %.not26 = icmp eq i32 %i.cv, 1
  br i1 %.not26, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread98, label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread98.sink.split: ; preds = %bb.o, %bb.n
  tail call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread98

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread98: ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread98.sink.split, %bb.n, %bb.o, %.critedge
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 93
  %i.cx = load i8, ptr %i.cw, align 1, !range !33, !noundef !34
  %i.cy = trunc nuw i8 %i.cx to i1
  br i1 %i.cy, label %bb.q, label %bb.p, !prof !32

bb.p:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread98
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 8
  %i.db = add nsw i32 %i.da, -1
  store i32 %i.db, ptr %i.cz, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

bb.q:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit.thread98
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8
  %i.de = getelementptr inbounds i8, ptr %i.dd, i64 -16
  store ptr %i.de, ptr %i.dc, align 8
  br label %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit

_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit: ; preds = %bb.a, %bb.q, %bb.p, %.critedge104, %_ZN2v88internal15JsonStringifier15AppendCharacterEh.exit29, %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.thread, %_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit, %.critedge
  %.5 = phi i32 [ %i.i, %bb.a ], [ %i.cv, %.critedge ], [ %i.bx, %_ZN2v88internal15JsonStringifier15AppendCharacterEh.exit29 ], [ 2, %_ZN2v88internal6Object7IsArrayENS0_12DirectHandleIS1_EE.exit ], [ 2, %.critedge104 ], [ 2, %_ZN2v88internal6Object8ToUint32ENS0_6TaggedIS1_EEPj.exit.thread ], [ 1, %bb.p ], [ 1, %bb.q ]
  store ptr %i.c, ptr %i.b, align 8
  %i.df = load i32, ptr %i.f, align 8
  %i.dg = add nsw i32 %i.df, -1
  store i32 %i.dg, ptr %i.f, align 8
  %i.dh = load ptr, ptr %i.d, align 8
  %.not.i = icmp eq ptr %i.dh, %i.e
  br i1 %.not.i, label %_ZN2v88internal11HandleScopeD2Ev.exit, label %bb.r, !prof !36

bb.r:                                             ; preds = %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit
  store ptr %i.e, ptr %i.d, align 8
  tail call void @_ZN2v88internal11HandleScope16DeleteExtensionsEPNS0_7IsolateE(ptr noundef nonnull %i.a) #21
  br label %_ZN2v88internal11HandleScopeD2Ev.exit

_ZN2v88internal11HandleScopeD2Ev.exit:            ; preds = %bb.r, %_ZNK2v88internal11MaybeHandleINS0_6ObjectEE8ToHandleIS2_EEbPNS0_12DirectHandleIT_EE.exit
  ret i32 %.5
}

; Function Attrs: mustprogress noinline nounwind uwtable
define hidden void @_ZN2v88internal15JsonStringifier14NewLineOutlineEv(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(2688) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 0
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = add i64 %i.e, 1                          ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  store i64 %i.f, ptr %i.d, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.e
  store i8 10, ptr %i.j, align 1
  %i.k = load i64, ptr %i.d, align 8
  %i.l = load i64, ptr %i.g, align 8
  %i.m = icmp eq i64 %i.k, %i.l
  br i1 %i.m, label %_ZN2v88internal15JsonStringifier15AppendCharacterEh.exit.sink.split, label %_ZN2v88internal15JsonStringifier15AppendCharacterEh.exit, !prof !32

bb.c:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  store i64 %i.f, ptr %i.d, align 8
  %i.p = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %i.e
  store i16 10, ptr %i.p, align 2
  %i.q = load i64, ptr %i.d, align 8
  %i.r = load i64, ptr %i.g, align 8
  %i.s = icmp eq i64 %i.q, %i.r
  br i1 %i.s, label %_ZN2v88internal15JsonStringifier15AppendCharacterEh.exit.sink.split, label %_ZN2v88internal15JsonStringifier15AppendCharacterEh.exit, !prof !32

_ZN2v88internal15JsonStringifier15AppendCharacterEh.exit.sink.split: ; preds = %bb.c, %bb.b
  tail call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  br label %_ZN2v88internal15JsonStringifier15AppendCharacterEh.exit

_ZN2v88internal15JsonStringifier15AppendCharacterEh.exit: ; preds = %_ZN2v88internal15JsonStringifier15AppendCharacterEh.exit.sink.split, %bb.c, %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %.lr.ph10, label %._crit_edge

.lr.ph10:                                         ; preds = %_ZN2v88internal15JsonStringifier15AppendCharacterEh.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN2v88internal15JsonStringifier13AppendCStringItEEvPKT_.exit, %_ZN2v88internal15JsonStringifier15AppendCharacterEh.exit
  ret void

bb.d:                                             ; preds = %.lr.ph10, %_ZN2v88internal15JsonStringifier13AppendCStringItEEvPKT_.exit
  %.09 = phi i32 [ 0, %.lr.ph10 ], [ %i.ba, %_ZN2v88internal15JsonStringifier13AppendCStringItEEvPKT_.exit ]
  %i.ab = load ptr, ptr %i.w, align 8             ; 3 uses
  %i.ac = load i32, ptr %i.a, align 8
  %i.ad = icmp eq i32 %i.ac, 0
  %i.ae = load i16, ptr %i.ab, align 2            ; 3 uses
  %.not5.i6 = icmp eq i16 %i.ae, 0                ; 2 uses
  br i1 %i.ad, label %.preheader, label %.preheader2

.preheader2:                                      ; preds = %bb.d
  br i1 %.not5.i6, label %_ZN2v88internal15JsonStringifier13AppendCStringItEEvPKT_.exit, label %.lr.ph

.preheader:                                       ; preds = %bb.d
  br i1 %.not5.i6, label %_ZN2v88internal15JsonStringifier13AppendCStringItEEvPKT_.exit, label %.lr.ph8

.lr.ph8:                                          ; preds = %.preheader, %_ZN2v88internal15JsonStringifier6AppendIthEEvT_.exit
  %i.af = phi i16 [ %i.ap, %_ZN2v88internal15JsonStringifier6AppendIthEEvT_.exit ], [ %i.ae, %.preheader ]
  %.0.i7 = phi ptr [ %i.ag, %_ZN2v88internal15JsonStringifier6AppendIthEEvT_.exit ], [ %i.ab, %.preheader ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i7, i64 2 ; 2 uses
  %i.ah = trunc i16 %i.af to i8
  %i.ai = load ptr, ptr %i.aa, align 8
  %i.aj = load i64, ptr %i.y, align 8             ; 2 uses
  %i.ak = add i64 %i.aj, 1
  store i64 %i.ak, ptr %i.y, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  store i8 %i.ah, ptr %i.al, align 1
  %i.am = load i64, ptr %i.y, align 8
  %i.an = load i64, ptr %i.z, align 8
  %i.ao = icmp eq i64 %i.am, %i.an
  br i1 %i.ao, label %bb.e, label %_ZN2v88internal15JsonStringifier6AppendIthEEvT_.exit, !prof !32

bb.e:                                             ; preds = %.lr.ph8
  tail call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  br label %_ZN2v88internal15JsonStringifier6AppendIthEEvT_.exit

_ZN2v88internal15JsonStringifier6AppendIthEEvT_.exit: ; preds = %.lr.ph8, %bb.e
  %i.ap = load i16, ptr %i.ag, align 2            ; 2 uses
  %.not5.i = icmp eq i16 %i.ap, 0
  br i1 %.not5.i, label %_ZN2v88internal15JsonStringifier13AppendCStringItEEvPKT_.exit, label %.lr.ph8, !llvm.loop !144

.lr.ph:                                           ; preds = %.preheader2, %_ZN2v88internal15JsonStringifier6AppendIttEEvT_.exit
  %i.aq = phi i16 [ %i.az, %_ZN2v88internal15JsonStringifier6AppendIttEEvT_.exit ], [ %i.ae, %.preheader2 ]
  %.1.i5 = phi ptr [ %i.ar, %_ZN2v88internal15JsonStringifier6AppendIttEEvT_.exit ], [ %i.ab, %.preheader2 ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.1.i5, i64 2 ; 2 uses
  %i.as = load ptr, ptr %i.x, align 8
  %i.at = load i64, ptr %i.y, align 8             ; 2 uses
  %i.au = add i64 %i.at, 1
  store i64 %i.au, ptr %i.y, align 8
  %i.av = getelementptr inbounds nuw [2 x i8], ptr %i.as, i64 %i.at
  store i16 %i.aq, ptr %i.av, align 2
  %i.aw = load i64, ptr %i.y, align 8
  %i.ax = load i64, ptr %i.z, align 8
  %i.ay = icmp eq i64 %i.aw, %i.ax
  br i1 %i.ay, label %bb.f, label %_ZN2v88internal15JsonStringifier6AppendIttEEvT_.exit, !prof !32

bb.f:                                             ; preds = %.lr.ph
  tail call void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr noundef nonnull align 8 dereferenceable(2688) %0)
  br label %_ZN2v88internal15JsonStringifier6AppendIttEEvT_.exit

_ZN2v88internal15JsonStringifier6AppendIttEEvT_.exit: ; preds = %.lr.ph, %bb.f
  %i.az = load i16, ptr %i.ar, align 2            ; 2 uses
  %.not.i = icmp eq i16 %i.az, 0
  br i1 %.not.i, label %_ZN2v88internal15JsonStringifier13AppendCStringItEEvPKT_.exit, label %.lr.ph, !llvm.loop !145

_ZN2v88internal15JsonStringifier13AppendCStringItEEvPKT_.exit: ; preds = %_ZN2v88internal15JsonStringifier6AppendIttEEvT_.exit, %_ZN2v88internal15JsonStringifier6AppendIthEEvT_.exit, %.preheader2, %.preheader
  %i.ba = add nuw nsw i32 %.09, 1                 ; 2 uses
  %i.bb = load i32, ptr %i.t, align 8
  %i.bc = icmp slt i32 %i.ba, %i.bb
  br i1 %i.bc, label %bb.d, label %._crit_edge, !llvm.loop !146
}

; Function Attrs: mustprogress noinline nounwind uwtable
define hidden void @_ZN2v88internal15JsonStringifier6ExtendEv(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(2688) %0) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp ugt i64 %i.b, 536870887
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i8 1, ptr %i.e, align 4
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.f = shl nuw nsw i64 %i.b, 1                  ; 2 uses
  store i64 %i.f, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.f) #24 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 4 uses
  %1 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.m = load i64, ptr %1, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %i.l, i64 %i.m, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 640
  %.not = icmp eq ptr %i.l, %i.n
  %i.o = icmp eq ptr %i.l, null
  %or.cond = or i1 %.not, %i.o
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #25
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store ptr %i.j, ptr %i.k, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.j, ptr %i.p, align 8
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  %i.q = shl nuw nsw i64 %i.b, 2
  %i.r = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.q) #24 ; 5 uses
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = load i64, ptr %2, align 8                ; 10 uses
  %.not13 = icmp eq i64 %i.s, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8 ; 5 uses
  br i1 %.not13, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %i.s, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.t = add i64 %i.s, -1                         ; 2 uses
  %i.u = and i64 %i.t, 4294967295
  %i.v = icmp eq i64 %i.u, 4294967295
  %i.w = icmp ugt i64 %i.t, 4294967295
  %i.x = or i1 %i.v, %i.w
  br i1 %i.x, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  %min.iters.check19 = icmp ult i64 %i.s, 16
  br i1 %min.iters.check19, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.y = and i64 %i.s, 12
  %n.vec = and i64 %i.s, 8589934576               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %.pre, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load = load <8 x i16>, ptr %i.z, align 2
  %wide.load20 = load <8 x i16>, ptr %i.aa, align 2
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <8 x i16> %wide.load, ptr %i.ab, align 2
  store <8 x i16> %wide.load20, ptr %i.ac, align 2
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ad = icmp eq i64 %index.next, %n.vec
  br i1 %i.ad, label %middle.block, label %vector.body, !llvm.loop !147

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge.thread, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.y, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !44

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec21 = and i64 %i.s, 8589934588             ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index22 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next24, %vec.epilog.vector.body ] ; 3 uses
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.pre, i64 %index22
  %wide.load23 = load <4 x i16>, ptr %i.ae, align 2
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %index22
  store <4 x i16> %wide.load23, ptr %i.af, align 2
  %index.next24 = add nuw i64 %index22, 4         ; 2 uses
  %i.ag = icmp eq i64 %index.next24, %n.vec21
  br i1 %i.ag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !148

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n25 = icmp eq i64 %i.s, %n.vec21
  br i1 %cmp.n25, label %._crit_edge.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vector.scevcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.scevcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec21, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ai = icmp eq ptr %.pre, null
  br i1 %i.ai, label %bb.i, label %bb.h

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %.pre, i64 %indvars.iv
  %i.ak = load i16, ptr %i.aj, align 2
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.r, i64 %indvars.iv
  store i16 %i.ak, ptr %i.al, align 2
  %indvars.iv.next = add i64 %indvars.iv, 1       ; 2 uses
  %i.am = and i64 %indvars.iv.next, 4294967295
  %i.an = icmp ugt i64 %i.s, %i.am
  br i1 %i.an, label %.lr.ph, label %._crit_edge.thread, !llvm.loop !149

._crit_edge.thread:                               ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.ap = phi ptr [ %i.ao, %._crit_edge.thread ], [ %i.ah, %._crit_edge ]
  tail call void @_ZdaPv(ptr noundef nonnull %.pre) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge
  %i.aq = phi ptr [ %i.ap, %bb.h ], [ %i.ah, %._crit_edge ]
  store ptr %i.r, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.r, ptr %i.ar, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f, %bb.b
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind uwtable
define hidden ptr @_ZN2v88internal13JsonStringifyEPNS0_7IsolateENS0_6HandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEESF_NS3_INS0_6ObjectEEE(ptr noundef %0, ptr %1, ptr %2, ptr %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.v8::internal::ContinuationRecord", align 8 ; 9 uses
  %5 = alloca %"class.v8::internal::PerThreadAssertScopeEmpty", align 1 ; 4 uses
  %6 = alloca %"class.v8::internal::FastJsonStringifier", align 8 ; 24 uses
  %7 = alloca %"class.std::optional.755", align 8 ; 31 uses
  %8 = alloca %"class.v8::internal::JsonStringifier", align 8 ; 5 uses
  %9 = alloca %"class.v8::internal::JsonStringifier", align 8 ; 17 uses
  %i.a = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 177), align 1, !range !33, !noundef !34
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_121CanUseFastStringifierENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS2_INS0_6ObjectEEE.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %2, align 8                ; 2 uses
  %i.d = load ptr, ptr @_ZN2v88internal12IsolateGroup22default_isolate_group_E, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 10624
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.h = load i64, ptr %i.g, align 8
  %i.i = icmp eq i64 %i.c, %i.h
  br i1 %i.i, label %_ZN2v88internal12_GLOBAL__N_121CanUseFastStringifierENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS2_INS0_6ObjectEEE.exit, label %_ZN2v88internal12_GLOBAL__N_121CanUseFastStringifierENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS2_INS0_6ObjectEEE.exit.thread

_ZN2v88internal12_GLOBAL__N_121CanUseFastStringifierENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS2_INS0_6ObjectEEE.exit: ; preds = %bb.b
  %i.j = load i64, ptr %3, align 8
  %i.k = icmp eq i64 %i.j, %i.c
  br i1 %i.k, label %bb.c, label %_ZN2v88internal12_GLOBAL__N_121CanUseFastStringifierENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS2_INS0_6ObjectEEE.exit.thread

bb.c:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_121CanUseFastStringifierENS0_12DirectHandleINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEENS2_INS0_6ObjectEEE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr %0, ptr %6, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 58832 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  store ptr %i.n, ptr %i.l, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 360 ; 4 uses
  store i8 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 384
  store i8 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 280 ; 5 uses
  store ptr %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 272 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 288
  store ptr %i.s, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 392 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 416 ; 2 uses
  store ptr %i.v, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 400 ; 4 uses
  store ptr %i.v, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %6, i64 408 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 928 ; 3 uses
  store ptr %i.y, ptr %i.x, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 1200 ; 6 uses
  store i8 0, ptr %i.z, align 8
  %i.aa = load i64, ptr %1, align 8               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.ab = and i64 %i.aa, 1
  %or.cond.not.i = icmp eq i64 %i.ab, 0
  br i1 %or.cond.not.i, label %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, label %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %bb.c
  %i.ac = add nsw i64 %i.aa, -1
  %i.ad = inttoptr i64 %i.ac to ptr               ; 3 uses
  %i.ae = load atomic volatile i64, ptr %i.ad monotonic, align 8
  %i.af = add i64 %i.ae, 11
  %i.ag = inttoptr i64 %i.af to ptr
  %i.ah = load atomic volatile i16, ptr %i.ag monotonic, align 2
  %i.ai = icmp ugt i16 %i.ah, 302
  br i1 %i.ai, label %bb.d, label %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit.i

_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit.i: ; preds = %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.aj = load atomic volatile i64, ptr %i.ad monotonic, align 8
  %i.ak = add i64 %i.aj, 11
  %i.al = inttoptr i64 %i.ak to ptr
  %i.am = load atomic volatile i16, ptr %i.al monotonic, align 2
  %i.an = icmp eq i16 %i.am, 2119
  br i1 %i.an, label %bb.d, label %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread.i

bb.d:                                             ; preds = %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit.i, %_ZN2v88internal10IsJSObjectENS0_6TaggedINS0_6ObjectEEE.exit.i
  %i.ao = load atomic volatile i64, ptr %i.ad monotonic, align 8
  %i.ap = add i64 %i.ao, -1
  %i.aq = inttoptr i64 %i.ap to ptr
  %i.ar = load atomic volatile i64, ptr %i.aq monotonic, align 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.at = load i64, ptr %i.as, align 8
  %i.au = icmp eq i64 %i.ar, %i.at
  br i1 %i.au, label %.thread.i, label %bb.e, !prof !32

bb.e:                                             ; preds = %bb.d
  %i.av = add i64 %i.ar, 31
  %i.aw = inttoptr i64 %i.av to ptr
  %i.ax = load i64, ptr %i.aw, align 8            ; 2 uses
  %i.ay = add i64 %i.ax, 711
  %i.az = inttoptr i64 %i.ay to ptr
  %i.ba = load atomic volatile i64, ptr %i.az monotonic, align 8 ; 3 uses
  store i64 %i.ba, ptr %i.y, align 8
  %i.bb = add i64 %i.ax, 639
  %i.bc = inttoptr i64 %i.bb to ptr
  %i.bd = load atomic volatile i64, ptr %i.bc monotonic, align 8 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 936
  store i64 %i.bd, ptr %i.be, align 8
  %i.bf = add i64 %i.bd, -1
  %i.bg = inttoptr i64 %i.bf to ptr               ; 2 uses
  %i.bh = load atomic volatile i64, ptr %i.bg monotonic, align 8
  %i.bi = add i64 %i.bh, 15
  %i.bj = inttoptr i64 %i.bi to ptr
  %i.bk = load atomic volatile i32, ptr %i.bj monotonic, align 4
  %i.bl = and i32 %i.bk, 268435456
  %.not211.i = icmp eq i32 %i.bl, 0
  br i1 %.not211.i, label %bb.f, label %.thread.i, !prof !36

bb.f:                                             ; preds = %bb.e
  %i.bm = add i64 %i.ba, -1
  %i.bn = inttoptr i64 %i.bm to ptr
  %i.bo = load atomic volatile i64, ptr %i.bn monotonic, align 8
  %i.bp = add i64 %i.bo, 15
  %i.bq = inttoptr i64 %i.bp to ptr
  %i.br = load atomic volatile i32, ptr %i.bq monotonic, align 4
  %i.bs = and i32 %i.br, 268435456
  %.not212.i = icmp eq i32 %i.bs, 0
  br i1 %.not212.i, label %bb.g, label %.thread.i, !prof !36

bb.g:                                             ; preds = %bb.f
  %i.bt = load atomic volatile i64, ptr %i.bg monotonic, align 8
  %i.bu = add i64 %i.bt, 23
  %i.bv = inttoptr i64 %i.bu to ptr
  %i.bw = load i64, ptr %i.bv, align 8
  %.not213.i = icmp eq i64 %i.bw, %i.ba
  br i1 %.not213.i, label %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread.i, label %.thread.i, !prof !36

.thread.i:                                        ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  br label %bb.ah

_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread.i: ; preds = %bb.g, %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit.i, %bb.c
  %i.bx = call noundef i32 @_ZN2v88internal19FastJsonStringifierIhE24TrySerializeSimpleObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEE(ptr noundef nonnull align 8 dereferenceable(944) %6, i64 %i.aa) ; 4 uses
  %i.by = icmp eq i32 %i.bx, 4
  br i1 %i.by, label %bb.h, label %bb.j, !prof !32

bb.h:                                             ; preds = %_ZN2v88internal9IsJSArrayENS0_6TaggedINS0_6ObjectEEE.exit.thread.i
  %i.bz = load ptr, ptr %i.w, align 8             ; 2 uses
  %i.ca = load ptr, ptr %i.x, align 8
  %i.cb = icmp eq ptr %i.bz, %i.ca
  br i1 %i.cb, label %bb.i, label %_ZN2v88internal19FastJsonStringifierIhE15SerializeObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSH_2EEEE.exit.thread.i, !prof !32

bb.i:                                             ; preds = %bb.h
  call preserve_mostcc void @_ZN2v84base11SmallVectorINS_8internal18ContinuationRecordELm16ESaIS3_EE4GrowEv(ptr noundef nonnull align 8 dereferenceable(536) %i.u)
  %.pre.i.i.i = load ptr, ptr %i.w, align 8
  br label %_ZN2v88internal19FastJsonStringifierIhE15SerializeObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSH_2EEEE.exit.thread.i

_ZN2v88internal19FastJsonStringifierIhE15SerializeObjectENS0_6TaggedINS0_5UnionIJNS0_3SmiENS0_10HeapNumberENS0_6BigIntENS0_6StringENS0_6SymbolENS0_7BooleanENS0_4NullENS0_9UndefinedENS0_10JSReceiverEEEEEERKNS0_25PerThreadAssertScopeEmptyILb0EJLNS0_19PerThreadAssertTypeE1ELSH_2EEEE.exit.thread.i: ; preds = %bb.i, %bb.h
  %i.cc = phi ptr [ %.pre.i.i.i, %bb.i ], [ %i.bz, %bb.h ] ; 5 uses
end_hunk_0
