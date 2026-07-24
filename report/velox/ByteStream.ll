inline.NumInlined: 721
inline.NumDeleted: 389
begin_hunk_0_@_ZNK8facebook5velox16ByteOutputStream5tellpEv:bb.a
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox16ByteOutputStream5seekpESt4fposI11__mbstate_tE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, i64 %1, i64 %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.59", align 16 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39   ; 3 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZNK8facebook5velox16ByteOutputStream9updateEndEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108  ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 -24
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %bb.c, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d, %bb.c, %bb.b
  br label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !26   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !119
  %i.n = icmp sgt i64 %i.k, %i.m
  br i1 %i.n, label %bb.d, label %.lr.ph.preheader

bb.d:                                             ; preds = %bb.c
  store i64 %i.k, ptr %i.l, align 8, !tbaa !119
  br label %.lr.ph.preheader

_ZNK8facebook5velox16ByteOutputStream9updateEndEv.exit: ; preds = %bb.a
  %i.o = icmp eq i64 %1, 0
  br i1 %i.o, label %bb.i, label %.critedge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.029 = phi i64 [ %i.r, %bb.e ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %.sroa.018.028 = phi ptr [ %i.s, %bb.e ], [ %i.b, %.lr.ph.preheader ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.018.028, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !24   ; 2 uses
  %.not = icmp sgt i64 %.029, %i.q
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.r = sub nsw i64 %.029, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.018.028, i64 24 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.d
  br i1 %i.t, label %.critedge, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.018.028, ptr %i.u, align 8, !tbaa !108
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.018.028, i64 16
  store i64 %.029, ptr %i.v, align 8, !tbaa !26
  br label %bb.i

.critedge:                                        ; preds = %bb.e, %_ZNK8facebook5velox16ByteOutputStream9updateEndEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !137
  %.sroa.03.0.insert.ext.i = zext i64 %1 to i128
  store i128 %.sroa.03.0.insert.ext.i, ptr %3, align 16, !noalias !137
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.30, i64 40, i64 3, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !137
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox16ByteOutputStream5seekpESt4fposI11__mbstate_tEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.30) #22
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.critedge
  unreachable

bb.h:                                             ; preds = %.critedge
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %4, align 8, !tbaa !30     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !34
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %i.w

bb.i:                                             ; preds = %_ZNK8facebook5velox16ByteOutputStream9updateEndEv.exit, %bb.f
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox16ByteOutputStream5flushEPNS0_12OutputStreamE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39   ; 3 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !108  ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 -24
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %bb.c, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !26   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !119
  %i.n = icmp sgt i64 %i.k, %i.m
  br i1 %i.n, label %bb.d, label %.lr.ph

bb.d:                                             ; preds = %bb.c
  store i64 %i.k, ptr %i.l, align 8, !tbaa !119
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c, %bb.d
  %i.o = ptrtoint ptr %i.d to i64
  %i.p = ptrtoint ptr %i.b to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = sdiv exact i64 %i.q, 24
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 11
  br label %bb.e

._crit_edge:                                      ; preds = %_ZN8facebook5velox4bits11reverseBitsEPhi.exit, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load i8, ptr %i.y, align 8, !tbaa !128, !range !129, !noundef !130
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.n, label %bb.r

bb.e:                                             ; preds = %.lr.ph, %_ZN8facebook5velox4bits11reverseBitsEPhi.exit
  %indvars.iv25 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next26, %_ZN8facebook5velox4bits11reverseBitsEPhi.exit ] ; 5 uses
  %i.ab = phi i64 [ %i.r, %.lr.ph ], [ %i.fh, %_ZN8facebook5velox4bits11reverseBitsEPhi.exit ]
  %i.ac = phi ptr [ %i.b, %.lr.ph ], [ %i.fd, %_ZN8facebook5velox4bits11reverseBitsEPhi.exit ]
  %i.ad = add nsw i64 %i.ab, -1
  %i.ae = icmp eq i64 %i.ad, %indvars.iv25
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %indvars.iv25 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.in = select i1 %i.ae, ptr %i.s, ptr %i.ag
  %i.ah = load i64, ptr %.in, align 8, !tbaa !14  ; 6 uses
  %i.ai = load i8, ptr %i.t, align 8, !tbaa !128, !range !129, !noundef !130
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.f, label %_ZN8facebook5velox4bits6negateEPmi.exit

bb.f:                                             ; preds = %bb.e
  %i.ak = add i64 %i.ah, 7
  %i.al = lshr i64 %i.ak, 3                       ; 4 uses
  %i.am = load i8, ptr %i.u, align 2, !tbaa !140, !range !129, !noundef !130
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.g, label %_ZN8facebook5velox4bits6negateEPmi.exit

bb.g:                                             ; preds = %bb.f
  %i.ao = load i8, ptr %i.v, align 4, !tbaa !141, !range !129, !noundef !130
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %_ZN8facebook5velox4bits6negateEPmi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %i.af, align 8, !tbaa !76 ; 8 uses
  %i.ar = trunc i64 %i.ah to i32                  ; 4 uses
  %.not27.i = icmp slt i32 %i.ar, 64
  br i1 %.not27.i, label %.preheader26.i, label %iter.check97

iter.check97:                                     ; preds = %bb.h
  %i.as = and i64 %i.ah, 2147483647               ; 2 uses
  %i.at = tail call i64 @llvm.umax.i64(i64 %i.as, i64 127)
  %i.au = add nsw i64 %i.at, -64                  ; 3 uses
  %i.av = lshr i64 %i.au, 6
  %i.aw = add nuw nsw i64 %i.av, 1                ; 5 uses
  %min.iters.check79 = icmp ult i64 %i.au, 192
  br i1 %min.iters.check79, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check80

vector.main.loop.iter.check80:                    ; preds = %iter.check97
  %min.iters.check81 = icmp ult i64 %i.au, 960
  br i1 %min.iters.check81, label %vec.epilog.ph101, label %vector.ph82

vector.ph82:                                      ; preds = %vector.main.loop.iter.check80
  %n.mod.vf83 = and i64 %i.aw, 12
  %n.vec84 = and i64 %i.aw, 576460752303423472    ; 4 uses
  %i.ax = shl i64 %n.vec84, 6                     ; 2 uses
  %i.ay = or disjoint i64 %i.ax, 64
  br label %vector.body85

vector.body85:                                    ; preds = %vector.body85, %vector.ph82
  %index86 = phi i64 [ 0, %vector.ph82 ], [ %index.next91, %vector.body85 ] ; 2 uses
  %i.az = shl i64 %index86, 3
  %2 = and i64 %i.az, 2305843009213693824
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 %2 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 64 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 96 ; 2 uses
  %wide.load87 = load <4 x i64>, ptr %i.ba, align 8, !tbaa !14
  %wide.load88 = load <4 x i64>, ptr %i.bb, align 8, !tbaa !14
  %wide.load89 = load <4 x i64>, ptr %i.bc, align 8, !tbaa !14
  %wide.load90 = load <4 x i64>, ptr %i.bd, align 8, !tbaa !14
  %i.be = xor <4 x i64> %wide.load87, splat (i64 -1)
  %i.bf = xor <4 x i64> %wide.load88, splat (i64 -1)
  %i.bg = xor <4 x i64> %wide.load89, splat (i64 -1)
  %i.bh = xor <4 x i64> %wide.load90, splat (i64 -1)
  store <4 x i64> %i.be, ptr %i.ba, align 8, !tbaa !14
  store <4 x i64> %i.bf, ptr %i.bb, align 8, !tbaa !14
  store <4 x i64> %i.bg, ptr %i.bc, align 8, !tbaa !14
  store <4 x i64> %i.bh, ptr %i.bd, align 8, !tbaa !14
  %index.next91 = add nuw i64 %index86, 16        ; 2 uses
  %i.bi = icmp eq i64 %index.next91, %n.vec84
  br i1 %i.bi, label %middle.block92, label %vector.body85, !llvm.loop !142

middle.block92:                                   ; preds = %vector.body85
  %cmp.n93 = icmp eq i64 %i.aw, %n.vec84
  br i1 %cmp.n93, label %.preheader26.loopexit.i, label %vec.epilog.iter.check99

vec.epilog.iter.check99:                          ; preds = %middle.block92
  %min.epilog.iters.check100 = icmp eq i64 %n.mod.vf83, 0
  br i1 %min.epilog.iters.check100, label %.lr.ph.i.preheader, label %vec.epilog.ph101, !prof !63

vec.epilog.ph101:                                 ; preds = %vector.main.loop.iter.check80, %vec.epilog.iter.check99
  %vec.epilog.resume.val94 = phi i64 [ %n.vec84, %vec.epilog.iter.check99 ], [ 0, %vector.main.loop.iter.check80 ]
  %n.vec103 = and i64 %i.aw, 576460752303423484   ; 3 uses
  %i.bj = shl i64 %n.vec103, 6                    ; 2 uses
  %i.bk = or disjoint i64 %i.bj, 64
  br label %vec.epilog.vector.body104

vec.epilog.vector.body104:                        ; preds = %vec.epilog.vector.body104, %vec.epilog.ph101
  %index105 = phi i64 [ %vec.epilog.resume.val94, %vec.epilog.ph101 ], [ %index.next107, %vec.epilog.vector.body104 ] ; 2 uses
  %i.bl = shl i64 %index105, 3
  %3 = and i64 %i.bl, 2305843009213693920
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aq, i64 %3 ; 2 uses
  %wide.load106 = load <4 x i64>, ptr %i.bm, align 8, !tbaa !14
  %i.bn = xor <4 x i64> %wide.load106, splat (i64 -1)
  store <4 x i64> %i.bn, ptr %i.bm, align 8, !tbaa !14
  %index.next107 = add nuw i64 %index105, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next107, %n.vec103
  br i1 %i.bo, label %vec.epilog.middle.block108, label %vec.epilog.vector.body104, !llvm.loop !143

vec.epilog.middle.block108:                       ; preds = %vec.epilog.vector.body104
  %cmp.n109 = icmp eq i64 %i.aw, %n.vec103
  br i1 %cmp.n109, label %.preheader26.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check97, %vec.epilog.iter.check99, %vec.epilog.middle.block108
  %indvars.iv36.i.ph = phi i64 [ 0, %iter.check97 ], [ %i.ax, %vec.epilog.iter.check99 ], [ %i.bj, %vec.epilog.middle.block108 ]
  %indvars.iv.i.ph = phi i64 [ 64, %iter.check97 ], [ %i.ay, %vec.epilog.iter.check99 ], [ %i.bk, %vec.epilog.middle.block108 ]
  br label %.lr.ph.i

.preheader26.loopexit.i:                          ; preds = %.lr.ph.i, %vec.epilog.middle.block108, %middle.block92
  %i.bp = and i32 %i.ar, 2147483584
  br label %.preheader26.i

.preheader26.i:                                   ; preds = %.preheader26.loopexit.i, %bb.h
  %.0.lcssa.i = phi i32 [ 0, %bb.h ], [ %i.bp, %.preheader26.loopexit.i ] ; 3 uses
  %i.bq = or disjoint i32 %.0.lcssa.i, 8
  %.not2429.i = icmp sgt i32 %i.bq, %i.ar
  br i1 %.not2429.i, label %.preheader.i, label %iter.check62

iter.check62:                                     ; preds = %.preheader26.i
  %i.br = zext nneg i32 %.0.lcssa.i to i64        ; 8 uses
  %i.bs = or disjoint i64 %i.br, 8                ; 3 uses
  %i.bt = and i64 %i.ah, 4294967295               ; 2 uses
  %i.bu = or disjoint i64 %i.br, 16
  %i.bv = add nuw nsw i64 %i.bt, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bu, i64 %i.bv)
  %i.bw = add nsw i64 %umax, -9
  %i.bx = sub nsw i64 %i.bw, %i.br                ; 3 uses
  %i.by = lshr i64 %i.bx, 3
  %i.bz = add nuw nsw i64 %i.by, 1                ; 5 uses
  %min.iters.check44 = icmp ult i64 %i.bx, 120
  br i1 %min.iters.check44, label %.lr.ph31.i.preheader, label %vector.main.loop.iter.check45

vector.main.loop.iter.check45:                    ; preds = %iter.check62
  %min.iters.check46 = icmp ult i64 %i.bx, 1016
  br i1 %min.iters.check46, label %vec.epilog.ph66, label %vector.ph47

vector.ph47:                                      ; preds = %vector.main.loop.iter.check45
  %n.mod.vf48 = and i64 %i.bz, 112
  %n.vec49 = and i64 %i.bz, 4611686018427387776   ; 4 uses
  %i.ca = shl i64 %n.vec49, 3                     ; 2 uses
  %i.cb = add i64 %i.ca, %i.br
  %i.cc = add i64 %i.bs, %i.ca                    ; 2 uses
  %i.cd = lshr exact i64 %i.br, 3
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph47
  %index51 = phi i64 [ 0, %vector.ph47 ], [ %index.next56, %vector.body50 ] ; 2 uses
  %4 = add i64 %i.cd, %index51
  %5 = and i64 %4, 2305843009213693944
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aq, i64 %5 ; 5 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 64 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 96 ; 2 uses
  %wide.load52 = load <32 x i8>, ptr %i.ce, align 1, !tbaa !34
  %wide.load53 = load <32 x i8>, ptr %i.cf, align 1, !tbaa !34
  %wide.load54 = load <32 x i8>, ptr %i.cg, align 1, !tbaa !34
  %wide.load55 = load <32 x i8>, ptr %i.ch, align 1, !tbaa !34
  %i.ci = xor <32 x i8> %wide.load52, splat (i8 -1)
  %i.cj = xor <32 x i8> %wide.load53, splat (i8 -1)
  %i.ck = xor <32 x i8> %wide.load54, splat (i8 -1)
  %i.cl = xor <32 x i8> %wide.load55, splat (i8 -1)
  store <32 x i8> %i.ci, ptr %i.ce, align 1, !tbaa !34
  store <32 x i8> %i.cj, ptr %i.cf, align 1, !tbaa !34
  store <32 x i8> %i.ck, ptr %i.cg, align 1, !tbaa !34
  store <32 x i8> %i.cl, ptr %i.ch, align 1, !tbaa !34
  %index.next56 = add nuw i64 %index51, 128       ; 2 uses
  %i.cm = icmp eq i64 %index.next56, %n.vec49
  br i1 %i.cm, label %middle.block57, label %vector.body50, !llvm.loop !144

middle.block57:                                   ; preds = %vector.body50
  %ind.escape = add nsw i64 %i.cc, -8
  %cmp.n58 = icmp eq i64 %i.bz, %n.vec49
  br i1 %cmp.n58, label %.preheader.i.loopexit, label %vec.epilog.iter.check64

vec.epilog.iter.check64:                          ; preds = %middle.block57
  %min.epilog.iters.check65 = icmp eq i64 %n.mod.vf48, 0
  br i1 %min.epilog.iters.check65, label %.lr.ph31.i.preheader, label %vec.epilog.ph66, !prof !145

vec.epilog.ph66:                                  ; preds = %vector.main.loop.iter.check45, %vec.epilog.iter.check64
  %vec.epilog.resume.val59 = phi i64 [ %n.vec49, %vec.epilog.iter.check64 ], [ 0, %vector.main.loop.iter.check45 ]
  %n.vec68 = and i64 %i.bz, 4611686018427387888   ; 3 uses
  %i.cn = shl i64 %n.vec68, 3                     ; 2 uses
  %i.co = add i64 %i.cn, %i.br
  %i.cp = add i64 %i.bs, %i.cn                    ; 2 uses
  %i.cq = lshr exact i64 %i.br, 3
  br label %vec.epilog.vector.body69

vec.epilog.vector.body69:                         ; preds = %vec.epilog.vector.body69, %vec.epilog.ph66
  %index70 = phi i64 [ %vec.epilog.resume.val59, %vec.epilog.ph66 ], [ %index.next72, %vec.epilog.vector.body69 ] ; 2 uses
  %6 = add i64 %i.cq, %index70
  %7 = and i64 %6, 2305843009213693944
  %i.cr = getelementptr inbounds nuw i8, ptr %i.aq, i64 %7 ; 2 uses
  %wide.load71 = load <16 x i8>, ptr %i.cr, align 1, !tbaa !34
  %i.cs = xor <16 x i8> %wide.load71, splat (i8 -1)
  store <16 x i8> %i.cs, ptr %i.cr, align 1, !tbaa !34
  %index.next72 = add nuw i64 %index70, 16        ; 2 uses
  %i.ct = icmp eq i64 %index.next72, %n.vec68
  br i1 %i.ct, label %vec.epilog.middle.block73, label %vec.epilog.vector.body69, !llvm.loop !146

vec.epilog.middle.block73:                        ; preds = %vec.epilog.vector.body69
  %ind.escape74 = add nsw i64 %i.cp, -8
  %cmp.n75 = icmp eq i64 %i.bz, %n.vec68
  br i1 %cmp.n75, label %.preheader.i.loopexit, label %.lr.ph31.i.preheader

.lr.ph31.i.preheader:                             ; preds = %iter.check62, %vec.epilog.iter.check64, %vec.epilog.middle.block73
  %indvars.iv20.ph = phi i64 [ %i.br, %iter.check62 ], [ %i.cb, %vec.epilog.iter.check64 ], [ %i.co, %vec.epilog.middle.block73 ]
  %indvars.iv.ph = phi i64 [ %i.bs, %iter.check62 ], [ %i.cc, %vec.epilog.iter.check64 ], [ %i.cp, %vec.epilog.middle.block73 ]
  br label %.lr.ph31.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %.lr.ph.i ], [ %indvars.iv36.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ]
  %i.cu = lshr exact i64 %indvars.iv36.i, 3
  %i.cv = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.cu ; 2 uses
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !14
  %i.cx = xor i64 %i.cw, -1
  store i64 %i.cx, ptr %i.cv, align 8, !tbaa !14
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 64 ; 2 uses
  %.not.i = icmp samesign ugt i64 %indvars.iv.next.i, %i.as
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 64
  br i1 %.not.i, label %.preheader26.loopexit.i, label %.lr.ph.i, !llvm.loop !147

.preheader.i.loopexit:                            ; preds = %.lr.ph31.i, %vec.epilog.middle.block73, %middle.block57
  %indvars.iv.lcssa = phi i64 [ %ind.escape74, %vec.epilog.middle.block73 ], [ %ind.escape, %middle.block57 ], [ %indvars.iv, %.lr.ph31.i ]
  %i.cy = trunc nuw nsw i64 %indvars.iv.lcssa to i32
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.loopexit, %.preheader26.i
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader26.i ], [ %i.cy, %.preheader.i.loopexit ] ; 2 uses
  %i.cz = icmp slt i32 %.1.lcssa.i, %i.ar
  br i1 %i.cz, label %.lr.ph34.preheader.i, label %_ZN8facebook5velox4bits6negateEPmi.exit

.lr.ph34.preheader.i:                             ; preds = %.preheader.i
  %i.da = zext nneg i32 %.1.lcssa.i to i64
  %wide.trip.count = and i64 %i.ah, 4294967295
  br label %.lr.ph34.i

.lr.ph31.i:                                       ; preds = %.lr.ph31.i.preheader, %.lr.ph31.i
  %indvars.iv20 = phi i64 [ %indvars.iv.next21, %.lr.ph31.i ], [ %indvars.iv20.ph, %.lr.ph31.i.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph31.i ], [ %indvars.iv.ph, %.lr.ph31.i.preheader ] ; 2 uses
  %i.db = lshr exact i64 %indvars.iv20, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.db ; 2 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !34
  %i.de = xor i8 %i.dd, -1
  store i8 %i.de, ptr %i.dc, align 1, !tbaa !34
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %.not24.i = icmp samesign ugt i64 %indvars.iv.next, %i.bt
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 8
  br i1 %.not24.i, label %.preheader.i.loopexit, label %.lr.ph31.i, !llvm.loop !148

.lr.ph34.i:                                       ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i, %.lr.ph34.preheader.i
  %indvars.iv41.i = phi i64 [ %i.da, %.lr.ph34.preheader.i ], [ %indvars.iv.next42.i, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i ] ; 6 uses
  %i.df = lshr i64 %indvars.iv41.i, 6
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.df
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !14
  %i.di = and i64 %indvars.iv41.i, 63
  %i.dj = shl nuw i64 1, %i.di
  %i.dk = and i64 %i.dj, %i.dh
  %.not25.i = icmp eq i64 %i.dk, 0
  %i.dl = lshr i64 %indvars.iv41.i, 3
  %i.dm = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.dl ; 2 uses
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !34  ; 2 uses
  br i1 %.not25.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph34.i
  %i.do = trunc i64 %indvars.iv41.i to i8
  %i.dp = and i8 %i.do, 7
  %i.dq = shl nuw i8 1, %i.dp
  %i.dr = or i8 %i.dq, %i.dn
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i

bb.j:                                             ; preds = %.lr.ph34.i
  %i.ds = and i64 %indvars.iv41.i, 7
  %i.dt = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !34
  %i.dv = and i8 %i.du, %i.dn
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i:  ; preds = %bb.j, %bb.i
  %.sink.i.i = phi i8 [ %i.dv, %bb.j ], [ %i.dr, %bb.i ]
  store i8 %.sink.i.i, ptr %i.dm, align 1, !tbaa !34
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next42.i, %wide.trip.count
  br i1 %exitcond.not, label %_ZN8facebook5velox4bits6negateEPmi.exit, label %.lr.ph34.i, !llvm.loop !149

_ZN8facebook5velox4bits6negateEPmi.exit:          ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i, %.preheader.i, %bb.e, %bb.g, %bb.f
  %i.dw = phi i64 [ %i.ah, %bb.e ], [ %i.al, %bb.g ], [ %i.al, %bb.f ], [ %i.al, %.preheader.i ], [ %i.al, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i ] ; 6 uses
  %i.dx = load i8, ptr %i.t, align 8, !tbaa !128, !range !129, !noundef !130
  %i.dy = trunc nuw i8 %i.dx to i1
  br i1 %i.dy, label %bb.k, label %_ZN8facebook5velox4bits11reverseBitsEPhi.exit

bb.k:                                             ; preds = %_ZN8facebook5velox4bits6negateEPmi.exit
  %i.dz = load i8, ptr %i.w, align 1, !tbaa !150, !range !129, !noundef !130
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.l, label %_ZN8facebook5velox4bits11reverseBitsEPhi.exit

bb.l:                                             ; preds = %bb.k
  %i.eb = load i8, ptr %i.x, align 1, !tbaa !151, !range !129, !noundef !130
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %_ZN8facebook5velox4bits11reverseBitsEPhi.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ed = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.ee = getelementptr inbounds nuw [24 x i8], ptr %i.ed, i64 %indvars.iv25
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !76 ; 3 uses
  %i.eg = trunc i64 %i.dw to i32
  %i.eh = icmp sgt i32 %i.eg, 0
  br i1 %i.eh, label %iter.check, label %_ZN8facebook5velox4bits11reverseBitsEPhi.exit

iter.check:                                       ; preds = %bb.m
  %wide.trip.count.i = and i64 %i.dw, 2147483647  ; 5 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 8
  br i1 %min.iters.check, label %.lr.ph.i15.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check34 = icmp samesign ult i64 %wide.trip.count.i, 128
  br i1 %min.iters.check34, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.dw, 120
  %n.vec = and i64 %i.dw, 2147483520              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ef, i64 %index ; 5 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 32 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 64 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 96 ; 2 uses
  %wide.load = load <32 x i8>, ptr %i.ei, align 1, !tbaa !34
  %wide.load35 = load <32 x i8>, ptr %i.ej, align 1, !tbaa !34
  %wide.load36 = load <32 x i8>, ptr %i.ek, align 1, !tbaa !34
  %wide.load37 = load <32 x i8>, ptr %i.el, align 1, !tbaa !34
  %i.em = tail call <32 x i8> @llvm.bitreverse.v32i8(<32 x i8> %wide.load)
  %i.en = tail call <32 x i8> @llvm.bitreverse.v32i8(<32 x i8> %wide.load35)
  %i.eo = tail call <32 x i8> @llvm.bitreverse.v32i8(<32 x i8> %wide.load36)
  %i.ep = tail call <32 x i8> @llvm.bitreverse.v32i8(<32 x i8> %wide.load37)
  store <32 x i8> %i.em, ptr %i.ei, align 1, !tbaa !34
  store <32 x i8> %i.en, ptr %i.ej, align 1, !tbaa !34
  store <32 x i8> %i.eo, ptr %i.ek, align 1, !tbaa !34
  store <32 x i8> %i.ep, ptr %i.el, align 1, !tbaa !34
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.eq = icmp eq i64 %index.next, %n.vec
  br i1 %i.eq, label %middle.block, label %vector.body, !llvm.loop !152

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  br i1 %cmp.n, label %_ZN8facebook5velox4bits11reverseBitsEPhi.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i15.preheader, label %vec.epilog.ph, !prof !153

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec39 = and i64 %i.dw, 2147483640            ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.ef, i64 %index40 ; 2 uses
  %wide.load41 = load <8 x i8>, ptr %i.er, align 1, !tbaa !34
  %i.es = tail call <8 x i8> @llvm.bitreverse.v8i8(<8 x i8> %wide.load41)
  store <8 x i8> %i.es, ptr %i.er, align 1, !tbaa !34
  %index.next42 = add nuw i64 %index40, 8         ; 2 uses
  %i.et = icmp eq i64 %index.next42, %n.vec39
  br i1 %i.et, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !154

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n43 = icmp eq i64 %wide.trip.count.i, %n.vec39
  br i1 %cmp.n43, label %_ZN8facebook5velox4bits11reverseBitsEPhi.exit, label %.lr.ph.i15.preheader

.lr.ph.i15.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i16.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec39, %vec.epilog.middle.block ]
  br label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %.lr.ph.i15.preheader, %.lr.ph.i15
  %indvars.iv.i16 = phi i64 [ %indvars.iv.next.i17, %.lr.ph.i15 ], [ %indvars.iv.i16.ph, %.lr.ph.i15.preheader ] ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ef, i64 %indvars.iv.i16 ; 2 uses
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !34
  %rev.i = tail call i8 @llvm.bitreverse.i8(i8 %i.ev)
  store i8 %rev.i, ptr %i.eu, align 1, !tbaa !34
  %indvars.iv.next.i17 = add nuw nsw i64 %indvars.iv.i16, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i17, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN8facebook5velox4bits11reverseBitsEPhi.exit, label %.lr.ph.i15, !llvm.loop !155

_ZN8facebook5velox4bits11reverseBitsEPhi.exit:    ; preds = %.lr.ph.i15, %middle.block, %vec.epilog.middle.block, %bb.m, %bb.l, %bb.k, %_ZN8facebook5velox4bits6negateEPmi.exit
  %i.ew = load ptr, ptr %i.a, align 8, !tbaa !38
  %i.ex = getelementptr inbounds nuw [24 x i8], ptr %i.ew, i64 %indvars.iv25
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !76
  %i.ez = load ptr, ptr %1, align 8, !tbaa !55
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16
end_hunk_0
