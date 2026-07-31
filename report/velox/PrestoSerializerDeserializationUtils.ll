inline.NumInlined: 14590
inline.NumDeleted: 3684
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 62
begin_hunk_0_@_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_124readLengthPrefixedStringB5cxx11EPNS0_15ByteInputStreamE:bb.a
  %i.af = icmp eq ptr %i.ae, %i.o
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.ag = load i64, ptr %i.o, align 8, !tbaa !42
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.ad

_ZN8facebook5velox15ByteInputStream9readBytesIcEEvPT_i.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEm.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117checkTypeEncodingESt17basic_string_viewIcSt11char_traitsIcEERKSt10shared_ptrIKNS0_4TypeEE(i64 %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.fmt::v11::detail::format_arg_store.194", align 16 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = tail call { i64, ptr } @_ZN8facebook5velox10serializer6presto6detail18typeToEncodingNameERKSt10shared_ptrIKNS0_4TypeEE(ptr noundef nonnull align 8 dereferenceable(16) %2) ; 2 uses
  %i.b = extractvalue { i64, ptr } %i.a, 0        ; 2 uses
  %i.c = extractvalue { i64, ptr } %i.a, 1        ; 2 uses
  %i.d = icmp eq i64 %0, %i.b
  br i1 %i.d, label %bb.b, label %bb.c, !prof !350

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %0, 0
  br i1 %i.e, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i:   ; preds = %bb.b
  %bcmp.i = tail call i32 @bcmp(ptr %1, ptr %i.c, i64 %0)
  %i.f = icmp eq i32 %bcmp.i, 0
  br i1 %i.f, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.g = load ptr, ptr %2, align 8, !tbaa !108    ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef ptr %i.j(ptr noundef nonnull align 8 dereferenceable(18) %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !351
  store ptr %i.k, ptr %3, align 16, !tbaa !42, !noalias !351
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.c, ptr %i.l, align 16, !tbaa !42, !noalias !351
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.b, ptr %i.m, align 8, !tbaa !42, !noalias !351
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %1, ptr %i.n, align 16, !tbaa !42, !noalias !351
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %0, ptr %i.o, align 8, !tbaa !42, !noalias !351
  call void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull @.str.49, i64 83, i64 3548, ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !351
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_14VeloxUserErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_117checkTypeEncodingESt17basic_string_viewIcSt11char_traitsIcEERKSt10shared_ptrIKNS0_4TypeEEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull @.str.49) #39
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %4, align 8, !tbaa !46     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  %i.t = load i64, ptr %i.r, align 8, !tbaa !42
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #40
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %i.p

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ES5_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_110valueCountEPNS0_15ByteInputStreamEiRNS0_7ScratchEPNS0_10raw_vectorImEE(ptr noundef %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.facebook::velox::ScratchPtr", align 8 ; 10 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !18
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i8 %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.e = icmp eq i8 %i.d, 0
  %i.f = icmp eq i32 %1, 0
  %or.cond = or i1 %i.f, %i.e
  br i1 %or.cond, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store ptr %2, ptr %4, align 8, !tbaa !354
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %i.g, i8 0, i64 44, i1 false)
  %i.h = sext i32 %1 to i64                       ; 2 uses
  %i.i = add nsw i64 %i.h, 63
  %i.j = lshr i64 %i.i, 6                         ; 4 uses
  %i.k = trunc i64 %i.j to i32
  %i.l = invoke noundef ptr @_ZN8facebook5velox10ScratchPtrImLi16EE3getEi(ptr noundef nonnull align 8 dereferenceable(216) %4, i32 noundef %i.k)
          to label %bb.c unwind label %bb.h       ; 17 uses

bb.c:                                             ; preds = %bb.b
  %i.m = add nsw i64 %i.h, 7                      ; 2 uses
  %i.n = lshr i64 %i.m, 3                         ; 5 uses
  %i.o = trunc i64 %i.n to i32                    ; 3 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !18
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.r = load ptr, ptr %i.q, align 8
  invoke void %i.r(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.l, i32 noundef %i.o)
          to label %_ZN8facebook5velox15ByteInputStream9readBytesImEEvPT_i.exit unwind label %bb.i, !inline_history !358

_ZN8facebook5velox15ByteInputStream9readBytesImEEvPT_i.exit: ; preds = %bb.c
  %i.s = icmp sgt i32 %i.o, 0
  br i1 %i.s, label %iter.check, label %_ZN8facebook5velox4bits11reverseBitsEPhi.exit

iter.check:                                       ; preds = %_ZN8facebook5velox15ByteInputStream9readBytesImEEvPT_i.exit
  %wide.trip.count.i = and i64 %i.n, 2147483647   ; 5 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check55 = icmp samesign ult i64 %wide.trip.count.i, 128
  br i1 %min.iters.check55, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.n, 2147483520               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %index ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 64 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 96 ; 2 uses
  %wide.load = load <32 x i8>, ptr %i.t, align 1, !tbaa !42
  %wide.load56 = load <32 x i8>, ptr %i.u, align 1, !tbaa !42
  %wide.load57 = load <32 x i8>, ptr %i.v, align 1, !tbaa !42
  %wide.load58.a = load <32 x i8>, ptr %i.w, align 1, !tbaa !42
  %i.x = call <32 x i8> @llvm.bitreverse.v32i8(<32 x i8> %wide.load)
  %i.y = call <32 x i8> @llvm.bitreverse.v32i8(<32 x i8> %wide.load56)
  %i.z = call <32 x i8> @llvm.bitreverse.v32i8(<32 x i8> %wide.load57)
  %i.aa = call <32 x i8> @llvm.bitreverse.v32i8(<32 x i8> %wide.load58.a)
  store <32 x i8> %i.x, ptr %i.t, align 1, !tbaa !42
  store <32 x i8> %i.y, ptr %i.u, align 1, !tbaa !42
  store <32 x i8> %i.z, ptr %i.v, align 1, !tbaa !42
  store <32 x i8> %i.aa, ptr %i.w, align 1, !tbaa !42
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !359

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  br i1 %cmp.n, label %_ZN8facebook5velox4bits11reverseBitsEPhi.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %i.ac = and i64 %i.m, 960
  %min.epilog.iters.check = icmp eq i64 %i.ac, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !360

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec60 = and i64 %i.n, 2147483640             ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index61 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next63, %vec.epilog.vector.body ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 %index61 ; 2 uses
  %wide.load62 = load <8 x i8>, ptr %i.ad, align 1, !tbaa !42
  %i.ae = call <8 x i8> @llvm.bitreverse.v8i8(<8 x i8> %wide.load62)
  store <8 x i8> %i.ae, ptr %i.ad, align 1, !tbaa !42
  %index.next63 = add nuw i64 %index61, 8         ; 2 uses
  %i.af = icmp eq i64 %index.next63, %n.vec60
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !361

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n64 = icmp eq i64 %wide.trip.count.i, %n.vec60
  br i1 %cmp.n64, label %_ZN8facebook5velox4bits11reverseBitsEPhi.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec60, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv.i ; 2 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !42
  %rev.i = call i8 @llvm.bitreverse.i8(i8 %i.ah)
  store i8 %rev.i, ptr %i.ag, align 1, !tbaa !42
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN8facebook5velox4bits11reverseBitsEPhi.exit, label %.lr.ph.i, !llvm.loop !362

_ZN8facebook5velox4bits11reverseBitsEPhi.exit:    ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %_ZN8facebook5velox15ByteInputStream9readBytesImEEvPT_i.exit
  %i.ai = shl i32 %i.o, 3                         ; 9 uses
  %.not27.i = icmp slt i32 %i.ai, 64
  br i1 %.not27.i, label %.preheader26.i, label %iter.check83

iter.check83:                                     ; preds = %_ZN8facebook5velox4bits11reverseBitsEPhi.exit
  %i.aj = zext nneg i32 %i.ai to i64              ; 2 uses
  %i.ak = or disjoint i64 %i.aj, 1
  %umax = call i64 @llvm.umax.i64(i64 %i.ak, i64 128)
  %i.al = add nsw i64 %umax, -65                  ; 3 uses
  %i.am = lshr i64 %i.al, 6
  %i.an = add nuw nsw i64 %i.am, 1                ; 5 uses
  %min.iters.check65 = icmp ult i64 %i.al, 192
  br i1 %min.iters.check65, label %.lr.ph.i30.preheader, label %vector.main.loop.iter.check66

vector.main.loop.iter.check66:                    ; preds = %iter.check83
  %min.iters.check67 = icmp ult i64 %i.al, 960
  br i1 %min.iters.check67, label %vec.epilog.ph87, label %vector.ph68

vector.ph68:                                      ; preds = %vector.main.loop.iter.check66
  %n.mod.vf69 = and i64 %i.an, 12
  %n.vec70 = and i64 %i.an, 576460752303423472    ; 4 uses
  %i.ao = shl i64 %n.vec70, 6                     ; 2 uses
  %i.ap = or disjoint i64 %i.ao, 64
  br label %vector.body71

vector.body71:                                    ; preds = %vector.body71, %vector.ph68
  %index72 = phi i64 [ 0, %vector.ph68 ], [ %index.next77, %vector.body71 ] ; 2 uses
  %i.aq = shl nuw nsw i64 %index72, 3
  %i.ar = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.aq ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 64 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 96 ; 2 uses
  %wide.load73 = load <4 x i64>, ptr %i.ar, align 8, !tbaa !187
  %wide.load74 = load <4 x i64>, ptr %i.as, align 8, !tbaa !187
  %wide.load75 = load <4 x i64>, ptr %i.at, align 8, !tbaa !187
  %wide.load76 = load <4 x i64>, ptr %i.au, align 8, !tbaa !187
  %i.av = xor <4 x i64> %wide.load73, splat (i64 -1)
  %i.aw = xor <4 x i64> %wide.load74, splat (i64 -1)
  %i.ax = xor <4 x i64> %wide.load75, splat (i64 -1)
  %i.ay = xor <4 x i64> %wide.load76, splat (i64 -1)
  store <4 x i64> %i.av, ptr %i.ar, align 8, !tbaa !187
  store <4 x i64> %i.aw, ptr %i.as, align 8, !tbaa !187
  store <4 x i64> %i.ax, ptr %i.at, align 8, !tbaa !187
  store <4 x i64> %i.ay, ptr %i.au, align 8, !tbaa !187
  %index.next77 = add nuw i64 %index72, 16        ; 2 uses
  %i.az = icmp eq i64 %index.next77, %n.vec70
  br i1 %i.az, label %middle.block78, label %vector.body71, !llvm.loop !363

middle.block78:                                   ; preds = %vector.body71
  %cmp.n79 = icmp eq i64 %i.an, %n.vec70
  br i1 %cmp.n79, label %.preheader26.loopexit.i, label %vec.epilog.iter.check85

vec.epilog.iter.check85:                          ; preds = %middle.block78
  %min.epilog.iters.check86 = icmp eq i64 %n.mod.vf69, 0
  br i1 %min.epilog.iters.check86, label %.lr.ph.i30.preheader, label %vec.epilog.ph87, !prof !263

vec.epilog.ph87:                                  ; preds = %vector.main.loop.iter.check66, %vec.epilog.iter.check85
  %vec.epilog.resume.val80 = phi i64 [ %n.vec70, %vec.epilog.iter.check85 ], [ 0, %vector.main.loop.iter.check66 ]
  %n.vec89 = and i64 %i.an, 576460752303423484    ; 3 uses
  %i.ba = shl i64 %n.vec89, 6                     ; 2 uses
  %i.bb = or disjoint i64 %i.ba, 64
  br label %vec.epilog.vector.body90

vec.epilog.vector.body90:                         ; preds = %vec.epilog.vector.body90, %vec.epilog.ph87
  %index91 = phi i64 [ %vec.epilog.resume.val80, %vec.epilog.ph87 ], [ %index.next93, %vec.epilog.vector.body90 ] ; 2 uses
  %i.bc = shl nuw nsw i64 %index91, 3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bc ; 2 uses
  %wide.load92 = load <4 x i64>, ptr %i.bd, align 8, !tbaa !187
  %i.be = xor <4 x i64> %wide.load92, splat (i64 -1)
  store <4 x i64> %i.be, ptr %i.bd, align 8, !tbaa !187
  %index.next93 = add nuw i64 %index91, 4         ; 2 uses
  %i.bf = icmp eq i64 %index.next93, %n.vec89
  br i1 %i.bf, label %vec.epilog.middle.block94, label %vec.epilog.vector.body90, !llvm.loop !364

vec.epilog.middle.block94:                        ; preds = %vec.epilog.vector.body90
  %cmp.n95 = icmp eq i64 %i.an, %n.vec89
  br i1 %cmp.n95, label %.preheader26.loopexit.i, label %.lr.ph.i30.preheader

.lr.ph.i30.preheader:                             ; preds = %iter.check83, %vec.epilog.iter.check85, %vec.epilog.middle.block94
  %indvars.iv36.i.ph = phi i64 [ 0, %iter.check83 ], [ %i.ao, %vec.epilog.iter.check85 ], [ %i.ba, %vec.epilog.middle.block94 ]
  %indvars.iv.i31.ph = phi i64 [ 64, %iter.check83 ], [ %i.ap, %vec.epilog.iter.check85 ], [ %i.bb, %vec.epilog.middle.block94 ]
  br label %.lr.ph.i30

.preheader26.loopexit.i:                          ; preds = %.lr.ph.i30, %vec.epilog.middle.block94, %middle.block78
  %5 = add nuw i32 %i.ai, 2147483584
  %i.bg = and i32 %5, 2147483584
  %narrow.i = add nuw i32 %i.bg, 64
  br label %.preheader26.i

.preheader26.i:                                   ; preds = %.preheader26.loopexit.i, %_ZN8facebook5velox4bits11reverseBitsEPhi.exit
  %.0.lcssa.i = phi i32 [ 0, %_ZN8facebook5velox4bits11reverseBitsEPhi.exit ], [ %narrow.i, %.preheader26.loopexit.i ] ; 11 uses
  %6 = or disjoint i32 %.0.lcssa.i, 8             ; 5 uses
  %.not2429.i = icmp sgt i32 %6, %i.ai
  br i1 %.not2429.i, label %.preheader.i, label %iter.check117

iter.check117:                                    ; preds = %.preheader26.i
  %7 = add i32 %i.ai, -8
  %8 = sub i32 %7, %.0.lcssa.i                    ; 3 uses
  %9 = lshr i32 %8, 3
  %10 = add nuw nsw i32 %9, 1                     ; 5 uses
  %min.iters.check99 = icmp ult i32 %8, 120
  br i1 %min.iters.check99, label %.lr.ph31.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check117
  %reass.sub = sub i32 %.0.lcssa.i, %i.ai
  %11 = add i32 %reass.sub, 7
  %12 = or i32 %11, 7
  %13 = icmp ult i32 %12, %.0.lcssa.i
  br i1 %13, label %.lr.ph31.i.preheader, label %vector.main.loop.iter.check100

vector.main.loop.iter.check100:                   ; preds = %vector.scevcheck
  %min.iters.check101 = icmp ult i32 %8, 1016
  br i1 %min.iters.check101, label %vec.epilog.ph121, label %vector.ph102

vector.ph102:                                     ; preds = %vector.main.loop.iter.check100
  %n.mod.vf98 = and i32 %10, 112
  %n.vec99 = and i32 %10, 1073741696              ; 4 uses
  %14 = shl i32 %n.vec99, 3                       ; 2 uses
  %15 = add i32 %6, %14
  %16 = add i32 %.0.lcssa.i, %14                  ; 2 uses
  %17 = lshr i32 %.0.lcssa.i, 3
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph102
  %index101 = phi i32 [ 0, %vector.ph102 ], [ %index.next106, %vector.body105 ] ; 2 uses
  %18 = add i32 %17, %index101
  %19 = and i32 %18, 536870911
  %20 = zext nneg i32 %19 to i64
  %i.bh = getelementptr inbounds nuw i8, ptr %i.l, i64 %20 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 32 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 64 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 96 ; 2 uses
  %wide.load107 = load <32 x i8>, ptr %i.bh, align 1, !tbaa !42
  %wide.load108 = load <32 x i8>, ptr %i.bi, align 1, !tbaa !42
  %wide.load109 = load <32 x i8>, ptr %i.bj, align 1, !tbaa !42
  %wide.load110 = load <32 x i8>, ptr %i.bk, align 1, !tbaa !42
  %i.bl = xor <32 x i8> %wide.load107, splat (i8 -1)
  %i.bm = xor <32 x i8> %wide.load108, splat (i8 -1)
  %i.bn = xor <32 x i8> %wide.load109, splat (i8 -1)
  %i.bo = xor <32 x i8> %wide.load110, splat (i8 -1)
  store <32 x i8> %i.bl, ptr %i.bh, align 1, !tbaa !42
  store <32 x i8> %i.bm, ptr %i.bi, align 1, !tbaa !42
  store <32 x i8> %i.bn, ptr %i.bj, align 1, !tbaa !42
  store <32 x i8> %i.bo, ptr %i.bk, align 1, !tbaa !42
  %index.next106 = add nuw i32 %index101, 128     ; 2 uses
  %i.bp = icmp eq i32 %index.next106, %n.vec99
  br i1 %i.bp, label %middle.block112, label %vector.body105, !llvm.loop !365

middle.block112:                                  ; preds = %vector.body105
  %cmp.n113 = icmp eq i32 %10, %n.vec99
  br i1 %cmp.n113, label %.preheader.i, label %vec.epilog.iter.check119

vec.epilog.iter.check119:                         ; preds = %middle.block112
  %min.epilog.iters.check120 = icmp eq i32 %n.mod.vf98, 0
  br i1 %min.epilog.iters.check120, label %.lr.ph31.i.preheader, label %vec.epilog.ph121, !prof !366

vec.epilog.ph121:                                 ; preds = %vector.main.loop.iter.check100, %vec.epilog.iter.check119
  %vec.epilog.resume.val109 = phi i32 [ %n.vec99, %vec.epilog.iter.check119 ], [ 0, %vector.main.loop.iter.check100 ]
  %n.vec118 = and i32 %10, 1073741808             ; 3 uses
  %21 = shl i32 %n.vec118, 3                      ; 2 uses
  %22 = add i32 %6, %21
  %23 = add i32 %.0.lcssa.i, %21                  ; 2 uses
  %24 = lshr i32 %.0.lcssa.i, 3
  br label %vec.epilog.vector.body124

vec.epilog.vector.body124:                        ; preds = %vec.epilog.vector.body124, %vec.epilog.ph121
  %index120 = phi i32 [ %vec.epilog.resume.val109, %vec.epilog.ph121 ], [ %index.next122, %vec.epilog.vector.body124 ] ; 2 uses
  %25 = add i32 %24, %index120
  %26 = and i32 %25, 536870911
  %27 = zext nneg i32 %26 to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 %27 ; 2 uses
  %wide.load126 = load <16 x i8>, ptr %i.bq, align 1, !tbaa !42
  %i.br = xor <16 x i8> %wide.load126, splat (i8 -1)
  store <16 x i8> %i.br, ptr %i.bq, align 1, !tbaa !42
  %index.next122 = add nuw i32 %index120, 16      ; 2 uses
  %i.bs = icmp eq i32 %index.next122, %n.vec118
  br i1 %i.bs, label %vec.epilog.middle.block128, label %vec.epilog.vector.body124, !llvm.loop !367

vec.epilog.middle.block128:                       ; preds = %vec.epilog.vector.body124
  %cmp.n130 = icmp eq i32 %10, %n.vec118
  br i1 %cmp.n130, label %.preheader.i, label %.lr.ph31.i.preheader

.lr.ph31.i.preheader:                             ; preds = %vector.scevcheck, %iter.check117, %vec.epilog.iter.check119, %vec.epilog.middle.block128
  %.ph172 = phi i32 [ %6, %iter.check117 ], [ %6, %vector.scevcheck ], [ %15, %vec.epilog.iter.check119 ], [ %22, %vec.epilog.middle.block128 ]
  %.130.i.ph = phi i32 [ %.0.lcssa.i, %iter.check117 ], [ %.0.lcssa.i, %vector.scevcheck ], [ %16, %vec.epilog.iter.check119 ], [ %23, %vec.epilog.middle.block128 ]
  br label %.lr.ph31.i

.lr.ph.i30:                                       ; preds = %.lr.ph.i30.preheader, %.lr.ph.i30
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %.lr.ph.i30 ], [ %indvars.iv36.i.ph, %.lr.ph.i30.preheader ] ; 2 uses
  %indvars.iv.i31 = phi i64 [ %indvars.iv.next.i32, %.lr.ph.i30 ], [ %indvars.iv.i31.ph, %.lr.ph.i30.preheader ]
  %i.bt = lshr exact i64 %indvars.iv36.i, 3
  %i.bu = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.bt ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !187
  %i.bw = xor i64 %i.bv, -1
  store i64 %i.bw, ptr %i.bu, align 8, !tbaa !187
  %indvars.iv.next.i32 = add nuw nsw i64 %indvars.iv.i31, 64 ; 2 uses
  %.not.i = icmp samesign ugt i64 %indvars.iv.next.i32, %i.aj
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 64
  br i1 %.not.i, label %.preheader26.loopexit.i, label %.lr.ph.i30, !llvm.loop !368

.preheader.i:                                     ; preds = %.lr.ph31.i, %middle.block112, %vec.epilog.middle.block128, %.preheader26.i
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader26.i ], [ %23, %vec.epilog.middle.block128 ], [ %16, %middle.block112 ], [ %28, %.lr.ph31.i ] ; 2 uses
  %i.bx = icmp slt i32 %.1.lcssa.i, %i.ai
  br i1 %i.bx, label %.lr.ph34.preheader.i, label %_ZN8facebook5velox4bits6negateEPmi.exit

.lr.ph34.preheader.i:                             ; preds = %.preheader.i
  %wide.trip.count = zext nneg i32 %.1.lcssa.i to i64
  br label %.lr.ph34.i

.lr.ph31.i:                                       ; preds = %.lr.ph31.i.preheader, %.lr.ph31.i
  %28 = phi i32 [ %31, %.lr.ph31.i ], [ %.ph172, %.lr.ph31.i.preheader ] ; 3 uses
  %.130.i = phi i32 [ %28, %.lr.ph31.i ], [ %.130.i.ph, %.lr.ph31.i.preheader ]
  %29 = lshr exact i32 %.130.i, 3
  %30 = zext nneg i32 %29 to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.l, i64 %30 ; 2 uses
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !42
  %i.ca = xor i8 %i.bz, -1
  store i8 %i.ca, ptr %i.by, align 1, !tbaa !42
  %31 = add nuw nsw i32 %28, 8                    ; 2 uses
  %.not24.i = icmp sgt i32 %31, %i.ai
  br i1 %.not24.i, label %.preheader.i, label %.lr.ph31.i, !llvm.loop !369

.lr.ph34.i:                                       ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i, %.lr.ph34.preheader.i
  %indvars.iv41.i = phi i64 [ %wide.trip.count, %.lr.ph34.preheader.i ], [ %indvars.iv.next42.i, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i ] ; 6 uses
  %i.cb = lshr i64 %indvars.iv41.i, 6
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !187
  %i.ce = and i64 %indvars.iv41.i, 63
  %i.cf = shl nuw i64 1, %i.ce
  %i.cg = and i64 %i.cf, %i.cd
  %.not25.i = icmp eq i64 %i.cg, 0
  %i.ch = lshr i64 %indvars.iv41.i, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ch ; 2 uses
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !42  ; 2 uses
  br i1 %.not25.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph34.i
  %i.ck = trunc i64 %indvars.iv41.i to i8
  %i.cl = and i8 %i.ck, 7
  %i.cm = shl nuw i8 1, %i.cl
  %i.cn = or i8 %i.cm, %i.cj
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i

bb.e:                                             ; preds = %.lr.ph34.i
  %i.co = and i64 %indvars.iv41.i, 7
  %i.cp = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !42
  %i.cr = and i8 %i.cq, %i.cj
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i:  ; preds = %bb.e, %bb.d
  %.sink.i.i = phi i8 [ %i.cr, %bb.e ], [ %i.cn, %bb.d ]
  store i8 %.sink.i.i, ptr %i.ci, align 1, !tbaa !42
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %32 = trunc nuw i64 %indvars.iv.next42.i to i32
  %33 = icmp sgt i32 %i.ai, %32
  br i1 %33, label %.lr.ph34.i, label %_ZN8facebook5velox4bits6negateEPmi.exit, !llvm.loop !370

_ZN8facebook5velox4bits6negateEPmi.exit:          ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i, %.preheader.i
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN8facebook5velox4bits6negateEPmi.exit
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !332
  %.not.i33 = icmp sgt i64 %i.j, %i.ct
  br i1 %.not.i33, label %_ZN8facebook5velox10raw_vectorImE7reserveEl.exit.i, label %bb.g, !prof !38

_ZN8facebook5velox10raw_vectorImE7reserveEl.exit.i: ; preds = %bb.f
  invoke void @_ZN8facebook5velox10raw_vectorImE4growEl(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.j)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f, %_ZN8facebook5velox10raw_vectorImE7reserveEl.exit.i
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.j, ptr %i.cu, align 8, !tbaa !336
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !329
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.cw, ptr align 8 %i.l, i64 %i.n, i1 false)
  br label %bb.j

bb.h:                                             ; preds = %bb.b
  %i.cx = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.i:                                             ; preds = %_ZN8facebook5velox10raw_vectorImE7reserveEl.exit.i, %bb.c
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.j:                                             ; preds = %bb.g, %_ZN8facebook5velox4bits6negateEPmi.exit
  %.not.i.i = icmp sgt i32 %1, 0
  br i1 %.not.i.i, label %bb.k, label %_ZN8facebook5velox4bits9countBitsEPKmii.exit

bb.k:                                             ; preds = %bb.j
  %i.cz = and i32 %1, 2147483584                  ; 3 uses
  %.not3342.i.i = icmp eq i32 %i.cz, 0
  br i1 %.not3342.i.i, label %._crit_edge.i.i, label %iter.check156

iter.check156:                                    ; preds = %bb.k
  %i.da = zext nneg i32 %i.cz to i64              ; 2 uses
  %i.db = add nsw i64 %i.da, -64                  ; 3 uses
  %i.dc = lshr exact i64 %i.db, 6
  %i.dd = add nuw nsw i64 %i.dc, 1                ; 5 uses
  %min.iters.check133 = icmp ult i64 %i.db, 192
  br i1 %min.iters.check133, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check134

vector.main.loop.iter.check134:                   ; preds = %iter.check156
  %min.iters.check135 = icmp ult i64 %i.db, 960
  br i1 %min.iters.check135, label %vec.epilog.ph160, label %vector.ph136

vector.ph136:                                     ; preds = %vector.main.loop.iter.check134
  %n.mod.vf137 = and i64 %i.dd, 12
  %n.vec138 = and i64 %i.dd, 576460752303423472   ; 4 uses
  %i.de = shl i64 %n.vec138, 6                    ; 2 uses
  %i.df = or disjoint i64 %i.de, 64
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph136
  %index140 = phi i64 [ 0, %vector.ph136 ], [ %index.next148, %vector.body139 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph136 ], [ %i.dt, %vector.body139 ]
  %vec.phi141 = phi <4 x i32> [ zeroinitializer, %vector.ph136 ], [ %i.du, %vector.body139 ]
  %vec.phi142 = phi <4 x i32> [ zeroinitializer, %vector.ph136 ], [ %i.dv, %vector.body139 ]
  %vec.phi143 = phi <4 x i32> [ zeroinitializer, %vector.ph136 ], [ %i.dw, %vector.body139 ]
  %i.dg = shl nuw nsw i64 %index140, 3
  %i.dh = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.dg ; 4 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dh, i64 96
  %wide.load144 = load <4 x i64>, ptr %i.dh, align 8, !tbaa !187
  %wide.load145 = load <4 x i64>, ptr %i.di, align 8, !tbaa !187
  %wide.load146 = load <4 x i64>, ptr %i.dj, align 8, !tbaa !187
  %wide.load147 = load <4 x i64>, ptr %i.dk, align 8, !tbaa !187
  %i.dl = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load144)
  %i.dm = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load145)
  %i.dn = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load146)
  %i.do = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load147)
  %i.dp = trunc nuw nsw <4 x i64> %i.dl to <4 x i32>
  %i.dq = trunc nuw nsw <4 x i64> %i.dm to <4 x i32>
  %i.dr = trunc nuw nsw <4 x i64> %i.dn to <4 x i32>
  %i.ds = trunc nuw nsw <4 x i64> %i.do to <4 x i32>
  %i.dt = add <4 x i32> %vec.phi, %i.dp           ; 2 uses
  %i.du = add <4 x i32> %vec.phi141, %i.dq        ; 2 uses
  %i.dv = add <4 x i32> %vec.phi142, %i.dr        ; 2 uses
  %i.dw = add <4 x i32> %vec.phi143, %i.ds        ; 2 uses
  %index.next148 = add nuw i64 %index140, 16      ; 2 uses
  %i.dx = icmp eq i64 %index.next148, %n.vec138
  br i1 %i.dx, label %middle.block149, label %vector.body139, !llvm.loop !371

middle.block149:                                  ; preds = %vector.body139
  %bin.rdx = add <4 x i32> %i.du, %i.dt
  %bin.rdx150 = add <4 x i32> %i.dv, %bin.rdx
  %bin.rdx151 = add <4 x i32> %i.dw, %bin.rdx150
  %i.dy = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx151) ; 3 uses
  %cmp.n152 = icmp eq i64 %i.dd, %n.vec138
  br i1 %cmp.n152, label %._crit_edge.i.i, label %vec.epilog.iter.check158

vec.epilog.iter.check158:                         ; preds = %middle.block149
  %min.epilog.iters.check159 = icmp eq i64 %n.mod.vf137, 0
  br i1 %min.epilog.iters.check159, label %.lr.ph.i.i.preheader, label %vec.epilog.ph160, !prof !263

vec.epilog.ph160:                                 ; preds = %vector.main.loop.iter.check134, %vec.epilog.iter.check158
  %vec.epilog.resume.val153 = phi i64 [ %n.vec138, %vec.epilog.iter.check158 ], [ 0, %vector.main.loop.iter.check134 ]
  %bc.merge.rdx = phi i32 [ %i.dy, %vec.epilog.iter.check158 ], [ 0, %vector.main.loop.iter.check134 ]
  %n.vec162 = and i64 %i.dd, 576460752303423484   ; 3 uses
  %i.dz = shl i64 %n.vec162, 6                    ; 2 uses
  %i.ea = or disjoint i64 %i.dz, 64
  %i.eb = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body163

vec.epilog.vector.body163:                        ; preds = %vec.epilog.vector.body163, %vec.epilog.ph160
  %index164 = phi i64 [ %vec.epilog.resume.val153, %vec.epilog.ph160 ], [ %index.next167, %vec.epilog.vector.body163 ] ; 2 uses
  %vec.phi165 = phi <4 x i32> [ %i.eb, %vec.epilog.ph160 ], [ %i.eg, %vec.epilog.vector.body163 ]
  %i.ec = shl nuw nsw i64 %index164, 3
  %i.ed = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ec
  %wide.load166 = load <4 x i64>, ptr %i.ed, align 8, !tbaa !187
  %i.ee = call range(i64 0, 65) <4 x i64> @llvm.ctpop.v4i64(<4 x i64> %wide.load166)
  %i.ef = trunc nuw nsw <4 x i64> %i.ee to <4 x i32>
  %i.eg = add <4 x i32> %vec.phi165, %i.ef        ; 2 uses
  %index.next167 = add nuw i64 %index164, 4       ; 2 uses
  %i.eh = icmp eq i64 %index.next167, %n.vec162
  br i1 %i.eh, label %vec.epilog.middle.block168, label %vec.epilog.vector.body163, !llvm.loop !372

vec.epilog.middle.block168:                       ; preds = %vec.epilog.vector.body163
  %i.ei = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.eg) ; 2 uses
  %cmp.n169 = icmp eq i64 %i.dd, %n.vec162
  br i1 %cmp.n169, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check156, %vec.epilog.iter.check158, %vec.epilog.middle.block168
  %indvars.iv44.ph = phi i64 [ 0, %iter.check156 ], [ %i.de, %vec.epilog.iter.check158 ], [ %i.dz, %vec.epilog.middle.block168 ]
  %indvars.iv42.ph = phi i64 [ 64, %iter.check156 ], [ %i.df, %vec.epilog.iter.check158 ], [ %i.ea, %vec.epilog.middle.block168 ]
  %.ph = phi i32 [ 0, %iter.check156 ], [ %i.dy, %vec.epilog.iter.check158 ], [ %i.ei, %vec.epilog.middle.block168 ]
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %middle.block149, %vec.epilog.middle.block168, %bb.k
  %.1.i = phi i32 [ 0, %bb.k ], [ %i.ei, %vec.epilog.middle.block168 ], [ %i.dy, %middle.block149 ], [ %i.ep, %.lr.ph.i.i ] ; 2 uses
  %.not34.i.i = icmp eq i32 %1, %i.cz
  br i1 %.not34.i.i, label %_ZN8facebook5velox4bits9countBitsEPKmii.exit, label %.sink.split.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv44 = phi i64 [ %indvars.iv.next45, %.lr.ph.i.i ], [ %indvars.iv44.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %indvars.iv42 = phi i64 [ %indvars.iv.next43, %.lr.ph.i.i ], [ %indvars.iv42.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.ej = phi i32 [ %i.ep, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader ]
  %i.ek = lshr exact i64 %indvars.iv44, 3
  %i.el = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ek
  %i.em = load i64, ptr %i.el, align 8, !tbaa !187
  %i.en = call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.em)
  %i.eo = trunc nuw nsw i64 %i.en to i32
  %i.ep = add nuw nsw i32 %i.ej, %i.eo            ; 2 uses
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 64
  %.not33.i.i.not = icmp samesign ult i64 %indvars.iv42, %i.da
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 64
  br i1 %.not33.i.i.not, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !373

.sink.split.i.i:                                  ; preds = %._crit_edge.i.i
  %i.eq = lshr i32 %1, 6
  %i.er = and i32 %1, 63
  %i.es = zext nneg i32 %i.er to i64
  %notmask.i36.i.i = shl nsw i64 -1, %i.es
  %i.et = xor i64 %notmask.i36.i.i, -1
  %i.eu = zext nneg i32 %i.eq to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.eu
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !187
  %i.ex = and i64 %i.ew, %i.et
  %i.ey = call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.ex)
  %i.ez = trunc nuw nsw i64 %i.ey to i32
  %i.fa = add nsw i32 %.1.i, %i.ez
  br label %_ZN8facebook5velox4bits9countBitsEPKmii.exit

_ZN8facebook5velox4bits9countBitsEPKmii.exit:     ; preds = %.sink.split.i.i, %._crit_edge.i.i, %bb.j
  %.3.i = phi i32 [ %i.fa, %.sink.split.i.i ], [ %.1.i, %._crit_edge.i.i ], [ 0, %bb.j ]
  %i.fb = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !374
  %.not.i34 = icmp eq ptr %i.fc, null
  br i1 %.not.i34, label %_ZN8facebook5velox10ScratchPtrImLi16EED2Ev.exit, label %bb.l

bb.l:                                             ; preds = %_ZN8facebook5velox4bits9countBitsEPKmii.exit
  %i.fd = load ptr, ptr %4, align 8, !tbaa !354
  invoke void @_ZN8facebook5velox7Scratch7releaseEONS0_10raw_vectorIcEE(ptr noundef nonnull align 8 dereferenceable(24) %i.fd, ptr noundef nonnull align 8 dereferenceable(32) %i.g)
          to label %bb.m unwind label %bb.r

bb.m:                                             ; preds = %bb.l
  %.pr.i = load ptr, ptr %i.fb, align 8, !tbaa !374 ; 2 uses
  %i.fe = icmp eq ptr %.pr.i, null
  br i1 %i.fe, label %_ZN8facebook5velox10ScratchPtrImLi16EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ff = getelementptr inbounds i8, ptr %.pr.i, i64 -32 ; 2 uses
  %i.fg = load ptr, ptr %i.g, align 8, !tbaa !375 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.fg, null
  br i1 %.not.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fh = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !376
  %i.fj = add i64 %i.fi, 64
  %i.fk = load ptr, ptr %i.fg, align 8, !tbaa !18
end_hunk_0
begin_hunk_1_@_ZN8facebook5velox10serializer6presto6detail12_GLOBAL__N_19readNullsEPNS0_15ByteInputStreamEiiPKmiRNS0_10BaseVectorE:bb.a

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv84 = phi i64 [ %indvars.iv.next85, %.lr.ph.i.i ], [ %indvars.iv84.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %.lr.ph.i.i ], [ %indvars.iv82.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.az = phi i32 [ %i.bf, %.lr.ph.i.i ], [ %.ph, %.lr.ph.i.i.preheader ]
  %i.ba = lshr exact i64 %indvars.iv84, 3
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !187
  %i.bd = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %i.bc)
  %i.be = trunc nuw nsw i64 %i.bd to i32
  %i.bf = add nuw nsw i32 %i.az, %i.be            ; 2 uses
  %indvars.iv.next83 = add nuw nsw i64 %indvars.iv82, 64
  %.not33.i.i.not = icmp samesign ult i64 %indvars.iv82, %i.q
  %indvars.iv.next85 = add nuw nsw i64 %indvars.iv84, 64
  br i1 %.not33.i.i.not, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !710

.sink.split.i.i:                                  ; preds = %._crit_edge.i.i
  %i.bg = lshr i32 %4, 6
  %i.bh = and i32 %4, 63
  %i.bi = zext nneg i32 %i.bh to i64
  %notmask.i36.i.i = shl nsw i64 -1, %i.bi
  %i.bj = xor i64 %notmask.i36.i.i, -1
  %i.bk = zext nneg i32 %i.bg to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !187
  %i.bn = and i64 %i.bm, %i.bj
  %i.bo = tail call range(i64 0, 64) i64 @llvm.ctpop.i64(i64 %i.bn)
  %i.bp = trunc nuw nsw i64 %i.bo to i32
  %i.bq = add nsw i32 %.1.i, %i.bp
  br label %_ZN8facebook5velox4bits9countBitsEPKmii.exit

_ZN8facebook5velox4bits9countBitsEPKmii.exit:     ; preds = %bb.c, %._crit_edge.i.i, %.sink.split.i.i
  %.3.i = phi i32 [ %i.bq, %.sink.split.i.i ], [ %.1.i, %._crit_edge.i.i ], [ 0, %bb.c ]
  %i.br = sub nsw i32 %4, %.3.i
  br label %bb.r

bb.e:                                             ; preds = %bb.a
  %i.bs = icmp eq i32 %4, 0
  %i.bt = select i1 %i.bs, i32 %1, i32 %4         ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !678
  %i.bw = icmp eq ptr %i.bv, null
  %i.bx = add nsw i32 %i.bt, %2                   ; 2 uses
  %i.by = add nsw i32 %i.bx, 8
  tail call void @_ZN8facebook5velox10BaseVector19ensureNullsCapacityEib(ptr noundef nonnull align 8 dereferenceable(94) %5, i32 noundef %i.by, i1 noundef zeroext false)
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %.pre = load ptr, ptr %i.bz, align 8, !tbaa !234 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.pre, i64 44
  %i.cb = load i8, ptr %i.ca, align 4, !tbaa !235 ; 2 uses
  br i1 %i.bw, label %bb.f, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit

bb.f:                                             ; preds = %bb.e
  %i.cc = and i8 %i.cb, 2
  %.not.i = icmp eq i8 %i.cc, 0
  br i1 %.not.i, label %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit, label %bb.g, !prof !49

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #39
  unreachable

_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit: ; preds = %bb.f
  %i.cd = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !240 ; 2 uses
  %.not.i.i54 = icmp sgt i32 %2, 0
  br i1 %.not.i.i54, label %bb.h, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit

bb.h:                                             ; preds = %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit
  %i.cf = and i32 %2, 2147483584                  ; 2 uses
  %.not3347.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not3347.i.i, label %._crit_edge.i.i57, label %.lr.ph.i.i55.preheader

.lr.ph.i.i55.preheader:                           ; preds = %bb.h
  %i.cg = add nsw i32 %2, -64
  %i.ch = lshr i32 %i.cg, 3
  %i.ci = and i32 %i.ch, 536870904
  %narrow = add nuw nsw i32 %i.ci, 8
  %i.cj = zext nneg i32 %narrow to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ce, i8 -1, i64 %i.cj, i1 false), !tbaa !187
  br label %._crit_edge.i.i57

._crit_edge.i.i57:                                ; preds = %.lr.ph.i.i55.preheader, %bb.h
  %.not34.i.i58 = icmp eq i32 %2, %i.cf
  br i1 %.not34.i.i58, label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i.i57
  %i.ck = lshr i32 %2, 6
  %i.cl = and i32 %2, 63
  %i.cm = zext nneg i32 %i.cl to i64
  %notmask.i37.i.i = shl nsw i64 -1, %i.cm
  %i.cn = xor i64 %notmask.i37.i.i, -1
  %i.co = zext nneg i32 %i.ck to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.co ; 2 uses
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !187
  %i.cr = or i64 %i.cq, %i.cn
  store i64 %i.cr, ptr %i.cp, align 8, !tbaa !187
  br label %_ZN8facebook5velox4bits8fillBitsEPmiib.exit

_ZN8facebook5velox4bits8fillBitsEPmiib.exit:      ; preds = %bb.e, %bb.i, %._crit_edge.i.i57, %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit
  %i.cs = and i8 %i.cb, 2
  %.not.i60 = icmp eq i8 %i.cs, 0
  br i1 %.not.i60, label %_ZNK8facebook5velox6Buffer9asMutableIhEEPT_v.exit, label %bb.j, !prof !49

bb.j:                                             ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIhEEPT_vE18veloxCheckFailArgs) #39
  unreachable

_ZNK8facebook5velox6Buffer9asMutableIhEEPT_v.exit: ; preds = %_ZN8facebook5velox4bits8fillBitsEPmiib.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !240
  %i.cv = sext i32 %2 to i64                      ; 3 uses
  %i.cw = add nsw i64 %i.cv, 7                    ; 2 uses
  %i.cx = lshr i64 %i.cw, 3
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cx ; 14 uses
  %i.cz = tail call noundef i64 @_ZN8facebook5velox10BaseVector8byteSizeIbEEmi(i32 noundef %1) ; 5 uses
  %i.da = trunc i64 %i.cz to i32                  ; 3 uses
  %i.db = load ptr, ptr %0, align 8, !tbaa !18
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 64
  %i.dd = load ptr, ptr %i.dc, align 8
  tail call void %i.dd(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %i.cy, i32 noundef %i.da)
  %i.de = icmp sgt i32 %i.da, 0
  br i1 %i.de, label %iter.check, label %_ZN8facebook5velox4bits11reverseBitsEPhi.exit

iter.check:                                       ; preds = %_ZNK8facebook5velox6Buffer9asMutableIhEEPT_v.exit
  %wide.trip.count.i = and i64 %i.cz, 2147483647  ; 5 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check99 = icmp samesign ult i64 %wide.trip.count.i, 128
  br i1 %min.iters.check99, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.cz, 120
  %n.vec = and i64 %i.cz, 2147483520              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 %index ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 32 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 64 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 96 ; 2 uses
  %wide.load = load <32 x i8>, ptr %i.df, align 1, !tbaa !42
  %wide.load100 = load <32 x i8>, ptr %i.dg, align 1, !tbaa !42
  %wide.load101 = load <32 x i8>, ptr %i.dh, align 1, !tbaa !42
  %wide.load102.a = load <32 x i8>, ptr %i.di, align 1, !tbaa !42
  %i.dj = tail call <32 x i8> @llvm.bitreverse.v32i8(<32 x i8> %wide.load)
  %i.dk = tail call <32 x i8> @llvm.bitreverse.v32i8(<32 x i8> %wide.load100)
  %i.dl = tail call <32 x i8> @llvm.bitreverse.v32i8(<32 x i8> %wide.load101)
  %i.dm = tail call <32 x i8> @llvm.bitreverse.v32i8(<32 x i8> %wide.load102.a)
  store <32 x i8> %i.dj, ptr %i.df, align 1, !tbaa !42
  store <32 x i8> %i.dk, ptr %i.dg, align 1, !tbaa !42
  store <32 x i8> %i.dl, ptr %i.dh, align 1, !tbaa !42
  store <32 x i8> %i.dm, ptr %i.di, align 1, !tbaa !42
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !711

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  br i1 %cmp.n, label %_ZN8facebook5velox4bits11reverseBitsEPhi.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !360

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec104 = and i64 %i.cz, 2147483640           ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index105 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next107, %vec.epilog.vector.body ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.cy, i64 %index105 ; 2 uses
  %wide.load106 = load <8 x i8>, ptr %i.do, align 1, !tbaa !42
  %i.dp = tail call <8 x i8> @llvm.bitreverse.v8i8(<8 x i8> %wide.load106)
  store <8 x i8> %i.dp, ptr %i.do, align 1, !tbaa !42
  %index.next107 = add nuw i64 %index105, 8       ; 2 uses
  %i.dq = icmp eq i64 %index.next107, %n.vec104
  br i1 %i.dq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !712

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n108 = icmp eq i64 %wide.trip.count.i, %n.vec104
  br i1 %cmp.n108, label %_ZN8facebook5velox4bits11reverseBitsEPhi.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec104, %vec.epilog.middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cy, i64 %indvars.iv.i ; 2 uses
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !42
  %rev.i = tail call i8 @llvm.bitreverse.i8(i8 %i.ds)
  store i8 %rev.i, ptr %i.dr, align 1, !tbaa !42
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN8facebook5velox4bits11reverseBitsEPhi.exit, label %.lr.ph.i, !llvm.loop !713

_ZN8facebook5velox4bits11reverseBitsEPhi.exit:    ; preds = %.lr.ph.i, %middle.block, %vec.epilog.middle.block, %_ZNK8facebook5velox6Buffer9asMutableIhEEPT_v.exit
  %i.dt = shl i32 %i.da, 3                        ; 9 uses
  %.not27.i = icmp slt i32 %i.dt, 64
  br i1 %.not27.i, label %.preheader26.i, label %iter.check127

iter.check127:                                    ; preds = %_ZN8facebook5velox4bits11reverseBitsEPhi.exit
  %i.du = zext nneg i32 %i.dt to i64              ; 2 uses
  %i.dv = or disjoint i64 %i.du, 1
  %umax = tail call i64 @llvm.umax.i64(i64 %i.dv, i64 128)
  %i.dw = add nsw i64 %umax, -65                  ; 3 uses
  %i.dx = lshr i64 %i.dw, 6
  %i.dy = add nuw nsw i64 %i.dx, 1                ; 5 uses
  %min.iters.check109 = icmp ult i64 %i.dw, 192
  br i1 %min.iters.check109, label %.lr.ph.i62.preheader, label %vector.main.loop.iter.check110

vector.main.loop.iter.check110:                   ; preds = %iter.check127
  %min.iters.check111 = icmp ult i64 %i.dw, 960
  br i1 %min.iters.check111, label %vec.epilog.ph131, label %vector.ph112

vector.ph112:                                     ; preds = %vector.main.loop.iter.check110
  %n.mod.vf113 = and i64 %i.dy, 12
  %n.vec114 = and i64 %i.dy, 576460752303423472   ; 4 uses
  %i.dz = shl i64 %n.vec114, 6                    ; 2 uses
  %i.ea = or disjoint i64 %i.dz, 64
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph112
  %index116 = phi i64 [ 0, %vector.ph112 ], [ %index.next121, %vector.body115 ] ; 2 uses
  %i.eb = shl nuw nsw i64 %index116, 3
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.eb ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 32 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ec, i64 64 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 96 ; 2 uses
  %wide.load117 = load <4 x i64>, ptr %i.ec, align 8, !tbaa !187
  %wide.load118 = load <4 x i64>, ptr %i.ed, align 8, !tbaa !187
  %wide.load119 = load <4 x i64>, ptr %i.ee, align 8, !tbaa !187
  %wide.load120 = load <4 x i64>, ptr %i.ef, align 8, !tbaa !187
  %i.eg = xor <4 x i64> %wide.load117, splat (i64 -1)
  %i.eh = xor <4 x i64> %wide.load118, splat (i64 -1)
  %i.ei = xor <4 x i64> %wide.load119, splat (i64 -1)
  %i.ej = xor <4 x i64> %wide.load120, splat (i64 -1)
  store <4 x i64> %i.eg, ptr %i.ec, align 8, !tbaa !187
  store <4 x i64> %i.eh, ptr %i.ed, align 8, !tbaa !187
  store <4 x i64> %i.ei, ptr %i.ee, align 8, !tbaa !187
  store <4 x i64> %i.ej, ptr %i.ef, align 8, !tbaa !187
  %index.next121 = add nuw i64 %index116, 16      ; 2 uses
  %i.ek = icmp eq i64 %index.next121, %n.vec114
  br i1 %i.ek, label %middle.block122, label %vector.body115, !llvm.loop !714

middle.block122:                                  ; preds = %vector.body115
  %cmp.n123 = icmp eq i64 %i.dy, %n.vec114
  br i1 %cmp.n123, label %.preheader26.loopexit.i, label %vec.epilog.iter.check129

vec.epilog.iter.check129:                         ; preds = %middle.block122
  %min.epilog.iters.check130 = icmp eq i64 %n.mod.vf113, 0
  br i1 %min.epilog.iters.check130, label %.lr.ph.i62.preheader, label %vec.epilog.ph131, !prof !263

vec.epilog.ph131:                                 ; preds = %vector.main.loop.iter.check110, %vec.epilog.iter.check129
  %vec.epilog.resume.val124 = phi i64 [ %n.vec114, %vec.epilog.iter.check129 ], [ 0, %vector.main.loop.iter.check110 ]
  %n.vec133 = and i64 %i.dy, 576460752303423484   ; 3 uses
  %i.el = shl i64 %n.vec133, 6                    ; 2 uses
  %i.em = or disjoint i64 %i.el, 64
  br label %vec.epilog.vector.body134

vec.epilog.vector.body134:                        ; preds = %vec.epilog.vector.body134, %vec.epilog.ph131
  %index135 = phi i64 [ %vec.epilog.resume.val124, %vec.epilog.ph131 ], [ %index.next137, %vec.epilog.vector.body134 ] ; 2 uses
  %i.en = shl nuw nsw i64 %index135, 3
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.en ; 2 uses
  %wide.load136 = load <4 x i64>, ptr %i.eo, align 8, !tbaa !187
  %i.ep = xor <4 x i64> %wide.load136, splat (i64 -1)
  store <4 x i64> %i.ep, ptr %i.eo, align 8, !tbaa !187
  %index.next137 = add nuw i64 %index135, 4       ; 2 uses
  %i.eq = icmp eq i64 %index.next137, %n.vec133
  br i1 %i.eq, label %vec.epilog.middle.block138, label %vec.epilog.vector.body134, !llvm.loop !715

vec.epilog.middle.block138:                       ; preds = %vec.epilog.vector.body134
  %cmp.n139 = icmp eq i64 %i.dy, %n.vec133
  br i1 %cmp.n139, label %.preheader26.loopexit.i, label %.lr.ph.i62.preheader

.lr.ph.i62.preheader:                             ; preds = %iter.check127, %vec.epilog.iter.check129, %vec.epilog.middle.block138
  %indvars.iv36.i.ph = phi i64 [ 0, %iter.check127 ], [ %i.dz, %vec.epilog.iter.check129 ], [ %i.el, %vec.epilog.middle.block138 ]
  %indvars.iv.i63.ph = phi i64 [ 64, %iter.check127 ], [ %i.ea, %vec.epilog.iter.check129 ], [ %i.em, %vec.epilog.middle.block138 ]
  br label %.lr.ph.i62

.preheader26.loopexit.i:                          ; preds = %.lr.ph.i62, %vec.epilog.middle.block138, %middle.block122
  %6 = add nuw i32 %i.dt, 2147483584
  %i.er = and i32 %6, 2147483584
  %narrow.i = add nuw i32 %i.er, 64
  br label %.preheader26.i

.preheader26.i:                                   ; preds = %.preheader26.loopexit.i, %_ZN8facebook5velox4bits11reverseBitsEPhi.exit
  %.0.lcssa.i = phi i32 [ 0, %_ZN8facebook5velox4bits11reverseBitsEPhi.exit ], [ %narrow.i, %.preheader26.loopexit.i ] ; 11 uses
  %7 = or disjoint i32 %.0.lcssa.i, 8             ; 5 uses
  %.not2429.i = icmp sgt i32 %7, %i.dt
  br i1 %.not2429.i, label %.preheader.i, label %iter.check161

iter.check161:                                    ; preds = %.preheader26.i
  %8 = add i32 %i.dt, -8
  %9 = sub i32 %8, %.0.lcssa.i                    ; 3 uses
  %10 = lshr i32 %9, 3
  %11 = add nuw nsw i32 %10, 1                    ; 5 uses
  %min.iters.check143 = icmp ult i32 %9, 120
  br i1 %min.iters.check143, label %.lr.ph31.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check161
  %reass.sub = sub i32 %.0.lcssa.i, %i.dt
  %12 = add i32 %reass.sub, 7
  %13 = or i32 %12, 7
  %14 = icmp ult i32 %13, %.0.lcssa.i
  br i1 %14, label %.lr.ph31.i.preheader, label %vector.main.loop.iter.check144

vector.main.loop.iter.check144:                   ; preds = %vector.scevcheck
  %min.iters.check145 = icmp ult i32 %9, 1016
  br i1 %min.iters.check145, label %vec.epilog.ph165, label %vector.ph146

vector.ph146:                                     ; preds = %vector.main.loop.iter.check144
  %n.mod.vf142 = and i32 %11, 112
  %n.vec143 = and i32 %11, 1073741696             ; 4 uses
  %15 = shl i32 %n.vec143, 3                      ; 2 uses
  %16 = add i32 %7, %15
  %17 = add i32 %.0.lcssa.i, %15                  ; 2 uses
  %18 = lshr i32 %.0.lcssa.i, 3
  br label %vector.body149

vector.body149:                                   ; preds = %vector.body149, %vector.ph146
  %index145 = phi i32 [ 0, %vector.ph146 ], [ %index.next150, %vector.body149 ] ; 2 uses
  %19 = add i32 %18, %index145
  %20 = and i32 %19, 536870911
  %21 = zext nneg i32 %20 to i64
  %i.es = getelementptr inbounds nuw i8, ptr %i.cy, i64 %21 ; 5 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 32 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 64 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 96 ; 2 uses
  %wide.load151 = load <32 x i8>, ptr %i.es, align 1, !tbaa !42
  %wide.load152 = load <32 x i8>, ptr %i.et, align 1, !tbaa !42
  %wide.load153 = load <32 x i8>, ptr %i.eu, align 1, !tbaa !42
  %wide.load154 = load <32 x i8>, ptr %i.ev, align 1, !tbaa !42
  %i.ew = xor <32 x i8> %wide.load151, splat (i8 -1)
  %i.ex = xor <32 x i8> %wide.load152, splat (i8 -1)
  %i.ey = xor <32 x i8> %wide.load153, splat (i8 -1)
  %i.ez = xor <32 x i8> %wide.load154, splat (i8 -1)
  store <32 x i8> %i.ew, ptr %i.es, align 1, !tbaa !42
  store <32 x i8> %i.ex, ptr %i.et, align 1, !tbaa !42
  store <32 x i8> %i.ey, ptr %i.eu, align 1, !tbaa !42
  store <32 x i8> %i.ez, ptr %i.ev, align 1, !tbaa !42
  %index.next150 = add nuw i32 %index145, 128     ; 2 uses
  %i.fa = icmp eq i32 %index.next150, %n.vec143
  br i1 %i.fa, label %middle.block156, label %vector.body149, !llvm.loop !716

middle.block156:                                  ; preds = %vector.body149
  %cmp.n157 = icmp eq i32 %11, %n.vec143
  br i1 %cmp.n157, label %.preheader.i, label %vec.epilog.iter.check163

vec.epilog.iter.check163:                         ; preds = %middle.block156
  %min.epilog.iters.check164 = icmp eq i32 %n.mod.vf142, 0
  br i1 %min.epilog.iters.check164, label %.lr.ph31.i.preheader, label %vec.epilog.ph165, !prof !366

vec.epilog.ph165:                                 ; preds = %vector.main.loop.iter.check144, %vec.epilog.iter.check163
  %vec.epilog.resume.val153 = phi i32 [ %n.vec143, %vec.epilog.iter.check163 ], [ 0, %vector.main.loop.iter.check144 ]
  %n.vec162 = and i32 %11, 1073741808             ; 3 uses
  %22 = shl i32 %n.vec162, 3                      ; 2 uses
  %23 = add i32 %7, %22
  %24 = add i32 %.0.lcssa.i, %22                  ; 2 uses
  %25 = lshr i32 %.0.lcssa.i, 3
  br label %vec.epilog.vector.body168

vec.epilog.vector.body168:                        ; preds = %vec.epilog.vector.body168, %vec.epilog.ph165
  %index164 = phi i32 [ %vec.epilog.resume.val153, %vec.epilog.ph165 ], [ %index.next166, %vec.epilog.vector.body168 ] ; 2 uses
  %26 = add i32 %25, %index164
  %27 = and i32 %26, 536870911
  %28 = zext nneg i32 %27 to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.cy, i64 %28 ; 2 uses
  %wide.load170 = load <16 x i8>, ptr %i.fb, align 1, !tbaa !42
  %i.fc = xor <16 x i8> %wide.load170, splat (i8 -1)
  store <16 x i8> %i.fc, ptr %i.fb, align 1, !tbaa !42
  %index.next166 = add nuw i32 %index164, 16      ; 2 uses
  %i.fd = icmp eq i32 %index.next166, %n.vec162
  br i1 %i.fd, label %vec.epilog.middle.block172, label %vec.epilog.vector.body168, !llvm.loop !717

vec.epilog.middle.block172:                       ; preds = %vec.epilog.vector.body168
  %cmp.n174 = icmp eq i32 %11, %n.vec162
  br i1 %cmp.n174, label %.preheader.i, label %.lr.ph31.i.preheader

.lr.ph31.i.preheader:                             ; preds = %vector.scevcheck, %iter.check161, %vec.epilog.iter.check163, %vec.epilog.middle.block172
  %.ph216 = phi i32 [ %7, %iter.check161 ], [ %7, %vector.scevcheck ], [ %16, %vec.epilog.iter.check163 ], [ %23, %vec.epilog.middle.block172 ]
  %.130.i.ph = phi i32 [ %.0.lcssa.i, %iter.check161 ], [ %.0.lcssa.i, %vector.scevcheck ], [ %17, %vec.epilog.iter.check163 ], [ %24, %vec.epilog.middle.block172 ]
  br label %.lr.ph31.i

.lr.ph.i62:                                       ; preds = %.lr.ph.i62.preheader, %.lr.ph.i62
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %.lr.ph.i62 ], [ %indvars.iv36.i.ph, %.lr.ph.i62.preheader ] ; 2 uses
  %indvars.iv.i63 = phi i64 [ %indvars.iv.next.i64, %.lr.ph.i62 ], [ %indvars.iv.i63.ph, %.lr.ph.i62.preheader ]
  %i.fe = lshr exact i64 %indvars.iv36.i, 3
  %i.ff = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.fe ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !187
  %i.fh = xor i64 %i.fg, -1
  store i64 %i.fh, ptr %i.ff, align 8, !tbaa !187
  %indvars.iv.next.i64 = add nuw nsw i64 %indvars.iv.i63, 64 ; 2 uses
  %.not.i65 = icmp samesign ugt i64 %indvars.iv.next.i64, %i.du
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 64
  br i1 %.not.i65, label %.preheader26.loopexit.i, label %.lr.ph.i62, !llvm.loop !718

.preheader.i:                                     ; preds = %.lr.ph31.i, %middle.block156, %vec.epilog.middle.block172, %.preheader26.i
  %.1.lcssa.i = phi i32 [ %.0.lcssa.i, %.preheader26.i ], [ %24, %vec.epilog.middle.block172 ], [ %17, %middle.block156 ], [ %29, %.lr.ph31.i ] ; 2 uses
  %i.fi = icmp slt i32 %.1.lcssa.i, %i.dt
  br i1 %i.fi, label %.lr.ph34.preheader.i, label %_ZN8facebook5velox4bits6negateEPmi.exit

.lr.ph34.preheader.i:                             ; preds = %.preheader.i
  %wide.trip.count = zext nneg i32 %.1.lcssa.i to i64
  br label %.lr.ph34.i

.lr.ph31.i:                                       ; preds = %.lr.ph31.i.preheader, %.lr.ph31.i
  %29 = phi i32 [ %32, %.lr.ph31.i ], [ %.ph216, %.lr.ph31.i.preheader ] ; 3 uses
  %.130.i = phi i32 [ %29, %.lr.ph31.i ], [ %.130.i.ph, %.lr.ph31.i.preheader ]
  %30 = lshr exact i32 %.130.i, 3
  %31 = zext nneg i32 %30 to i64
  %i.fj = getelementptr inbounds nuw i8, ptr %i.cy, i64 %31 ; 2 uses
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !42
  %i.fl = xor i8 %i.fk, -1
  store i8 %i.fl, ptr %i.fj, align 1, !tbaa !42
  %32 = add nuw nsw i32 %29, 8                    ; 2 uses
  %.not24.i = icmp sgt i32 %32, %i.dt
  br i1 %.not24.i, label %.preheader.i, label %.lr.ph31.i, !llvm.loop !719

.lr.ph34.i:                                       ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i, %.lr.ph34.preheader.i
  %indvars.iv41.i = phi i64 [ %wide.trip.count, %.lr.ph34.preheader.i ], [ %indvars.iv.next42.i, %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i ] ; 6 uses
  %i.fm = lshr i64 %indvars.iv41.i, 6
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %i.fm
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !187
  %i.fp = and i64 %indvars.iv41.i, 63
  %i.fq = shl nuw i64 1, %i.fp
  %i.fr = and i64 %i.fq, %i.fo
  %.not25.i = icmp eq i64 %i.fr, 0
  %i.fs = lshr i64 %indvars.iv41.i, 3
  %i.ft = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.fs ; 2 uses
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !42  ; 2 uses
  br i1 %.not25.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph34.i
  %i.fv = trunc i64 %indvars.iv41.i to i8
  %i.fw = and i8 %i.fv, 7
  %i.fx = shl nuw i8 1, %i.fw
  %i.fy = or i8 %i.fx, %i.fu
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i

bb.l:                                             ; preds = %.lr.ph34.i
  %i.fz = and i64 %indvars.iv41.i, 7
  %i.ga = getelementptr inbounds nuw i8, ptr @_ZN8facebook5velox4bitsL13kZeroBitmasksE, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !42
  %i.gc = and i8 %i.gb, %i.fu
  br label %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i

_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i:  ; preds = %bb.l, %bb.k
  %.sink.i.i = phi i8 [ %i.gc, %bb.l ], [ %i.fy, %bb.k ]
  store i8 %.sink.i.i, ptr %i.ft, align 1, !tbaa !42
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %33 = trunc nuw i64 %indvars.iv.next42.i to i32
  %34 = icmp sgt i32 %i.dt, %33
  br i1 %34, label %.lr.ph34.i, label %_ZN8facebook5velox4bits6negateEPmi.exit, !llvm.loop !370

_ZN8facebook5velox4bits6negateEPmi.exit:          ; preds = %_ZN8facebook5velox4bits6setBitIhEEvPT_mb.exit.i, %.preheader.i
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN8facebook5velox4bits6negateEPmi.exit
  tail call void @_ZN8facebook5velox4bits11scatterBitsEiiPKcPKmPc(i32 noundef %1, i32 noundef %4, ptr noundef %i.cy, ptr noundef nonnull %3, ptr noundef %i.cy)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN8facebook5velox4bits6negateEPmi.exit
  %i.gd = and i64 %i.cw, -8                       ; 2 uses
  %i.ge = icmp ugt i64 %i.gd, %i.cv
  br i1 %i.ge, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.gf = load ptr, ptr %i.bz, align 8, !tbaa !234 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 44
  %i.gh = load i8, ptr %i.gg, align 4, !tbaa !235
  %i.gi = and i8 %i.gh, 2
  %.not.i66 = icmp eq i8 %i.gi, 0
  br i1 %.not.i66, label %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit69, label %bb.p, !prof !49

bb.p:                                             ; preds = %bb.o
  tail call void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableImEEPT_vE18veloxCheckFailArgs) #39
  unreachable

_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit69: ; preds = %bb.o
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !240 ; 2 uses
  %i.gl = sext i32 %i.bt to i64
  tail call void @_ZN8facebook5velox4bits8copyBitsEPKmmPmmm(ptr noundef %i.gk, i64 noundef %i.gd, ptr noundef %i.gk, i64 noundef %i.cv, i64 noundef %i.gl)
  br label %bb.q

bb.q:                                             ; preds = %_ZNK8facebook5velox6Buffer9asMutableImEEPT_v.exit69, %bb.n
  %i.gm = tail call noundef i32 @_ZN8facebook5velox10BaseVector10countNullsERKN5boost13intrusive_ptrINS0_6BufferEEEii(ptr noundef nonnull align 8 dereferenceable(8) %i.bz, i32 noundef %2, i32 noundef %i.bx)
  br label %bb.r

bb.r:                                             ; preds = %.thread, %_ZN8facebook5velox4bits9countBitsEPKmii.exit, %bb.q
  %.0 = phi i32 [ %i.gm, %bb.q ], [ %i.br, %_ZN8facebook5velox4bits9countBitsEPKmii.exit ], [ 0, %.thread ]
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox10FlatVectorIbE13mutableValuesEi(ptr dead_on_unwind noalias writable sret(%"class.boost::intrusive_ptr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(176) %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::optional.258", align 1 ; 5 uses
  %4 = alloca %"class.std::optional.258", align 1 ; 5 uses
  %5 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !166
  %i.c = tail call noundef i64 @_ZN8facebook5velox10BaseVector8byteSizeIbEEmi(i32 noundef %i.b) ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !234  ; 3 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 44
  %i.g = load i8, ptr %i.f, align 4, !tbaa !235
  %i.h = and i8 %i.g, 2
  %.not22 = icmp eq i8 %i.h, 0
  br i1 %.not22, label %bb.c, label %_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.j = load atomic i32, ptr %i.i acquire, align 4
  %i.k = icmp eq i32 %i.j, 1
  br i1 %i.k, label %bb.d, label %_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.d, align 8, !tbaa !234
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !462
  %i.o = icmp ult i64 %i.n, %i.c
  br i1 %i.o, label %_ZN8facebook5velox13AlignedBuffer10reallocateIbEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_E.exit, label %bb.o

_ZN8facebook5velox13AlignedBuffer10reallocateIbEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_E.exit: ; preds = %bb.d
  %i.p = load i32, ptr %i.a, align 8, !tbaa !166
  %i.q = sext i32 %i.p to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  store i8 0, ptr %4, align 1, !tbaa !42
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 1
  store i8 1, ptr %i.r, align 1, !tbaa !246
  %i.s = add nsw i64 %i.q, 7
  %i.t = lshr i64 %i.s, 3
  call void @_ZN8facebook5velox13AlignedBuffer10reallocateIcEEvPN5boost13intrusive_ptrINS0_6BufferEEEmRKSt8optionalIT_E(ptr noundef nonnull %i.d, i64 noundef %i.t, ptr noundef nonnull align 1 dereferenceable(2) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.o

_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit: ; preds = %bb.c, %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.u = load i32, ptr %i.a, align 8, !tbaa !166
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !665
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22, !noalias !720
  store i8 0, ptr %3, align 1, !tbaa !42, !noalias !720
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 1
  store i8 1, ptr %i.y, align 1, !tbaa !246, !noalias !720
  %i.z = add nsw i64 %i.v, 7
  %i.aa = lshr i64 %i.z, 3
  call void @_ZN8facebook5velox13AlignedBuffer8allocateIcEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %5, i64 noundef %i.aa, ptr noundef %i.x, ptr noundef nonnull align 1 dereferenceable(2) %3, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22, !noalias !720
  %i.ab = load ptr, ptr %i.d, align 8, !tbaa !234 ; 3 uses
  %.not23 = icmp eq ptr %i.ab, null
  br i1 %.not23, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit
  %i.ac = load ptr, ptr %5, align 8, !tbaa !234   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 44
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !235
  %i.af = and i8 %i.ae, 2
  %.not.i = icmp eq i8 %i.af, 0
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !49

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorENS0_22CompileTimeEmptyStringEEEvRKNS1_18VeloxCheckFailArgsET0_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox6Buffer9asMutableIbEEPT_vE18veloxCheckFailArgs) #39
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ag = trunc i64 %i.c to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !462
  %i.aj = trunc i64 %i.ai to i32
  %.sroa.speculated = call i32 @llvm.smin.i32(i32 %i.ag, i32 %i.aj)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !240
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !240
  %i.ao = sext i32 %.sroa.speculated to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr align 1 %i.an, i64 %i.ao, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %5) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  resume { ptr, i32 } %i.ap

bb.i:                                             ; preds = %bb.g, %_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb.exit
  %i.aq = load ptr, ptr %5, align 8, !tbaa !234   ; 3 uses
  %.not.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.as = atomicrmw add ptr %i.ar, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i: ; preds = %bb.j, %bb.i
  %i.at = load ptr, ptr %i.d, align 8, !tbaa !234 ; 7 uses
  store ptr %i.aq, ptr %i.d, align 8, !tbaa !234
  %.not.i2.i = icmp eq ptr %i.at, null
  br i1 %.not.i2.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  %i.av = atomicrmw sub ptr %i.au, i32 1 acq_rel, align 4
  %i.aw = icmp eq i32 %i.av, 1
  br i1 %i.aw, label %.sink.split.i.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit

.sink.split.i.i.i:                                ; preds = %bb.k
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 64
  %i.az = load ptr, ptr %i.ay, align 8
  invoke void %i.az(ptr noundef nonnull align 8 dereferenceable(64) %i.at)
          to label %.noexc.i.i unwind label %bb.l, !inline_history !248

.noexc.i.i:                                       ; preds = %.sink.split.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !249
  %.not.i.i.i = icmp eq ptr %i.bb, null
  %i.bc = load ptr, ptr %i.at, align 8, !tbaa !18
  %..i.i.i = select i1 %.not.i.i.i, i64 8, i64 48
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %..i.i.i
  %i.be = load ptr, ptr %i.bd, align 8
  invoke void %i.be(ptr noundef nonnull align 8 dereferenceable(64) %i.at)
          to label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit unwind label %bb.l, !inline_history !248

bb.l:                                             ; preds = %.noexc.i.i, %.sink.split.i.i.i
  %i.bf = landingpad { ptr, i32 }
          catch ptr null
  %i.bg = extractvalue { ptr, i32 } %i.bf, 0
  call void @__clang_call_terminate(ptr %i.bg) #42
  unreachable

_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit: ; preds = %.noexc.i.i, %bb.k, %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEC2ERKS4_.exit.i
  %i.bh = load ptr, ptr %5, align 8, !tbaa !234   ; 7 uses
  %.not.i10 = icmp eq ptr %i.bh, null
  br i1 %.not.i10, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEEaSERKS4_.exit
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bj = atomicrmw sub ptr %i.bi, i32 1 acq_rel, align 4
  %i.bk = icmp eq i32 %i.bj, 1
  br i1 %i.bk, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit
end_hunk_1
begin_hunk_2_@llvm.umin.i32
!169 = !{!"_ZTSN8facebook5velox14VectorEncoding6SimpleE", !6, i64 0}
!170 = !{!"_ZTSN5boost13intrusive_ptrIN8facebook5velox6BufferEEE", !171, i64 0}
!171 = !{!"p1 _ZTSN8facebook5velox6BufferE", !11, i64 0}
!172 = !{!"p1 long", !11, i64 0}
!173 = !{!"p1 _ZTSN8facebook5velox6memory10MemoryPoolE", !11, i64 0}
!174 = !{!"_ZTSSt8optionalIiE", !175, i64 0}
!175 = !{!"_ZTSSt14_Optional_baseIiLb1ELb1EE", !176, i64 0}
!176 = !{!"_ZTSSt17_Optional_payloadIiLb1ELb1ELb1EE", !177, i64 0}
!177 = !{!"_ZTSSt22_Optional_payload_baseIiE", !6, i64 0, !58, i64 4}
!178 = !{!"_ZTSSt6atomicIbE", !179, i64 0}
!179 = !{!"_ZTSSt13__atomic_baseIbE", !58, i64 0}
!180 = !{!181}
!181 = distinct !{!181, !182, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!182 = distinct !{!182, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!183 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!184 = !{!167, !169, i64 28}
!185 = !{!186, !58, i64 1}
!186 = !{!"_ZTSSt22_Optional_payload_baseIbE", !6, i64 0, !58, i64 1}
!187 = !{!15, !15, i64 0}
!188 = !{!189, !172, i64 0}
!189 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !172, i64 0, !172, i64 8, !172, i64 16}
!190 = !{!191, !5, i64 24}
!191 = !{!"_ZTSN8facebook5velox17SelectivityVectorE", !192, i64 0, !5, i64 24, !5, i64 28, !5, i64 32, !195, i64 36}
!192 = !{!"_ZTSSt6vectorImSaImEE", !193, i64 0}
!193 = !{!"_ZTSSt12_Vector_baseImSaImEE", !194, i64 0}
!194 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !189, i64 0}
!195 = !{!"_ZTSSt8optionalIbE", !196, i64 0}
!196 = !{!"_ZTSSt14_Optional_baseIbLb1ELb1EE", !197, i64 0}
!197 = !{!"_ZTSSt17_Optional_payloadIbLb1ELb1ELb1EE", !186, i64 0}
!198 = !{!191, !5, i64 32}
!199 = distinct !{!199, !100}
!200 = distinct !{!200, !100}
!201 = !{!191, !5, i64 28}
!202 = !{!203, !172, i64 0}
!203 = !{!"_ZTSZN8facebook5velox4bits11findLastBitEPKmiibEUlimE_", !172, i64 0, !204, i64 8, !58, i64 16}
!204 = !{!"p1 int", !11, i64 0}
!205 = !{!204, !204, i64 0}
!206 = !{!203, !58, i64 16}
!207 = !{!208, !172, i64 0}
!208 = !{!"_ZTSZN8facebook5velox4bits11findLastBitEPKmiibEUliE_", !172, i64 0, !204, i64 8, !58, i64 16}
!209 = !{!208, !58, i64 16}
!210 = distinct !{null, null}
!211 = distinct !{!211, !100}
!212 = distinct !{!212, !100}
!213 = distinct !{!213, !100}
!214 = distinct !{!214, !100}
!215 = !{!189, !172, i64 16}
!216 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!217 = distinct !{!217, !100}
!218 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!219 = distinct !{null, null}
!220 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null, null}
!221 = !{!222}
!222 = distinct !{!222, !223, !"_ZN8facebook5velox10BaseVector6createIS1_EESt10shared_ptrIT_ERKS3_IKNS0_4TypeEEiPNS0_6memory10MemoryPoolE: argument 0"}
!223 = distinct !{!223, !"_ZN8facebook5velox10BaseVector6createIS1_EESt10shared_ptrIT_ERKS3_IKNS0_4TypeEEiPNS0_6memory10MemoryPoolE"}
!224 = !{!225}
!225 = distinct !{!225, !226, !"_ZSt19static_pointer_castIN8facebook5velox10BaseVectorES2_ESt10shared_ptrIT_EOS3_IT0_E: argument 0"}
!226 = distinct !{!226, !"_ZSt19static_pointer_castIN8facebook5velox10BaseVectorES2_ESt10shared_ptrIT_EOS3_IT0_E"}
!227 = !{!225, !222}
!228 = distinct !{ptr @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null, null}
!229 = distinct !{null}
!230 = !{!231}
!231 = distinct !{!231, !232, !"_ZN8facebook5velox15allocateIndicesEiPNS0_6memory10MemoryPoolE: argument 0"}
!232 = distinct !{!232, !"_ZN8facebook5velox15allocateIndicesEiPNS0_6memory10MemoryPoolE"}
!233 = !{!177, !58, i64 4}
!234 = !{!170, !171, i64 0}
!235 = !{!236, !239, i64 44}
!236 = !{!"_ZTSN8facebook5velox6BufferE", !173, i64 8, !14, i64 16, !15, i64 24, !15, i64 32, !237, i64 40, !239, i64 44, !6, i64 48}
!237 = !{!"_ZTSSt6atomicIiE", !238, i64 0}
!238 = !{!"_ZTSSt13__atomic_baseIiE", !5, i64 0}
!239 = !{!"_ZTSN8facebook5velox6Buffer4TypeE", !6, i64 0}
!240 = !{!236, !14, i64 16}
!241 = distinct !{!241, !100}
!242 = distinct !{null, null}
!243 = !{!244}
!244 = distinct !{!244, !245, !"_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb: argument 0"}
!245 = distinct !{!245, !"_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb"}
!246 = !{!247, !58, i64 1}
!247 = !{!"_ZTSSt22_Optional_payload_baseIcE", !6, i64 0, !58, i64 1}
!248 = distinct !{null}
!249 = !{!236, !173, i64 8}
!250 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!251 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!252 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev, null, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!253 = !{!254}
!254 = distinct !{!254, !255, !"_ZN8facebook5velox10BaseVector6createIS1_EESt10shared_ptrIT_ERKS3_IKNS0_4TypeEEiPNS0_6memory10MemoryPoolE: argument 0"}
!255 = distinct !{!255, !"_ZN8facebook5velox10BaseVector6createIS1_EESt10shared_ptrIT_ERKS3_IKNS0_4TypeEEiPNS0_6memory10MemoryPoolE"}
!256 = !{!257}
!257 = distinct !{!257, !258, !"_ZSt19static_pointer_castIN8facebook5velox10BaseVectorES2_ESt10shared_ptrIT_EOS3_IT0_E: argument 0"}
!258 = distinct !{!258, !"_ZSt19static_pointer_castIN8facebook5velox10BaseVectorES2_ESt10shared_ptrIT_EOS3_IT0_E"}
!259 = !{!257, !254}
!260 = distinct !{!260, !100, !261, !262}
!261 = !{!"llvm.loop.isvectorized", i32 1}
!262 = !{!"llvm.loop.unroll.runtime.disable"}
!263 = !{!"branch_weights", i32 4, i32 12}
!264 = distinct !{!264, !100, !261, !262}
!265 = distinct !{!265, !100, !262, !261}
!266 = distinct !{null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!267 = distinct !{null, ptr @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!268 = distinct !{null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!269 = !{!270}
!270 = distinct !{!270, !271, !"_ZN8facebook5velox12IPPrefixType3getEv: argument 0"}
!271 = distinct !{!271, !"_ZN8facebook5velox12IPPrefixType3getEv"}
!272 = !{!273, !15, i64 24}
!273 = !{!"_ZTSSt10_HashtableIN8facebook5velox8TypeKindESt4pairIKS2_St8functionIFvPNS1_15ByteInputStreamERKSt10shared_ptrIKNS1_4TypeEEiPKmiPNS1_6memory10MemoryPoolERKNS1_10serializer6presto17PrestoVectorSerde13PrestoOptionsERS8_INS1_10BaseVectorEEEEESaISU_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSW_18_Mod_range_hashingENSW_20_Default_ranged_hashENSW_20_Prime_rehash_policyENSW_17_Hashtable_traitsILb0ELb0ELb1EEEE", !117, i64 0, !15, i64 8, !119, i64 16, !15, i64 24, !121, i64 32, !120, i64 48}
!274 = distinct !{!274, !100}
!275 = !{!273, !15, i64 8}
!276 = !{!273, !117, i64 0}
!277 = distinct !{!277, !100}
!278 = !{!279}
!279 = distinct !{!279, !280, !"_ZN8facebook5velox12errorMessageIJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!280 = distinct !{!280, !"_ZN8facebook5velox12errorMessageIJPKcEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!281 = !{!172, !172, i64 0}
!282 = !{!173, !173, i64 0}
!283 = distinct !{null}
!284 = distinct !{!284, !100}
!285 = !{!286}
!286 = distinct !{!286, !287, !"_ZN8facebook5velox12IPPrefixType3getEv: argument 0"}
!287 = distinct !{!287, !"_ZN8facebook5velox12IPPrefixType3getEv"}
!288 = !{!48, !14, i64 0}
!289 = !{!290, !291, i64 0}
!290 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !291, i64 0, !291, i64 8, !291, i64 16}
!291 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !11, i64 0}
!292 = !{!290, !291, i64 16}
!293 = !{!290, !291, i64 8}
!294 = !{!295, !296, i64 0}
!295 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox13IPAddressTypeELN9__gnu_cxx12_Lock_policyE2EE", !296, i64 0, !25, i64 8}
!296 = !{!"p1 _ZTSN8facebook5velox13IPAddressTypeE", !11, i64 0}
!297 = !{!298, !299, i64 0}
!298 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE1EEELN9__gnu_cxx12_Lock_policyE2EE", !299, i64 0, !25, i64 8}
!299 = !{!"p1 _ZTSN8facebook5velox10ScalarTypeILNS0_8TypeKindE1EEE", !11, i64 0}
!300 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIKN8facebook5velox4TypeEESaIS5_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!301 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!302 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox10ScalarTypeILNS1_8TypeKindE1EEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!303 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox13IPAddressTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!304 = distinct !{!304, !100}
!305 = distinct !{null, null, null, null, ptr @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!306 = distinct !{null, null}
!307 = !{!308}
!308 = distinct !{!308, !309, !"_ZN8facebook5velox12errorMessageIJjmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!309 = distinct !{!309, !"_ZN8facebook5velox12errorMessageIJjmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!310 = !{!311}
!311 = distinct !{!311, !312, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: argument 0"}
!312 = distinct !{!312, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!313 = !{!314, !315, i64 0}
!314 = !{!"_ZTSN5folly7dynamicE", !315, i64 0, !6, i64 8}
!315 = !{!"_ZTSN5folly7dynamic4TypeE", !6, i64 0}
!316 = !{!317, !318, i64 0}
!317 = !{!"_ZTSN5folly3f146detail8F14TableINS1_19NodeContainerPolicyINS_7dynamicES4_NS_6detail13DynamicHasherENS5_15DynamicKeyEqualEvEEEE", !318, i64 0, !319, i64 8}
!318 = !{!"p1 _ZTSN5folly3f146detail8F14ChunkIPSt4pairIKNS_7dynamicES4_EEE", !11, i64 0}
!319 = !{!"_ZTSN5folly3f146detail31SizeAndChunkShiftAndPackedBeginINS1_11F14ItemIterIPNS1_8F14ChunkIPSt4pairIKNS_7dynamicES6_EEEEELb1EEE", !71, i64 0, !320, i64 8}
!320 = !{!"_ZTSN5folly3f146detail18PackedChunkItemPtrIPPSt4pairIKNS_7dynamicES4_EEE", !15, i64 0}
!321 = distinct !{!321, !100}
!322 = !{!323, !323, i64 0}
!323 = !{!"__int128", !6, i64 0}
!324 = distinct !{null}
!325 = !{!326, !6, i64 15}
!326 = !{!"_ZTSN5folly3f146detail17F14EmptyTagVectorE", !327, i64 0, !6, i64 15}
!327 = !{!"_ZTSSt5arrayIhLm15EE", !6, i64 0}
!328 = !{!67, !68, i64 0}
!329 = !{!330, !172, i64 8}
!330 = !{!"_ZTSN8facebook5velox10raw_vectorImEE", !173, i64 0, !172, i64 8, !15, i64 16, !15, i64 24}
!331 = !{!330, !173, i64 0}
!332 = !{!330, !15, i64 24}
!333 = distinct !{null}
!334 = distinct !{!334, !100}
!335 = distinct !{null}
!336 = !{!330, !15, i64 16}
!337 = !{!338, !5, i64 32}
!338 = !{!"_ZTSSt4pairIN8facebook5velox10raw_vectorImEEiE", !330, i64 0, !5, i64 32}
!339 = !{!340}
!340 = distinct !{!340, !341, !"_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIlSt4pairIN8facebook5velox10raw_vectorImEEiEvvvSt17integral_constantIbLb1EEEEE11try_emplaceIJEEES4_INS1_23VectorContainerIteratorIPS4_IKlS9_EEEbEOlDpOT_: argument 0"}
!341 = distinct !{!341, !"_ZN5folly3f146detail11F14BasicMapINS1_21VectorContainerPolicyIlSt4pairIN8facebook5velox10raw_vectorImEEiEvvvSt17integral_constantIbLb1EEEEE11try_emplaceIJEEES4_INS1_23VectorContainerIteratorIPS4_IKlS9_EEEbEOlDpOT_"}
!342 = !{!343}
!343 = distinct !{!343, !344, !"_ZSt16forward_as_tupleIJlEESt5tupleIJDpOT_EES3_: argument 0"}
!344 = distinct !{!344, !"_ZSt16forward_as_tupleIJlEESt5tupleIJDpOT_EES3_"}
!345 = !{!346, !204, i64 0}
!346 = !{!"_ZTSN5folly3f146detail11F14ItemIterIPNS1_8F14ChunkIjEEEE", !204, i64 0, !15, i64 8}
!347 = !{!116, !120, i64 16}
!348 = distinct !{!348, !100}
!349 = distinct !{null}
!350 = !{!"branch_weights", i32 2146410443, i32 1073205}
!351 = !{!352}
!352 = distinct !{!352, !353, !"_ZN8facebook5velox12errorMessageIJPKcSt17basic_string_viewIcSt11char_traitsIcEES7_EEENSt7__cxx1112basic_stringIcS6_SaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!353 = distinct !{!353, !"_ZN8facebook5velox12errorMessageIJPKcSt17basic_string_viewIcSt11char_traitsIcEES7_EEENSt7__cxx1112basic_stringIcS6_SaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!354 = !{!355, !356, i64 0}
!355 = !{!"_ZTSN8facebook5velox10ScratchPtrImLi16EEE", !356, i64 0, !357, i64 8, !172, i64 40, !5, i64 48, !6, i64 56, !6, i64 184}
!356 = !{!"p1 _ZTSN8facebook5velox7ScratchE", !11, i64 0}
!357 = !{!"_ZTSN8facebook5velox10raw_vectorIcEE", !173, i64 0, !14, i64 8, !15, i64 16, !15, i64 24}
!358 = distinct !{null}
!359 = distinct !{!359, !100, !261, !262}
!360 = !{!"branch_weights", i32 8, i32 120}
!361 = distinct !{!361, !100, !261, !262}
!362 = distinct !{!362, !100, !262, !261}
!363 = distinct !{!363, !100, !261, !262}
!364 = distinct !{!364, !100, !261, !262}
!365 = distinct !{!365, !100, !261, !262}
!366 = !{!"branch_weights", i32 16, i32 112}
!367 = distinct !{!367, !100, !261, !262}
!368 = distinct !{!368, !100, !262, !261}
!369 = distinct !{!369, !100, !261}
!370 = distinct !{!370, !100}
!371 = distinct !{!371, !100, !261, !262}
!372 = distinct !{!372, !100, !261, !262}
!373 = distinct !{!373, !100, !262, !261}
!374 = !{!357, !14, i64 8}
!375 = !{!357, !173, i64 0}
!376 = !{!357, !15, i64 24}
!377 = distinct !{null}
!378 = !{!355, !172, i64 40}
!379 = !{!355, !5, i64 48}
!380 = !{!78, !5, i64 8}
!381 = !{!382}
!382 = distinct !{!382, !383, !"_ZN8facebook5velox7Scratch3getEv: argument 0"}
!383 = distinct !{!383, !"_ZN8facebook5velox7Scratch3getEv"}
!384 = !{!78, !15, i64 16}
!385 = !{!357, !15, i64 16}
!386 = distinct !{null}
!387 = distinct !{null}
!388 = !{!78, !5, i64 12}
!389 = !{!390}
!390 = distinct !{!390, !391, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!391 = distinct !{!391, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!392 = distinct !{!392, !100}
!393 = distinct !{null, null}
!394 = distinct !{!394, !100}
!395 = distinct !{!395, !100}
!396 = !{!397, !6, i64 15}
!397 = !{!"_ZTSN5folly3f146detail8F14ChunkIjEE", !398, i64 0, !6, i64 14, !6, i64 15, !399, i64 16}
!398 = !{!"_ZTSSt5arrayIhLm14EE", !6, i64 0}
!399 = !{!"_ZTSSt5arrayINSt15aligned_storageILm4ELm4EE4typeELm12EE", !6, i64 0}
!400 = distinct !{!400, !100}
!401 = !{!397, !6, i64 14}
!402 = !{!403, !15, i64 0}
!403 = !{!"_ZTSSt4pairIKlS_IN8facebook5velox10raw_vectorImEEiEE", !15, i64 0, !338, i64 8}
!404 = !{!405, !58, i64 16}
!405 = !{!"_ZTSSt4pairIN5folly3f146detail11F14ItemIterIPNS2_8F14ChunkIjEEEEbE", !346, i64 0, !58, i64 16}
!406 = !{!69, !69, i64 0}
!407 = !{!14, !14, i64 0}
!408 = distinct !{!408, !100}
!409 = !{!68, !68, i64 0}
!410 = distinct !{!410, !100}
!411 = distinct !{!411, !412}
!412 = !{!"llvm.loop.unroll.disable"}
!413 = !{!414, !58, i64 0}
!414 = !{!"_ZTSN5folly6detail18ScopeGuardImplBaseE", !58, i64 0}
!415 = !{!416}
!416 = distinct !{!416, !417, !"_ZN5folly6detailplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIlSt4pairIN8facebook5velox10raw_vectorImEEiEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_EENS0_14ScopeGuardImplINSt5decayIT_E4typeELb1EEENS0_16ScopeGuardOnExitEOSJ_: argument 0"}
!417 = distinct !{!417, !"_ZN5folly6detailplIZNS_3f146detail8F14TableINS3_21VectorContainerPolicyIlSt4pairIN8facebook5velox10raw_vectorImEEiEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_EENS0_14ScopeGuardImplINSt5decayIT_E4typeELb1EEENS0_16ScopeGuardOnExitEOSJ_"}
!418 = !{!419, !419, i64 0}
!419 = !{!"p1 bool", !11, i64 0}
!420 = !{!421, !421, i64 0}
!421 = !{!"p2 _ZTSN5folly3f146detail8F14ChunkIjEE", !118, i64 0}
!422 = !{!423, !423, i64 0}
!423 = !{!"p2 omnipotent char", !118, i64 0}
!424 = !{!425, !425, i64 0}
!425 = !{!"p1 _ZTSN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIlSt4pairIN8facebook5velox10raw_vectorImEEiEvvvSt17integral_constantIbLb1EEEEEE", !11, i64 0}
!426 = !{!427, !427, i64 0}
!427 = !{!"p2 _ZTSSt4pairIKlS_IN8facebook5velox10raw_vectorImEEiEE", !118, i64 0}
!428 = distinct !{!428, !100}
!429 = distinct !{!429, !100}
!430 = !{!"branch_weights", i32 1999, i32 1}
!431 = !{!"branch_weights", i32 1, i32 0}
!432 = distinct !{!432, !100}
!433 = distinct !{!433, !100}
!434 = !{!435, !425, i64 48}
!435 = !{!"_ZTSZN5folly3f146detail8F14TableINS1_21VectorContainerPolicyIlSt4pairIN8facebook5velox10raw_vectorImEEiEvvvSt17integral_constantIbLb1EEEEE10rehashImplEmmmmmEUlvE_", !419, i64 0, !172, i64 8, !421, i64 16, !172, i64 24, !423, i64 32, !172, i64 40, !425, i64 48, !172, i64 56, !427, i64 64, !172, i64 72, !172, i64 80}
!436 = !{!435, !419, i64 0}
!437 = !{!435, !172, i64 8}
!438 = !{i64 8}
!439 = !{!435, !421, i64 16}
!440 = !{!435, !172, i64 24}
!441 = !{!435, !423, i64 32}
!442 = !{!435, !172, i64 40}
!443 = !{!435, !172, i64 56}
!444 = !{!435, !172, i64 80}
!445 = !{!435, !172, i64 72}
!446 = !{!435, !427, i64 64}
!447 = !{!121, !33, i64 0}
!448 = !{!116, !120, i64 48}
!449 = !{!450, !450, i64 0}
!450 = !{!"p1 _ZTSNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKN8facebook5velox8TypeKindESt8functionIFvPNS4_15ByteInputStreamERKSt10shared_ptrIKNS4_4TypeEEbRNS4_7ScratchEEEELb0EEEEEE", !11, i64 0}
!451 = distinct !{!451, !100}
!452 = distinct !{!452, !100}
!453 = distinct !{!453, !100}
!454 = !{!455, !450, i64 0}
!455 = !{!"_ZTSNSt8__detail10_AllocNodeISaINS_10_Hash_nodeISt4pairIKN8facebook5velox8TypeKindESt8functionIFvPNS4_15ByteInputStreamERKSt10shared_ptrIKNS4_4TypeEEbRNS4_7ScratchEEEELb0EEEEEE", !450, i64 0}
!456 = !{!457, !450, i64 0}
!457 = !{!"_ZTSNSt10_HashtableIN8facebook5velox8TypeKindESt4pairIKS2_St8functionIFvPNS1_15ByteInputStreamERKSt10shared_ptrIKNS1_4TypeEEbRNS1_7ScratchEEEESaISI_ENSt8__detail10_Select1stESt8equal_toIS2_ESt4hashIS2_ENSK_18_Mod_range_hashingENSK_20_Default_ranged_hashENSK_20_Prime_rehash_policyENSK_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeE", !450, i64 0, !458, i64 8}
!458 = !{!"p1 _ZTSNSt8__detail10_Hash_nodeISt4pairIKN8facebook5velox8TypeKindESt8functionIFvPNS3_15ByteInputStreamERKSt10shared_ptrIKNS3_4TypeEEbRNS3_7ScratchEEEELb0EEE", !11, i64 0}
!459 = !{!457, !458, i64 8}
!460 = !{!121, !15, i64 8}
!461 = distinct !{!461, !100}
!462 = !{!236, !15, i64 24}
!463 = distinct !{!463, !100}
!464 = !{!465}
!465 = distinct !{!465, !466, !"_ZN8facebook5velox12errorMessageIJimEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!466 = distinct !{!466, !"_ZN8facebook5velox12errorMessageIJimEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!467 = !{!468}
!468 = distinct !{!468, !469, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKiKmELi2ELi0ELy65EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!469 = distinct !{!469, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKiKmELi2ELi0ELy65EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!470 = distinct !{!470, !100}
!471 = distinct !{!471, !100}
!472 = distinct !{!472, !100}
!473 = distinct !{!473, !100}
!474 = distinct !{null}
!475 = distinct !{!475, !100}
!476 = !{!477}
!477 = distinct !{!477, !478, !"_ZN8facebook5velox12errorMessageIJimEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!478 = distinct !{!478, !"_ZN8facebook5velox12errorMessageIJimEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!479 = !{!480}
!480 = distinct !{!480, !481, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKiKmELi2ELi0ELy65EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!481 = distinct !{!481, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKiKmELi2ELi0ELy65EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!482 = distinct !{!482, !100}
!483 = distinct !{!483, !100}
!484 = distinct !{!484, !100}
!485 = distinct !{!485, !100}
!486 = distinct !{null}
!487 = !{!488}
!488 = distinct !{!488, !489, !"_ZN8facebook5velox12errorMessageIJimEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!489 = distinct !{!489, !"_ZN8facebook5velox12errorMessageIJimEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!490 = !{!491}
!491 = distinct !{!491, !492, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKiKmELi2ELi0ELy65EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!492 = distinct !{!492, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKiKmELi2ELi0ELy65EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!493 = !{!494, !494, i64 0}
!494 = !{!"p1 short", !11, i64 0}
!495 = distinct !{!495, !100}
!496 = distinct !{!496, !100}
!497 = distinct !{!497, !100}
!498 = distinct !{!498, !100}
!499 = distinct !{null}
!500 = !{!501}
!501 = distinct !{!501, !502, !"_ZN8facebook5velox12errorMessageIJimEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!502 = distinct !{!502, !"_ZN8facebook5velox12errorMessageIJimEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!503 = !{!504}
!504 = distinct !{!504, !505, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKiKmELi2ELi0ELy65EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!505 = distinct !{!505, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKiKmELi2ELi0ELy65EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!506 = distinct !{!506, !100}
!507 = distinct !{!507, !100}
!508 = distinct !{!508, !100}
!509 = distinct !{!509, !100}
!510 = distinct !{null}
!511 = !{!512}
!512 = distinct !{!512, !513, !"_ZN8facebook5velox12errorMessageIJimEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!513 = distinct !{!513, !"_ZN8facebook5velox12errorMessageIJimEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!514 = !{!515}
!515 = distinct !{!515, !516, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKiKmELi2ELi0ELy65EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!516 = distinct !{!516, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKiKmELi2ELi0ELy65EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!517 = distinct !{!517, !100}
!518 = distinct !{!518, !100}
!519 = distinct !{!519, !100}
!520 = distinct !{!520, !100}
!521 = distinct !{null}
!522 = distinct !{null}
!523 = distinct !{!523, !100}
!524 = distinct !{!524, !100}
!525 = distinct !{!525, !100}
!526 = distinct !{!526, !100}
!527 = distinct !{!527, !100}
!528 = !{!529, !529, i64 0}
!529 = !{!"p1 __int128", !11, i64 0}
!530 = distinct !{!530, !100}
!531 = distinct !{!531, !100}
!532 = distinct !{!532, !100}
!533 = distinct !{!533, !100}
!534 = distinct !{null}
!535 = !{!536}
!536 = distinct !{!536, !537, !"_ZN8facebook5velox12errorMessageIJimEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!537 = distinct !{!537, !"_ZN8facebook5velox12errorMessageIJimEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!538 = !{!539}
!539 = distinct !{!539, !540, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKiKmELi2ELi0ELy65EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!540 = distinct !{!540, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKiKmELi2ELi0ELy65EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!541 = !{!542, !542, i64 0}
!542 = !{!"p1 float", !11, i64 0}
!543 = distinct !{!543, !100}
!544 = distinct !{!544, !100}
!545 = distinct !{!545, !100}
!546 = distinct !{!546, !100}
!547 = distinct !{null}
!548 = !{!549}
!549 = distinct !{!549, !550, !"_ZN8facebook5velox12errorMessageIJimEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!550 = distinct !{!550, !"_ZN8facebook5velox12errorMessageIJimEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!551 = !{!552}
!552 = distinct !{!552, !553, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKiKmELi2ELi0ELy65EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!553 = distinct !{!553, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKiKmELi2ELi0ELy65EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!554 = !{!555, !555, i64 0}
!555 = !{!"p1 double", !11, i64 0}
!556 = distinct !{!556, !100}
!557 = distinct !{!557, !100}
!558 = distinct !{!558, !100}
!559 = distinct !{!559, !100}
!560 = distinct !{null}
!561 = distinct !{null}
!562 = distinct !{!562, !100}
!563 = distinct !{!563, !100}
!564 = distinct !{!564, !100}
!565 = distinct !{!565, !100}
!566 = distinct !{!566, !100}
!567 = !{!57, !58, i64 21}
!568 = distinct !{null}
!569 = distinct !{!569, !100}
!570 = distinct !{!570, !100}
!571 = distinct !{!571, !100}
!572 = distinct !{!572, !100}
!573 = distinct !{!573, !100}
!574 = distinct !{null}
!575 = distinct !{!575, !100}
!576 = distinct !{!576, !100}
!577 = distinct !{!577, !100}
!578 = distinct !{!578, !100}
!579 = distinct !{!579, !100}
!580 = !{!581}
!581 = distinct !{!581, !582, !"_ZN8facebook5velox12IPPrefixType3getEv: argument 0"}
!582 = distinct !{!582, !"_ZN8facebook5velox12IPPrefixType3getEv"}
!583 = distinct !{null, null, null}
!584 = distinct !{null}
!585 = !{!586, !14, i64 8}
!586 = !{!"_ZTSSt9type_info", !14, i64 8}
!587 = !{!588}
!588 = distinct !{!588, !589, !"_ZN8facebook5velox12errorMessageIJPKcS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!589 = distinct !{!589, !"_ZN8facebook5velox12errorMessageIJPKcS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!590 = !{!591}
!591 = distinct !{!591, !592, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKPKcS5_ELi2ELi0ELy204EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!592 = distinct !{!592, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKPKcS5_ELi2ELi0ELy204EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!593 = !{!594}
!594 = distinct !{!594, !595, !"_ZN8facebook5velox12errorMessageIJPKcS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!595 = distinct !{!595, !"_ZN8facebook5velox12errorMessageIJPKcS3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!596 = !{!597}
!597 = distinct !{!597, !598, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKPKcS5_ELi2ELi0ELy204EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!598 = distinct !{!598, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKPKcS5_ELi2ELi0ELy204EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!599 = distinct !{null, null, null}
!600 = !{!601, !529, i64 184}
!601 = !{!"_ZTSN8facebook5velox10FlatVectorInEE", !602, i64 0, !170, i64 176, !529, i64 184, !608, i64 192, !613, i64 216}
!602 = !{!"_ZTSN8facebook5velox12SimpleVectorInEE", !167, i64 0, !195, i64 94, !6, i64 96, !5, i64 100, !603, i64 112}
!603 = !{!"_ZTSN8facebook5velox17SimpleVectorStatsInEE", !604, i64 0, !604, i64 32}
!604 = !{!"_ZTSSt8optionalInE", !605, i64 0}
!605 = !{!"_ZTSSt14_Optional_baseInLb1ELb1EE", !606, i64 0}
!606 = !{!"_ZTSSt17_Optional_payloadInLb1ELb1ELb1EE", !607, i64 0}
!607 = !{!"_ZTSSt22_Optional_payload_baseInE", !6, i64 0, !58, i64 16}
!608 = !{!"_ZTSSt6vectorIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE", !609, i64 0}
!609 = !{!"_ZTSSt12_Vector_baseIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE", !610, i64 0}
!610 = !{!"_ZTSNSt12_Vector_baseIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE12_Vector_implE", !611, i64 0}
!611 = !{!"_ZTSNSt12_Vector_baseIN5boost13intrusive_ptrIN8facebook5velox6BufferEEESaIS5_EE17_Vector_impl_dataE", !612, i64 0, !612, i64 8, !612, i64 16}
!612 = !{!"p1 _ZTSN5boost13intrusive_ptrIN8facebook5velox6BufferEEE", !11, i64 0}
!613 = !{!"_ZTSN5folly10F14FastSetIPKN8facebook5velox6BufferENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaIS5_EEE", !614, i64 0}
!614 = !{!"_ZTSN5folly11F14ValueSetIPKN8facebook5velox6BufferENS_23HeterogeneousAccessHashIS5_vEENS_26HeterogeneousAccessEqualToIS5_vEESaIS5_EEE", !615, i64 0}
!615 = !{!"_ZTSN5folly3f146detail11F14BasicSetINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEEE", !616, i64 0}
!616 = !{!"_ZTSN5folly3f146detail8F14TableINS1_20ValueContainerPolicyIPKN8facebook5velox6BufferEvvvvEEEE", !617, i64 0, !618, i64 8}
!617 = !{!"p1 _ZTSN5folly3f146detail8F14ChunkIPKN8facebook5velox6BufferEEE", !11, i64 0}
!618 = !{!"_ZTSN5folly3f146detail31SizeAndChunkShiftAndPackedBeginINS1_11F14ItemIterIPNS1_8F14ChunkIPKN8facebook5velox6BufferEEEEELb1EEE", !71, i64 0, !619, i64 8}
!619 = !{!"_ZTSN5folly3f146detail18PackedChunkItemPtrIPPKN8facebook5velox6BufferEEE", !15, i64 0}
!620 = distinct !{null, null, null}
!621 = !{!622, !14, i64 120}
!622 = !{!"_ZTSN8facebook5velox10FlatVectorIaEE", !623, i64 0, !170, i64 112, !14, i64 120, !608, i64 128, !613, i64 152}
!623 = !{!"_ZTSN8facebook5velox12SimpleVectorIaEE", !167, i64 0, !195, i64 94, !6, i64 96, !5, i64 100, !624, i64 104}
!624 = !{!"_ZTSN8facebook5velox17SimpleVectorStatsIaEE", !625, i64 0, !625, i64 2}
!625 = !{!"_ZTSSt8optionalIaE", !626, i64 0}
!626 = !{!"_ZTSSt14_Optional_baseIaLb1ELb1EE", !627, i64 0}
!627 = !{!"_ZTSSt17_Optional_payloadIaLb1ELb1ELb1EE", !628, i64 0}
!628 = !{!"_ZTSSt22_Optional_payload_baseIaE", !6, i64 0, !58, i64 1}
!629 = distinct !{!629, !100}
!630 = distinct !{!630, !100}
!631 = !{!632, !5, i64 0}
!632 = !{!"_ZTSN8facebook5velox10StringViewE", !5, i64 0, !6, i64 4, !6, i64 8}
!633 = !{!634}
!634 = distinct !{!634, !635, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!635 = distinct !{!635, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!636 = !{i64 21449712}
!637 = !{i64 0, i64 4, !42, i64 4, i64 8, !42}
!638 = distinct !{!638, !100}
!639 = !{!640}
!640 = distinct !{!640, !641, !"_ZSt20dynamic_pointer_castIKN8facebook5velox10OpaqueTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E: argument 0"}
!641 = distinct !{!641, !"_ZSt20dynamic_pointer_castIKN8facebook5velox10OpaqueTypeEKNS1_4TypeEESt10shared_ptrIT_ERKS6_IT0_E"}
!642 = !{!643, !644, i64 0}
!643 = !{!"_ZTSSt12__shared_ptrIKN8facebook5velox10OpaqueTypeELN9__gnu_cxx12_Lock_policyE2EE", !644, i64 0, !25, i64 8}
!644 = !{!"p1 _ZTSN8facebook5velox10OpaqueTypeE", !11, i64 0}
!645 = distinct !{!645, !100}
!646 = !{!647}
!647 = distinct !{!647, !648, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!648 = distinct !{!648, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!649 = !{!650}
!650 = distinct !{!650, !651, !"_ZNKSt8functionIFSt10shared_ptrIvERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES9_: argument 0"}
!651 = distinct !{!651, !"_ZNKSt8functionIFSt10shared_ptrIvERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEclES9_"}
!652 = !{!653, !11, i64 24}
!653 = !{!"_ZTSSt8functionIFSt10shared_ptrIvERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !85, i64 0, !11, i64 24}
!654 = distinct !{null}
!655 = !{!656, !11, i64 0}
!656 = !{!"_ZTSSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EE", !11, i64 0, !25, i64 8}
!657 = distinct !{null, null, null, null}
!658 = distinct !{ptr @_ZNSt12__shared_ptrIvLN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!659 = distinct !{!659, !100}
!660 = distinct !{ptr @_ZNSt12__shared_ptrIKN8facebook5velox10OpaqueTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!661 = distinct !{ptr @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!662 = !{!663}
!663 = distinct !{!663, !664, !"_ZN8facebook5velox15ArrayVectorBase14mutableOffsetsEi: argument 0"}
!664 = distinct !{!664, !"_ZN8facebook5velox15ArrayVectorBase14mutableOffsetsEi"}
!665 = !{!167, !173, i64 48}
!666 = !{!667}
!667 = distinct !{!667, !668, !"_ZN8facebook5velox15ArrayVectorBase12mutableSizesEi: argument 0"}
!668 = distinct !{!668, !"_ZN8facebook5velox15ArrayVectorBase12mutableSizesEi"}
!669 = distinct !{!669, !100}
!670 = distinct !{ptr @_ZNSt6vectorISt10shared_ptrIN8facebook5velox10BaseVectorEESaIS4_EED2Ev, null, null, null, null, ptr @_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!671 = !{!672}
!672 = distinct !{!672, !673, !"_ZN8facebook5velox15ArrayVectorBase14mutableOffsetsEi: argument 0"}
!673 = distinct !{!673, !"_ZN8facebook5velox15ArrayVectorBase14mutableOffsetsEi"}
!674 = !{!675}
!675 = distinct !{!675, !676, !"_ZN8facebook5velox15ArrayVectorBase12mutableSizesEi: argument 0"}
!676 = distinct !{!676, !"_ZN8facebook5velox15ArrayVectorBase12mutableSizesEi"}
!677 = distinct !{!677, !100}
!678 = !{!167, !172, i64 40}
!679 = !{!680}
!680 = distinct !{!680, !681, !"_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb: argument 0"}
!681 = distinct !{!681, !"_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb"}
!682 = !{!683}
!683 = distinct !{!683, !684, !"_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb: argument 0"}
!684 = distinct !{!684, !"_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb"}
!685 = !{!686}
!686 = distinct !{!686, !687, !"_ZN8facebook5velox12errorMessageIJimEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!687 = distinct !{!687, !"_ZN8facebook5velox12errorMessageIJimEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!688 = !{!689}
!689 = distinct !{!689, !690, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKiKmELi2ELi0ELy65EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!690 = distinct !{!690, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKiKmELi2ELi0ELy65EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!691 = !{!692, !692, i64 0}
!692 = !{!"p1 _ZTSN8facebook5velox12UnknownValueE", !11, i64 0}
!693 = distinct !{!693, !100}
!694 = distinct !{!694, !100}
!695 = distinct !{!695, !100, !261, !262}
!696 = !{!697}
!697 = distinct !{!697, !698, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!698 = distinct !{!698, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!699 = distinct !{!699, !100, !262, !261}
!700 = !{!701}
!701 = distinct !{!701, !702, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!702 = distinct !{!702, !"_ZN8facebook5velox12errorMessageIJiiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!703 = distinct !{null}
!704 = distinct !{!704, !100}
!705 = distinct !{!705, !100}
!706 = !{!273, !120, i64 16}
!707 = distinct !{!707, !100}
!708 = distinct !{!708, !100, !261, !262}
!709 = distinct !{!709, !100, !261, !262}
!710 = distinct !{!710, !100, !262, !261}
!711 = distinct !{!711, !100, !261, !262}
!712 = distinct !{!712, !100, !261, !262}
!713 = distinct !{!713, !100, !262, !261}
!714 = distinct !{!714, !100, !261, !262}
!715 = distinct !{!715, !100, !261, !262}
!716 = distinct !{!716, !100, !261, !262}
!717 = distinct !{!717, !100, !261, !262}
!718 = distinct !{!718, !100, !262, !261}
!719 = distinct !{!719, !100, !261}
!720 = !{!721}
!721 = distinct !{!721, !722, !"_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb: argument 0"}
!722 = distinct !{!722, !"_ZN8facebook5velox13AlignedBuffer8allocateIbEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb"}
!723 = !{!724, !419, i64 120}
!724 = !{!"_ZTSN8facebook5velox10FlatVectorIbEE", !725, i64 0, !170, i64 112, !419, i64 120, !608, i64 128, !613, i64 152}
!725 = !{!"_ZTSN8facebook5velox12SimpleVectorIbEE", !167, i64 0, !195, i64 94, !6, i64 96, !5, i64 100, !726, i64 104}
!726 = !{!"_ZTSN8facebook5velox17SimpleVectorStatsIbEE", !195, i64 0, !195, i64 2}
!727 = distinct !{null, null, null, null, null, null, null, null}
!728 = distinct !{!728, !100}
!729 = distinct !{!729, !100}
!730 = distinct !{!730, !100}
!731 = distinct !{null, null, null}
!732 = distinct !{!732, !100}
!733 = distinct !{null, null, null, null, null, null, null}
!734 = distinct !{!734, !100}
!735 = distinct !{null, null, null, null, null, null, null}
!736 = distinct !{!736, !100}
!737 = distinct !{!737, !100}
!738 = distinct !{!738, !100}
!739 = distinct !{null, null}
!740 = distinct !{!740, !100}
!741 = distinct !{!741, !100}
!742 = !{!743, !743, i64 0}
!743 = !{!"short", !6, i64 0}
!744 = distinct !{!744, !100}
!745 = distinct !{!745, !100}
!746 = !{!236, !15, i64 32}
!747 = !{!748}
!748 = distinct !{!748, !749, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!749 = distinct !{!749, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!750 = !{!751}
!751 = distinct !{!751, !752, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKPKcKmS6_ELi3ELi0ELy1100EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!752 = distinct !{!752, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKPKcKmS6_ELi3ELi0ELy1100EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!753 = !{!754}
!754 = distinct !{!754, !755, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!755 = distinct !{!755, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!756 = !{!757}
!757 = distinct !{!757, !758, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKPKcKmS6_ELi3ELi0ELy1100EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!758 = distinct !{!758, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKPKcKmS6_ELi3ELi0ELy1100EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!759 = !{!238, !5, i64 0}
!760 = !{!761}
!761 = distinct !{!761, !762, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!762 = distinct !{!762, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!763 = !{!764}
!764 = distinct !{!764, !765, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!765 = distinct !{!765, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!766 = !{!767}
!767 = distinct !{!767, !768, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!768 = distinct !{!768, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!769 = !{!770}
!770 = distinct !{!770, !771, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!771 = distinct !{!771, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!772 = !{!773}
!773 = distinct !{!773, !774, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!774 = distinct !{!774, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!775 = !{!776}
!776 = distinct !{!776, !777, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKPKcKmS6_ELi3ELi0ELy1100EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!777 = distinct !{!777, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKPKcKmS6_ELi3ELi0ELy1100EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!778 = !{!779}
!779 = distinct !{!779, !780, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!780 = distinct !{!780, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!781 = !{!782}
!782 = distinct !{!782, !783, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKPKcKmS6_ELi3ELi0ELy1100EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!783 = distinct !{!783, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKPKcKmS6_ELi3ELi0ELy1100EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!784 = !{!785}
!785 = distinct !{!785, !786, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!786 = distinct !{!786, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!787 = !{!788}
!788 = distinct !{!788, !789, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!789 = distinct !{!789, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!790 = !{!791}
!791 = distinct !{!791, !792, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!792 = distinct !{!792, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!793 = !{!794}
!794 = distinct !{!794, !795, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKPKcKmS6_ELi3ELi0ELy1100EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!795 = distinct !{!795, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKPKcKmS6_ELi3ELi0ELy1100EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!796 = !{!797}
!797 = distinct !{!797, !798, !"_ZN8facebook5velox12errorMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!798 = distinct !{!798, !"_ZN8facebook5velox12errorMessageIJmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!799 = !{!800}
!800 = distinct !{!800, !801, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!801 = distinct !{!801, !"_ZN8facebook5velox12errorMessageIJPKcmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!802 = !{!803}
!803 = distinct !{!803, !804, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKPKcKmS6_ELi3ELi0ELy1100EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!804 = distinct !{!804, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKPKcKmS6_ELi3ELi0ELy1100EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!805 = !{!806}
!806 = distinct !{!806, !807, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!807 = distinct !{!807, !"_ZN8facebook5velox12errorMessageIJmmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!808 = !{!809}
!809 = distinct !{!809, !810, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!810 = distinct !{!810, !"_ZN3fmt3v1116make_format_argsINS0_7contextEJKmS3_ELi2ELi0ELy68EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!811 = !{!239, !239, i64 0}
!812 = !{!813}
!813 = distinct !{!813, !814, !"_ZN8facebook5velox12errorMessageIJNS0_6Buffer4TypeES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_: argument 0"}
!814 = distinct !{!814, !"_ZN8facebook5velox12errorMessageIJNS0_6Buffer4TypeES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN3fmt3v1117basic_string_viewIcEEDpRKT_"}
!815 = !{!816, !5, i64 0}
!816 = !{!"_ZTSN3fmt3v1111basic_specsE", !5, i64 0, !6, i64 4}
!817 = !{!818, !5, i64 12}
!818 = !{!"_ZTSN3fmt3v1112format_specsE", !816, i64 0, !5, i64 8, !5, i64 12}
!819 = !{!820, !14, i64 0}
!820 = !{!"_ZTSN3fmt3v1117basic_string_viewIcEE", !14, i64 0, !15, i64 8}
!821 = !{!820, !15, i64 8}
!822 = !{!823, !823, i64 0}
!823 = !{!"p1 _ZTSN3fmt3v116detail6bufferIcEE", !11, i64 0}
!824 = distinct !{!824, !100}
!825 = !{!826, !826, i64 0}
!826 = !{!"_ZTSN3fmt3v1111arg_id_kindE", !6, i64 0}
!827 = distinct !{!827, !100}
!828 = !{!829, !5, i64 16}
!829 = !{!"_ZTSN3fmt3v1113parse_contextIcEE", !820, i64 0, !5, i64 16}
!830 = !{!831, !831, i64 0}
!831 = !{!"p1 _ZTSN3fmt3v1113parse_contextIcEE", !11, i64 0}
!832 = !{!833, !833, i64 0}
!833 = !{!"p1 _ZTSN3fmt3v116detail7arg_refIcEE", !11, i64 0}
!834 = !{!835, !833, i64 8}
!835 = !{!"_ZTSN3fmt3v116detail20dynamic_spec_handlerIcEE", !831, i64 0, !833, i64 8, !11, i64 16}
!836 = !{!835, !11, i64 16}
!837 = !{i64 4}
!838 = !{!835, !831, i64 0}
!839 = distinct !{!839, !100}
!840 = !{!841, !14, i64 0}
!841 = !{!"_ZTSZN3fmt3v116detail16code_point_indexENS0_17basic_string_viewIcEEmEUljS3_E_", !14, i64 0, !172, i64 8, !172, i64 16}
!842 = !{!843, !14, i64 0}
!843 = !{!"_ZTSN3fmt3v116detail6bufferIcEE", !14, i64 0, !15, i64 8, !15, i64 16, !11, i64 24}
!844 = !{!843, !15, i64 8}
!845 = !{!843, !15, i64 16}
!846 = !{!843, !11, i64 24}
!847 = !{!848, !15, i64 288}
!848 = !{!"_ZTSN3fmt3v116detail15counting_bufferIcEE", !843, i64 0, !6, i64 32, !15, i64 288}
!849 = !{!818, !5, i64 8}
!850 = distinct !{!850, !100}
!851 = distinct !{!851, !100, !261, !262}
!852 = distinct !{!852, !100, !261, !262}
!853 = distinct !{!853, !412}
!854 = distinct !{!854, !100, !261}
!855 = distinct !{!855, !100}
!856 = !{!857, !58, i64 0}
!857 = !{!"_ZTSZN3fmt3v116detail5writeIcNS0_14basic_appenderIcEEEET0_S5_NS0_17basic_string_viewIT_EERKNS0_12format_specsEEUlS4_E_", !58, i64 0, !820, i64 8, !14, i64 24, !15, i64 32}
!858 = !{!857, !14, i64 24}
!859 = !{!857, !15, i64 32}
!860 = distinct !{null, null, null}
!861 = !{!862, !14, i64 0}
!862 = !{!"_ZTSN3fmt3v116detail18find_escape_resultIcEE", !14, i64 0, !14, i64 8, !5, i64 16}
!863 = !{!864}
!864 = distinct !{!864, !865, !"_ZN3fmt3v116detail11find_escapeEPKcS3_: argument 0"}
!865 = distinct !{!865, !"_ZN3fmt3v116detail11find_escapeEPKcS3_"}
!866 = !{!862, !14, i64 8}
!867 = !{!862, !5, i64 16}
!868 = distinct !{null, null, null}
!869 = distinct !{!869, !100, !261, !262}
!870 = distinct !{!870, !100, !261, !262}
!871 = distinct !{!871, !412}
!872 = distinct !{!872, !100}
!873 = distinct !{!873, !100, !261}
!874 = distinct !{!874, !100}
!875 = distinct !{null, null}
!876 = distinct !{null, null, null, null}
!877 = distinct !{!877, !100, !261, !262}
!878 = distinct !{!878, !100, !261, !262}
!879 = distinct !{!879, !412}
!880 = distinct !{!880, !100, !261}
!881 = distinct !{!881, !100}
!882 = distinct !{!882, !100, !261, !262}
!883 = distinct !{!883, !100, !261, !262}
!884 = distinct !{!884, !412}
!885 = distinct !{!885, !100, !261}
!886 = distinct !{!886, !100}
!887 = distinct !{!887, !100}
!888 = distinct !{!888, !100, !261, !262}
!889 = distinct !{!889, !100, !261, !262}
!890 = distinct !{!890, !412}
!891 = distinct !{!891, !100, !261}
!892 = distinct !{!892, !100}
!893 = distinct !{!893, !100}
!894 = distinct !{null, null, null}
!895 = !{!896, !172, i64 0}
!896 = !{!"_ZTSZN3fmt3v116detail13compute_widthENS0_17basic_string_viewIcEEE17count_code_points", !172, i64 0}
!897 = distinct !{null, null, null, null}
!898 = distinct !{!898, !100}
!899 = distinct !{!899, !100, !261, !262}
!900 = distinct !{!900, !100, !261, !262}
!901 = distinct !{!901, !412}
!902 = distinct !{!902, !100, !261}
!903 = distinct !{!903, !100}
!904 = !{!905, !906, i64 0}
!905 = !{!"_ZTSN3fmt3v1117basic_format_argsINS0_7contextEEE", !906, i64 0, !6, i64 8}
!906 = !{!"long long", !6, i64 0}
!907 = !{!908, !910}
!908 = distinct !{!908, !909, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi: argument 0"}
!909 = distinct !{!909, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getEi"}
!910 = distinct !{!910, !911, !"_ZNK3fmt3v117context3argEi: argument 0"}
!911 = distinct !{!911, !"_ZNK3fmt3v117context3argEi"}
!912 = !{!913, !915}
!913 = distinct !{!913, !914, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getIcEENS0_16basic_format_argIS2_EENS0_17basic_string_viewIT_EE: argument 0"}
!914 = distinct !{!914, !"_ZNK3fmt3v1117basic_format_argsINS0_7contextEE3getIcEENS0_16basic_format_argIS2_EENS0_17basic_string_viewIT_EE"}
!915 = distinct !{!915, !916, !"_ZNK3fmt3v117context3argENS0_17basic_string_viewIcEE: argument 0"}
!916 = distinct !{!916, !"_ZNK3fmt3v117context3argENS0_17basic_string_viewIcEE"}
!917 = !{!918, !15, i64 8}
!918 = !{!"_ZTSN3fmt3v116detail15named_arg_valueIcEE", !919, i64 0, !15, i64 8}
!919 = !{!"p1 _ZTSN3fmt3v116detail14named_arg_infoIcEE", !11, i64 0}
end_hunk_2
