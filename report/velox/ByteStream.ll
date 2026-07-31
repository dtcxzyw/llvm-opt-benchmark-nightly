inline.NumInlined: 721
inline.NumDeleted: 389
begin_hunk_0_@_ZN8facebook5velox16ByteOutputStream16appendStringViewESt17basic_string_viewIcSt11char_traitsIcEE:bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define { i64, i64 } @_ZNK8facebook5velox16ByteOutputStream5tellpEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40   ; 2 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !105  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %bb.c
  %.025 = phi i64 [ 0, %.preheader ], [ %i.j, %bb.c ] ; 2 uses
  %.sroa.014.024 = phi ptr [ %i.b, %.preheader ], [ %i.k, %bb.c ] ; 3 uses
  %.not = icmp eq ptr %.sroa.014.024, %i.g
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.014.024, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !25
  %i.j = add nsw i64 %i.i, %.025
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.014.024, i64 24 ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.d
  br i1 %i.l, label %.critedge, label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !27
  %i.o = add nsw i64 %i.n, %.025
  br label %bb.e

.critedge:                                        ; preds = %bb.c
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorEPKcEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox16ByteOutputStream5tellpEvE18veloxCheckFailArgs, ptr noundef nonnull @.str.29) #22
  unreachable

bb.e:                                             ; preds = %bb.d, %bb.a
  %.sroa.017.2 = phi i64 [ %i.o, %bb.d ], [ 0, %bb.a ]
  %.fca.0.insert = insertvalue { i64, i64 } poison, i64 %.sroa.017.2, 0
  %.fca.1.insert = insertvalue { i64, i64 } %.fca.0.insert, i64 0, 1
  ret { i64, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress uwtable
define void @_ZN8facebook5velox16ByteOutputStream5seekpESt4fposI11__mbstate_tE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(64) %0, i64 %1, i64 %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.59", align 16 ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40   ; 3 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %_ZNK8facebook5velox16ByteOutputStream9updateEndEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !105  ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 -24
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %bb.c, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d, %bb.c, %bb.b
  br label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !27   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !116
  %i.n = icmp sgt i64 %i.k, %i.m
  br i1 %i.n, label %bb.d, label %.lr.ph.preheader

bb.d:                                             ; preds = %bb.c
  store i64 %i.k, ptr %i.l, align 8, !tbaa !116
  br label %.lr.ph.preheader

_ZNK8facebook5velox16ByteOutputStream9updateEndEv.exit: ; preds = %bb.a
  %i.o = icmp eq i64 %1, 0
  br i1 %i.o, label %bb.i, label %.critedge

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %.029 = phi i64 [ %i.r, %bb.e ], [ %1, %.lr.ph.preheader ] ; 3 uses
  %.sroa.018.028 = phi ptr [ %i.s, %bb.e ], [ %i.b, %.lr.ph.preheader ] ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.018.028, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !25   ; 2 uses
  %.not = icmp sgt i64 %.029, %i.q
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph
  %i.r = sub nsw i64 %.029, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.018.028, i64 24 ; 2 uses
  %i.t = icmp eq ptr %i.s, %i.d
  br i1 %i.t, label %.critedge, label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.018.028, ptr %i.u, align 8, !tbaa !105
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.018.028, i64 16
  store i64 %.029, ptr %i.v, align 8, !tbaa !27
  br label %bb.i

.critedge:                                        ; preds = %bb.e, %_ZNK8facebook5velox16ByteOutputStream9updateEndEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !129
  %.sroa.03.0.insert.ext.i = zext i64 %1 to i128
  store i128 %.sroa.03.0.insert.ext.i, ptr %3, align 16, !noalias !129
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.30, i64 40, i64 3, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !129
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox16ByteOutputStream5seekpESt4fposI11__mbstate_tEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.30) #22
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %.critedge
  unreachable

bb.h:                                             ; preds = %.critedge
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %4, align 8, !tbaa !31     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !35
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
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40   ; 3 uses
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !105  ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %i.d, i64 -24
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %bb.c, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !27   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !116
  %i.n = icmp sgt i64 %i.k, %i.m
  br i1 %i.n, label %bb.d, label %.lr.ph

bb.d:                                             ; preds = %bb.c
  store i64 %i.k, ptr %i.l, align 8, !tbaa !116
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
  %i.z = load i8, ptr %i.y, align 8, !tbaa !125, !range !126, !noundef !127
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %bb.n, label %bb.r

bb.e:                                             ; preds = %.lr.ph, %_ZN8facebook5velox4bits11reverseBitsEPhi.exit
  %indvars.iv25 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next26, %_ZN8facebook5velox4bits11reverseBitsEPhi.exit ] ; 5 uses
  %i.ab = phi i64 [ %i.r, %.lr.ph ], [ %i.eo, %_ZN8facebook5velox4bits11reverseBitsEPhi.exit ]
  %i.ac = phi ptr [ %i.b, %.lr.ph ], [ %i.ek, %_ZN8facebook5velox4bits11reverseBitsEPhi.exit ]
  %i.ad = add nsw i64 %i.ab, -1
  %i.ae = icmp eq i64 %i.ad, %indvars.iv25
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ac, i64 %indvars.iv25 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.in = select i1 %i.ae, ptr %i.s, ptr %i.ag
  %i.ah = load i64, ptr %.in, align 8, !tbaa !15  ; 4 uses
  %i.ai = load i8, ptr %i.t, align 8, !tbaa !125, !range !126, !noundef !127
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.f, label %_ZN8facebook5velox4bits6negateEPmi.exit

bb.f:                                             ; preds = %bb.e
  %i.ak = add i64 %i.ah, 7
  %i.al = lshr i64 %i.ak, 3                       ; 4 uses
  %i.am = load i8, ptr %i.u, align 2, !tbaa !132, !range !126, !noundef !127
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.g, label %_ZN8facebook5velox4bits6negateEPmi.exit

bb.g:                                             ; preds = %bb.f
  %i.ao = load i8, ptr %i.v, align 4, !tbaa !133, !range !126, !noundef !127
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %_ZN8facebook5velox4bits6negateEPmi.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aq = load ptr, ptr %i.af, align 8, !tbaa !77 ; 8 uses
  %i.ar = trunc i64 %i.ah to i32                  ; 8 uses
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
  %i.az = shl nuw nsw i64 %index86, 3
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.az ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 64 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 96 ; 2 uses
  %wide.load87 = load <4 x i64>, ptr %i.ba, align 8, !tbaa !15
  %wide.load88 = load <4 x i64>, ptr %i.bb, align 8, !tbaa !15
  %wide.load89 = load <4 x i64>, ptr %i.bc, align 8, !tbaa !15
  %wide.load90 = load <4 x i64>, ptr %i.bd, align 8, !tbaa !15
  %i.be = xor <4 x i64> %wide.load87, splat (i64 -1)
  %i.bf = xor <4 x i64> %wide.load88, splat (i64 -1)
  %i.bg = xor <4 x i64> %wide.load89, splat (i64 -1)
  %i.bh = xor <4 x i64> %wide.load90, splat (i64 -1)
  store <4 x i64> %i.be, ptr %i.ba, align 8, !tbaa !15
  store <4 x i64> %i.bf, ptr %i.bb, align 8, !tbaa !15
  store <4 x i64> %i.bg, ptr %i.bc, align 8, !tbaa !15
  store <4 x i64> %i.bh, ptr %i.bd, align 8, !tbaa !15
  %index.next91 = add nuw i64 %index86, 16        ; 2 uses
  %i.bi = icmp eq i64 %index.next91, %n.vec84
  br i1 %i.bi, label %middle.block92, label %vector.body85, !llvm.loop !134

middle.block92:                                   ; preds = %vector.body85
  %cmp.n93 = icmp eq i64 %i.aw, %n.vec84
  br i1 %cmp.n93, label %.preheader26.loopexit.i, label %vec.epilog.iter.check99

vec.epilog.iter.check99:                          ; preds = %middle.block92
  %min.epilog.iters.check100 = icmp eq i64 %n.mod.vf83, 0
  br i1 %min.epilog.iters.check100, label %.lr.ph.i.preheader, label %vec.epilog.ph101, !prof !64

vec.epilog.ph101:                                 ; preds = %vector.main.loop.iter.check80, %vec.epilog.iter.check99
  %vec.epilog.resume.val94 = phi i64 [ %n.vec84, %vec.epilog.iter.check99 ], [ 0, %vector.main.loop.iter.check80 ]
  %n.vec103 = and i64 %i.aw, 576460752303423484   ; 3 uses
  %i.bj = shl i64 %n.vec103, 6                    ; 2 uses
  %i.bk = or disjoint i64 %i.bj, 64
  br label %vec.epilog.vector.body104

vec.epilog.vector.body104:                        ; preds = %vec.epilog.vector.body104, %vec.epilog.ph101
  %index105 = phi i64 [ %vec.epilog.resume.val94, %vec.epilog.ph101 ], [ %index.next107, %vec.epilog.vector.body104 ] ; 2 uses
  %i.bl = shl nuw nsw i64 %index105, 3
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.bl ; 2 uses
  %wide.load106 = load <4 x i64>, ptr %i.bm, align 8, !tbaa !15
  %i.bn = xor <4 x i64> %wide.load106, splat (i64 -1)
  store <4 x i64> %i.bn, ptr %i.bm, align 8, !tbaa !15
  %index.next107 = add nuw i64 %index105, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next107, %n.vec103
  br i1 %i.bo, label %vec.epilog.middle.block108, label %vec.epilog.vector.body104, !llvm.loop !135

vec.epilog.middle.block108:                       ; preds = %vec.epilog.vector.body104
  %cmp.n109 = icmp eq i64 %i.aw, %n.vec103
  br i1 %cmp.n109, label %.preheader26.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check97, %vec.epilog.iter.check99, %vec.epilog.middle.block108
  %indvars.iv36.i.ph = phi i64 [ 0, %iter.check97 ], [ %i.ax, %vec.epilog.iter.check99 ], [ %i.bj, %vec.epilog.middle.block108 ]
  %indvars.iv.i.ph = phi i64 [ 64, %iter.check97 ], [ %i.ay, %vec.epilog.iter.check99 ], [ %i.bk, %vec.epilog.middle.block108 ]
  br label %.lr.ph.i

.preheader26.loopexit.i:                          ; preds = %.lr.ph.i, %vec.epilog.middle.block108, %middle.block92
  %2 = add nuw i32 %i.ar, 2147483584
  %i.bp = and i32 %2, 2147483584
  %narrow.i = add nuw i32 %i.bp, 64
  br label %.preheader26.i

.preheader26.i:                                   ; preds = %.preheader26.loopexit.i, %bb.h
  %.0.lcssa.i = phi i32 [ 0, %bb.h ], [ %narrow.i, %.preheader26.loopexit.i ] ; 11 uses
  %i.bq = or disjoint i32 %.0.lcssa.i, 8          ; 5 uses
  %.not2429.i = icmp sgt i32 %i.bq, %i.ar
  br i1 %.not2429.i, label %.preheader.i, label %iter.check62

iter.check62:                                     ; preds = %.preheader26.i
  %3 = add i32 %i.ar, -8
  %4 = sub i32 %3, %.0.lcssa.i                    ; 3 uses
  %5 = lshr i32 %4, 3
  %6 = add nuw nsw i32 %5, 1                      ; 5 uses
  %min.iters.check44 = icmp ult i32 %4, 120
  br i1 %min.iters.check44, label %.lr.ph31.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check62
  %reass.sub = sub i32 %.0.lcssa.i, %i.ar
  %7 = add i32 %reass.sub, 7
  %8 = or i32 %7, 7
  %9 = icmp ult i32 %8, %.0.lcssa.i
  br i1 %9, label %.lr.ph31.i.preheader, label %vector.main.loop.iter.check45

vector.main.loop.iter.check45:                    ; preds = %vector.scevcheck
  %min.iters.check46 = icmp ult i32 %4, 1016
  br i1 %min.iters.check46, label %vec.epilog.ph66, label %vector.ph47

vector.ph47:                                      ; preds = %vector.main.loop.iter.check45
  %n.mod.vf42 = and i32 %6, 112
  %n.vec43 = and i32 %6, 1073741696               ; 4 uses
  %10 = shl i32 %n.vec43, 3                       ; 2 uses
  %11 = add i32 %i.bq, %10
  %12 = add i32 %.0.lcssa.i, %10                  ; 2 uses
  %13 = lshr i32 %.0.lcssa.i, 3
  br label %vector.body50

vector.body50:                                    ; preds = %vector.body50, %vector.ph47
  %index45 = phi i32 [ 0, %vector.ph47 ], [ %index.next50, %vector.body50 ] ; 2 uses
  %14 = add i32 %13, %index45
  %15 = and i32 %14, 536870911
  %16 = zext nneg i32 %15 to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.aq, i64 %16 ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 32 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 64 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 96 ; 2 uses
  %wide.load52 = load <32 x i8>, ptr %i.br, align 1, !tbaa !35
  %wide.load53 = load <32 x i8>, ptr %i.bs, align 1, !tbaa !35
  %wide.load54 = load <32 x i8>, ptr %i.bt, align 1, !tbaa !35
  %wide.load55 = load <32 x i8>, ptr %i.bu, align 1, !tbaa !35
  %i.bv = xor <32 x i8> %wide.load52, splat (i8 -1)
  %i.bw = xor <32 x i8> %wide.load53, splat (i8 -1)
  %i.bx = xor <32 x i8> %wide.load54, splat (i8 -1)
  %i.by = xor <32 x i8> %wide.load55, splat (i8 -1)
  store <32 x i8> %i.bv, ptr %i.br, align 1, !tbaa !35
  store <32 x i8> %i.bw, ptr %i.bs, align 1, !tbaa !35
  store <32 x i8> %i.bx, ptr %i.bt, align 1, !tbaa !35
  store <32 x i8> %i.by, ptr %i.bu, align 1, !tbaa !35
  %index.next50 = add nuw i32 %index45, 128       ; 2 uses
  %i.bz = icmp eq i32 %index.next50, %n.vec43
  br i1 %i.bz, label %middle.block57, label %vector.body50, !llvm.loop !136

middle.block57:                                   ; preds = %vector.body50
  %cmp.n58 = icmp eq i32 %6, %n.vec43
  br i1 %cmp.n58, label %.preheader.i, label %vec.epilog.iter.check64

vec.epilog.iter.check64:                          ; preds = %middle.block57
  %min.epilog.iters.check65 = icmp eq i32 %n.mod.vf42, 0
  br i1 %min.epilog.iters.check65, label %.lr.ph31.i.preheader, label %vec.epilog.ph66, !prof !137

vec.epilog.ph66:                                  ; preds = %vector.main.loop.iter.check45, %vec.epilog.iter.check64
  %vec.epilog.resume.val53 = phi i32 [ %n.vec43, %vec.epilog.iter.check64 ], [ 0, %vector.main.loop.iter.check45 ]
  %n.vec62 = and i32 %6, 1073741808               ; 3 uses
  %17 = shl i32 %n.vec62, 3                       ; 2 uses
  %18 = add i32 %i.bq, %17
  %19 = add i32 %.0.lcssa.i, %17                  ; 2 uses
  %20 = lshr i32 %.0.lcssa.i, 3
  br label %vec.epilog.vector.body69

vec.epilog.vector.body69:                         ; preds = %vec.epilog.vector.body69, %vec.epilog.ph66
  %index64 = phi i32 [ %vec.epilog.resume.val53, %vec.epilog.ph66 ], [ %index.next66, %vec.epilog.vector.body69 ] ; 2 uses
  %21 = add i32 %20, %index64
  %22 = and i32 %21, 536870911
  %23 = zext nneg i32 %22 to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.aq, i64 %23 ; 2 uses
  %wide.load71 = load <16 x i8>, ptr %i.ca, align 1, !tbaa !35
  %i.cb = xor <16 x i8> %wide.load71, splat (i8 -1)
  store <16 x i8> %i.cb, ptr %i.ca, align 1, !tbaa !35
  %index.next66 = add nuw i32 %index64, 16        ; 2 uses
  %i.cc = icmp eq i32 %index.next66, %n.vec62
  br i1 %i.cc, label %vec.epilog.middle.block73, label %vec.epilog.vector.body69, !llvm.loop !138

vec.epilog.middle.block73:                        ; preds = %vec.epilog.vector.body69
  %cmp.n75 = icmp eq i32 %6, %n.vec62
  br i1 %cmp.n75, label %.preheader.i, label %.lr.ph31.i.preheader

.lr.ph31.i.preheader:                             ; preds = %vector.scevcheck, %iter.check62, %vec.epilog.iter.check64, %vec.epilog.middle.block73
  %.ph = phi i32 [ %i.bq, %iter.check62 ], [ %i.bq, %vector.scevcheck ], [ %11, %vec.epilog.iter.check64 ], [ %18, %vec.epilog.middle.block73 ]
  %.130.i.ph = phi i32 [ %.0.lcssa.i, %iter.check62 ], [ %.0.lcssa.i, %vector.scevcheck ], [ %12, %vec.epilog.iter.check64 ], [ %19, %vec.epilog.middle.block73 ]
  br label %.lr.ph31.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %.lr.ph.i ], [ %indvars.iv36.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ]
  %i.cd = lshr exact i64 %indvars.iv36.i, 3
  %i.ce = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.cd ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !15
  %i.cg = xor i64 %i.cf, -1
  store i64 %i.cg, ptr %i.ce, align 8, !tbaa !15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 64 ; 2 uses
  %.not.i = icmp samesign ugt i64 %indvars.iv.next.i, %i.as
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 64
  br i1 %.not.i, label %.preheader26.loopexit.i, label %.lr.ph.i, !llvm.loop !139

.preheader.i:                                     ; preds = %.lr.ph31.i, %middle.block57, %vec.epilog.middle.block73, %.preheader26.i
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader26.i ], [ %19, %vec.epilog.middle.block73 ], [ %12, %middle.block57 ], [ %24, %.lr.ph31.i ] ; 2 uses
  %i.ch = icmp slt i32 %.1.lcssa.i, %i.ar
  br i1 %i.ch, label %.lr.ph34.preheader.i, label %_ZN8facebook5velox4bits6negateEPmi.exit

.lr.ph34.preheader.i:                             ; preds = %.preheader.i
  %i.ci = zext nneg i32 %.1.lcssa.i to i64
  br label %.lr.ph34.i

.lr.ph31.i:                                       ; preds = %.lr.ph31.i.preheader, %.lr.ph31.i
  %24 = phi i32 [ %27, %.lr.ph31.i ], [ %.ph, %.lr.ph31.i.preheader ] ; 3 uses
  %.130.i = phi i32 [ %24, %.lr.ph31.i ], [ %.130.i.ph, %.lr.ph31.i.preheader ]
  %25 = lshr exact i32 %.130.i, 3
  %26 = zext nneg i32 %25 to i64
  %i.cj = getelementptr inbounds nuw i8, ptr %i.aq, i64 %26 ; 2 uses
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !35
  %i.cl = xor i8 %i.ck, -1
  store i8 %i.cl, ptr %i.cj, align 1, !tbaa !35
  %27 = add nuw nsw i32 %24, 8                    ; 2 uses
  %.not24.i = icmp sgt i32 %27, %i.ar
  br i1 %.not24.i, label %.preheader.i, label %.lr.ph31.i, !llvm.loop !140

.lr.ph34.i:                                       ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i, %.lr.ph34.preheader.i
  %indvars.iv41.i = phi i64 [ %i.ci, %.lr.ph34.preheader.i ], [ %indvars.iv.next42.i, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i ] ; 6 uses
  %i.cm = lshr i64 %indvars.iv41.i, 6
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.cm
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !15
  %i.cp = and i64 %indvars.iv41.i, 63
  %i.cq = shl nuw i64 1, %i.cp
  %i.cr = and i64 %i.cq, %i.co
  %.not25.i = icmp eq i64 %i.cr, 0
  %i.cs = lshr i64 %indvars.iv41.i, 3
  %i.ct = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.cs ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !35  ; 2 uses
  br i1 %.not25.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph34.i
  %i.cv = trunc i64 %indvars.iv41.i to i8
  %i.cw = and i8 %i.cv, 7
  %i.cx = shl nuw i8 1, %i.cw
  %i.cy = or i8 %i.cx, %i.cu
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i

bb.j:                                             ; preds = %.lr.ph34.i
  %i.cz = and i64 %indvars.iv41.i, 7
  %i.da = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !35
  %i.dc = and i8 %i.db, %i.cu
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i:  ; preds = %bb.j, %bb.i
  %.sink.i.i = phi i8 [ %i.dc, %bb.j ], [ %i.cy, %bb.i ]
  store i8 %.sink.i.i, ptr %i.ct, align 1, !tbaa !35
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %28 = trunc nuw i64 %indvars.iv.next42.i to i32
  %29 = icmp sgt i32 %i.ar, %28
  br i1 %29, label %.lr.ph34.i, label %_ZN8facebook5velox4bits6negateEPmi.exit, !llvm.loop !141

_ZN8facebook5velox4bits6negateEPmi.exit:          ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i, %.preheader.i, %bb.e, %bb.g, %bb.f
  %i.dd = phi i64 [ %i.ah, %bb.e ], [ %i.al, %bb.g ], [ %i.al, %bb.f ], [ %i.al, %.preheader.i ], [ %i.al, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i ] ; 6 uses
  %i.de = load i8, ptr %i.t, align 8, !tbaa !125, !range !126, !noundef !127
  %i.df = trunc nuw i8 %i.de to i1
  br i1 %i.df, label %bb.k, label %_ZN8facebook5velox4bits11reverseBitsEPhi.exit

bb.k:                                             ; preds = %_ZN8facebook5velox4bits6negateEPmi.exit
  %i.dg = load i8, ptr %i.w, align 1, !tbaa !142, !range !126, !noundef !127
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.l, label %_ZN8facebook5velox4bits11reverseBitsEPhi.exit

bb.l:                                             ; preds = %bb.k
  %i.di = load i8, ptr %i.x, align 1, !tbaa !143, !range !126, !noundef !127
  %i.dj = trunc nuw i8 %i.di to i1
  br i1 %i.dj, label %_ZN8facebook5velox4bits11reverseBitsEPhi.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dk = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.dl = getelementptr inbounds nuw [24 x i8], ptr %i.dk, i64 %indvars.iv25
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !77 ; 3 uses
  %i.dn = trunc i64 %i.dd to i32
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %iter.check, label %_ZN8facebook5velox4bits11reverseBitsEPhi.exit

iter.check:                                       ; preds = %bb.m
  %wide.trip.count.i = and i64 %i.dd, 2147483647  ; 5 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 8
  br i1 %min.iters.check, label %.lr.ph.i15.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check34 = icmp samesign ult i64 %wide.trip.count.i, 128
  br i1 %min.iters.check34, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.dd, 120
  %n.vec = and i64 %i.dd, 2147483520              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 %index ; 5 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 64 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dp, i64 96 ; 2 uses
  %wide.load = load <32 x i8>, ptr %i.dp, align 1, !tbaa !35
  %wide.load35.a = load <32 x i8>, ptr %i.dq, align 1, !tbaa !35
  %wide.load36 = load <32 x i8>, ptr %i.dr, align 1, !tbaa !35
  %wide.load37 = load <32 x i8>, ptr %i.ds, align 1, !tbaa !35
  %i.dt = tail call <32 x i8> @llvm.bitreverse.v32i8(<32 x i8> %wide.load)
  %i.du = tail call <32 x i8> @llvm.bitreverse.v32i8(<32 x i8> %wide.load35.a)
  %i.dv = tail call <32 x i8> @llvm.bitreverse.v32i8(<32 x i8> %wide.load36)
  %i.dw = tail call <32 x i8> @llvm.bitreverse.v32i8(<32 x i8> %wide.load37)
  store <32 x i8> %i.dt, ptr %i.dp, align 1, !tbaa !35
  store <32 x i8> %i.du, ptr %i.dq, align 1, !tbaa !35
  store <32 x i8> %i.dv, ptr %i.dr, align 1, !tbaa !35
  store <32 x i8> %i.dw, ptr %i.ds, align 1, !tbaa !35
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.dx = icmp eq i64 %index.next, %n.vec
  br i1 %i.dx, label %middle.block, label %vector.body, !llvm.loop !144

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  br i1 %cmp.n, label %_ZN8facebook5velox4bits11reverseBitsEPhi.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i15.preheader, label %vec.epilog.ph, !prof !145

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec39 = and i64 %i.dd, 2147483640            ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index40 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next42, %vec.epilog.vector.body ] ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dm, i64 %index40 ; 2 uses
  %wide.load41 = load <8 x i8>, ptr %i.dy, align 1, !tbaa !35
  %i.dz = tail call <8 x i8> @llvm.bitreverse.v8i8(<8 x i8> %wide.load41)
  store <8 x i8> %i.dz, ptr %i.dy, align 1, !tbaa !35
  %index.next42 = add nuw i64 %index40, 8         ; 2 uses
  %i.ea = icmp eq i64 %index.next42, %n.vec39
  br i1 %i.ea, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !146

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n43 = icmp eq i64 %wide.trip.count.i, %n.vec39
  br i1 %cmp.n43, label %_ZN8facebook5velox4bits11reverseBitsEPhi.exit, label %.lr.ph.i15.preheader

.lr.ph.i15.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i16.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec39, %vec.epilog.middle.block ]
  br label %.lr.ph.i15

.lr.ph.i15:                                       ; preds = %.lr.ph.i15.preheader, %.lr.ph.i15
  %indvars.iv.i16 = phi i64 [ %indvars.iv.next.i17, %.lr.ph.i15 ], [ %indvars.iv.i16.ph, %.lr.ph.i15.preheader ] ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dm, i64 %indvars.iv.i16 ; 2 uses
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !35
  %rev.i = tail call i8 @llvm.bitreverse.i8(i8 %i.ec)
  store i8 %rev.i, ptr %i.eb, align 1, !tbaa !35
  %indvars.iv.next.i17 = add nuw nsw i64 %indvars.iv.i16, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i17, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN8facebook5velox4bits11reverseBitsEPhi.exit, label %.lr.ph.i15, !llvm.loop !147

_ZN8facebook5velox4bits11reverseBitsEPhi.exit:    ; preds = %.lr.ph.i15, %middle.block, %vec.epilog.middle.block, %bb.m, %bb.l, %bb.k, %_ZN8facebook5velox4bits6negateEPmi.exit
  %i.ed = load ptr, ptr %i.a, align 8, !tbaa !39
  %i.ee = getelementptr inbounds nuw [24 x i8], ptr %i.ed, i64 %indvars.iv25
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !77
  %i.eg = load ptr, ptr %1, align 8, !tbaa !56
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8
  tail call void %i.ei(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef %i.ef, i64 noundef %i.dd)
  %indvars.iv.next26 = add nuw nsw i64 %indvars.iv25, 1 ; 2 uses
  %i.ej = load ptr, ptr %i.c, align 8, !tbaa !36
  %i.ek = load ptr, ptr %i.a, align 8, !tbaa !39  ; 2 uses
  %i.el = ptrtoint ptr %i.ej to i64
  %i.em = ptrtoint ptr %i.ek to i64
  %i.en = sub i64 %i.el, %i.em
  %i.eo = sdiv exact i64 %i.en, 24                ; 2 uses
  %i.ep = icmp ugt i64 %i.eo, %indvars.iv.next26
  br i1 %i.ep, label %bb.e, label %._crit_edge, !llvm.loop !148

bb.n:                                             ; preds = %._crit_edge
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.er = load i8, ptr %i.eq, align 2, !tbaa !132, !range !126, !noundef !127
  %i.es = trunc nuw i8 %i.er to i1
  br i1 %i.es, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 1, ptr %i.et, align 4, !tbaa !133
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !142, !range !126, !noundef !127
  %i.ew = trunc nuw i8 %i.ev to i1
  br i1 %i.ew, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 1, ptr %i.ex, align 1, !tbaa !143
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.q, %bb.p
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN8facebook5velox16ByteOutputStream13writePositionEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40
  %i.e = icmp eq ptr %i.b, %i.d
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !105  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !77
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !27
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 %i.j
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

declare void @_ZN6google15LogMessageFatalC1EPKci(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef) unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #4

; Function Attrs: noreturn nounwind
declare void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96)) unnamed_addr #10

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZNK8facebook5velox16ByteOutputStream12newRangeSizeEl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %0, i64 noundef %1) local_unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !118
  %i.c = add nsw i64 %i.b, %1                     ; 3 uses
  %i.d = icmp slt i64 %i.c, 128
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i64 %i.c, 512
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i64 %1, 127                      ; 2 uses
  %i.g = srem i64 %i.f, 128
  %i.h = sub nsw i64 %i.f, %i.g
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.i = icmp samesign ult i64 %i.c, 4096
  br i1 %i.i, label %bb.e, label %bb.f

end_hunk_0
begin_hunk_1_@llvm.umin.i64
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshr.i16(i16, i16, i16) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshr.i8(i8, i8, i8) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <32 x i8> @llvm.bitreverse.v32i8(<32 x i8>) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x i8> @llvm.bitreverse.v8i8(<8 x i8>) #20

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="256" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #16 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #18 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #20 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { noreturn }
attributes #23 = { builtin allocsize(0) }
attributes #24 = { builtin nounwind }
attributes #25 = { nounwind }
attributes #26 = { noreturn nounwind }
attributes #27 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSN5folly5IOBuf8IteratorE", !10, i64 0, !10, i64 8, !12, i64 16}
!10 = !{!"p1 _ZTSN5folly5IOBufE", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"_ZTSN5folly5RangeIPKhEE", !13, i64 0, !13, i64 8}
!13 = !{!"p1 omnipotent char", !11, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"long", !6, i64 0}
!17 = !{!9, !10, i64 8}
!18 = !{!19, !10, i64 32}
!19 = !{!"_ZTSN5folly5IOBufE", !16, i64 0, !13, i64 8, !16, i64 16, !13, i64 24, !10, i64 32, !10, i64 40, !20, i64 48}
!20 = !{!"p1 _ZTSN5folly5IOBuf10SharedInfoE", !11, i64 0}
!21 = !{!19, !13, i64 8}
!22 = !{!19, !16, i64 0}
!23 = distinct !{!23, !24}
!24 = !{!"llvm.loop.mustprogress"}
!25 = !{!26, !16, i64 8}
!26 = !{!"_ZTSN8facebook5velox9ByteRangeE", !13, i64 0, !16, i64 8, !16, i64 16}
!27 = !{!26, !16, i64 16}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKlEEES7_NS0_7fstringIJDpT_EE1tEDpOSB_: argument 0"}
!30 = distinct !{!30, !"_ZN3fmt3v116formatIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKlEEES7_NS0_7fstringIJDpT_EE1tEDpOSB_"}
!31 = !{!32, !13, i64 0}
!32 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !33, i64 0, !16, i64 8, !6, i64 16}
!33 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !13, i64 0}
!34 = !{!32, !16, i64 8}
!35 = !{!6, !6, i64 0}
!36 = !{!37, !38, i64 8}
!37 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox9ByteRangeESaIS2_EE17_Vector_impl_dataE", !38, i64 0, !38, i64 8, !38, i64 16}
!38 = !{!"p1 _ZTSN8facebook5velox9ByteRangeE", !11, i64 0}
!39 = !{!37, !38, i64 0}
!40 = !{!38, !38, i64 0}
!41 = !{!42, !38, i64 8}
!42 = !{!"_ZTSN8facebook5velox15ByteInputStreamE", !38, i64 8}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!45 = distinct !{!45, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!48 = distinct !{!48, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!49 = !{!33, !13, i64 0}
!50 = !{!47, !44}
!51 = !{!52, !13, i64 40}
!52 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !53, i64 56}
!53 = !{!"_ZTSSt6locale", !54, i64 0}
!54 = !{!"p1 _ZTSNSt6locale5_ImplE", !11, i64 0}
!55 = !{!52, !13, i64 32}
!56 = !{!57, !57, i64 0}
!57 = !{!"vtable pointer", !7, i64 0}
!58 = !{!59, !16, i64 8}
!59 = !{!"_ZTSSi", !16, i64 8}
!60 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!61 = distinct !{!61, !62, !63}
!62 = !{!"llvm.loop.isvectorized", i32 1}
!63 = !{!"llvm.loop.unroll.runtime.disable"}
!64 = !{!"branch_weights", i32 4, i32 12}
!65 = distinct !{!65, !62, !63}
!66 = distinct !{!66, !63, !62}
!67 = distinct !{!67, !24, !62, !63}
!68 = distinct !{!68, !24, !62, !63}
!69 = distinct !{!69, !24, !63, !62}
!70 = !{!71}
!71 = distinct !{!71, !72, !"_ZN8facebook5velox12errorMessageIJxEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!72 = distinct !{!72, !"_ZN8facebook5velox12errorMessageIJxEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!73 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!74 = !{!75}
!75 = distinct !{!75, !76, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!76 = distinct !{!76, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!77 = !{!26, !13, i64 0}
!78 = !{!79}
!79 = distinct !{!79, !80, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!80 = distinct !{!80, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!81 = distinct !{!81, !24}
!82 = distinct !{!82, !24}
!83 = !{!5, !5, i64 0}
!84 = !{!85, !85, i64 0}
!85 = !{!"short", !6, i64 0}
!86 = distinct !{!86, !24}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZN8facebook5velox12errorMessageIJliEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!89 = distinct !{!89, !"_ZN8facebook5velox12errorMessageIJliEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKlKiELi2ELi0ELy19EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!92 = distinct !{!92, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKlKiELi2ELi0ELy19EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZN8facebook5velox12errorMessageIJliEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!95 = distinct !{!95, !"_ZN8facebook5velox12errorMessageIJliEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!96 = !{!97}
!97 = distinct !{!97, !98, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKlKiELi2ELi0ELy19EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!98 = distinct !{!98, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKlKiELi2ELi0ELy19EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!101 = distinct !{!101, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!102 = distinct !{!102, !24, !62, !63}
!103 = distinct !{!103, !24, !62, !63}
!104 = distinct !{!104, !24, !63, !62}
!105 = !{!106, !38, i64 48}
!106 = !{!"_ZTSN8facebook5velox16ByteOutputStreamE", !107, i64 0, !108, i64 8, !108, i64 9, !108, i64 10, !108, i64 11, !108, i64 12, !109, i64 16, !16, i64 40, !38, i64 48, !16, i64 56}
!107 = !{!"p1 _ZTSN8facebook5velox11StreamArenaE", !11, i64 0}
!108 = !{!"bool", !6, i64 0}
!109 = !{!"_ZTSSt6vectorIN8facebook5velox9ByteRangeESaIS2_EE", !110, i64 0}
!110 = !{!"_ZTSSt12_Vector_baseIN8facebook5velox9ByteRangeESaIS2_EE", !111, i64 0}
!111 = !{!"_ZTSNSt12_Vector_baseIN8facebook5velox9ByteRangeESaIS2_EE12_Vector_implE", !37, i64 0}
!112 = distinct !{!112, !24}
!113 = distinct !{!113, !24}
!114 = distinct !{!114, !24}
!115 = !{!37, !38, i64 16}
!116 = !{!106, !16, i64 56}
!117 = !{!106, !107, i64 0}
!118 = !{!106, !16, i64 40}
!119 = !{!120}
!120 = distinct !{!120, !121, !"_ZN8facebook5velox12errorMessageIJliEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!121 = distinct !{!121, !"_ZN8facebook5velox12errorMessageIJliEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!122 = !{!123}
!123 = distinct !{!123, !124, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKlKiELi2ELi0ELy19EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!124 = distinct !{!124, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKlKiELi2ELi0ELy19EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!125 = !{!106, !108, i64 8}
!126 = !{i8 0, i8 2}
!127 = !{}
!128 = distinct !{!128, !24}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_ZN8facebook5velox12errorMessageIJxEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!131 = distinct !{!131, !"_ZN8facebook5velox12errorMessageIJxEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!132 = !{!106, !108, i64 10}
!133 = !{!106, !108, i64 12}
!134 = distinct !{!134, !24, !62, !63}
!135 = distinct !{!135, !24, !62, !63}
!136 = distinct !{!136, !24, !62, !63}
!137 = !{!"branch_weights", i32 16, i32 112}
!138 = distinct !{!138, !24, !62, !63}
!139 = distinct !{!139, !24, !63, !62}
!140 = distinct !{!140, !24, !62}
!141 = distinct !{!141, !24}
!142 = !{!106, !108, i64 9}
!143 = !{!106, !108, i64 11}
!144 = distinct !{!144, !24, !62, !63}
!145 = !{!"branch_weights", i32 8, i32 120}
!146 = distinct !{!146, !24, !62, !63}
!147 = distinct !{!147, !24, !63, !62}
!148 = distinct !{!148, !24}
!149 = distinct !{!149, !24}
!150 = !{i64 0, i64 8, !14, i64 8, i64 8, !15, i64 16, i64 8, !15}
!151 = !{!152}
!152 = distinct !{!152, !153, !"_ZSt11make_uniqueIN8facebook5velox17BufferInputStreamEJSt6vectorINS1_9ByteRangeESaIS4_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_: argument 0"}
!153 = distinct !{!153, !"_ZSt11make_uniqueIN8facebook5velox17BufferInputStreamEJSt6vectorINS1_9ByteRangeESaIS4_EEEENSt8__detail9_MakeUniqIT_E15__single_objectEDpOT0_"}
!154 = !{!155, !156, i64 0}
!155 = !{!"_ZTSSt10_Head_baseILm0EPN8facebook5velox15ByteInputStreamELb0EE", !156, i64 0}
!156 = !{!"p1 _ZTSN8facebook5velox15ByteInputStreamE", !11, i64 0}
!157 = !{!158}
!158 = distinct !{!158, !159, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!159 = distinct !{!159, !"_ZNKRSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!160 = !{!161}
!161 = distinct !{!161, !162, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!162 = distinct !{!162, !"_ZNKRSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!163 = !{!161, !158}
!164 = !{!165, !10, i64 0}
!165 = !{!"_ZTSSt10_Head_baseILm0EPN5folly5IOBufELb0EE", !10, i64 0}
!166 = !{!167, !167, i64 0}
!167 = !{!"p1 _ZTSN8facebook5velox16ByteOutputStreamE", !11, i64 0}
!168 = !{!169, !107, i64 0}
!169 = !{!"_ZTSSt12__shared_ptrIN8facebook5velox11StreamArenaELN9__gnu_cxx12_Lock_policyE2EE", !107, i64 0, !170, i64 8}
!170 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !171, i64 0}
!171 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0}
!172 = !{!170, !171, i64 0}
!173 = !{!174, !5, i64 8}
!174 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !5, i64 8, !5, i64 12}
!175 = !{!174, !5, i64 12}
!176 = distinct !{null, null, null, null, null}
!177 = !{!178, !11, i64 16}
!178 = !{!"_ZTSSt14_Function_base", !6, i64 0, !11, i64 16}
!179 = !{!11, !11, i64 0}
!180 = !{i64 0, i64 16, !35}
!181 = !{!10, !10, i64 0}
!182 = !{!19, !10, i64 40}
!183 = !{!107, !107, i64 0}
!184 = distinct !{null, null, null, null}
!185 = !{!186, !11, i64 24}
!186 = !{!"_ZTSSt8functionIFvvEE", !178, i64 0, !11, i64 24}
!187 = distinct !{null}
!188 = distinct !{null, null, null, null}
!189 = !{ptr @_ZN8facebook5velox17BufferInputStreamD2Ev}
!190 = distinct !{null, null, null}
!191 = !{ptr @_ZN8facebook5velox17IOBufOutputStreamD2Ev}
!192 = distinct !{ptr @_ZN8facebook5velox17IOBufOutputStreamD2Ev, null, null, null}
!193 = !{!194, !195, i64 8}
!194 = !{!"_ZTSN8facebook5velox12OutputStreamE", !195, i64 8}
!195 = !{!"p1 _ZTSN8facebook5velox20OutputStreamListenerE", !11, i64 0}
!196 = distinct !{null}
end_hunk_1
