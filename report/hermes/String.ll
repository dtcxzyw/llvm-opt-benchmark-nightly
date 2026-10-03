Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/String?download=true
inline.NumInlined: 2420
inline.NumDeleted: 745
begin_hunk_0_@_ZN6hermes2vm13StringBuilder15appendCharacterEDs:bb.a

bb.b:                                             ; preds = %bb.a
  %i.h = icmp ult i16 %1, 128
  br i1 %i.h, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.i = trunc nuw nsw i16 %1 to i8
  %i.j = icmp ugt i32 %i.e, 150994943
  br i1 %i.j, label %bb.d, label %bb.e, !prof !8

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !55
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit

bb.e:                                             ; preds = %bb.c
  %.mask.i.i.i.i.i.i.i.i = and i32 %i.e, 234881024
  %i.m = icmp eq i32 %.mask.i.i.i.i.i.i.i.i, 134217728
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit

bb.g:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit

_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit: ; preds = %bb.d, %bb.f, %bb.g
  %.0.i = phi ptr [ %i.l, %bb.d ], [ %i.n, %bb.f ], [ %i.o, %bb.g ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !77   ; 2 uses
  %i.r = add i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 8, !tbaa !77
  %i.s = zext i32 %i.q to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i, i64 %i.s
  store i8 %i.i, ptr %i.t, align 1, !tbaa !38
  br label %bb.n

bb.h:                                             ; preds = %bb.b
  call void @_ZN6hermes2vm13StringBuilder14appendUTF16RefEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nonnull %i.a, i64 1)
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  %i.u = icmp ugt i32 %i.e, 150994943
  br i1 %i.u, label %bb.j, label %bb.k, !prof !8

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !59
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit

bb.k:                                             ; preds = %bb.i
  %.mask.i.i.i.i.i.i.i.i3 = and i32 %i.e, 251658240
  %i.x = icmp eq i32 %.mask.i.i.i.i.i.i.i.i3, 117440512
  br i1 %i.x, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit

bb.m:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit

_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit: ; preds = %bb.j, %bb.l, %bb.m
  %.0.i4 = phi ptr [ %i.w, %bb.j ], [ %i.y, %bb.l ], [ %i.z, %bb.m ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !77 ; 2 uses
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 8, !tbaa !77
  %i.ad = zext i32 %i.ab to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %.0.i4, i64 %i.ad
  store i16 %1, ptr %i.ae, align 2, !tbaa !61
  br label %bb.n

bb.n:                                             ; preds = %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit, %bb.h, %_ZN6hermes2vm15StringPrimitive26castToUTF16PointerForWriteEv.exit
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6hermes2vm7GCScopeD1Ev(ptr noundef nonnull align 8 dereferenceable(212)) unnamed_addr #3

declare { i32, i64 } @_ZN6hermes2vm12toNumber_RJSERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm19toIntegerOrInfinityERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN6hermes2vm11isSameValueENS0_11HermesValueES1_(i64, i64) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm7Runtime15raiseRangeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm15StringPrimitive15createEfficientERNS0_7RuntimeEN4llvh8ArrayRefIDsEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm8toObjectERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare { i32, i64 } @_ZN6hermes2vm8toLengthERNS0_7RuntimeENS0_6HandleINS0_11HermesValueEEE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

declare void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

declare { i32, i64 } @_ZN6hermes2vm15StringPrimitive5sliceERNS0_7RuntimeENS0_6HandleIS1_EEmm(ptr noundef nonnull align 8 dereferenceable(9816), ptr, i64 noundef, i64 noundef) local_unnamed_addr #2

declare noundef i32 @_ZN6hermes2vm7Runtime14raiseTypeErrorERKNS0_11TwineChar16E(ptr noundef nonnull align 8 dereferenceable(9816), ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #2

declare { ptr, i64 } @_ZN6hermes2vm15StringPrimitive16createStringViewERNS0_7RuntimeENS0_6HandleIS1_EE(ptr noundef nonnull align 8 dereferenceable(9816), ptr) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { i32, i64 } @_ZN6hermes2vmL11convertCaseERNS0_7RuntimeENS0_6HandleINS0_15StringPrimitiveEEEbb(ptr noundef nonnull align 8 dereferenceable(9816) %0, ptr nofree readonly captures(none) %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string.209", align 8 ; 6 uses
  %i.a = alloca i16, align 2                      ; 4 uses
  %i.b = alloca i16, align 2                      ; 4 uses
  %5 = alloca %"class.hermes::vm::SmallXString", align 8 ; 11 uses
  %6 = alloca %"class.hermes::vm::CallResult.161", align 8 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.c, ptr %5, align 8, !tbaa !42
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  store i32 0, ptr %i.d, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 12
  store i32 32, ptr %i.e, align 4, !tbaa !43
  %.sroa.0.0.copyload.i.i = load i64, ptr %1, align 8, !tbaa !26
  %i.f = and i64 %.sroa.0.0.copyload.i.i, 281474976710655
  %i.g = inttoptr i64 %i.f to ptr
  call void @_ZNK6hermes2vm15StringPrimitive17appendUTF16StringERN4llvh15SmallVectorImplIDsEE(ptr noundef nonnull align 4 dereferenceable(8) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  %i.h = load ptr, ptr %5, align 8, !tbaa !42     ; 15 uses
  %i.i = load i32, ptr %i.d, align 8, !tbaa !44   ; 3 uses
  %i.j = zext i32 %i.i to i64                     ; 2 uses
  br i1 %3, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.idx136 = shl nuw nsw i64 %i.j, 1              ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx136 ; 2 uses
  %.not78123 = icmp eq i32 %i.i, 0                ; 2 uses
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  br i1 %.not78123, label %.thread, label %iter.check209

iter.check209:                                    ; preds = %bb.c
  %i.l = add nsw i64 %.idx136, -2                 ; 3 uses
  %i.m = lshr exact i64 %i.l, 1
  %i.n = add nuw i64 %i.m, 1                      ; 5 uses
  %min.iters.check187 = icmp ult i64 %i.l, 6
  br i1 %min.iters.check187, label %.lr.ph127.preheader, label %vector.main.loop.iter.check188

vector.main.loop.iter.check188:                   ; preds = %iter.check209
  %min.iters.check189 = icmp ult i64 %i.l, 30
  br i1 %min.iters.check189, label %vec.epilog.ph213, label %vector.ph190

vector.ph190:                                     ; preds = %vector.main.loop.iter.check188
  %i.o = and i64 %i.n, 12
  %n.vec191 = and i64 %i.n, -16                   ; 4 uses
  %i.p = shl i64 %n.vec191, 1
  %i.q = getelementptr i8, ptr %i.h, i64 %i.p
  br label %vector.body192

vector.body192:                                   ; preds = %vector.ph190, %vector.body192
  %index193 = phi i64 [ 0, %vector.ph190 ], [ %index.next201, %vector.body192 ] ; 2 uses
  %vec.phi194 = phi <8 x i16> [ zeroinitializer, %vector.ph190 ], [ %i.t, %vector.body192 ]
  %vec.phi195 = phi <8 x i16> [ zeroinitializer, %vector.ph190 ], [ %i.u, %vector.body192 ]
  %vec.phi196 = phi <8 x i1> [ zeroinitializer, %vector.ph190 ], [ %i.z, %vector.body192 ]
  %vec.phi197 = phi <8 x i1> [ zeroinitializer, %vector.ph190 ], [ %i.aa, %vector.body192 ]
  %i.r = shl i64 %index193, 1
  %next.gep198 = getelementptr i8, ptr %i.h, i64 %i.r ; 2 uses
  %i.s = getelementptr i8, ptr %next.gep198, i64 16
  %wide.load199 = load <8 x i16>, ptr %next.gep198, align 2, !tbaa !61 ; 2 uses
  %wide.load200 = load <8 x i16>, ptr %i.s, align 2, !tbaa !61 ; 2 uses
  %i.t = or <8 x i16> %wide.load199, %vec.phi194  ; 2 uses
  %i.u = or <8 x i16> %wide.load200, %vec.phi195  ; 2 uses
  %i.v = add <8 x i16> %wide.load199, splat (i16 -97)
  %i.w = icmp ult <8 x i16> %i.v, splat (i16 26)
  %i.x = add <8 x i16> %wide.load200, splat (i16 -97)
  %i.y = icmp ult <8 x i16> %i.x, splat (i16 26)
  %i.z = or <8 x i1> %vec.phi196, %i.w            ; 2 uses
  %i.aa = or <8 x i1> %vec.phi197, %i.y           ; 2 uses
  %index.next201 = add nuw i64 %index193, 16      ; 2 uses
  %i.ab = icmp eq i64 %index.next201, %n.vec191
  br i1 %i.ab, label %middle.block202, label %vector.body192, !llvm.loop !315

middle.block202:                                  ; preds = %vector.body192
  %bin.rdx203 = or <8 x i16> %i.u, %i.t
  %i.ac = call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %bin.rdx203) ; 3 uses
  %bin.rdx204 = or <8 x i1> %i.aa, %i.z
  %bin.rdx204.fr = freeze <8 x i1> %bin.rdx204
  %i.ad = bitcast <8 x i1> %bin.rdx204.fr to i8
  %.not232 = icmp eq i8 %i.ad, 0                  ; 3 uses
  %cmp.n205 = icmp eq i64 %i.n, %n.vec191
  br i1 %cmp.n205, label %.loopexit116, label %vec.epilog.iter.check211

vec.epilog.iter.check211:                         ; preds = %middle.block202
  %min.epilog.iters.check212 = icmp eq i64 %i.o, 0
  br i1 %min.epilog.iters.check212, label %.lr.ph127.preheader, label %vec.epilog.ph213, !prof !80

vec.epilog.ph213:                                 ; preds = %vector.main.loop.iter.check188, %vec.epilog.iter.check211
  %vec.epilog.resume.val206 = phi i64 [ %n.vec191, %vec.epilog.iter.check211 ], [ 0, %vector.main.loop.iter.check188 ]
  %bc.merge.rdx207 = phi i16 [ %i.ac, %vec.epilog.iter.check211 ], [ 0, %vector.main.loop.iter.check188 ]
  %bc.merge.rdx208 = phi i1 [ %.not232, %vec.epilog.iter.check211 ], [ true, %vector.main.loop.iter.check188 ]
  %n.vec214 = and i64 %i.n, -4                    ; 3 uses
  %7 = xor i1 %bc.merge.rdx208, true
  %broadcast.splatinsert215 = insertelement <4 x i1> poison, i1 %7, i64 0
  %broadcast.splat216 = shufflevector <4 x i1> %broadcast.splatinsert215, <4 x i1> poison, <4 x i32> zeroinitializer
  %8 = shl i64 %n.vec214, 1
  %9 = getelementptr i8, ptr %i.h, i64 %8
  %10 = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx207, i64 0
  br label %vec.epilog.vector.body217

vec.epilog.vector.body217:                        ; preds = %vec.epilog.vector.body217, %vec.epilog.ph213
  %index218 = phi i64 [ %vec.epilog.resume.val206, %vec.epilog.ph213 ], [ %index.next223, %vec.epilog.vector.body217 ] ; 2 uses
  %vec.phi219 = phi <4 x i16> [ %10, %vec.epilog.ph213 ], [ %i.af, %vec.epilog.vector.body217 ]
  %vec.phi220 = phi <4 x i1> [ %broadcast.splat216, %vec.epilog.ph213 ], [ %.fr233, %vec.epilog.vector.body217 ]
  %i.ae = shl i64 %index218, 1
  %next.gep221 = getelementptr i8, ptr %i.h, i64 %i.ae
  %wide.load222 = load <4 x i16>, ptr %next.gep221, align 2, !tbaa !61 ; 2 uses
  %i.af = or <4 x i16> %wide.load222, %vec.phi219 ; 2 uses
  %i.ag = add <4 x i16> %wide.load222, splat (i16 -97)
  %i.ah = icmp ult <4 x i16> %i.ag, splat (i16 26)
  %i.ai = or <4 x i1> %vec.phi220, %i.ah
  %.fr233 = freeze <4 x i1> %i.ai                 ; 2 uses
  %index.next223 = add nuw i64 %index218, 4       ; 2 uses
  %i.aj = icmp eq i64 %index.next223, %n.vec214
  br i1 %i.aj, label %vec.epilog.middle.block224, label %vec.epilog.vector.body217, !llvm.loop !316

vec.epilog.middle.block224:                       ; preds = %vec.epilog.vector.body217
  %i.ak = call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %i.af) ; 2 uses
  %i.al = bitcast <4 x i1> %.fr233 to i4
  %.not234 = icmp eq i4 %i.al, 0                  ; 2 uses
  %cmp.n225 = icmp eq i64 %i.n, %n.vec214
  br i1 %cmp.n225, label %.loopexit116, label %.lr.ph127.preheader

.lr.ph127.preheader:                              ; preds = %iter.check209, %vec.epilog.iter.check211, %vec.epilog.middle.block224
  %.0126.ph = phi i16 [ 0, %iter.check209 ], [ %i.ac, %vec.epilog.iter.check211 ], [ %i.ak, %vec.epilog.middle.block224 ]
  %.068125.ph = phi i1 [ true, %iter.check209 ], [ %.not232, %vec.epilog.iter.check211 ], [ %.not234, %vec.epilog.middle.block224 ]
  %.072124.ph = phi ptr [ %i.h, %iter.check209 ], [ %i.q, %vec.epilog.iter.check211 ], [ %9, %vec.epilog.middle.block224 ]
  br label %.lr.ph127

.lr.ph127:                                        ; preds = %.lr.ph127.preheader, %.lr.ph127
  %.0126 = phi i16 [ %i.an, %.lr.ph127 ], [ %.0126.ph, %.lr.ph127.preheader ]
  %.068125 = phi i1 [ %i.aq, %.lr.ph127 ], [ %.068125.ph, %.lr.ph127.preheader ]
  %.072124 = phi ptr [ %i.ar, %.lr.ph127 ], [ %.072124.ph, %.lr.ph127.preheader ] ; 2 uses
  %i.am = load i16, ptr %.072124, align 2, !tbaa !61 ; 2 uses
  %i.an = or i16 %i.am, %.0126                    ; 2 uses
  %i.ao = add i16 %i.am, -123
  %i.ap = icmp ult i16 %i.ao, -26
  %i.aq = select i1 %i.ap, i1 %.068125, i1 false  ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.072124, i64 2 ; 2 uses
  %.not78 = icmp eq ptr %i.ar, %i.k
  br i1 %.not78, label %.loopexit116, label %.lr.ph127, !llvm.loop !317

bb.d:                                             ; preds = %bb.b
  br i1 %.not78123, label %.thread, label %iter.check

iter.check:                                       ; preds = %bb.d
  %i.as = add nsw i64 %.idx136, -2                ; 3 uses
  %i.at = lshr exact i64 %i.as, 1
  %i.au = add nuw i64 %i.at, 1                    ; 5 uses
  %min.iters.check = icmp ult i64 %i.as, 6
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check169 = icmp ult i64 %i.as, 30
  br i1 %min.iters.check169, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.av = and i64 %i.au, 12
  %n.vec = and i64 %i.au, -16                     ; 4 uses
  %i.aw = shl i64 %n.vec, 1
  %i.ax = getelementptr i8, ptr %i.h, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.ba, %vector.body ]
  %vec.phi170 = phi <8 x i16> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %vec.phi171 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.bg, %vector.body ]
  %vec.phi172 = phi <8 x i1> [ zeroinitializer, %vector.ph ], [ %i.bh, %vector.body ]
  %i.ay = shl i64 %index, 1
  %next.gep = getelementptr i8, ptr %i.h, i64 %i.ay ; 2 uses
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <8 x i16>, ptr %next.gep, align 2, !tbaa !61 ; 2 uses
  %wide.load173 = load <8 x i16>, ptr %i.az, align 2, !tbaa !61 ; 2 uses
  %i.ba = or <8 x i16> %wide.load, %vec.phi       ; 2 uses
  %i.bb = or <8 x i16> %wide.load173, %vec.phi170 ; 2 uses
  %i.bc = add <8 x i16> %wide.load, splat (i16 -65)
  %i.bd = icmp ult <8 x i16> %i.bc, splat (i16 26)
  %i.be = add <8 x i16> %wide.load173, splat (i16 -65)
  %i.bf = icmp ult <8 x i16> %i.be, splat (i16 26)
  %i.bg = or <8 x i1> %vec.phi171, %i.bd          ; 2 uses
  %i.bh = or <8 x i1> %vec.phi172, %i.bf          ; 2 uses
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !318

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <8 x i16> %i.bb, %i.ba
  %i.bj = call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %bin.rdx) ; 3 uses
  %bin.rdx174 = or <8 x i1> %i.bh, %i.bg
  %bin.rdx174.fr = freeze <8 x i1> %bin.rdx174
  %i.bk = bitcast <8 x i1> %bin.rdx174.fr to i8
  %.not229 = icmp eq i8 %i.bk, 0                  ; 3 uses
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %.loopexit116, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.av, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !80

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i16 [ %i.bj, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx175 = phi i1 [ %.not229, %vec.epilog.iter.check ], [ true, %vector.main.loop.iter.check ]
  %n.vec176 = and i64 %i.au, -4                   ; 3 uses
  %11 = xor i1 %bc.merge.rdx175, true
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %11, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  %12 = shl i64 %n.vec176, 1
  %13 = getelementptr i8, ptr %i.h, i64 %12
  %14 = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index177 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next182, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi178 = phi <4 x i16> [ %14, %vec.epilog.ph ], [ %i.bm, %vec.epilog.vector.body ]
  %vec.phi179 = phi <4 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %.fr230, %vec.epilog.vector.body ]
  %i.bl = shl i64 %index177, 1
  %next.gep180 = getelementptr i8, ptr %i.h, i64 %i.bl
  %wide.load181 = load <4 x i16>, ptr %next.gep180, align 2, !tbaa !61 ; 2 uses
  %i.bm = or <4 x i16> %wide.load181, %vec.phi178 ; 2 uses
  %i.bn = add <4 x i16> %wide.load181, splat (i16 -65)
  %i.bo = icmp ult <4 x i16> %i.bn, splat (i16 26)
  %i.bp = or <4 x i1> %vec.phi179, %i.bo
  %.fr230 = freeze <4 x i1> %i.bp                 ; 2 uses
  %index.next182 = add nuw i64 %index177, 4       ; 2 uses
  %i.bq = icmp eq i64 %index.next182, %n.vec176
  br i1 %i.bq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !319

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.br = call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %i.bm) ; 2 uses
  %i.bs = bitcast <4 x i1> %.fr230 to i4
  %.not231 = icmp eq i4 %i.bs, 0                  ; 2 uses
  %cmp.n183 = icmp eq i64 %i.au, %n.vec176
  br i1 %cmp.n183, label %.loopexit116, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.1121.ph = phi i16 [ 0, %iter.check ], [ %i.bj, %vec.epilog.iter.check ], [ %i.br, %vec.epilog.middle.block ]
  %.169120.ph = phi i1 [ true, %iter.check ], [ %.not229, %vec.epilog.iter.check ], [ %.not231, %vec.epilog.middle.block ]
  %.074119.ph = phi ptr [ %i.h, %iter.check ], [ %i.ax, %vec.epilog.iter.check ], [ %13, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.1121 = phi i16 [ %i.bu, %.lr.ph ], [ %.1121.ph, %.lr.ph.preheader ]
  %.169120 = phi i1 [ %i.bx, %.lr.ph ], [ %.169120.ph, %.lr.ph.preheader ]
  %.074119 = phi ptr [ %i.by, %.lr.ph ], [ %.074119.ph, %.lr.ph.preheader ] ; 2 uses
  %i.bt = load i16, ptr %.074119, align 2, !tbaa !61 ; 2 uses
  %i.bu = or i16 %i.bt, %.1121                    ; 2 uses
  %i.bv = add i16 %i.bt, -91
  %i.bw = icmp ult i16 %i.bv, -26
  %i.bx = select i1 %i.bw, i1 %.169120, i1 false  ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.074119, i64 2 ; 2 uses
  %.not = icmp eq ptr %i.by, %i.k
  br i1 %.not, label %.loopexit116, label %.lr.ph, !llvm.loop !320

.loopexit116:                                     ; preds = %.lr.ph, %.lr.ph127, %middle.block, %vec.epilog.middle.block, %middle.block202, %vec.epilog.middle.block224
  %.270.shrunk = phi i1 [ %i.aq, %.lr.ph127 ], [ %.not234, %vec.epilog.middle.block224 ], [ %.not232, %middle.block202 ], [ %.not231, %vec.epilog.middle.block ], [ %.not229, %middle.block ], [ %i.bx, %.lr.ph ]
  %.2 = phi i16 [ %i.an, %.lr.ph127 ], [ %i.ak, %vec.epilog.middle.block224 ], [ %i.ac, %middle.block202 ], [ %i.br, %vec.epilog.middle.block ], [ %i.bj, %middle.block ], [ %i.bu, %.lr.ph ]
  %i.bz = icmp ugt i16 %.2, 127
  br i1 %i.bz, label %.critedge, label %bb.e

bb.e:                                             ; preds = %.loopexit116
  br i1 %.270.shrunk, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e
  %.sroa.0.0.copyload.i = load i64, ptr %1, align 8, !tbaa !26
  br label %bb.aq

bb.f:                                             ; preds = %bb.e
  %i.ca = icmp eq i32 %i.i, 1
  br i1 %i.ca, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.cb = load i16, ptr %i.h, align 2, !tbaa !61  ; 4 uses
  br i1 %2, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cc = add i16 %i.cb, -97
  %i.cd = icmp ult i16 %i.cc, 26
  %i.ce = select i1 %i.cd, i16 -33, i16 -1
  %i.cf = and i16 %i.ce, %i.cb
  %i.cg = call ptr @_ZN6hermes2vm7Runtime18getCharacterStringEDs(ptr noundef nonnull align 8 dereferenceable(9816) %0, i16 noundef zeroext %i.cf) #13
  %.sroa.0.0.copyload.i81 = load i64, ptr %i.cg, align 8, !tbaa !26
  br label %bb.aq

bb.i:                                             ; preds = %bb.g
  %i.ch = add i16 %i.cb, -65
  %i.ci = icmp ult i16 %i.ch, 26
  %i.cj = select i1 %i.ci, i16 32, i16 0
  %i.ck = or i16 %i.cj, %i.cb
  %i.cl = call ptr @_ZN6hermes2vm7Runtime18getCharacterStringEDs(ptr noundef nonnull align 8 dereferenceable(9816) %0, i16 noundef zeroext %i.ck) #13
  %.sroa.0.0.copyload.i82 = load i64, ptr %i.cl, align 8, !tbaa !26
  br label %bb.aq

bb.j:                                             ; preds = %bb.f
  %.sroa.0.0.copyload.i.i83 = load i64, ptr %1, align 8, !tbaa !26
  %i.cm = and i64 %.sroa.0.0.copyload.i.i83, 281474976710655
  %i.cn = inttoptr i64 %i.cm to ptr
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !51
  %i.cq = and i32 %i.cp, 2147483647               ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !323)
  %i.cr = icmp samesign ugt i32 %i.cq, 65535
  br i1 %i.cr, label %bb.l, label %bb.k, !prof !8

bb.k:                                             ; preds = %bb.j
  %i.cs = call { i32, i64 } @_ZN6hermes2vm22DynamicStringPrimitiveIDsLb0EE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %i.cq) #13, !noalias !323
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i

bb.l:                                             ; preds = %bb.j
  %i.ct = call { i32, i64 } @_ZN6hermes2vm23ExternalStringPrimitiveIDsE6createERNS0_7RuntimeEj(ptr noundef nonnull align 8 dereferenceable(9816) %0, i32 noundef %i.cq) #13, !noalias !323
  br label %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i

_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i: ; preds = %bb.l, %bb.k
  %.pn.i.i = phi { i32, i64 } [ %i.ct, %bb.l ], [ %i.cs, %bb.k ] ; 2 uses
  %i.cu = extractvalue { i32, i64 } %.pn.i.i, 0
  %i.cv = icmp eq i32 %i.cu, 0
  br i1 %i.cv, label %_ZN6hermes2vm13StringBuilder19createStringBuilderERNS0_7RuntimeENS_10SafeUInt32Eb.exit.thread, label %bb.m, !prof !8

bb.m:                                             ; preds = %_ZN6hermes2vm15StringPrimitive6createERNS0_7RuntimeEjb.exit.i
  %i.cw = extractvalue { i32, i64 } %.pn.i.i, 1
  %i.cx = and i64 %i.cw, 281474976710655
  %i.cy = or disjoint i64 %i.cx, -844424930131968 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !12, !noalias !323 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 192 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !22, !noalias !323 ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 200
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !23, !noalias !323
  %i.df = icmp ult ptr %i.dc, %i.de
  br i1 %i.df, label %bb.n, label %bb.o, !prof !24

bb.n:                                             ; preds = %bb.m
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store ptr %i.dg, ptr %i.db, align 8, !tbaa !22, !noalias !323
  store i64 %i.cy, ptr %i.dc, align 8, !tbaa !26, !noalias !323
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.dh = call noundef ptr @_ZN6hermes2vm7GCScope15_newChunkAndPHVENS0_11HermesValueE(ptr noundef nonnull align 8 dereferenceable(212) %i.da, i64 %i.cy) #13, !noalias !323
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i.i = phi ptr [ %i.dc, %bb.n ], [ %i.dh, %bb.o ]
  %i.di = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i8 1, ptr %i.di, align 8, !tbaa !69, !alias.scope !323
  %i.dj = ptrtoint ptr %.0.i.i.i.i.i.i.i.i to i64
  store i64 %i.dj, ptr %6, align 8, !alias.scope !323
  %i.dk = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.dk, align 8, !alias.scope !323
  %.sroa.63.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %0, ptr %.sroa.63.8..sroa_idx.i, align 8, !alias.scope !323
  %.idx138 = shl nuw nsw i64 %i.j, 1
  %i.dl = getelementptr inbounds nuw i8, ptr %i.h, i64 %.idx138 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 8 uses
  br i1 %2, label %.lr.ph135, label %.lr.ph132

.lr.ph135:                                        ; preds = %bb.p, %_ZN6hermes2vm13StringBuilder15appendCharacterEDs.exit
  %.073134 = phi ptr [ %i.eu, %_ZN6hermes2vm13StringBuilder15appendCharacterEDs.exit ], [ %i.h, %bb.p ] ; 2 uses
  %i.dn = load i16, ptr %.073134, align 2, !tbaa !61 ; 3 uses
  %i.do = add i16 %i.dn, -97
  %i.dp = icmp ult i16 %i.do, 26
  %i.dq = select i1 %i.dp, i16 -33, i16 -1
  %i.dr = and i16 %i.dq, %i.dn                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i16 %i.dr, ptr %i.b, align 2, !tbaa !61
  %i.ds = load ptr, ptr %6, align 8, !tbaa !72
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.ds, align 8, !tbaa !26
  %i.dt = and i64 %.sroa.0.0.copyload.i.i.i, 281474976710655
  %i.du = inttoptr i64 %i.dt to ptr               ; 7 uses
  %i.dv = load i32, ptr %i.du, align 4            ; 5 uses
  %i.dw = and i32 %i.dv, 16777216
  %i.dx = icmp eq i32 %i.dw, 0
  br i1 %i.dx, label %bb.q, label %bb.x

bb.q:                                             ; preds = %.lr.ph135
  %i.dy = icmp ult i16 %i.dn, 128
  br i1 %i.dy, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.dz = trunc nuw nsw i16 %i.dr to i8
  %i.ea = icmp ugt i32 %i.dv, 150994943
  br i1 %i.ea, label %bb.s, label %bb.t, !prof !8

bb.s:                                             ; preds = %bb.r
  %i.eb = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !55
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i

bb.t:                                             ; preds = %bb.r
  %.mask.i.i.i.i.i.i.i.i.i = and i32 %i.dv, 234881024
  %i.ed = icmp eq i32 %.mask.i.i.i.i.i.i.i.i.i, 134217728
  br i1 %i.ed, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ee = getelementptr inbounds nuw i8, ptr %i.du, i64 12
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i

bb.v:                                             ; preds = %bb.t
  %i.ef = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  br label %_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i

_ZN6hermes2vm15StringPrimitive26castToASCIIPointerForWriteEv.exit.i: ; preds = %bb.v, %bb.u, %bb.s
  %.0.i.i = phi ptr [ %i.ec, %bb.s ], [ %i.ee, %bb.u ], [ %i.ef, %bb.v ]
  %i.eg = load i32, ptr %i.dm, align 8, !tbaa !77 ; 2 uses
  %i.eh = add i32 %i.eg, 1
  store i32 %i.eh, ptr %i.dm, align 8, !tbaa !77
  %i.ei = zext i32 %i.eg to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.ei
  store i8 %i.dz, ptr %i.ej, align 1, !tbaa !38
end_hunk_0
