Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/qrcode_encoder?download=true
inline.NumInlined: 1688
inline.NumDeleted: 594
loop-unroll.NumCompletelyUnrolled: 56
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_ZN2cv17QRCodeEncoderImpl11versionAutoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds [112 x i8], ptr @_ZN2cvL21version_info_databaseE, i64 %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = getelementptr inbounds [20 x i8], ptr %i.av, i64 %i.aq ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !30
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !31
  %i.bb = mul nsw i32 %i.ba, %i.ay
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !32
  %i.be = getelementptr inbounds nuw i8, ptr %i.aw, i64 12
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !33
  %i.bg = mul nsw i32 %i.bf, %i.bd
  %i.bh = add nsw i32 %i.bg, %i.bb
  %i.bi = shl nsw i32 %i.bh, 3
  %.not.i = icmp slt i32 %i.bi, %spec.select
  br i1 %.not.i, label %bb.l, label %_ZN2cv17QRCodeEncoderImpl19findVersionCapacityEiiRKSt6vectorIiSaIiEE.exit

_ZN2cv17QRCodeEncoderImpl19findVersionCapacityEiiRKSt6vectorIiSaIiEE.exit: ; preds = %bb.m, %bb.l, %bb.g, %bb.k
  %.0 = phi i32 [ -1, %bb.k ], [ -1, %bb.g ], [ -1, %bb.l ], [ %i.as, %bb.m ]
  %.not.i.i.i14 = icmp eq ptr %.pr.pre, null
  br i1 %.not.i.i.i14, label %_ZNSt6vectorIiSaIiEED2Ev.exit15, label %bb.n

bb.n:                                             ; preds = %_ZN2cv17QRCodeEncoderImpl19findVersionCapacityEiiRKSt6vectorIiSaIiEE.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !59
  %i.bl = ptrtoint ptr %i.bk to i64
  %i.bm = ptrtoint ptr %.pr.pre to i64
  %i.bn = sub i64 %i.bl, %i.bm
  call void @_ZdlPvm(ptr noundef nonnull %.pr.pre, i64 noundef %i.bn) #29
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit15

_ZNSt6vectorIiSaIiEED2Ev.exit15:                  ; preds = %_ZN2cv17QRCodeEncoderImpl19findVersionCapacityEiiRKSt6vectorIiSaIiEE.exit, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  %i.bo = load ptr, ptr %2, align 8, !tbaa !62    ; 3 uses
  %.not.i.i.i16 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i16, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit15
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !64
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit15, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret i32 %.0

bb.p:                                             ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit, %bb.h
  %.pn = phi { ptr, i32 } [ %i.u, %_ZNSt6vectorIiSaIiEED2Ev.exit ], [ %i.t, %bb.h ]
  %i.bu = load ptr, ptr %2, align 8, !tbaa !62    ; 3 uses
  %.not.i.i.i17 = icmp eq ptr %i.bu, null
  br i1 %.not.i.i.i17, label %_ZNSt6vectorIhSaIhEED2Ev.exit18, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !64
  %i.bx = ptrtoint ptr %i.bw to i64
  %i.by = ptrtoint ptr %i.bu to i64
  %i.bz = sub i64 %i.bx, %i.by
  call void @_ZdlPvm(ptr noundef nonnull %i.bu, i64 noundef %i.bz) #29
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit18

_ZNSt6vectorIhSaIhEED2Ev.exit18:                  ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv17QRCodeEncoderImpl10encodeAutoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEEPNS_13QRCodeEncoder10EncodeModeE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(608) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.e = add nuw i64 %.0810.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.e, %i.b
  br i1 %exitcond.not.i.i, label %.loopexit, label %bb.c, !llvm.loop !0

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  %.0810.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.e, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 %.0810.i.i
  %i.g = load i8, ptr %i.f, align 1, !tbaa !16
  %i.h = add i8 %i.g, -48
  %or.cond.i.i = icmp ult i8 %i.h, 10
  br i1 %or.cond.i.i, label %bb.b, label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %bb.c, %bb.e
  %.069.i.i = phi i64 [ %i.m, %bb.e ], [ 0, %bb.c ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.069.i.i
  %i.j = load i8, ptr %i.i, align 1, !tbaa !16    ; 3 uses
  %i.k = add i8 %i.j, -48
  %or.cond.i.i.i = icmp ult i8 %i.k, 10
  %i.l = add i8 %i.j, -65
  %or.cond5.i.i.i = icmp ult i8 %i.l, 26
  %or.cond.i4.i = or i1 %or.cond.i.i.i, %or.cond5.i.i.i
  br i1 %or.cond.i4.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i3.i
  switch i8 %i.j, label %_ZNK2cv17QRCodeEncoderImpl14autoEncodeModeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit [
    i8 32, label %bb.e
    i8 36, label %bb.e
    i8 37, label %bb.e
    i8 42, label %bb.e
    i8 43, label %bb.e
    i8 45, label %bb.e
    i8 46, label %bb.e
    i8 47, label %bb.e
    i8 58, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %bb.d, %.lr.ph.i3.i
  %i.m = add nuw i64 %.069.i.i, 1                 ; 2 uses
  %exitcond.not.i5.i = icmp eq i64 %i.m, %i.b
  br i1 %exitcond.not.i5.i, label %bb.f, label %.lr.ph.i3.i, !llvm.loop !1

.loopexit:                                        ; preds = %bb.b, %bb.a
  %i.n = tail call noundef zeroext i1 @_ZN2cv17QRCodeEncoderImpl13encodeNumericERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.o = tail call noundef zeroext i1 @_ZN2cv17QRCodeEncoderImpl11encodeAlphaERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) ; 0 uses
  br label %bb.g

_ZNK2cv17QRCodeEncoderImpl14autoEncodeModeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.d
  %i.p = tail call noundef zeroext i1 @_ZN2cv17QRCodeEncoderImpl10encodeByteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZNK2cv17QRCodeEncoderImpl14autoEncodeModeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %bb.f, %.loopexit
  %.0.i25 = phi i32 [ 1, %.loopexit ], [ 2, %bb.f ], [ 4, %_ZNK2cv17QRCodeEncoderImpl14autoEncodeModeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit ]
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %.0.i25, ptr %3, align 4, !tbaa !65
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret i1 true
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv17QRCodeEncoderImpl10generateQRERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(608) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %4 = alloca %"class.std::allocator", align 1    ; 3 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %8 = alloca %"class.cv::Scalar_", align 8       ; 6 uses
  %9 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !66   ; 4 uses
  %i.d = icmp sgt i32 %i.c, 1
  br i1 %i.d, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !25   ; 12 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %.preheader
  %i.g = load ptr, ptr %1, align 8, !tbaa !22     ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 9 uses
  %.promoted = load i8, ptr %i.h, align 8, !tbaa !67 ; 4 uses
  %min.iters.check = icmp ult i64 %i.f, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr inbounds nuw i8, ptr %0, i64 561
  %scevgep241 = getelementptr i8, ptr %i.g, i64 %i.f
  %bound0 = icmp ult ptr %i.h, %scevgep241
  %bound1 = icmp ult ptr %i.g, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check242 = icmp ult i64 %i.f, 32
  br i1 %min.iters.check242, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.i = and i64 %i.f, 28
  %n.vec = and i64 %i.f, -32                      ; 4 uses
  %i.j = insertelement <16 x i8> <i8 poison, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0>, i8 %.promoted, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i8> [ %i.j, %vector.ph ], [ %i.m, %vector.body ]
  %vec.phi243 = phi <16 x i8> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %wide.load = load <16 x i8>, ptr %i.k, align 1, !tbaa !16, !alias.scope !164
  %wide.load244 = load <16 x i8>, ptr %i.l, align 1, !tbaa !16, !alias.scope !164
  %i.m = xor <16 x i8> %vec.phi, %wide.load       ; 2 uses
  %i.n = xor <16 x i8> %vec.phi243, %wide.load244 ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !156

middle.block:                                     ; preds = %vector.body
  %bin.rdx = xor <16 x i8> %i.n, %i.m
  %i.p = tail call i8 @llvm.vector.reduce.xor.v16i8(<16 x i8> %bin.rdx) ; 3 uses
  store i8 %i.p, ptr %i.h, align 8, !tbaa !67, !alias.scope !165, !noalias !164
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.i, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !166

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i8 [ %i.p, %vec.epilog.iter.check ], [ %.promoted, %vector.main.loop.iter.check ]
  %n.vec245 = and i64 %i.f, -4                    ; 3 uses
  %i.q = insertelement <4 x i8> <i8 poison, i8 0, i8 0, i8 0>, i8 %bc.merge.rdx, i64 0
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index246 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next249, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi247 = phi <4 x i8> [ %i.q, %vec.epilog.ph ], [ %i.s, %vec.epilog.vector.body ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 %index246
  %wide.load248 = load <4 x i8>, ptr %i.r, align 1, !tbaa !16, !alias.scope !164
  %i.s = xor <4 x i8> %vec.phi247, %wide.load248  ; 2 uses
  %index.next249 = add nuw i64 %index246, 4       ; 2 uses
  %i.t = icmp eq i64 %index.next249, %n.vec245
  br i1 %i.t, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !158

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.u = tail call i8 @llvm.vector.reduce.xor.v4i8(<4 x i8> %i.s) ; 2 uses
  store i8 %i.u, ptr %i.h, align 8, !tbaa !67, !alias.scope !165, !noalias !164
  %cmp.n250 = icmp eq i64 %i.f, %n.vec245
  br i1 %cmp.n250, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph = phi i8 [ %.promoted, %iter.check ], [ %.promoted, %vector.memcheck ], [ %i.p, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ] ; 2 uses
  %.029129.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec245, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %i.f, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %i.v = phi i8 [ %i.y, %vec.epilog.scalar.ph.prol ], [ %.ph, %vec.epilog.scalar.ph.preheader ]
  %.029129.prol = phi i64 [ %i.z, %vec.epilog.scalar.ph.prol ], [ %.029129.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 %.029129.prol
  %i.x = load i8, ptr %i.w, align 1, !tbaa !16
  %i.y = xor i8 %i.v, %i.x                        ; 3 uses
  store i8 %i.y, ptr %i.h, align 8, !tbaa !67
  %i.z = add nuw i64 %.029129.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !159

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.unr = phi i8 [ %.ph, %vec.epilog.scalar.ph.preheader ], [ %i.y, %vec.epilog.scalar.ph.prol ]
  %.029129.unr = phi i64 [ %.029129.ph, %vec.epilog.scalar.ph.preheader ], [ %i.z, %vec.epilog.scalar.ph.prol ]
  %i.aa = sub i64 %.029129.ph, %i.f
  %i.ab = icmp ugt i64 %i.aa, -4
  br i1 %i.ab, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  %i.ac = icmp samesign ugt i32 %i.c, 16
  br i1 %i.ac, label %bb.b, label %.thread

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %i.ad = phi i8 [ %i.as, %vec.epilog.scalar.ph ], [ %.unr, %vec.epilog.scalar.ph.prol.loopexit ]
  %.029129 = phi i64 [ %i.at, %vec.epilog.scalar.ph ], [ %.029129.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 %.029129
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !16
  %i.ag = xor i8 %i.ad, %i.af                     ; 2 uses
  store i8 %i.ag, ptr %i.h, align 8, !tbaa !67
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 %.029129
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !16
  %i.ak = xor i8 %i.ag, %i.aj                     ; 2 uses
  store i8 %i.ak, ptr %i.h, align 8, !tbaa !67
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 %.029129
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  %i.an = load i8, ptr %i.am, align 1, !tbaa !16
  %i.ao = xor i8 %i.ak, %i.an                     ; 2 uses
  store i8 %i.ao, ptr %i.h, align 8, !tbaa !67
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 %.029129
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 3
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !16
  %i.as = xor i8 %i.ao, %i.ar                     ; 2 uses
  store i8 %i.as, ptr %i.h, align 8, !tbaa !67
  %i.at = add nuw i64 %.029129, 4                 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.at, %i.f
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !160

bb.b:                                             ; preds = %._crit_edge
  store i32 16, ptr %i.b, align 4, !tbaa !66
  br label %.thread

.thread:                                          ; preds = %._crit_edge, %bb.b
  %i.au = phi i32 [ 16, %bb.b ], [ %i.c, %._crit_edge ] ; 2 uses
  %i.av = trunc nuw nsw i32 %i.au to i8
  %i.aw = add nsw i8 %i.av, -1
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 562
  store i8 %i.aw, ptr %i.ax, align 2, !tbaa !70
  %i.ay = zext nneg i32 %i.au to i64
  br label %.lr.ph133

bb.c:                                             ; preds = %bb.a
  %i.az = icmp eq i32 %i.c, 1
  br i1 %i.az, label %.lr.ph133, label %._crit_edge134

.lr.ph133:                                        ; preds = %.thread, %bb.c
  %i.ba = phi i64 [ %i.ay, %.thread ], [ 1, %bb.c ]
  %i.bb = load ptr, ptr %1, align 8, !tbaa !22
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 561
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.bu = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 568
  br label %bb.d

._crit_edge134:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph133, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57
  %indvars.iv = phi i64 [ %i.ba, %.lr.ph133 ], [ %indvars.iv.next, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ] ; 4 uses
  %.sroa.077.0130 = phi ptr [ %i.bb, %.lr.ph133 ], [ %i.cy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit57 ] ; 2 uses
  %i.ca = load i32, ptr %i.b, align 4, !tbaa !66
  %i.cb = trunc nuw nsw i64 %indvars.iv to i32
  %i.cc = sub nsw i32 %i.ca, %i.cb
  %i.cd = trunc i32 %i.cc to i8
  store i8 %i.cd, ptr %i.bc, align 1, !tbaa !71
  %i.ce = load ptr, ptr %1, align 8, !tbaa !22    ; 3 uses
  %i.cf = ptrtoint ptr %.sroa.077.0130 to i64     ; 2 uses
  %i.cg = ptrtoint ptr %i.ce to i64
  %i.ch = sub i64 %i.cf, %i.cg                    ; 4 uses
  %i.ci = load i64, ptr %i.bd, align 8, !tbaa !25 ; 4 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ci
  %i.ck = ptrtoint ptr %i.cj to i64
  %i.cl = sub i64 %i.ck, %i.cf
  %i.cm = sdiv i64 %i.cl, %indvars.iv             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.cn = icmp ugt i64 %i.ch, %i.ci
  br i1 %i.cn, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, i64 noundef %i.ch, i64 noundef %i.ci) #28, !noalias !168
  unreachable

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %bb.d
  store ptr %i.be, ptr %2, align 8, !tbaa !23, !alias.scope !168
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.ch ; 2 uses
  %i.cp = sub nuw i64 %i.ci, %i.ch
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cm, i64 %i.cp) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27, !noalias !168
  store i64 %spec.select.i.i.i, ptr %i.a, align 8, !tbaa !24, !noalias !168
  %i.cq = icmp ugt i64 %spec.select.i.i.i, 15
  br i1 %i.cq, label %.noexc10.i.i, label %._crit_edge.i.i.i

.noexc10.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.cr = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.cr, ptr %2, align 8, !tbaa !22, !alias.scope !168
  %i.cs = load i64, ptr %i.a, align 8, !tbaa !24, !noalias !168
  store i64 %i.cs, ptr %i.be, align 8, !tbaa !16, !alias.scope !168
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc10.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.ct = phi ptr [ %i.cr, %.noexc10.i.i ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 2 uses
  switch i64 %spec.select.i.i.i, label %bb.g [
    i64 1, label %bb.f
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.f:                                             ; preds = %._crit_edge.i.i.i
  %i.cu = load i8, ptr %i.co, align 1, !tbaa !16
  store i8 %i.cu, ptr %i.ct, align 1, !tbaa !16
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.g:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ct, ptr align 1 %i.co, i64 %spec.select.i.i.i, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.f, %bb.g
  %i.cv = load i64, ptr %i.a, align 8, !tbaa !24, !noalias !168 ; 2 uses
  store i64 %i.cv, ptr %i.bf, align 8, !tbaa !25, !alias.scope !168
  %i.cw = load ptr, ptr %2, align 8, !tbaa !22, !alias.scope !168
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.cv
  store i8 0, ptr %i.cx, align 1, !tbaa !16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27, !noalias !168
  %i.cy = getelementptr inbounds i8, ptr %.sroa.077.0130, i64 %i.cm
  %i.cz = invoke noundef i32 @_ZN2cv17QRCodeEncoderImpl11versionAutoERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(608) %0, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.l       ; 3 uses

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.da = load i32, ptr %i.bg, align 8, !tbaa !72 ; 3 uses
  %i.db = icmp eq i32 %i.cz, -1
  br i1 %i.db, label %bb.i, label %bb.o

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.j unwind label %bb.m

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @__func__._ZN2cv17QRCodeEncoderImpl10generateQRERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE, ptr noundef nonnull @.str.1, i32 noundef 384) #28
          to label %bb.k unwind label %bb.n

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  %i.dc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ax

bb.m:                                             ; preds = %bb.i
  %i.dd = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZN2cv17QRCodeEncoderImpl11encodeAlphaERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEE:_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.de, i64 2
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !16
  %i.du = trunc nuw nsw i32 %.0.i63.ph to i8
  %i.dv = lshr i8 %i.du, 4
  %i.dw = and i8 %i.dv, 1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  store i8 %i.dw, ptr %i.dx, align 1, !tbaa !16
  %i.dy = trunc nuw nsw i32 %.0.i63.ph to i8
  %i.dz = lshr i8 %i.dy, 5
  store i8 %i.dz, ptr %i.de, align 1, !tbaa !16
  %i.ea = load ptr, ptr %i.c, align 8, !tbaa !95
  %i.eb = load ptr, ptr %2, align 8, !tbaa !95    ; 2 uses
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed
  %i.ef = getelementptr inbounds i8, ptr %i.eb, i64 %i.ee
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.ef, ptr nonnull %i.de, ptr nonnull %i.df)
          to label %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit70 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit12.i69

_ZNSt6vectorIhSaIhEED2Ev.exit12.i69:              ; preds = %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i68
  %i.eg = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef 6) #29
  br label %common.resume

_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit70: ; preds = %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i68
  tail call void @_ZdlPvm(ptr noundef nonnull %i.de, i64 noundef 6) #29
  br label %.critedge44

.critedge44:                                      ; preds = %_ZN2cvL9mapSymbolEc.exit54, %bb.i, %switch.hole_check, %switch.hole_check102, %bb.n, %.critedge42, %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit70
  %.4 = phi i1 [ true, %.critedge42 ], [ false, %bb.n ], [ true, %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit70 ], [ false, %switch.hole_check102 ], [ false, %switch.hole_check ], [ false, %bb.i ], [ false, %_ZN2cvL9mapSymbolEc.exit54 ]
  ret i1 %.4
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE(i32 noundef %0, i32 noundef range(i32 1, 17) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #4 personality ptr @__gxx_personality_v0 {
.noexc:
  %i.a = zext nneg i32 %1 to i64                  ; 11 uses
  %i.b = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.a) #30 ; 6 uses
  %i.c = getelementptr i8, ptr %i.b, i64 %i.a     ; 4 uses
  store i8 0, ptr %i.b, align 1, !tbaa !16
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.e = add nsw i64 %i.a, -1                     ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %iter.check, label %bb.a

bb.a:                                             ; preds = %.noexc
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.d, i8 0, i64 %i.e, i1 false)
  br label %iter.check

iter.check:                                       ; preds = %bb.a, %.noexc
  %.0.i.i.i.i.i = phi ptr [ %i.c, %bb.a ], [ %i.d, %.noexc ]
  %min.iters.check = icmp samesign ult i32 %1, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check21 = icmp samesign ult i32 %1, 16
  br i1 %min.iters.check21, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.vec = and i64 %i.a, 16                       ; 3 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %0, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.g = ashr <16 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.h = srem <16 x i32> %i.g, splat (i32 2)
  %i.i = getelementptr i8, ptr %i.c, i64 -16
  %i.j = shufflevector <16 x i32> %i.h, <16 x i32> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse = trunc nsw <16 x i32> %i.j to <16 x i8>
  store <16 x i8> %reverse, ptr %i.i, align 1, !tbaa !16
  %cmp.n = icmp eq i64 %n.vec, %i.a
  br i1 %cmp.n, label %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %vector.ph
  %i.k = and i64 %i.a, 12
  %min.epilog.iters.check = icmp eq i64 %i.k, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !177

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec22 = and i64 %i.a, 28                     ; 3 uses
  %broadcast.splatinsert23 = insertelement <4 x i32> poison, i32 %0, i64 0
  %broadcast.splat24 = shufflevector <4 x i32> %broadcast.splatinsert23, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.l = trunc nuw nsw i64 %vec.epilog.resume.val to i32
  %broadcast.splatinsert25 = insertelement <4 x i32> poison, i32 %i.l, i64 0
  %broadcast.splat26 = shufflevector <4 x i32> %broadcast.splatinsert25, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i32> %broadcast.splat26, <i32 0, i32 1, i32 2, i32 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vec.epilog.ph ], [ %vec.ind.next, %vec.epilog.vector.body ] ; 2 uses
  %i.m = ashr <4 x i32> %broadcast.splat24, %vec.ind
  %i.n = srem <4 x i32> %i.m, splat (i32 2)
  %i.o = xor i64 %index, -1
  %i.p = getelementptr i8, ptr %i.c, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -3
  %i.r = shufflevector <4 x i32> %i.n, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse27 = trunc nsw <4 x i32> %i.r to <4 x i8>
  store <4 x i8> %reverse27, ptr %i.q, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 4)
  %i.s = icmp eq i64 %index.next, %n.vec22
  br i1 %i.s, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !175

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n28 = icmp eq i64 %n.vec22, %i.a
  br i1 %cmp.n28, label %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec22, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.t = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.u = ashr i32 %0, %i.t
  %i.v = srem i32 %i.u, 2
  %i.w = trunc nsw i32 %i.v to i8
  %i.x = xor i64 %indvars.iv.i, -1
  %i.y = getelementptr i8, ptr %i.c, i64 %i.x
  store i8 %i.w, ptr %i.y, align 1, !tbaa !16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.a
  br i1 %exitcond.not.i, label %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit, label %vec.epilog.scalar.ph, !llvm.loop !176

_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit:       ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %vector.ph
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !95
  %i.ab = load ptr, ptr %2, align 8, !tbaa !95    ; 2 uses
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 %i.ae
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.af, ptr nonnull %i.b, ptr %.0.i.i.i.i.i)
          to label %_ZNSt6vectorIhSaIhEED2Ev.exit unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit12

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.a) #29
  ret void

_ZNSt6vectorIhSaIhEED2Ev.exit12:                  ; preds = %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit
  %i.ag = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.a) #29
  resume { ptr, i32 } %i.ag
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv17QRCodeEncoderImpl10encodeByteERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(608) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i:
  %i.a = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #30 ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 0, ptr %i.d, align 1
  store i8 1, ptr %i.c, align 1, !tbaa !16
  store i8 0, ptr %i.a, align 1, !tbaa !16
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !95
  %i.g = load ptr, ptr %2, align 8, !tbaa !95     ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = getelementptr inbounds i8, ptr %i.g, i64 %i.j
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.k, ptr nonnull %i.a, ptr nonnull %i.b)
          to label %iter.check unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit12.i

common.resume:                                    ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit12.i21, %_ZNSt6vectorIhSaIhEED2Ev.exit12.i15, %_ZNSt6vectorIhSaIhEED2Ev.exit12.i
  %common.resume.op = phi { ptr, i32 } [ %i.l, %_ZNSt6vectorIhSaIhEED2Ev.exit12.i ], [ %i.aq, %_ZNSt6vectorIhSaIhEED2Ev.exit12.i15 ], [ %i.bh, %_ZNSt6vectorIhSaIhEED2Ev.exit12.i21 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIhSaIhEED2Ev.exit12.i:                ; preds = %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 4) #29
  br label %common.resume

iter.check:                                       ; preds = %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 4) #29
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !72
  %i.o = icmp slt i32 %i.n, 10                    ; 2 uses
  %spec.store.select = select i1 %i.o, i64 8, i64 16 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load i64, ptr %i.p, align 8, !tbaa !25   ; 2 uses
  %i.r = trunc i64 %i.q to i32                    ; 3 uses
  %i.s = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %spec.store.select) #30 ; 6 uses
  %i.t = getelementptr i8, ptr %i.s, i64 %spec.store.select ; 3 uses
  store i8 0, ptr %i.s, align 1, !tbaa !16
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  %i.v = add nsw i64 %spec.store.select, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.u, i8 0, i64 %i.v, i1 false)
  br i1 %i.o, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %iter.check
  %n.vec = and i64 %spec.store.select, 16
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.r, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <16 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.w = ashr <16 x i32> %broadcast.splat, %vec.ind
  %i.x = srem <16 x i32> %i.w, splat (i32 2)
  %i.y = xor i64 %index, -1
  %i.z = getelementptr i8, ptr %i.t, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 -15
  %i.ab = shufflevector <16 x i32> %i.x, <16 x i32> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse = trunc nsw <16 x i32> %i.ab to <16 x i8>
  store <16 x i8> %reverse, ptr %i.aa, align 1, !tbaa !16
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add <16 x i32> %vec.ind, splat (i32 16)
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i14, label %vector.body, !llvm.loop !178

vec.epilog.ph:                                    ; preds = %iter.check
  %broadcast.splatinsert31 = insertelement <8 x i32> poison, i32 %i.r, i64 0
  %broadcast.splat32 = shufflevector <8 x i32> %broadcast.splatinsert31, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index35 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next38, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind36 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %vec.epilog.ph ], [ %vec.ind.next39, %vec.epilog.vector.body ] ; 2 uses
  %i.ad = ashr <8 x i32> %broadcast.splat32, %vec.ind36
  %i.ae = srem <8 x i32> %i.ad, splat (i32 2)
  %i.af = xor i64 %index35, -1
  %i.ag = getelementptr i8, ptr %i.t, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.ag, i64 -7
  %i.ai = shufflevector <8 x i32> %i.ae, <8 x i32> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse37 = trunc nsw <8 x i32> %i.ai to <8 x i8>
  store <8 x i8> %reverse37, ptr %i.ah, align 1, !tbaa !16
  %index.next38 = add nuw i64 %index35, 8         ; 2 uses
  %vec.ind.next39 = add <8 x i32> %vec.ind36, splat (i32 8)
  %i.aj = icmp eq i64 %index.next38, %spec.store.select
  br i1 %i.aj, label %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i14, label %vec.epilog.vector.body, !llvm.loop !179

_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i14:   ; preds = %vector.body, %vec.epilog.vector.body
  %i.ak = load ptr, ptr %i.e, align 8, !tbaa !95
  %i.al = load ptr, ptr %2, align 8, !tbaa !95    ; 2 uses
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an
  %i.ap = getelementptr inbounds i8, ptr %i.al, i64 %i.ao
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.ap, ptr nonnull %i.s, ptr %i.t)
          to label %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit16 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit12.i15

_ZNSt6vectorIhSaIhEED2Ev.exit12.i15:              ; preds = %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i14
  %i.aq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %spec.store.select) #29
  br label %common.resume

_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit16: ; preds = %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i14
  tail call void @_ZdlPvm(ptr noundef nonnull %i.s, i64 noundef %spec.store.select) #29
  %i.ar = icmp sgt i32 %i.r, 0
  br i1 %i.ar, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit16
  %wide.trip.count = and i64 %i.q, 2147483647
  br label %.lr.ph

._crit_edge:                                      ; preds = %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit22, %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit16
  ret i1 true

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit22
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit22 ] ; 2 uses
  %i.as = load ptr, ptr %1, align 8, !tbaa !22
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv
  %i.au = load i8, ptr %i.at, align 1, !tbaa !16
  %i.av = tail call noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #30 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = insertelement <8 x i8> poison, i8 %i.au, i64 0
  %i.ay = shufflevector <8 x i8> %i.ax, <8 x i8> poison, <8 x i32> zeroinitializer
  %i.az = lshr <8 x i8> %i.ay, <i8 7, i8 6, i8 5, i8 4, i8 3, i8 2, i8 1, i8 0>
  %i.ba = and <8 x i8> %i.az, <i8 -1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1, i8 1>
  store <8 x i8> %i.ba, ptr %i.av, align 1, !tbaa !16
  %i.bb = load ptr, ptr %i.e, align 8, !tbaa !95
  %i.bc = load ptr, ptr %2, align 8, !tbaa !95    ; 2 uses
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = getelementptr inbounds i8, ptr %i.bc, i64 %i.bf
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.bg, ptr nonnull %i.av, ptr nonnull %i.aw)
          to label %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit22 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit12.i21

_ZNSt6vectorIhSaIhEED2Ev.exit12.i21:              ; preds = %.lr.ph
  %i.bh = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 8) #29
  br label %common.resume

_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit22: ; preds = %.lr.ph
  tail call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef 8) #29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !180
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv17QRCodeEncoderImpl13encodeNumericERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(608) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i:
  %i.a = tail call noalias noundef nonnull dereferenceable(4) ptr @_Znwm(i64 noundef 4) #30 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.a, align 1, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !95
  %i.e = load ptr, ptr %2, align 8, !tbaa !95     ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = getelementptr inbounds i8, ptr %i.e, i64 %i.h
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.i, ptr nonnull %i.a, ptr nonnull %i.b)
          to label %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit12.i

common.resume:                                    ; preds = %_ZNSt6vectorIhSaIhEED2Ev.exit12.i70, %_ZNSt6vectorIhSaIhEED2Ev.exit12.i64, %_ZNSt6vectorIhSaIhEED2Ev.exit12.i
  %common.resume.op = phi { ptr, i32 } [ %i.j, %_ZNSt6vectorIhSaIhEED2Ev.exit12.i ], [ %i.an, %_ZNSt6vectorIhSaIhEED2Ev.exit12.i64 ], [ %i.cv, %_ZNSt6vectorIhSaIhEED2Ev.exit12.i70 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt6vectorIhSaIhEED2Ev.exit12.i:                ; preds = %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 4) #29
  br label %common.resume

_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit: ; preds = %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 4) #29
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !72   ; 2 uses
  %i.m = icmp sgt i32 %i.l, 26
  %.inv = icmp slt i32 %i.l, 10
  %spec.select = select i1 %.inv, i64 10, i64 12
  %.055 = select i1 %i.m, i64 14, i64 %spec.select ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load i64, ptr %i.n, align 8, !tbaa !25
  %i.p = trunc i64 %i.o to i32                    ; 6 uses
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %.055) #30 ; 6 uses
  %i.r = getelementptr i8, ptr %i.q, i64 %.055    ; 3 uses
  store i8 0, ptr %i.q, align 1, !tbaa !16
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1
  %i.t = add nsw i64 %.055, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.s, i8 0, i64 %i.t, i1 false)
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit
  %indvars.iv.i.i60 = phi i64 [ 0, %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit ], [ %indvars.iv.next.i.i61.1, %bb.a ] ; 5 uses
  %i.u = trunc nuw nsw i64 %indvars.iv.i.i60 to i32
  %i.v = ashr i32 %i.p, %i.u
  %i.w = srem i32 %i.v, 2
  %i.x = trunc nsw i32 %i.w to i8
  %i.y = xor i64 %indvars.iv.i.i60, -1
  %i.z = getelementptr i8, ptr %i.r, i64 %i.y
  store i8 %i.x, ptr %i.z, align 1, !tbaa !16
  %i.aa = trunc i64 %indvars.iv.i.i60 to i32
  %i.ab = or disjoint i32 %i.aa, 1
  %i.ac = ashr i32 %i.p, %i.ab
  %i.ad = srem i32 %i.ac, 2
  %i.ae = trunc nsw i32 %i.ad to i8
  %i.af = xor i64 %indvars.iv.i.i60, -2
  %i.ag = getelementptr i8, ptr %i.r, i64 %i.af
  store i8 %i.ae, ptr %i.ag, align 1, !tbaa !16
  %indvars.iv.next.i.i61.1 = add nuw nsw i64 %indvars.iv.i.i60, 2 ; 2 uses
  %exitcond.not.i.i62.1 = icmp eq i64 %indvars.iv.next.i.i61.1, %.055
  br i1 %exitcond.not.i.i62.1, label %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i63, label %bb.a, !llvm.loop !3

_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i63:   ; preds = %bb.a
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !95
  %i.ai = load ptr, ptr %2, align 8, !tbaa !95    ; 2 uses
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = ptrtoint ptr %i.ai to i64
  %i.al = sub i64 %i.aj, %i.ak
  %i.am = getelementptr inbounds i8, ptr %i.ai, i64 %i.al
  invoke void @_ZNSt6vectorIhSaIhEE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPhS1_EEEEvS6_T_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.am, ptr nonnull %i.q, ptr %i.r)
          to label %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit65 unwind label %_ZNSt6vectorIhSaIhEED2Ev.exit12.i64

_ZNSt6vectorIhSaIhEED2Ev.exit12.i64:              ; preds = %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i63
  %i.an = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %.055) #29
  br label %common.resume

_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit65: ; preds = %_ZN2cvL8decToBinEiiRSt6vectorIhSaIhEE.exit.i63
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %.055) #29
  %.not79 = icmp slt i32 %i.p, 3
  br i1 %.not79, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit65, %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit71
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit71 ], [ 0, %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit65 ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit71 ], [ 3, %_ZN2cvL14writeDecNumberEiiRSt6vectorIhSaIhEE.exit65 ] ; 2 uses
  %i.ao = load ptr, ptr %1, align 8, !tbaa !22
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv85 ; 3 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !16  ; 2 uses
  %i.ar = add i8 %i.aq, -58
  %or.cond = icmp ult i8 %i.ar, -10
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !16  ; 2 uses
  %i.au = add i8 %i.at, -58
  %or.cond72 = icmp ult i8 %i.au, -10
end_hunk_1
begin_hunk_2_@_ZN2cv17QRCodeDecoderImpl3runERKNS_3MatERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %.pn18 = phi { ptr, i32 } [ %i.aa, %bb.k ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn18
}

declare void @_ZN2cv9transposeERKNS_11_InputArrayERKNS_12_OutputArrayE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv17QRCodeDecoderImpl17correctFormatInfoERt(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #4 align 2 {
.critedge:
  %2 = alloca %"struct.cv::Hamming", align 1      ; 34 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.a = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull @_ZN2cvL13formatInfoLUTE, ptr noundef nonnull %1, i32 noundef 2)
  %i.b = icmp slt i32 %i.a, 4
  br i1 %i.b, label %bb.a, label %.critedge.1

.critedge.1:                                      ; preds = %.critedge
  %i.c = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 2), ptr noundef nonnull %1, i32 noundef 2)
  %i.d = icmp slt i32 %i.c, 4
  br i1 %i.d, label %bb.a, label %.critedge.2

.critedge.2:                                      ; preds = %.critedge.1
  %i.e = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 4), ptr noundef nonnull %1, i32 noundef 2)
  %i.f = icmp slt i32 %i.e, 4
  br i1 %i.f, label %bb.a, label %.critedge.3

.critedge.3:                                      ; preds = %.critedge.2
  %i.g = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 6), ptr noundef nonnull %1, i32 noundef 2)
  %i.h = icmp slt i32 %i.g, 4
  br i1 %i.h, label %bb.a, label %.critedge.4

.critedge.4:                                      ; preds = %.critedge.3
  %i.i = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 8), ptr noundef nonnull %1, i32 noundef 2)
  %i.j = icmp slt i32 %i.i, 4
  br i1 %i.j, label %bb.a, label %.critedge.5

.critedge.5:                                      ; preds = %.critedge.4
  %i.k = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 10), ptr noundef nonnull %1, i32 noundef 2)
  %i.l = icmp slt i32 %i.k, 4
  br i1 %i.l, label %bb.a, label %.critedge.6

.critedge.6:                                      ; preds = %.critedge.5
  %i.m = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 12), ptr noundef nonnull %1, i32 noundef 2)
  %i.n = icmp slt i32 %i.m, 4
  br i1 %i.n, label %bb.a, label %.critedge.7

.critedge.7:                                      ; preds = %.critedge.6
  %i.o = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 14), ptr noundef nonnull %1, i32 noundef 2)
  %i.p = icmp slt i32 %i.o, 4
  br i1 %i.p, label %bb.a, label %.critedge.8

.critedge.8:                                      ; preds = %.critedge.7
  %i.q = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 16), ptr noundef nonnull %1, i32 noundef 2)
  %i.r = icmp slt i32 %i.q, 4
  br i1 %i.r, label %bb.a, label %.critedge.9

.critedge.9:                                      ; preds = %.critedge.8
  %i.s = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 18), ptr noundef nonnull %1, i32 noundef 2)
  %i.t = icmp slt i32 %i.s, 4
  br i1 %i.t, label %bb.a, label %.critedge.10

.critedge.10:                                     ; preds = %.critedge.9
  %i.u = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 20), ptr noundef nonnull %1, i32 noundef 2)
  %i.v = icmp slt i32 %i.u, 4
  br i1 %i.v, label %bb.a, label %.critedge.11

.critedge.11:                                     ; preds = %.critedge.10
  %i.w = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 22), ptr noundef nonnull %1, i32 noundef 2)
  %i.x = icmp slt i32 %i.w, 4
  br i1 %i.x, label %bb.a, label %.critedge.12

.critedge.12:                                     ; preds = %.critedge.11
  %i.y = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 24), ptr noundef nonnull %1, i32 noundef 2)
  %i.z = icmp slt i32 %i.y, 4
  br i1 %i.z, label %bb.a, label %.critedge.13

.critedge.13:                                     ; preds = %.critedge.12
  %i.aa = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 26), ptr noundef nonnull %1, i32 noundef 2)
  %i.ab = icmp slt i32 %i.aa, 4
  br i1 %i.ab, label %bb.a, label %.critedge.14

.critedge.14:                                     ; preds = %.critedge.13
  %i.ac = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 28), ptr noundef nonnull %1, i32 noundef 2)
  %i.ad = icmp slt i32 %i.ac, 4
  br i1 %i.ad, label %bb.a, label %.critedge.15

.critedge.15:                                     ; preds = %.critedge.14
  %i.ae = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 30), ptr noundef nonnull %1, i32 noundef 2)
  %i.af = icmp slt i32 %i.ae, 4
  br i1 %i.af, label %bb.a, label %.critedge.16

.critedge.16:                                     ; preds = %.critedge.15
  %i.ag = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 32), ptr noundef nonnull %1, i32 noundef 2)
  %i.ah = icmp slt i32 %i.ag, 4
  br i1 %i.ah, label %bb.a, label %.critedge.17

.critedge.17:                                     ; preds = %.critedge.16
  %i.ai = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 34), ptr noundef nonnull %1, i32 noundef 2)
  %i.aj = icmp slt i32 %i.ai, 4
  br i1 %i.aj, label %bb.a, label %.critedge.18

.critedge.18:                                     ; preds = %.critedge.17
  %i.ak = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 36), ptr noundef nonnull %1, i32 noundef 2)
  %i.al = icmp slt i32 %i.ak, 4
  br i1 %i.al, label %bb.a, label %.critedge.19

.critedge.19:                                     ; preds = %.critedge.18
  %i.am = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 38), ptr noundef nonnull %1, i32 noundef 2)
  %i.an = icmp slt i32 %i.am, 4
  br i1 %i.an, label %bb.a, label %.critedge.20

.critedge.20:                                     ; preds = %.critedge.19
  %i.ao = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 40), ptr noundef nonnull %1, i32 noundef 2)
  %i.ap = icmp slt i32 %i.ao, 4
  br i1 %i.ap, label %bb.a, label %.critedge.21

.critedge.21:                                     ; preds = %.critedge.20
  %i.aq = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 42), ptr noundef nonnull %1, i32 noundef 2)
  %i.ar = icmp slt i32 %i.aq, 4
  br i1 %i.ar, label %bb.a, label %.critedge.22

.critedge.22:                                     ; preds = %.critedge.21
  %i.as = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 44), ptr noundef nonnull %1, i32 noundef 2)
  %i.at = icmp slt i32 %i.as, 4
  br i1 %i.at, label %bb.a, label %.critedge.23

.critedge.23:                                     ; preds = %.critedge.22
  %i.au = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 46), ptr noundef nonnull %1, i32 noundef 2)
  %i.av = icmp slt i32 %i.au, 4
  br i1 %i.av, label %bb.a, label %.critedge.24

.critedge.24:                                     ; preds = %.critedge.23
  %i.aw = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 48), ptr noundef nonnull %1, i32 noundef 2)
  %i.ax = icmp slt i32 %i.aw, 4
  br i1 %i.ax, label %bb.a, label %.critedge.25

.critedge.25:                                     ; preds = %.critedge.24
  %i.ay = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 50), ptr noundef nonnull %1, i32 noundef 2)
  %i.az = icmp slt i32 %i.ay, 4
  br i1 %i.az, label %bb.a, label %.critedge.26

.critedge.26:                                     ; preds = %.critedge.25
  %i.ba = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 52), ptr noundef nonnull %1, i32 noundef 2)
  %i.bb = icmp slt i32 %i.ba, 4
  br i1 %i.bb, label %bb.a, label %.critedge.27

.critedge.27:                                     ; preds = %.critedge.26
  %i.bc = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 54), ptr noundef nonnull %1, i32 noundef 2)
  %i.bd = icmp slt i32 %i.bc, 4
  br i1 %i.bd, label %bb.a, label %.critedge.28

.critedge.28:                                     ; preds = %.critedge.27
  %i.be = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 56), ptr noundef nonnull %1, i32 noundef 2)
  %i.bf = icmp slt i32 %i.be, 4
  br i1 %i.bf, label %bb.a, label %.critedge.29

.critedge.29:                                     ; preds = %.critedge.28
  %i.bg = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 58), ptr noundef nonnull %1, i32 noundef 2)
  %i.bh = icmp slt i32 %i.bg, 4
  br i1 %i.bh, label %bb.a, label %.critedge.30

.critedge.30:                                     ; preds = %.critedge.29
  %i.bi = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 60), ptr noundef nonnull %1, i32 noundef 2)
  %i.bj = icmp slt i32 %i.bi, 4
  br i1 %i.bj, label %bb.a, label %.critedge.31

.critedge.31:                                     ; preds = %.critedge.30
  %i.bk = call noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 62), ptr noundef nonnull %1, i32 noundef 2)
  %i.bl = icmp slt i32 %i.bk, 4
  br i1 %i.bl, label %bb.a, label %.critedge14

bb.a:                                             ; preds = %.critedge.31, %.critedge.30, %.critedge.29, %.critedge.28, %.critedge.27, %.critedge.26, %.critedge.25, %.critedge.24, %.critedge.23, %.critedge.22, %.critedge.21, %.critedge.20, %.critedge.19, %.critedge.18, %.critedge.17, %.critedge.16, %.critedge.15, %.critedge.14, %.critedge.13, %.critedge.12, %.critedge.11, %.critedge.10, %.critedge.9, %.critedge.8, %.critedge.7, %.critedge.6, %.critedge.5, %.critedge.4, %.critedge.3, %.critedge.2, %.critedge.1, %.critedge
  %.lcssa19 = phi ptr [ @_ZN2cvL13formatInfoLUTE, %.critedge ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 2), %.critedge.1 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 4), %.critedge.2 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 6), %.critedge.3 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 8), %.critedge.4 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 10), %.critedge.5 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 12), %.critedge.6 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 14), %.critedge.7 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 16), %.critedge.8 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 18), %.critedge.9 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 20), %.critedge.10 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 22), %.critedge.11 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 24), %.critedge.12 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 26), %.critedge.13 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 28), %.critedge.14 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 30), %.critedge.15 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 32), %.critedge.16 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 34), %.critedge.17 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 36), %.critedge.18 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 38), %.critedge.19 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 40), %.critedge.20 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 42), %.critedge.21 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 44), %.critedge.22 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 46), %.critedge.23 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 48), %.critedge.24 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 50), %.critedge.25 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 52), %.critedge.26 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 54), %.critedge.27 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 56), %.critedge.28 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 58), %.critedge.29 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 60), %.critedge.30 ], [ getelementptr inbounds nuw (i8, ptr @_ZN2cvL13formatInfoLUTE, i64 62), %.critedge.31 ]
  %i.bm = load i16, ptr %.lcssa19, align 2, !tbaa !93
  %i.bn = xor i16 %i.bm, 21522
  store i16 %i.bn, ptr %1, align 2, !tbaa !93
  br label %.critedge14

.critedge14:                                      ; preds = %.critedge.31, %bb.a
  %i.bo = phi i1 [ true, %bb.a ], [ false, %.critedge.31 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret i1 %i.bo
}

declare noundef i32 @_ZNK2cv7HammingclEPKhS2_i(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv17QRCodeDecoderImpl16decodeFormatInfoERKNS_3MatERi(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 6 uses
  %i.b = alloca i16, align 2                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !116
  %.fr58 = freeze i32 %i.d                        ; 2 uses
  %i.e = icmp slt i32 %.fr58, 2
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !117  ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8              ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load i8, ptr %i.j, align 1, !tbaa !16    ; 2 uses
  br i1 %i.e, label %.split.us, label %.split.preheader

.split.preheader:                                 ; preds = %bb.a
  %.sink.i38.1 = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.i
  %i.l = getelementptr inbounds nuw i8, ptr %.sink.i38.1, i64 8
  %i.m = load i8, ptr %i.l, align 1, !tbaa !16
  %i.n = shl i8 %i.m, 1
  %i.o = and i8 %i.n, 2
  %i.p = shl i64 %i.i, 1
  %.sink.i38.2 = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.p
  %i.q = getelementptr inbounds nuw i8, ptr %.sink.i38.2, i64 8
  %i.r = load i8, ptr %i.q, align 1, !tbaa !16
  %i.s = shl i8 %i.r, 2
  %i.t = and i8 %i.s, 4
  %i.u = or disjoint i8 %i.o, %i.t
  %i.v = mul i64 %i.i, 3
  %.sink.i38.3 = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.v
  %i.w = getelementptr inbounds nuw i8, ptr %.sink.i38.3, i64 8
  %i.x = load i8, ptr %i.w, align 1, !tbaa !16
  %i.y = shl i8 %i.x, 3
  %i.z = and i8 %i.y, 8
  %i.aa = or disjoint i8 %i.u, %i.z
  %i.ab = shl i64 %i.i, 2
  %.sink.i38.4 = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ab
  %i.ac = getelementptr inbounds nuw i8, ptr %.sink.i38.4, i64 8
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !16
  %i.ae = shl i8 %i.ad, 4
  %i.af = and i8 %i.ae, 16
  %i.ag = or disjoint i8 %i.aa, %i.af
  %i.ah = mul i64 %i.i, 5
  %.sink.i38.5 = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ah
  %i.ai = getelementptr inbounds nuw i8, ptr %.sink.i38.5, i64 8
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !16
  %i.ak = shl i8 %i.aj, 5
  %i.al = and i8 %i.ak, 32
  %i.am = or disjoint i8 %i.ag, %i.al
  br label %.split47

.split.us:                                        ; preds = %bb.a
  %3 = and i8 %i.k, 1                             ; 5 uses
  %i.an = shl nuw nsw i8 %3, 1
  %i.ao = shl nuw nsw i8 %3, 2
  %i.ap = or disjoint i8 %i.an, %i.ao
  %i.aq = shl nuw nsw i8 %3, 3
  %i.ar = or disjoint i8 %i.ap, %i.aq
  %i.as = shl nuw nsw i8 %3, 4
  %i.at = or disjoint i8 %i.ar, %i.as
  %i.au = shl nuw nsw i8 %3, 5
  %i.av = or disjoint i8 %i.at, %i.au
  br label %.split47

.split47:                                         ; preds = %.split.preheader, %.split.us
  %.pn = phi i8 [ %i.am, %.split.preheader ], [ %i.av, %.split.us ]
  %i.aw = icmp slt i32 %.fr58, 2                  ; 2 uses
  %i.ax = mul i64 %i.i, 7
  %.sink.idx.i = select i1 %i.aw, i64 0, i64 %i.ax
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink.idx.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !16
  %i.ba = shl i64 %i.i, 3
  %.sink.idx.i33 = select i1 %i.aw, i64 0, i64 %i.ba
  %i.bb = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sink.idx.i33 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 7
  %4 = load <2 x i8>, ptr %i.bc, align 1, !tbaa !16
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.be = load <2 x i8>, ptr %i.bd, align 1, !tbaa !16
  %5 = load <4 x i8>, ptr %i.bb, align 1, !tbaa !16
  %6 = shufflevector <2 x i8> %4, <2 x i8> %i.be, <8 x i32> <i32 0, i32 1, i32 3, i32 2, i32 poison, i32 poison, i32 poison, i32 poison>
  %7 = shufflevector <4 x i8> %5, <4 x i8> poison, <8 x i32> <i32 3, i32 2, i32 1, i32 0, i32 poison, i32 poison, i32 poison, i32 poison>
  %8 = shufflevector <8 x i8> %6, <8 x i8> %7, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 8, i32 9, i32 10, i32 11>
  %9 = and <8 x i8> %8, splat (i8 1)
  %10 = zext nneg <8 x i8> %9 to <8 x i16>
  %11 = shl nuw <8 x i16> %10, <i16 8, i16 7, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14>
  %12 = tail call i16 @llvm.vector.reduce.or.v8i16(<8 x i16> %11)
  %13 = shl i8 %i.az, 6
  %14 = and i8 %13, 64
  %15 = zext nneg i8 %14 to i16
  %i.bf = or i16 %12, %15
  %16 = and i8 %i.k, 1
  %op.rdx7678 = or i8 %16, %.pn
  %op.rdx76 = zext i8 %op.rdx7678 to i16
  %i.bg = or i16 %i.bf, %op.rdx76
  store i16 %i.bg, ptr %i.a, align 2, !tbaa !93
  %i.bh = call noundef zeroext i1 @_ZN2cv17QRCodeDecoderImpl17correctFormatInfoERt(ptr nonnull align 8 poison, ptr noundef nonnull align 2 dereferenceable(2) %i.a) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !132 ; 8 uses
  %i.bk = load i32, ptr %i.c, align 4, !tbaa !116
  %.fr = freeze i32 %i.bk                         ; 2 uses
  %i.bl = icmp slt i32 %.fr, 2
  %i.bm = load ptr, ptr %i.f, align 8, !tbaa !117 ; 9 uses
  %i.bn = load i64, ptr %i.h, align 8             ; 8 uses
  %i.bo = shl i64 %i.bn, 3
  %.sink.idx.i41 = select i1 %i.bl, i64 0, i64 %i.bo
  %.sink.i42 = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sink.idx.i41 ; 8 uses
  %i.bp = add i32 %i.bj, -1
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr inbounds i8, ptr %.sink.i42, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !16
  %i.bt = and i8 %i.bs, 1
  %i.bu = add i32 %i.bj, -2
  %i.bv = sext i32 %i.bu to i64
  %i.bw = getelementptr inbounds i8, ptr %.sink.i42, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !16
  %i.by = shl i8 %i.bx, 1
  %i.bz = and i8 %i.by, 2
  %i.ca = or disjoint i8 %i.bt, %i.bz
  %i.cb = add i32 %i.bj, -3
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds i8, ptr %.sink.i42, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !16
  %i.cf = shl i8 %i.ce, 2
  %i.cg = and i8 %i.cf, 4
  %i.ch = or disjoint i8 %i.ca, %i.cg
  %i.ci = add i32 %i.bj, -4
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds i8, ptr %.sink.i42, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !16
  %i.cm = shl i8 %i.cl, 3
  %i.cn = and i8 %i.cm, 8
  %i.co = or disjoint i8 %i.ch, %i.cn
  %i.cp = add i32 %i.bj, -5
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds i8, ptr %.sink.i42, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !16
  %i.ct = shl i8 %i.cs, 4
  %i.cu = and i8 %i.ct, 16
  %i.cv = or disjoint i8 %i.co, %i.cu
  %i.cw = add i32 %i.bj, -6
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr inbounds i8, ptr %.sink.i42, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !16
  %i.da = shl i8 %i.cz, 5
  %i.db = and i8 %i.da, 32
  %i.dc = or disjoint i8 %i.cv, %i.db
  %i.dd = add i32 %i.bj, -7
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr inbounds i8, ptr %.sink.i42, i64 %i.de
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !16
  %i.dh = shl i8 %i.dg, 6
  %i.di = and i8 %i.dh, 64
  %i.dj = or i8 %i.dc, %i.di
  %i.dk = add i32 %i.bj, -8
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr inbounds i8, ptr %.sink.i42, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !16
  %i.do = shl i8 %i.dn, 7
  %i.dp = or i8 %i.dj, %i.do
  %i.dq = zext i8 %i.dp to i16
  %i.dr = icmp slt i32 %.fr, 2
  br i1 %i.dr, label %.preheader.split.us, label %.preheader.split.preheader

.preheader.split.preheader:                       ; preds = %.split47
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dt = load i32, ptr %i.ds, align 8, !tbaa !115 ; 7 uses
  %invariant.op = add i32 %i.dt, -7
  %i.du = sext i32 %invariant.op to i64
  %i.dv = mul i64 %i.bn, %i.du
  %.sink.i44 = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.dv
  %i.dw = getelementptr inbounds nuw i8, ptr %.sink.i44, i64 8
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !16
  %.reass.1 = add i32 %i.dt, -6
  %i.dy = sext i32 %.reass.1 to i64
  %i.dz = mul i64 %i.bn, %i.dy
  %.sink.i44.1 = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.dz
  %i.ea = getelementptr inbounds nuw i8, ptr %.sink.i44.1, i64 8
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !16
  %.reass.2 = add i32 %i.dt, -5
  %i.ec = sext i32 %.reass.2 to i64
  %i.ed = mul i64 %i.bn, %i.ec
  %.sink.i44.2 = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ed
  %i.ee = getelementptr inbounds nuw i8, ptr %.sink.i44.2, i64 8
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !16
  %.reass.3 = add i32 %i.dt, -4
  %i.eg = sext i32 %.reass.3 to i64
  %i.eh = mul i64 %i.bn, %i.eg
  %.sink.i44.3 = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.eh
  %i.ei = getelementptr inbounds nuw i8, ptr %.sink.i44.3, i64 8
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !16
  %i.ek = insertelement <4 x i8> poison, i8 %i.dx, i64 0
  %i.el = insertelement <4 x i8> %i.ek, i8 %i.eb, i64 1
  %i.em = insertelement <4 x i8> %i.el, i8 %i.ef, i64 2
  %i.en = insertelement <4 x i8> %i.em, i8 %i.ej, i64 3
  %i.eo = and <4 x i8> %i.en, splat (i8 1)
  %i.ep = zext nneg <4 x i8> %i.eo to <4 x i16>
  %i.eq = shl nuw nsw <4 x i16> %i.ep, <i16 8, i16 9, i16 10, i16 11>
  %.reass.4 = add i32 %i.dt, -3
  %i.er = sext i32 %.reass.4 to i64
  %i.es = mul i64 %i.bn, %i.er
  %.sink.i44.4 = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.es
  %i.et = getelementptr inbounds nuw i8, ptr %.sink.i44.4, i64 8
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !16
  %i.ev = and i8 %i.eu, 1
  %i.ew = zext nneg i8 %i.ev to i16
  %i.ex = shl nuw nsw i16 %i.ew, 12
  %.reass.5 = add i32 %i.dt, -2
  %i.ey = sext i32 %.reass.5 to i64
  %i.ez = mul i64 %i.bn, %i.ey
  %.sink.i44.5 = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.ez
  %i.fa = getelementptr inbounds nuw i8, ptr %.sink.i44.5, i64 8
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !16
  %i.fc = and i8 %i.fb, 1
  %i.fd = zext nneg i8 %i.fc to i16
  %i.fe = shl nuw nsw i16 %i.fd, 13
  %i.ff = call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %i.eq)
  %op.rdx = or disjoint i16 %i.ff, %i.ex
  %op.rdx72 = or disjoint i16 %op.rdx, %i.fe
  %.reass.6 = add i32 %i.dt, -1
  %i.fg = sext i32 %.reass.6 to i64
  %i.fh = mul i64 %i.bn, %i.fg
  %.sink.i44.6 = getelementptr inbounds nuw i8, ptr %i.bm, i64 %i.fh
  %i.fi = getelementptr inbounds nuw i8, ptr %.sink.i44.6, i64 8
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !16
  %i.fk = and i8 %i.fj, 1
  br label %.split55

.preheader.split.us:                              ; preds = %.split47
  %i.fl = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !16
  %i.fn = and i8 %i.fm, 1                         ; 4 uses
  %i.fo = insertelement <4 x i8> poison, i8 %i.fn, i64 0
  %i.fp = shufflevector <4 x i8> %i.fo, <4 x i8> poison, <4 x i32> zeroinitializer
  %i.fq = zext nneg <4 x i8> %i.fp to <4 x i16>
  %i.fr = shl nuw nsw <4 x i16> %i.fq, <i16 8, i16 9, i16 10, i16 11>
  %.tr65 = zext nneg i8 %i.fn to i16
  %i.fs = shl nuw nsw i16 %.tr65, 12
  %.tr66 = zext nneg i8 %i.fn to i16
  %i.ft = shl nuw nsw i16 %.tr66, 13
  %i.fu = call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %i.fr)
  %op.rdx73 = or disjoint i16 %i.fu, %i.fs
  %op.rdx74 = or i16 %op.rdx73, %i.ft
  br label %.split55

.split55:                                         ; preds = %.preheader.split.preheader, %.preheader.split.us
  %.sink71.in = phi i8 [ %i.fk, %.preheader.split.preheader ], [ %i.fn, %.preheader.split.us ]
  %.sink69 = phi i16 [ %op.rdx72, %.preheader.split.preheader ], [ %op.rdx74, %.preheader.split.us ]
  %.sink71 = zext nneg i8 %.sink71.in to i16
  %i.fv = shl nuw nsw i16 %.sink71, 14
  %i.fw = or i16 %.sink69, %i.fv
  %storemerge = or i16 %i.fw, %i.dq
  store i16 %storemerge, ptr %i.b, align 2, !tbaa !93
  %i.fx = call noundef zeroext i1 @_ZN2cv17QRCodeDecoderImpl17correctFormatInfoERt(ptr nonnull align 8 poison, ptr noundef nonnull align 2 dereferenceable(2) %i.b)
  br i1 %i.fx, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.split55
  %.pre = load i16, ptr %i.b, align 2, !tbaa !93  ; 2 uses
  %i.fy = load i16, ptr %i.a, align 2
  %.not = icmp ne i16 %i.fy, %.pre
  %or.cond.not = select i1 %i.bh, i1 %.not, i1 false
  br i1 %or.cond.not, label %bb.d, label %switch.lookup

bb.c:                                             ; preds = %.split55
  br i1 %i.bh, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.c
  %.pre60 = load i16, ptr %i.a, align 2, !tbaa !93
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.b, %._crit_edge
  %i.fz = phi i16 [ %.pre60, %._crit_edge ], [ %.pre, %bb.b ] ; 2 uses
  %i.ga = lshr i16 %i.fz, 13
  %i.gb = and i16 %i.ga, 3
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.gd = zext nneg i16 %i.gb to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZN2cv17QRCodeDecoderImpl16decodeFormatInfoERKNS_3MatERi, i64 %i.gd
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  store i32 %switch.ext, ptr %i.gc, align 4, !tbaa !137
  %i.ge = lshr i16 %i.fz, 10
  %i.gf = and i16 %i.ge, 7
  %i.gg = zext nneg i16 %i.gf to i32
  store i32 %i.gg, ptr %2, align 4, !tbaa !28
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %switch.lookup
  %.032 = phi i1 [ false, %bb.b ], [ true, %switch.lookup ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i1 %.032
}

; Function Attrs: mustprogress uwtable
end_hunk_2
begin_hunk_3_@_ZNSt23_Sp_counted_ptr_inplaceIN2cv17QRCodeEncoderImplESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info:bb.a
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #27
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv17QRCodeDecoderImplESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv17QRCodeDecoderImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %i.a) #27, !inline_history !351
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv17QRCodeDecoderImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv17QRCodeDecoderImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 88) #29
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv17QRCodeDecoderImplESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !152  ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !16
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #27
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define internal void @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_17QRCodeDecoderImpl15errorCorrectionERSt6vectorIhSaIhEEE3$_0E9_M_invokeERKSt9_Any_dataS3_"(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1) #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !354
  %i.b = load i32, ptr %1, align 4, !tbaa !139    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !140
  %i.e = icmp slt i32 %i.b, %i.d
  br i1 %i.e, label %.lr.ph.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv17QRCodeDecoderImpl15errorCorrectionERSt6vectorIhSaIhEEE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = sext i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i.i.i = add nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.h = load i32, ptr %i.c, align 4, !tbaa !140
  %i.i = sext i32 %i.h to i64
  %i.j = icmp slt i64 %indvars.iv.next.i.i.i, %i.i
  br i1 %i.j, label %bb.c, label %"_ZSt10__invoke_rIvRZN2cv17QRCodeDecoderImpl15errorCorrectionERSt6vectorIhSaIhEEE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit", !llvm.loop !352

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.g, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.b ] ; 3 uses
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !355, !nonnull !356, !align !357
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !89
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.l, i64 %indvars.iv.i.i.i
  %i.n = tail call noundef zeroext i1 @_ZN2cv17QRCodeDecoderImpl20errorCorrectionBlockERSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.m)
  br i1 %i.n, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !355, !nonnull !356, !align !357
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !89
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.p, i64 %indvars.iv.i.i.i ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !62   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !61
  %.not.i.i.i.i.i = icmp eq ptr %i.t, %i.r
  br i1 %.not.i.i.i.i.i, label %"_ZSt10__invoke_rIvRZN2cv17QRCodeDecoderImpl15errorCorrectionERSt6vectorIhSaIhEEE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit", label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i.i:  ; preds = %bb.d
  store ptr %i.r, ptr %i.s, align 8, !tbaa !61
  br label %"_ZSt10__invoke_rIvRZN2cv17QRCodeDecoderImpl15errorCorrectionERSt6vectorIhSaIhEEE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit"

"_ZSt10__invoke_rIvRZN2cv17QRCodeDecoderImpl15errorCorrectionERSt6vectorIhSaIhEEE3$_0JRKNS0_5RangeEEENSt9enable_ifIX16is_invocable_r_vIT_T0_DpT1_EESC_E4typeEOSD_DpOSE_.exit": ; preds = %bb.b, %bb.a, %bb.d, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i.i.i.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal noundef zeroext i1 @"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_17QRCodeDecoderImpl15errorCorrectionERSt6vectorIhSaIhEEE3$_0E10_M_managerERSt9_Any_dataRKSC_St18_Manager_operation"(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i32 noundef %2) #22 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  switch i32 %2, label %"_ZNSt14_Function_base13_Base_managerIZN2cv17QRCodeDecoderImpl15errorCorrectionERSt6vectorIhSaIhEEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit" [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  store ptr @"_ZTIZN2cv17QRCodeDecoderImpl15errorCorrectionERSt6vectorIhSaIhEEE3$_0", ptr %0, align 8, !tbaa !359
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv17QRCodeDecoderImpl15errorCorrectionERSt6vectorIhSaIhEEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %1, ptr %0, align 8, !tbaa !360
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv17QRCodeDecoderImpl15errorCorrectionERSt6vectorIhSaIhEEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

bb.d:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull readonly align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !149
  br label %"_ZNSt14_Function_base13_Base_managerIZN2cv17QRCodeDecoderImpl15errorCorrectionERSt6vectorIhSaIhEEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit"

"_ZNSt14_Function_base13_Base_managerIZN2cv17QRCodeDecoderImpl15errorCorrectionERSt6vectorIhSaIhEEE3$_0E10_M_managerERSt9_Any_dataRKS9_St18_Manager_operation.exit": ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  ret i1 false
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #23

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #24

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.xor.v16i8(<16 x i8>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.vector.reduce.xor.v4i8(<4 x i8>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v4i16(<4 x i16>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.or.v8i16(<8 x i16>) #23

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #3 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #4 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #8 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #16 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #17 = { cold nofree noreturn }
attributes #18 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+sse3,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #26 = { noreturn nounwind }
attributes #27 = { nounwind }
attributes #28 = { noreturn }
attributes #29 = { builtin nounwind }
attributes #30 = { builtin allocsize(0) }

!llvm.module.flags = !{!6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !60}
!1 = distinct !{!1, !60}
!2 = distinct !{!2, !60}
!3 = distinct !{!3, !60}
!4 = distinct !{!4, !60}
!5 = distinct !{!5, !60}
!6 = !{i32 8, !"PIC Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!9 = !{!"Simple C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"vtable pointer", !9, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!10, !10, i64 0}
!17 = !{!"any pointer", !10, i64 0}
!18 = !{!"p1 omnipotent char", !17, i64 0}
!19 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!20 = !{!"long", !10, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !19, i64 0, !20, i64 8, !10, i64 16}
!22 = !{!21, !18, i64 0}
!23 = !{!19, !18, i64 0}
!24 = !{!20, !20, i64 0}
!25 = !{!21, !20, i64 8}
!26 = !{!"p1 int", !17, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!11, !11, i64 0}
!29 = !{!"_ZTSN2cv11BlockParamsE", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16}
!30 = !{!29, !11, i64 8}
!31 = !{!29, !11, i64 4}
!32 = !{!29, !11, i64 16}
!33 = !{!29, !11, i64 12}
!34 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !26, i64 0, !26, i64 8, !26, i64 16}
!35 = !{!34, !26, i64 0}
!36 = !{!"_ZTSN2cv13QRCodeEncoderE"}
!37 = !{!"_ZTSN2cv13QRCodeEncoder15CorrectionLevelE", !10, i64 0}
!38 = !{!"_ZTSN2cv13QRCodeEncoder10EncodeModeE", !10, i64 0}
!39 = !{!"_ZTSN2cv13QRCodeEncoder6ParamsE", !11, i64 0, !37, i64 4, !38, i64 8, !11, i64 12}
!40 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !18, i64 0, !18, i64 8, !18, i64 16}
!41 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !40, i64 0}
!42 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !41, i64 0}
!43 = !{!"_ZTSSt6vectorIhSaIhEE", !42, i64 0}
!44 = !{!"p1 _ZTSN2cv12MatAllocatorE", !17, i64 0}
!45 = !{!"p1 _ZTSN2cv8UMatDataE", !17, i64 0}
!46 = !{!"_ZTSN2cv10DataLayoutE", !10, i64 0}
!47 = !{!"_ZTSN2cv8MatShapeE", !11, i64 0, !46, i64 4, !11, i64 8, !10, i64 12}
!48 = !{!"_ZTSN2cv7MatStepE", !10, i64 0}
!49 = !{!"_ZTSN2cv3MatE", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !44, i64 56, !45, i64 64, !47, i64 72, !48, i64 128}
!50 = !{!"p1 _ZTSN2cv3MatE", !17, i64 0}
!51 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE17_Vector_impl_dataE", !50, i64 0, !50, i64 8, !50, i64 16}
!52 = !{!"_ZTSNSt12_Vector_baseIN2cv3MatESaIS1_EE12_Vector_implE", !51, i64 0}
!53 = !{!"_ZTSSt12_Vector_baseIN2cv3MatESaIS1_EE", !52, i64 0}
!54 = !{!"_ZTSSt6vectorIN2cv3MatESaIS1_EE", !53, i64 0}
!55 = !{!"p1 _ZTSN2cv11VersionInfoE", !17, i64 0}
!56 = !{!"p1 _ZTSN2cv11BlockParamsE", !17, i64 0}
!57 = !{!"_ZTSN2cv17QRCodeEncoderImplE", !36, i64 0, !39, i64 8, !11, i64 24, !37, i64 28, !38, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !43, i64 48, !43, i64 72, !43, i64 96, !43, i64 120, !49, i64 144, !49, i64 352, !10, i64 560, !10, i64 561, !10, i64 562, !54, i64 568, !55, i64 592, !56, i64 600}
!58 = !{!57, !37, i64 28}
!59 = !{!34, !26, i64 16}
!60 = !{!"llvm.loop.mustprogress"}
!61 = !{!40, !18, i64 8}
!62 = !{!40, !18, i64 0}
!63 = !{!57, !38, i64 32}
!64 = !{!40, !18, i64 16}
!65 = !{!38, !38, i64 0}
!66 = !{!57, !11, i64 36}
!67 = !{!57, !10, i64 560}
!68 = !{!"llvm.loop.isvectorized", i32 1}
!69 = !{!"llvm.loop.unroll.runtime.disable"}
!70 = !{!57, !10, i64 562}
!71 = !{!57, !10, i64 561}
!72 = !{!57, !11, i64 24}
!73 = !{!57, !11, i64 40}
!74 = !{!57, !55, i64 592}
!75 = !{!57, !56, i64 600}
!76 = !{!"double", !10, i64 0}
!77 = !{!76, !76, i64 0}
!78 = !{!51, !50, i64 8}
!79 = !{!51, !50, i64 16}
!80 = !{!57, !11, i64 44}
!81 = !{!"_ZTSN2cv5Size_IiEE", !11, i64 0, !11, i64 4}
!82 = !{!81, !11, i64 0}
!83 = !{!81, !11, i64 4}
!84 = !{!"_ZTSN2cv11_InputArrayE", !11, i64 0, !17, i64 8, !81, i64 16}
!85 = !{!84, !11, i64 0}
!86 = !{!84, !17, i64 8}
!87 = !{!"p1 _ZTSSt6vectorIhSaIhEE", !17, i64 0}
!88 = !{!"_ZTSNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE17_Vector_impl_dataE", !87, i64 0, !87, i64 8, !87, i64 16}
!89 = !{!88, !87, i64 0}
!90 = !{!88, !87, i64 8}
!91 = !{!88, !87, i64 16}
!92 = !{!"short", !10, i64 0}
!93 = !{!92, !92, i64 0}
!94 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!95 = !{!18, !18, i64 0}
!96 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!97 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!98 = !{!"_ZTSN2cv11VersionInfoE", !11, i64 0, !10, i64 4, !10, i64 32}
!99 = !{!98, !11, i64 0}
!100 = !{!29, !11, i64 0}
!101 = !{!"llvm.loop.peeled.count", i32 1}
!102 = !{!"p1 _ZTSN2cv5MatOpE", !17, i64 0}
!103 = !{!"_ZTSN2cv4MatxIdLi4ELi1EEE", !10, i64 0}
!104 = !{!"_ZTSN2cv3VecIdLi4EEE", !103, i64 0}
!105 = !{!"_ZTSN2cv7Scalar_IdEE", !104, i64 0}
!106 = !{!"_ZTSN2cv7MatExprE", !102, i64 0, !11, i64 8, !49, i64 16, !49, i64 224, !49, i64 432, !76, i64 640, !76, i64 648, !105, i64 656}
!107 = !{!106, !102, i64 0}
!108 = !{!"_ZTSN2cv16MatConstIteratorE", !50, i64 0, !20, i64 8, !18, i64 16, !18, i64 24, !18, i64 32}
!109 = !{!108, !50, i64 0}
!110 = !{!108, !20, i64 8}
!111 = !{!108, !18, i64 32}
!112 = !{!108, !18, i64 24}
!113 = !{!49, !11, i64 0}
!114 = !{!"llvm.loop.unswitch.partial.disable"}
!115 = !{!49, !11, i64 8}
!116 = !{!49, !11, i64 4}
!117 = !{!49, !18, i64 24}
!118 = !{!50, !50, i64 0}
!119 = !{!51, !50, i64 0}
!120 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !11, i64 8, !11, i64 12}
!121 = !{!120, !11, i64 8}
!122 = !{!120, !11, i64 12}
!123 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !17, i64 0}
!124 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !123, i64 0}
!125 = !{!124, !123, i64 0}
!126 = !{!"_ZTSN2cv13QRCodeEncoder12ECIEncodingsE", !10, i64 0}
!127 = !{!"_ZTSN2cv13QRCodeDecoderE", !38, i64 8, !126, i64 12, !10, i64 16, !10, i64 17, !10, i64 18}
!128 = !{!127, !10, i64 18}
!129 = !{!"_ZTSN2cv17QRCodeDecoderImpl9BitstreamE", !43, i64 0, !11, i64 24, !20, i64 32}
!130 = !{!129, !11, i64 24}
!131 = !{!129, !20, i64 32}
!132 = !{!49, !11, i64 12}
!133 = !{!"_ZTSN2cv17QRCodeDecoderImplE", !127, i64 0, !37, i64 20, !11, i64 24, !129, i64 32}
!134 = !{!133, !11, i64 24}
!135 = !{!127, !38, i64 8}
!136 = !{!127, !126, i64 12}
!137 = !{!133, !37, i64 20}
!138 = !{!"_ZTSN2cv5RangeE", !11, i64 0, !11, i64 4}
!139 = !{!138, !11, i64 0}
!140 = !{!138, !11, i64 4}
!141 = !{!"p1 _ZTSN2cv17QRCodeDecoderImplE", !17, i64 0}
!142 = !{!141, !141, i64 0}
!143 = !{!"p1 _ZTSSt6vectorIS_IhSaIhEESaIS1_EE", !17, i64 0}
!144 = !{!143, !143, i64 0}
!145 = !{!"_ZTSSt14_Function_base", !10, i64 0, !17, i64 16}
!146 = !{!"_ZTSSt8functionIFvRKN2cv5RangeEEE", !145, i64 0, !17, i64 24}
!147 = !{!146, !17, i64 24}
!148 = !{!145, !17, i64 16}
!149 = !{i64 0, i64 8, !142, i64 8, i64 8, !144}
!150 = !{ptr @_ZN2cv29ParallelLoopBodyLambdaWrapperD2Ev}
!151 = !{!"_ZTSSt9type_info", !18, i64 8}
!152 = !{!151, !18, i64 8}
!153 = !{!34, !26, i64 8}
!154 = distinct !{!154, !"LVerDomain"}
!155 = distinct !{!155, !154}
!156 = distinct !{!156, !60, !68, !69}
!157 = distinct !{!157, !154}
!158 = distinct !{!158, !60, !68, !69}
!159 = distinct !{!159, !167}
!160 = distinct !{!160, !60, !68}
!161 = distinct !{!161, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!162 = distinct !{!162, !161, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!163 = distinct !{!163, !60}
end_hunk_3
