inline.NumInlined: 16780
inline.NumDeleted: 5497
begin_hunk_0_@_ZN3fmt3v126detail9formatbufISt15basic_streambufIcSt11char_traitsIcEEE6xsputnEPKcl:bb.a
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.preheader, label %vec.epilog.ph, !prof !1066

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %.026.i, -4                   ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index9 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.02532.i, i64 %index9
  %wide.load10 = load <4 x i8>, ptr %i.ad, align 1, !tbaa !95
  %i.ae = getelementptr inbounds nuw i8, ptr %i.v, i64 %index9
  store <4 x i8> %wide.load10, ptr %i.ae, align 1, !tbaa !95
  %index.next11 = add nuw i64 %index9, 4          ; 2 uses
  %i.af = icmp eq i64 %index.next11, %n.vec8
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1629

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n12 = icmp eq i64 %.026.i, %n.vec8
  br i1 %cmp.n12, label %._crit_edge.loopexit.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.026.i, 3                  ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.030.i.prol = phi i64 [ %i.aj, %.lr.ph.i.prol ], [ %.030.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.02532.i, i64 %.030.i.prol
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !95
  %i.ai = getelementptr inbounds nuw i8, ptr %i.v, i64 %.030.i.prol
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !95
  %i.aj = add nuw i64 %.030.i.prol, 1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !1630

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.030.i.unr = phi i64 [ %.030.i.ph, %.lr.ph.i.preheader ], [ %i.aj, %.lr.ph.i.prol ]
  %i.ak = sub i64 %.030.i.ph, %.026.i
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %._crit_edge.loopexit.i, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i = load i64, ptr %i.d, align 8, !tbaa !1001
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.d
  %i.am = phi i64 [ %.pre37.i, %._crit_edge.loopexit.i ], [ %.027.i, %bb.d ]
  %i.an = add i64 %i.am, %.026.i                  ; 2 uses
  store i64 %i.an, ptr %i.d, align 8, !tbaa !1001
  %i.ao = getelementptr inbounds nuw i8, ptr %.02532.i, i64 %.026.i ; 2 uses
  %.not.i = icmp eq ptr %i.ao, %i.c
  br i1 %.not.i, label %_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit, label %bb.b, !llvm.loop !1069

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.030.i = phi i64 [ %i.be, %.lr.ph.i ], [ %.030.i.unr, %.lr.ph.i.prol.loopexit ] ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.02532.i, i64 %.030.i
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !95
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 %.030.i
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !95
  %i.as = add nuw i64 %.030.i, 1                  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.02532.i, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !95
  %i.av = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.as
  store i8 %i.au, ptr %i.av, align 1, !tbaa !95
  %i.aw = add nuw i64 %.030.i, 2                  ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.02532.i, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !95
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.aw
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !95
  %i.ba = add nuw i64 %.030.i, 3                  ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.02532.i, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !95
  %i.bd = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.ba
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !95
  %i.be = add nuw i64 %.030.i, 4                  ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.be, %.026.i
  br i1 %exitcond.not.i.3, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !1631

_ZN3fmt3v126detail6bufferIcE6appendIcEEvPKT_S7_.exit: ; preds = %._crit_edge.i, %bb.a
  ret i64 %2
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN3fmt3v126detail9formatbufISt15basic_streambufIcSt11char_traitsIcEEE8overflowEi(ptr noundef nonnull align 8 dereferenceable(72) %0, i32 noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = icmp eq i32 %1, -1
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1625, !nonnull !143, !align !1133 ; 5 uses
  %i.d = trunc i32 %1 to i8
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1001 ; 2 uses
  %i.g = add i64 %i.f, 1                          ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !1000
  %i.j = icmp ugt i64 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !991
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 noundef %i.g), !inline_history !1268
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !1001 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit:  ; preds = %bb.b, %bb.c
  %.pre-phi.i = phi i64 [ %i.g, %bb.b ], [ %.pre2.i, %bb.c ]
  %i.m = phi i64 [ %i.f, %bb.b ], [ %.pre.i, %bb.c ]
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !999
  store i64 %.pre-phi.i, ptr %i.e, align 8, !tbaa !1001
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.m
  store i8 %i.d, ptr %i.o, align 1, !tbaa !95
  br label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit, %bb.a
  ret i32 %1
}

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE4initEPSt15basic_streambufIcS1_E(ptr noundef nonnull align 8 dereferenceable(264), ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseC2Ev(ptr noundef nonnull align 8 dereferenceable(216)) unnamed_addr #4

declare noundef ptr @_ZNK11OpenImageIO4v3_18TypeDesc5c_strEv(ptr noundef nonnull align 4 dereferenceable(8)) local_unnamed_addr #5

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L12interppixel_IfEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, float noundef %2, ptr writeonly captures(none) %3, i64 %4, i32 noundef %5) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator", align 8 ; 30 uses
  %i.a = trunc i64 %4 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !171  ; 2 uses
  %i.d = tail call noundef zeroext i1 @_ZNK11OpenImageIO4v3_112ImageBufImpl13validate_specENS0_6DoLockE(ptr noundef nonnull align 8 dereferenceable(696) %i.c, i8 1) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %i.a) ; 13 uses
  %.not = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = shl nsw i32 %.sroa.speculated, 2
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 2
  %i.j = alloca i8, i64 %i.i, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ] ; 12 uses
  %i.l = sext i32 %.sroa.speculated to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 9 uses
  %i.n = shl nsw i32 %.sroa.speculated, 1
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.o ; 9 uses
  %i.q = mul nsw i32 %.sroa.speculated, 3
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.r ; 9 uses
  %i.t = fadd float %1, -5.000000e-01             ; 2 uses
  %i.u = fadd float %2, -5.000000e-01             ; 2 uses
  %i.v = tail call noundef float @llvm.floor.f32(float %i.t) ; 2 uses
  %i.w = fsub float %i.t, %i.v                    ; 4 uses
  %i.x = tail call noundef float @llvm.floor.f32(float %i.u) ; 2 uses
  %i.y = fsub float %i.u, %i.x                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #42
  store ptr %0, ptr %6, align 8, !tbaa !453
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !457
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 5 uses
  store ptr null, ptr %i.ab, align 8, !tbaa !458
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i32 0, ptr %i.z, align 8
  store i32 1, ptr %i.ac, align 8, !tbaa !459
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 124
  store i8 0, ptr %i.ad, align 4, !tbaa !460
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef %5, i1 zeroext poison)
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.ah = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.x, i64 1
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ak = fptosi <4 x float> %i.aj to <4 x i32>   ; 3 uses
  %i.al = add nsw <4 x i32> %i.ak, <i32 0, i32 2, i32 0, i32 2>
  store <4 x i32> %i.al, ptr %i.ae, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  store i32 0, ptr %i.am, align 4, !tbaa !504
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 3 uses
  store i32 1, ptr %i.an, align 8, !tbaa !505
  %i.ao = extractelement <4 x i32> %i.ak, i64 0
  %i.ap = extractelement <4 x i32> %i.ak, i64 2
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef %i.ao, i32 noundef %i.ap, i32 noundef 0)
  %i.aq = load i32, ptr %i.ae, align 4, !tbaa !506 ; 2 uses
  %i.ar = load i32, ptr %i.af, align 8, !tbaa !507
  %i.as = icmp eq i32 %i.aq, %i.ar
  %.pre.i.i = load i32, ptr %i.ag, align 4, !tbaa !508 ; 2 uses
  br i1 %i.as, label %._crit_edge.i.i, label %bb.d

._crit_edge.i.i:                                  ; preds = %bb.c
  %.pre9.i.i = load i32, ptr %i.an, align 8, !tbaa !505
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.au = load i32, ptr %i.at, align 8, !tbaa !509
  %i.av = icmp eq i32 %.pre.i.i, %i.au
  %.pre10.i.i = load i32, ptr %i.an, align 8, !tbaa !505 ; 2 uses
  %i.aw = load i32, ptr %i.am, align 4
  %i.ax = icmp eq i32 %i.aw, %.pre10.i.i
  %or.cond.i.i = select i1 %i.av, i1 true, i1 %i.ax
  br i1 %or.cond.i.i, label %bb.e, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiiiiNS1_8WrapModeE.exit

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i
  %i.ay = phi i32 [ %.pre9.i.i, %._crit_edge.i.i ], [ %.pre10.i.i, %bb.d ]
  store i8 0, ptr %i.z, align 8, !tbaa !510
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 60
  store i32 %i.aq, ptr %i.az, align 4, !tbaa !511
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 %.pre.i.i, ptr %i.ba, align 8, !tbaa !512
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 68
  store i32 %i.ay, ptr %i.bb, align 4, !tbaa !513
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiiiiNS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiiiiNS1_8WrapModeE.exit: ; preds = %bb.d, %bb.e
  %i.bc = icmp sgt i32 %.sroa.speculated, 0       ; 2 uses
  br i1 %i.bc, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.preheader, label %.preheader

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.preheader: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiiiiNS1_8WrapModeE.exit
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64 ; 17 uses
  %i.bd = add nsw i64 %wide.trip.count, -1        ; 4 uses
  %i.be = load ptr, ptr %i.ab, align 8, !tbaa !458 ; 7 uses
  %min.iters.check = icmp ult i32 %.sroa.speculated, 8
  %i.bf = ptrtoaddr ptr %i.k to i64
  %i.bg = ptrtoaddr ptr %i.be to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %diff.check = icmp ult i64 %i.bh, 32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us: ; preds = %._crit_edge.us
  %i.bi = load ptr, ptr %i.ab, align 8, !tbaa !458 ; 7 uses
  %min.iters.check.1 = icmp ult i32 %.sroa.speculated, 8
  %i.bj = ptrtoaddr ptr %i.m to i64
  %i.bk = ptrtoaddr ptr %i.bi to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %diff.check.1 = icmp ult i64 %i.bl, 32
  %or.cond.1 = select i1 %min.iters.check.1, i1 true, i1 %diff.check.1
  br i1 %or.cond.1, label %scalar.ph.preheader.1, label %vector.ph.1

vector.ph.1:                                      ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us
  %n.vec.1 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body.1

vector.body.1:                                    ; preds = %vector.body.1, %vector.ph.1
  %index.1 = phi i64 [ 0, %vector.ph.1 ], [ %index.next.1, %vector.body.1 ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %index.1 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %wide.load.1 = load <4 x float>, ptr %i.bm, align 4, !tbaa !461
  %wide.load4.1 = load <4 x float>, ptr %i.bn, align 4, !tbaa !461
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index.1 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store <4 x float> %wide.load.1, ptr %i.bo, align 4, !tbaa !461
  store <4 x float> %wide.load4.1, ptr %i.bp, align 4, !tbaa !461
  %index.next.1 = add nuw i64 %index.1, 8         ; 2 uses
  %i.bq = icmp eq i64 %index.next.1, %n.vec.1
  br i1 %i.bq, label %middle.block.1, label %vector.body.1, !llvm.loop !1632

middle.block.1:                                   ; preds = %vector.body.1
  %cmp.n.1 = icmp eq i64 %n.vec.1, %wide.trip.count
  br i1 %cmp.n.1, label %._crit_edge.us.1, label %scalar.ph.preheader.1

scalar.ph.preheader.1:                            ; preds = %middle.block.1, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us
  %indvars.iv.ph.1 = phi i64 [ 0, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us ], [ %n.vec.1, %middle.block.1 ] ; 3 uses
  %i.br = sub nsw i64 %i.bd, %indvars.iv.ph.1
  %xtraiter.1 = and i64 %wide.trip.count, 3       ; 2 uses
  %lcmp.mod.1.not = icmp eq i64 %xtraiter.1, 0
  br i1 %lcmp.mod.1.not, label %scalar.ph.prol.loopexit.1, label %scalar.ph.prol.1

scalar.ph.prol.1:                                 ; preds = %scalar.ph.preheader.1, %scalar.ph.prol.1
  %indvars.iv.prol.1 = phi i64 [ %indvars.iv.next.prol.1, %scalar.ph.prol.1 ], [ %indvars.iv.ph.1, %scalar.ph.preheader.1 ] ; 3 uses
  %prol.iter.1 = phi i64 [ %prol.iter.next.1, %scalar.ph.prol.1 ], [ 0, %scalar.ph.preheader.1 ]
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.prol.1
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !461
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.prol.1
  store float %i.bt, ptr %i.bu, align 4, !tbaa !461
  %indvars.iv.next.prol.1 = add nuw nsw i64 %indvars.iv.prol.1, 1 ; 2 uses
  %prol.iter.next.1 = add i64 %prol.iter.1, 1     ; 2 uses
  %prol.iter.cmp.1.not = icmp eq i64 %prol.iter.next.1, %xtraiter.1
  br i1 %prol.iter.cmp.1.not, label %scalar.ph.prol.loopexit.1, label %scalar.ph.prol.1, !llvm.loop !1633

scalar.ph.prol.loopexit.1:                        ; preds = %scalar.ph.prol.1, %scalar.ph.preheader.1
  %indvars.iv.unr.1 = phi i64 [ %indvars.iv.ph.1, %scalar.ph.preheader.1 ], [ %indvars.iv.next.prol.1, %scalar.ph.prol.1 ]
  %i.bv = icmp ult i64 %i.br, 3
  br i1 %i.bv, label %._crit_edge.us.1, label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph.prol.loopexit.1, %scalar.ph.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.3.1, %scalar.ph.1 ], [ %indvars.iv.unr.1, %scalar.ph.prol.loopexit.1 ] ; 6 uses
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.1
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !461
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.1
  store float %i.bx, ptr %i.by, align 4, !tbaa !461
  %indvars.iv.next.129 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.next.129
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !461
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next.129
  store float %i.ca, ptr %i.cb, align 4, !tbaa !461
  %indvars.iv.next.1.1 = add nuw nsw i64 %indvars.iv.1, 2 ; 2 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.next.1.1
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !461
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next.1.1
  store float %i.cd, ptr %i.ce, align 4, !tbaa !461
  %indvars.iv.next.2.1 = add nuw nsw i64 %indvars.iv.1, 3 ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.next.2.1
  %i.cg = load float, ptr %i.cf, align 4, !tbaa !461
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.next.2.1
  store float %i.cg, ptr %i.ch, align 4, !tbaa !461
  %indvars.iv.next.3.1 = add nuw nsw i64 %indvars.iv.1, 4 ; 2 uses
  %exitcond41.not.3.1 = icmp eq i64 %indvars.iv.next.3.1, %wide.trip.count
  br i1 %exitcond41.not.3.1, label %._crit_edge.us.1, label %scalar.ph.1, !llvm.loop !1634

._crit_edge.us.1:                                 ; preds = %scalar.ph.prol.loopexit.1, %scalar.ph.1, %middle.block.1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1 unwind label %.split38.us, !llvm.loop !1635

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1: ; preds = %._crit_edge.us.1
  %i.ci = load ptr, ptr %i.ab, align 8, !tbaa !458 ; 7 uses
  %min.iters.check.2 = icmp ult i32 %.sroa.speculated, 8
  %i.cj = ptrtoaddr ptr %i.p to i64
  %i.ck = ptrtoaddr ptr %i.ci to i64
  %i.cl = sub i64 %i.cj, %i.ck
  %diff.check.2 = icmp ult i64 %i.cl, 32
  %or.cond.2 = select i1 %min.iters.check.2, i1 true, i1 %diff.check.2
  br i1 %or.cond.2, label %scalar.ph.preheader.2, label %vector.ph.2

vector.ph.2:                                      ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1
  %n.vec.2 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.2, %vector.ph.2
  %index.2 = phi i64 [ 0, %vector.ph.2 ], [ %index.next.2, %vector.body.2 ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %index.2 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %wide.load.2 = load <4 x float>, ptr %i.cm, align 4, !tbaa !461
  %wide.load4.2 = load <4 x float>, ptr %i.cn, align 4, !tbaa !461
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index.2 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store <4 x float> %wide.load.2, ptr %i.co, align 8, !tbaa !461
  store <4 x float> %wide.load4.2, ptr %i.cp, align 8, !tbaa !461
  %index.next.2 = add nuw i64 %index.2, 8         ; 2 uses
  %i.cq = icmp eq i64 %index.next.2, %n.vec.2
  br i1 %i.cq, label %middle.block.2, label %vector.body.2, !llvm.loop !1632

middle.block.2:                                   ; preds = %vector.body.2
  %cmp.n.2 = icmp eq i64 %n.vec.2, %wide.trip.count
  br i1 %cmp.n.2, label %._crit_edge.us.2, label %scalar.ph.preheader.2

scalar.ph.preheader.2:                            ; preds = %middle.block.2, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1
  %indvars.iv.ph.2 = phi i64 [ 0, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1 ], [ %n.vec.2, %middle.block.2 ] ; 3 uses
  %i.cr = sub nsw i64 %i.bd, %indvars.iv.ph.2
  %xtraiter.2 = and i64 %wide.trip.count, 3       ; 2 uses
  %lcmp.mod.2.not = icmp eq i64 %xtraiter.2, 0
  br i1 %lcmp.mod.2.not, label %scalar.ph.prol.loopexit.2, label %scalar.ph.prol.2

scalar.ph.prol.2:                                 ; preds = %scalar.ph.preheader.2, %scalar.ph.prol.2
  %indvars.iv.prol.2 = phi i64 [ %indvars.iv.next.prol.2, %scalar.ph.prol.2 ], [ %indvars.iv.ph.2, %scalar.ph.preheader.2 ] ; 3 uses
  %prol.iter.2 = phi i64 [ %prol.iter.next.2, %scalar.ph.prol.2 ], [ 0, %scalar.ph.preheader.2 ]
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.prol.2
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !461
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.prol.2
  store float %i.ct, ptr %i.cu, align 4, !tbaa !461
  %indvars.iv.next.prol.2 = add nuw nsw i64 %indvars.iv.prol.2, 1 ; 2 uses
  %prol.iter.next.2 = add i64 %prol.iter.2, 1     ; 2 uses
  %prol.iter.cmp.2.not = icmp eq i64 %prol.iter.next.2, %xtraiter.2
  br i1 %prol.iter.cmp.2.not, label %scalar.ph.prol.loopexit.2, label %scalar.ph.prol.2, !llvm.loop !1633

scalar.ph.prol.loopexit.2:                        ; preds = %scalar.ph.prol.2, %scalar.ph.preheader.2
  %indvars.iv.unr.2 = phi i64 [ %indvars.iv.ph.2, %scalar.ph.preheader.2 ], [ %indvars.iv.next.prol.2, %scalar.ph.prol.2 ]
  %i.cv = icmp ult i64 %i.cr, 3
  br i1 %i.cv, label %._crit_edge.us.2, label %scalar.ph.2

scalar.ph.2:                                      ; preds = %scalar.ph.prol.loopexit.2, %scalar.ph.2
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.3.2, %scalar.ph.2 ], [ %indvars.iv.unr.2, %scalar.ph.prol.loopexit.2 ] ; 6 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.2
  %i.cx = load float, ptr %i.cw, align 4, !tbaa !461
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_1L12interppixel_IfEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE:bb.a
  %i.fd = icmp ult i64 %i.ez, 3
  br i1 %i.fd, label %._crit_edge.us, label %scalar.ph

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us unwind label %.split38.us, !llvm.loop !1635

.split38.us:                                      ; preds = %._crit_edge.us.3, %._crit_edge.us.2, %._crit_edge.us.1, %._crit_edge.us
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split: ; preds = %.preheader
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.1 unwind label %.split38, !llvm.loop !1635

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.1: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.2 unwind label %.split38, !llvm.loop !1635

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.2: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %.split.us unwind label %.split38, !llvm.loop !1635

.preheader:                                       ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiiiiNS1_8WrapModeE.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split unwind label %.split38, !llvm.loop !1635

.split.us:                                        ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.2, %._crit_edge.us.3
  %i.ff = fsub float 1.000000e+00, %i.w           ; 3 uses
  %i.fg = fsub float 1.000000e+00, %i.y           ; 2 uses
  br i1 %i.bc, label %.lr.ph.preheader.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit

.lr.ph.preheader.i:                               ; preds = %.split.us
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64 ; 3 uses
  %min.iters.check6 = icmp ult i32 %.sroa.speculated, 4
  br i1 %min.iters.check6, label %.lr.ph.i.preheader, label %vector.ph7

vector.ph7:                                       ; preds = %.lr.ph.preheader.i
  %n.vec9 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.w, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert10 = insertelement <4 x float> poison, float %i.ff, i64 0
  %broadcast.splat11 = shufflevector <4 x float> %broadcast.splatinsert10, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert12 = insertelement <4 x float> poison, float %i.y, i64 0
  %broadcast.splat13 = shufflevector <4 x float> %broadcast.splatinsert12, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert14 = insertelement <4 x float> poison, float %i.fg, i64 0
  %broadcast.splat15 = shufflevector <4 x float> %broadcast.splatinsert14, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body16

vector.body16:                                    ; preds = %vector.body16, %vector.ph7
  %index17 = phi i64 [ 0, %vector.ph7 ], [ %index.next22, %vector.body16 ] ; 6 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index17
  %wide.load18 = load <4 x float>, ptr %i.fh, align 16, !tbaa !461
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index17
  %wide.load19 = load <4 x float>, ptr %i.fi, align 4, !tbaa !461
  %i.fj = fmul <4 x float> %broadcast.splat, %wide.load19
  %i.fk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load18, <4 x float> %broadcast.splat11, <4 x float> %i.fj)
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index17
  %wide.load20 = load <4 x float>, ptr %i.fl, align 8, !tbaa !461
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index17
  %wide.load21 = load <4 x float>, ptr %i.fm, align 4, !tbaa !461
  %i.fn = fmul <4 x float> %broadcast.splat, %wide.load21
  %i.fo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load20, <4 x float> %broadcast.splat11, <4 x float> %i.fn)
  %i.fp = fmul <4 x float> %broadcast.splat13, %i.fo
  %i.fq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat15, <4 x float> %i.fk, <4 x float> %i.fp)
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index17
  store <4 x float> %i.fq, ptr %i.fr, align 4, !tbaa !461
  %index.next22 = add nuw i64 %index17, 4         ; 2 uses
  %i.fs = icmp eq i64 %index.next22, %n.vec9
  br i1 %i.fs, label %middle.block23, label %vector.body16, !llvm.loop !1636

middle.block23:                                   ; preds = %vector.body16
  %cmp.n24 = icmp eq i64 %n.vec9, %wide.trip.count.i
  br i1 %cmp.n24, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block23
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec9, %middle.block23 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 6 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !461
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !461
  %i.fx = fmul float %i.w, %i.fw
  %i.fy = call float @llvm.fmuladd.f32(float %i.fu, float %i.ff, float %i.fx)
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.ga = load float, ptr %i.fz, align 4, !tbaa !461
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.gc = load float, ptr %i.gb, align 4, !tbaa !461
  %i.gd = fmul float %i.w, %i.gc
  %i.ge = call float @llvm.fmuladd.f32(float %i.ga, float %i.ff, float %i.gd)
  %i.gf = fmul float %i.y, %i.ge
  %i.gg = call float @llvm.fmuladd.f32(float %i.fg, float %i.fy, float %i.gf)
  %i.gh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  store float %i.gg, ptr %i.gh, align 4, !tbaa !461
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i, !llvm.loop !1637

_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit: ; preds = %.lr.ph.i, %middle.block23, %.split.us
  %i.gi = load ptr, ptr %i.aa, align 8, !tbaa !457
  %.not.i = icmp eq ptr %i.gi, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.gj = landingpad { ptr, i32 }
          catch ptr null
  %i.gk = extractvalue { ptr, i32 } %i.gj, 0
  call void @__clang_call_terminate(ptr %i.gk) #47
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #42
  ret void

.split38:                                         ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.2, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.1, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIffEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split, %.preheader
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.split38.us, %.split38
  %.us-phi = phi { ptr, i32 } [ %i.gl, %.split38 ], [ %i.fe, %.split38.us ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %6) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #42
  resume { ptr, i32 } %.us-phi
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L12interppixel_IhEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, float noundef %2, ptr writeonly captures(none) %3, i64 %4, i32 noundef %5) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 8 uses
  %6 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.177", align 8 ; 27 uses
  %i.b = trunc i64 %4 to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !171  ; 2 uses
  %i.e = tail call noundef zeroext i1 @_ZNK11OpenImageIO4v3_112ImageBufImpl13validate_specENS0_6DoLockE(ptr noundef nonnull align 8 dereferenceable(696) %i.d, i8 1) ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %i.b) ; 10 uses
  %.not = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = shl nsw i32 %.sroa.speculated, 2
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 2
  %i.k = alloca i8, i64 %i.j, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.l = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #42
  store ptr %i.l, ptr %i.a, align 16, !tbaa !1638
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = sext i32 %.sroa.speculated to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.n ; 3 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !1638
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = shl nsw i32 %.sroa.speculated, 1
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.r ; 3 uses
  store ptr %i.s, ptr %i.p, align 16, !tbaa !1638
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.u = mul nsw i32 %.sroa.speculated, 3
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.v ; 3 uses
  store ptr %i.w, ptr %i.t, align 8, !tbaa !1638
  %i.x = fadd float %1, -5.000000e-01             ; 2 uses
  %i.y = fadd float %2, -5.000000e-01             ; 2 uses
  %i.z = call noundef float @llvm.floor.f32(float %i.x) ; 2 uses
  %i.aa = fsub float %i.x, %i.z                   ; 4 uses
  %i.ab = call noundef float @llvm.floor.f32(float %i.y) ; 2 uses
  %i.ac = fsub float %i.y, %i.ab                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #42
  store ptr %0, ptr %6, align 8, !tbaa !453
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store ptr null, ptr %i.ae, align 8, !tbaa !457
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  store ptr null, ptr %i.af, align 8, !tbaa !458
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i32 0, ptr %i.ad, align 8
  store i32 1, ptr %i.ag, align 8, !tbaa !459
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 124
  store i8 0, ptr %i.ah, align 4, !tbaa !460
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef %5, i1 zeroext poison)
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.al = insertelement <2 x float> poison, float %i.z, i64 0
  %i.am = insertelement <2 x float> %i.al, float %i.ab, i64 1
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ao = fptosi <4 x float> %i.an to <4 x i32>   ; 3 uses
  %i.ap = add nsw <4 x i32> %i.ao, <i32 0, i32 2, i32 0, i32 2>
  store <4 x i32> %i.ap, ptr %i.ai, align 4, !tbaa !3
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  store i32 0, ptr %i.aq, align 4, !tbaa !504
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 3 uses
  store i32 1, ptr %i.ar, align 8, !tbaa !505
  %i.as = extractelement <4 x i32> %i.ao, i64 0
  %i.at = extractelement <4 x i32> %i.ao, i64 2
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef %i.as, i32 noundef %i.at, i32 noundef 0)
  %i.au = load i32, ptr %i.ai, align 4, !tbaa !506 ; 2 uses
  %i.av = load i32, ptr %i.aj, align 8, !tbaa !507
  %i.aw = icmp eq i32 %i.au, %i.av
  %.pre.i.i = load i32, ptr %i.ak, align 4, !tbaa !508 ; 2 uses
  br i1 %i.aw, label %._crit_edge.i.i, label %bb.d

._crit_edge.i.i:                                  ; preds = %bb.c
  %.pre9.i.i = load i32, ptr %i.ar, align 8, !tbaa !505
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !509
  %i.az = icmp eq i32 %.pre.i.i, %i.ay
  %.pre10.i.i = load i32, ptr %i.ar, align 8, !tbaa !505 ; 2 uses
  %i.ba = load i32, ptr %i.aq, align 4
  %i.bb = icmp eq i32 %i.ba, %.pre10.i.i
  %or.cond.i.i = select i1 %i.az, i1 true, i1 %i.bb
  br i1 %or.cond.i.i, label %bb.e, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i
  %i.bc = phi i32 [ %.pre9.i.i, %._crit_edge.i.i ], [ %.pre10.i.i, %bb.d ]
  store i8 0, ptr %i.ad, align 8, !tbaa !510
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 60
  store i32 %i.au, ptr %i.bd, align 4, !tbaa !511
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 %.pre.i.i, ptr %i.be, align 8, !tbaa !512
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 68
  store i32 %i.bc, ptr %i.bf, align 4, !tbaa !513
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit: ; preds = %bb.d, %bb.e
  %i.bg = icmp sgt i32 %.sroa.speculated, 0       ; 2 uses
  br i1 %i.bg, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.preheader, label %.preheader

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.preheader: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64 ; 7 uses
  %i.bh = shl nuw nsw i64 %wide.trip.count, 2
  %min.iters.check = icmp ult i32 %.sroa.speculated, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.us

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us: ; preds = %._crit_edge.us
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv423, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next43, 4
  br i1 %exitcond45.not, label %.split.us, label %.preheader.us, !llvm.loop !1640

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !95
  %i.bk = uitofp i8 %i.bj to float
  %i.bl = fmul nnan float %i.bk, f0x3B808081
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv
  store float %i.bl, ptr %i.bm, align 4, !tbaa !461
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv.next
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !95
  %i.bp = uitofp i8 %i.bo to float
  %i.bq = fmul nnan float %i.bp, f0x3B808081
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.next
  store float %i.bq, ptr %i.br, align 4, !tbaa !461
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv.next.1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !95
  %i.bu = uitofp i8 %i.bt to float
  %i.bv = fmul nnan float %i.bu, f0x3B808081
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.next.1
  store float %i.bv, ptr %i.bw, align 4, !tbaa !461
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv.next.2
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !95
  %i.bz = uitofp i8 %i.by to float
  %i.ca = fmul nnan float %i.bz, f0x3B808081
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.next.2
  store float %i.ca, ptr %i.cb, align 4, !tbaa !461
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond41.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond41.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1641

.preheader.us:                                    ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.preheader, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us
  %indvars.iv423 = phi i64 [ 0, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.preheader ], [ %indvars.iv.next43, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us ] ; 2 uses
  %i.cc = load ptr, ptr %i.af, align 8, !tbaa !458 ; 8 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv423
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1638 ; 8 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us
  %scevgep = getelementptr i8, ptr %i.ce, i64 %i.bh
  %scevgep4 = getelementptr i8, ptr %i.cc, i64 %wide.trip.count
  %bound0 = icmp ult ptr %i.ce, %scevgep4
  %bound1 = icmp ult ptr %i.cc, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 %index ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %wide.load = load <4 x i8>, ptr %i.cf, align 1, !tbaa !95, !alias.scope !1642
  %wide.load5 = load <4 x i8>, ptr %i.cg, align 1, !tbaa !95, !alias.scope !1642
  %i.ch = uitofp <4 x i8> %wide.load to <4 x float>
  %i.ci = uitofp <4 x i8> %wide.load5 to <4 x float>
  %i.cj = fmul nnan <4 x float> %i.ch, splat (float f0x3B808081)
  %i.ck = fmul nnan <4 x float> %i.ci, splat (float f0x3B808081)
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %index ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store <4 x float> %i.cj, ptr %i.cl, align 4, !tbaa !461, !alias.scope !1645, !noalias !1642
  store <4 x float> %i.ck, ptr %i.cm, align 4, !tbaa !461, !alias.scope !1645, !noalias !1642
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !1647

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv.prol
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !95
  %i.cq = uitofp i8 %i.cp to float
  %i.cr = fmul nnan float %i.cq, f0x3B808081
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.prol
  store float %i.cr, ptr %i.cs, align 4, !tbaa !461
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1648

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ct = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.cu = icmp ugt i64 %i.ct, -4
  br i1 %i.cu, label %._crit_edge.us, label %scalar.ph

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us unwind label %.split38.us, !llvm.loop !1640

.split38.us:                                      ; preds = %._crit_edge.us
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split: ; preds = %.preheader
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.1 unwind label %.split38, !llvm.loop !1640

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.1: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.2 unwind label %.split38, !llvm.loop !1640

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.2: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %.split.us unwind label %.split38, !llvm.loop !1640

.preheader:                                       ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split unwind label %.split38, !llvm.loop !1640

.split.us:                                        ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.2
  %i.cw = fsub float 1.000000e+00, %i.aa          ; 3 uses
  %i.cx = fsub float 1.000000e+00, %i.ac          ; 2 uses
  br i1 %i.bg, label %.lr.ph.preheader.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit

.lr.ph.preheader.i:                               ; preds = %.split.us
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64 ; 3 uses
  %min.iters.check7 = icmp ult i32 %.sroa.speculated, 4
  br i1 %min.iters.check7, label %.lr.ph.i.preheader, label %vector.ph8

vector.ph8:                                       ; preds = %.lr.ph.preheader.i
  %n.vec10 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.aa, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert11 = insertelement <4 x float> poison, float %i.cw, i64 0
  %broadcast.splat12 = shufflevector <4 x float> %broadcast.splatinsert11, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert13 = insertelement <4 x float> poison, float %i.ac, i64 0
  %broadcast.splat14 = shufflevector <4 x float> %broadcast.splatinsert13, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert15 = insertelement <4 x float> poison, float %i.cx, i64 0
  %broadcast.splat16 = shufflevector <4 x float> %broadcast.splatinsert15, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body17

vector.body17:                                    ; preds = %vector.body17, %vector.ph8
  %index18 = phi i64 [ 0, %vector.ph8 ], [ %index.next23, %vector.body17 ] ; 6 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index18
  %wide.load19 = load <4 x float>, ptr %i.cy, align 16, !tbaa !461
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index18
  %wide.load20 = load <4 x float>, ptr %i.cz, align 4, !tbaa !461
  %i.da = fmul <4 x float> %broadcast.splat, %wide.load20
  %i.db = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load19, <4 x float> %broadcast.splat12, <4 x float> %i.da)
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index18
  %wide.load21 = load <4 x float>, ptr %i.dc, align 8, !tbaa !461
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index18
  %wide.load22 = load <4 x float>, ptr %i.dd, align 4, !tbaa !461
  %i.de = fmul <4 x float> %broadcast.splat, %wide.load22
  %i.df = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load21, <4 x float> %broadcast.splat12, <4 x float> %i.de)
  %i.dg = fmul <4 x float> %broadcast.splat14, %i.df
  %i.dh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat16, <4 x float> %i.db, <4 x float> %i.dg)
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index18
  store <4 x float> %i.dh, ptr %i.di, align 4, !tbaa !461
  %index.next23 = add nuw i64 %index18, 4         ; 2 uses
  %i.dj = icmp eq i64 %index.next23, %n.vec10
  br i1 %i.dj, label %middle.block24, label %vector.body17, !llvm.loop !1649

middle.block24:                                   ; preds = %vector.body17
  %cmp.n25 = icmp eq i64 %n.vec10, %wide.trip.count.i
  br i1 %cmp.n25, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block24
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec10, %middle.block24 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 6 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !461
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !461
  %i.do = fmul float %i.aa, %i.dn
  %i.dp = call float @llvm.fmuladd.f32(float %i.dl, float %i.cw, float %i.do)
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !461
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !461
  %i.du = fmul float %i.aa, %i.dt
  %i.dv = call float @llvm.fmuladd.f32(float %i.dr, float %i.cw, float %i.du)
  %i.dw = fmul float %i.ac, %i.dv
  %i.dx = call float @llvm.fmuladd.f32(float %i.cx, float %i.dp, float %i.dw)
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  store float %i.dx, ptr %i.dy, align 4, !tbaa !461
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i, !llvm.loop !1650

_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit: ; preds = %.lr.ph.i, %middle.block24, %.split.us
  %i.dz = load ptr, ptr %i.ae, align 8, !tbaa !457
  %.not.i = icmp eq ptr %i.dz, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ea = landingpad { ptr, i32 }
          catch ptr null
  %i.eb = extractvalue { ptr, i32 } %i.ea, 0
  call void @__clang_call_terminate(ptr %i.eb) #47
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #42
  ret void

.split38:                                         ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.2, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.1, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIhfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split, %.preheader
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.split38.us, %.split38
  %.us-phi = phi { ptr, i32 } [ %i.ec, %.split38 ], [ %i.cv, %.split38.us ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %6) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #42
  resume { ptr, i32 } %.us-phi
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L12interppixel_IN9Imath_3_14halfEEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS4_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, float noundef %2, ptr writeonly captures(none) %3, i64 %4, i32 noundef %5) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.180", align 8 ; 30 uses
  %i.a = trunc i64 %4 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !171  ; 2 uses
  %i.d = tail call noundef zeroext i1 @_ZNK11OpenImageIO4v3_112ImageBufImpl13validate_specENS0_6DoLockE(ptr noundef nonnull align 8 dereferenceable(696) %i.c, i8 1) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %i.a) ; 9 uses
  %.not = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = shl nsw i32 %.sroa.speculated, 2
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 2
  %i.j = alloca i8, i64 %i.i, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ] ; 6 uses
  %i.l = sext i32 %.sroa.speculated to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 3 uses
  %i.n = shl nsw i32 %.sroa.speculated, 1
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.o ; 3 uses
  %i.q = mul nsw i32 %.sroa.speculated, 3
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.r ; 3 uses
  %i.t = fadd float %1, -5.000000e-01             ; 2 uses
  %i.u = fadd float %2, -5.000000e-01             ; 2 uses
  %i.v = tail call noundef float @llvm.floor.f32(float %i.t) ; 2 uses
  %i.w = fsub float %i.t, %i.v                    ; 4 uses
  %i.x = tail call noundef float @llvm.floor.f32(float %i.u) ; 2 uses
  %i.y = fsub float %i.u, %i.x                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #42
  store ptr %0, ptr %6, align 8, !tbaa !453
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !457
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 5 uses
  store ptr null, ptr %i.ab, align 8, !tbaa !458
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i32 0, ptr %i.z, align 8
  store i32 1, ptr %i.ac, align 8, !tbaa !459
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 124
  store i8 0, ptr %i.ad, align 4, !tbaa !460
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef %5, i1 zeroext poison)
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.ah = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.x, i64 1
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ak = fptosi <4 x float> %i.aj to <4 x i32>   ; 3 uses
  %i.al = add nsw <4 x i32> %i.ak, <i32 0, i32 2, i32 0, i32 2>
  store <4 x i32> %i.al, ptr %i.ae, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  store i32 0, ptr %i.am, align 4, !tbaa !504
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 3 uses
  store i32 1, ptr %i.an, align 8, !tbaa !505
  %i.ao = extractelement <4 x i32> %i.ak, i64 0
  %i.ap = extractelement <4 x i32> %i.ak, i64 2
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef %i.ao, i32 noundef %i.ap, i32 noundef 0)
  %i.aq = load i32, ptr %i.ae, align 4, !tbaa !506 ; 2 uses
  %i.ar = load i32, ptr %i.af, align 8, !tbaa !507
  %i.as = icmp eq i32 %i.aq, %i.ar
  %.pre.i.i = load i32, ptr %i.ag, align 4, !tbaa !508 ; 2 uses
  br i1 %i.as, label %._crit_edge.i.i, label %bb.d

._crit_edge.i.i:                                  ; preds = %bb.c
  %.pre9.i.i = load i32, ptr %i.an, align 8, !tbaa !505
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.au = load i32, ptr %i.at, align 8, !tbaa !509
  %i.av = icmp eq i32 %.pre.i.i, %i.au
  %.pre10.i.i = load i32, ptr %i.an, align 8, !tbaa !505 ; 2 uses
  %i.aw = load i32, ptr %i.am, align 4
  %i.ax = icmp eq i32 %i.aw, %.pre10.i.i
  %or.cond.i.i = select i1 %i.av, i1 true, i1 %i.ax
  br i1 %or.cond.i.i, label %bb.e, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i
  %i.ay = phi i32 [ %.pre9.i.i, %._crit_edge.i.i ], [ %.pre10.i.i, %bb.d ]
  store i8 0, ptr %i.z, align 8, !tbaa !510
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 60
  store i32 %i.aq, ptr %i.az, align 4, !tbaa !511
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 %.pre.i.i, ptr %i.ba, align 8, !tbaa !512
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 68
  store i32 %i.ay, ptr %i.bb, align 4, !tbaa !513
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit: ; preds = %bb.d, %bb.e
  %i.bc = icmp sgt i32 %.sroa.speculated, 0       ; 2 uses
  br i1 %i.bc, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.preheader, label %.preheader

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.preheader: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64 ; 4 uses
  %i.bd = load ptr, ptr %i.ab, align 8, !tbaa !458
  br label %bb.aa

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us: ; preds = %._crit_edge.us
  %i.be = load ptr, ptr %i.ab, align 8, !tbaa !458
  br label %bb.f

bb.f:                                             ; preds = %bb.l, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us
  %indvars.iv.1 = phi i64 [ 0, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us ], [ %indvars.iv.next.1, %bb.l ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %indvars.iv.1
  %i.bg = load i16, ptr %i.bf, align 2, !tbaa !462 ; 2 uses
  %i.bh = zext i16 %i.bg to i32
  %i.bi = shl nuw nsw i32 %i.bh, 13
  %i.bj = and i32 %i.bi, 268427264                ; 6 uses
  %.signext.i.i.i.i.i.us.1 = sext i16 %i.bg to i32
  %i.bk = and i32 %.signext.i.i.i.i.i.us.1, -2147483648 ; 3 uses
  %i.bl = icmp samesign ugt i32 %i.bj, 8388607
  br i1 %i.bl, label %bb.i, label %bb.g, !prof !145

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i.i.i.us.1 = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i.i.i.i.us.1, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.bj, i1 true)
  %i.bn = add nsw i32 %i.bm, -8                   ; 2 uses
  %i.bo = shl i32 %i.bj, %i.bn
  %i.bp = or i32 %i.bk, %i.bo
  %i.bq = or i32 %i.bp, 947912704
  %i.br = shl nuw nsw i32 %i.bn, 23
  %i.bs = sub nuw i32 %i.bq, %i.br
  br label %bb.l

bb.i:                                             ; preds = %bb.f
  %i.bt = or disjoint i32 %i.bj, %i.bk            ; 2 uses
  %i.bu = icmp samesign ult i32 %i.bj, 260046848
  br i1 %i.bu, label %bb.k, label %bb.j, !prof !145

bb.j:                                             ; preds = %bb.i
  %i.bv = or i32 %i.bt, 2139095040
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.bw = add nuw nsw i32 %i.bt, 939524096
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h, %bb.g
  %.sroa.0.0.i.i.i.i.i.us.1 = phi i32 [ %i.bw, %bb.k ], [ %i.bv, %bb.j ], [ %i.bs, %bb.h ], [ %i.bk, %bb.g ]
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.1
  store i32 %.sroa.0.0.i.i.i.i.i.us.1, ptr %i.bx, align 4, !tbaa !461
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond41.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond41.not.1, label %._crit_edge.us.1, label %bb.f, !llvm.loop !1651

._crit_edge.us.1:                                 ; preds = %bb.l
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1 unwind label %.split38.us, !llvm.loop !1652

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1: ; preds = %._crit_edge.us.1
  %i.by = load ptr, ptr %i.ab, align 8, !tbaa !458
  br label %bb.m

bb.m:                                             ; preds = %bb.s, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1
  %indvars.iv.2 = phi i64 [ 0, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1 ], [ %indvars.iv.next.2, %bb.s ] ; 3 uses
  %i.bz = getelementptr inbounds nuw [2 x i8], ptr %i.by, i64 %indvars.iv.2
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !462 ; 2 uses
  %i.cb = zext i16 %i.ca to i32
  %i.cc = shl nuw nsw i32 %i.cb, 13
  %i.cd = and i32 %i.cc, 268427264                ; 6 uses
  %.signext.i.i.i.i.i.us.2 = sext i16 %i.ca to i32
  %i.ce = and i32 %.signext.i.i.i.i.i.us.2, -2147483648 ; 3 uses
  %i.cf = icmp samesign ugt i32 %i.cd, 8388607
  br i1 %i.cf, label %bb.p, label %bb.n, !prof !145

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i.i.i.us.2 = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i.i.i.i.us.2, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cg = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.cd, i1 true)
  %i.ch = add nsw i32 %i.cg, -8                   ; 2 uses
  %i.ci = shl i32 %i.cd, %i.ch
  %i.cj = or i32 %i.ce, %i.ci
  %i.ck = or i32 %i.cj, 947912704
  %i.cl = shl nuw nsw i32 %i.ch, 23
  %i.cm = sub nuw i32 %i.ck, %i.cl
  br label %bb.s

bb.p:                                             ; preds = %bb.m
  %i.cn = or disjoint i32 %i.cd, %i.ce            ; 2 uses
  %i.co = icmp samesign ult i32 %i.cd, 260046848
  br i1 %i.co, label %bb.r, label %bb.q, !prof !145

bb.q:                                             ; preds = %bb.p
  %i.cp = or i32 %i.cn, 2139095040
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.cq = add nuw nsw i32 %i.cn, 939524096
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o, %bb.n
  %.sroa.0.0.i.i.i.i.i.us.2 = phi i32 [ %i.cq, %bb.r ], [ %i.cp, %bb.q ], [ %i.cm, %bb.o ], [ %i.ce, %bb.n ]
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.2
  store i32 %.sroa.0.0.i.i.i.i.i.us.2, ptr %i.cr, align 4, !tbaa !461
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1 ; 2 uses
  %exitcond41.not.2 = icmp eq i64 %indvars.iv.next.2, %wide.trip.count
  br i1 %exitcond41.not.2, label %._crit_edge.us.2, label %bb.m, !llvm.loop !1651

._crit_edge.us.2:                                 ; preds = %bb.s
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.2 unwind label %.split38.us, !llvm.loop !1652

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.2: ; preds = %._crit_edge.us.2
  %i.cs = load ptr, ptr %i.ab, align 8, !tbaa !458
  br label %bb.t

bb.t:                                             ; preds = %bb.z, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.2
  %indvars.iv.3 = phi i64 [ 0, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.2 ], [ %indvars.iv.next.3, %bb.z ] ; 3 uses
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr %i.cs, i64 %indvars.iv.3
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !462 ; 2 uses
  %i.cv = zext i16 %i.cu to i32
  %i.cw = shl nuw nsw i32 %i.cv, 13
  %i.cx = and i32 %i.cw, 268427264                ; 6 uses
  %.signext.i.i.i.i.i.us.3 = sext i16 %i.cu to i32
  %i.cy = and i32 %.signext.i.i.i.i.i.us.3, -2147483648 ; 3 uses
  %i.cz = icmp samesign ugt i32 %i.cx, 8388607
  br i1 %i.cz, label %bb.w, label %bb.u, !prof !145

bb.u:                                             ; preds = %bb.t
  %.not.i.i.i.i.i.us.3 = icmp eq i32 %i.cx, 0
  br i1 %.not.i.i.i.i.i.us.3, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.da = call range(i32 9, 33) i32 @llvm.ctlz.i32(i32 %i.cx, i1 true)
  %i.db = add nsw i32 %i.da, -8                   ; 2 uses
  %i.dc = shl i32 %i.cx, %i.db
  %i.dd = or i32 %i.cy, %i.dc
  %i.de = or i32 %i.dd, 947912704
  %i.df = shl nuw nsw i32 %i.db, 23
  %i.dg = sub nuw i32 %i.de, %i.df
  br label %bb.z

bb.w:                                             ; preds = %bb.t
  %i.dh = or disjoint i32 %i.cx, %i.cy            ; 2 uses
  %i.di = icmp samesign ult i32 %i.cx, 260046848
  br i1 %i.di, label %bb.y, label %bb.x, !prof !145

bb.x:                                             ; preds = %bb.w
  %i.dj = or i32 %i.dh, 2139095040
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.dk = add nuw nsw i32 %i.dh, 939524096
  br label %bb.z
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_1L12interppixel_IN9Imath_3_14halfEEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS4_8WrapModeE:bb.a
bb.af:                                            ; preds = %bb.ad
  %i.ed = add nuw nsw i32 %i.ea, 939524096
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ac, %bb.ab
  %.sroa.0.0.i.i.i.i.i.us = phi i32 [ %i.ed, %bb.af ], [ %i.ec, %bb.ae ], [ %i.dz, %bb.ac ], [ %i.dr, %bb.ab ]
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  store i32 %.sroa.0.0.i.i.i.i.i.us, ptr %i.ee, align 4, !tbaa !461
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond41.not, label %._crit_edge.us, label %bb.aa, !llvm.loop !1651

._crit_edge.us:                                   ; preds = %bb.ag
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us unwind label %.split38.us, !llvm.loop !1652

.split38.us:                                      ; preds = %._crit_edge.us.3, %._crit_edge.us.2, %._crit_edge.us.1, %._crit_edge.us
  %i.ef = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split: ; preds = %.preheader
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.1 unwind label %.split38, !llvm.loop !1652

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.1: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.2 unwind label %.split38, !llvm.loop !1652

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.2: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %.split.us unwind label %.split38, !llvm.loop !1652

.preheader:                                       ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split unwind label %.split38, !llvm.loop !1652

.split.us:                                        ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.2, %._crit_edge.us.3
  %i.eg = fsub float 1.000000e+00, %i.w           ; 3 uses
  %i.eh = fsub float 1.000000e+00, %i.y           ; 2 uses
  br i1 %i.bc, label %.lr.ph.preheader.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit

.lr.ph.preheader.i:                               ; preds = %.split.us
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.sroa.speculated, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.w, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert4 = insertelement <4 x float> poison, float %i.eg, i64 0
  %broadcast.splat5 = shufflevector <4 x float> %broadcast.splatinsert4, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert6 = insertelement <4 x float> poison, float %i.y, i64 0
  %broadcast.splat7 = shufflevector <4 x float> %broadcast.splatinsert6, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert8 = insertelement <4 x float> poison, float %i.eh, i64 0
  %broadcast.splat9 = shufflevector <4 x float> %broadcast.splatinsert8, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index
  %wide.load = load <4 x float>, ptr %i.ei, align 16, !tbaa !461
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index
  %wide.load10 = load <4 x float>, ptr %i.ej, align 4, !tbaa !461
  %i.ek = fmul <4 x float> %broadcast.splat, %wide.load10
  %i.el = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load, <4 x float> %broadcast.splat5, <4 x float> %i.ek)
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index
  %wide.load11 = load <4 x float>, ptr %i.em, align 8, !tbaa !461
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index
  %wide.load12 = load <4 x float>, ptr %i.en, align 4, !tbaa !461
  %i.eo = fmul <4 x float> %broadcast.splat, %wide.load12
  %i.ep = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load11, <4 x float> %broadcast.splat5, <4 x float> %i.eo)
  %i.eq = fmul <4 x float> %broadcast.splat7, %i.ep
  %i.er = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat9, <4 x float> %i.el, <4 x float> %i.eq)
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  store <4 x float> %i.er, ptr %i.es, align 4, !tbaa !461
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.et = icmp eq i64 %index.next, %n.vec
  br i1 %i.et, label %middle.block, label %vector.body, !llvm.loop !1653

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 6 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !461
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !461
  %i.ey = fmul float %i.w, %i.ex
  %i.ez = call float @llvm.fmuladd.f32(float %i.ev, float %i.eg, float %i.ey)
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !461
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !461
  %i.fe = fmul float %i.w, %i.fd
  %i.ff = call float @llvm.fmuladd.f32(float %i.fb, float %i.eg, float %i.fe)
  %i.fg = fmul float %i.y, %i.ff
  %i.fh = call float @llvm.fmuladd.f32(float %i.eh, float %i.ez, float %i.fg)
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  store float %i.fh, ptr %i.fi, align 4, !tbaa !461
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i, !llvm.loop !1654

_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit: ; preds = %.lr.ph.i, %middle.block, %.split.us
  %i.fj = load ptr, ptr %i.aa, align 8, !tbaa !457
  %.not.i = icmp eq ptr %i.fj, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.ah

bb.ah:                                            ; preds = %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.fk = landingpad { ptr, i32 }
          catch ptr null
  %i.fl = extractvalue { ptr, i32 } %i.fk, 0
  call void @__clang_call_terminate(ptr %i.fl) #47
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #42
  ret void

.split38:                                         ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.2, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.1, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIN9Imath_3_14halfEfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split, %.preheader
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %bb.aj

bb.aj:                                            ; preds = %.split38.us, %.split38
  %.us-phi = phi { ptr, i32 } [ %i.fm, %.split38 ], [ %i.ef, %.split38.us ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %6) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #42
  resume { ptr, i32 } %.us-phi
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L12interppixel_ItEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, float noundef %2, ptr writeonly captures(none) %3, i64 %4, i32 noundef %5) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.183", align 8 ; 30 uses
  %i.a = trunc i64 %4 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !171  ; 2 uses
  %i.d = tail call noundef zeroext i1 @_ZNK11OpenImageIO4v3_112ImageBufImpl13validate_specENS0_6DoLockE(ptr noundef nonnull align 8 dereferenceable(696) %i.c, i8 1) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %i.a) ; 13 uses
  %.not = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = shl nsw i32 %.sroa.speculated, 2
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 2
  %i.j = alloca i8, i64 %i.i, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ] ; 7 uses
  %i.l = sext i32 %.sroa.speculated to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 4 uses
  %i.n = shl nsw i32 %.sroa.speculated, 1
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.o ; 4 uses
  %i.q = mul nsw i32 %.sroa.speculated, 3
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.r ; 4 uses
  %i.t = fadd float %1, -5.000000e-01             ; 2 uses
  %i.u = fadd float %2, -5.000000e-01             ; 2 uses
  %i.v = tail call noundef float @llvm.floor.f32(float %i.t) ; 2 uses
  %i.w = fsub float %i.t, %i.v                    ; 4 uses
  %i.x = tail call noundef float @llvm.floor.f32(float %i.u) ; 2 uses
  %i.y = fsub float %i.u, %i.x                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #42
  store ptr %0, ptr %6, align 8, !tbaa !453
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !457
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 5 uses
  store ptr null, ptr %i.ab, align 8, !tbaa !458
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i32 0, ptr %i.z, align 8
  store i32 1, ptr %i.ac, align 8, !tbaa !459
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 124
  store i8 0, ptr %i.ad, align 4, !tbaa !460
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef %5, i1 zeroext poison)
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.ah = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.x, i64 1
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ak = fptosi <4 x float> %i.aj to <4 x i32>   ; 3 uses
  %i.al = add nsw <4 x i32> %i.ak, <i32 0, i32 2, i32 0, i32 2>
  store <4 x i32> %i.al, ptr %i.ae, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  store i32 0, ptr %i.am, align 4, !tbaa !504
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 3 uses
  store i32 1, ptr %i.an, align 8, !tbaa !505
  %i.ao = extractelement <4 x i32> %i.ak, i64 0
  %i.ap = extractelement <4 x i32> %i.ak, i64 2
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef %i.ao, i32 noundef %i.ap, i32 noundef 0)
  %i.aq = load i32, ptr %i.ae, align 4, !tbaa !506 ; 2 uses
  %i.ar = load i32, ptr %i.af, align 8, !tbaa !507
  %i.as = icmp eq i32 %i.aq, %i.ar
  %.pre.i.i = load i32, ptr %i.ag, align 4, !tbaa !508 ; 2 uses
  br i1 %i.as, label %._crit_edge.i.i, label %bb.d

._crit_edge.i.i:                                  ; preds = %bb.c
  %.pre9.i.i = load i32, ptr %i.an, align 8, !tbaa !505
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.au = load i32, ptr %i.at, align 8, !tbaa !509
  %i.av = icmp eq i32 %.pre.i.i, %i.au
  %.pre10.i.i = load i32, ptr %i.an, align 8, !tbaa !505 ; 2 uses
  %i.aw = load i32, ptr %i.am, align 4
  %i.ax = icmp eq i32 %i.aw, %.pre10.i.i
  %or.cond.i.i = select i1 %i.av, i1 true, i1 %i.ax
  br i1 %or.cond.i.i, label %bb.e, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i
  %i.ay = phi i32 [ %.pre9.i.i, %._crit_edge.i.i ], [ %.pre10.i.i, %bb.d ]
  store i8 0, ptr %i.z, align 8, !tbaa !510
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 60
  store i32 %i.aq, ptr %i.az, align 4, !tbaa !511
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 %.pre.i.i, ptr %i.ba, align 8, !tbaa !512
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 68
  store i32 %i.ay, ptr %i.bb, align 4, !tbaa !513
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit: ; preds = %bb.d, %bb.e
  %i.bc = icmp sgt i32 %.sroa.speculated, 0       ; 2 uses
  br i1 %i.bc, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.preheader, label %.preheader

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.preheader: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64 ; 12 uses
  %i.bd = load ptr, ptr %i.ab, align 8, !tbaa !458 ; 2 uses
  %min.iters.check = icmp ult i32 %.sroa.speculated, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us: ; preds = %._crit_edge.us
  %i.be = load ptr, ptr %i.ab, align 8, !tbaa !458 ; 2 uses
  %min.iters.check.1 = icmp ult i32 %.sroa.speculated, 8
  br i1 %min.iters.check.1, label %scalar.ph.preheader.1, label %vector.ph.1

vector.ph.1:                                      ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us
  %n.vec.1 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body.1

vector.body.1:                                    ; preds = %vector.body.1, %vector.ph.1
  %index.1 = phi i64 [ 0, %vector.ph.1 ], [ %index.next.1, %vector.body.1 ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %index.1 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %wide.load.1 = load <4 x i16>, ptr %i.bf, align 2, !tbaa !464
  %wide.load4.1 = load <4 x i16>, ptr %i.bg, align 2, !tbaa !464
  %i.bh = uitofp <4 x i16> %wide.load.1 to <4 x float>
  %i.bi = uitofp <4 x i16> %wide.load4.1 to <4 x float>
  %i.bj = fmul nnan <4 x float> %i.bh, splat (float f0x37800080)
  %i.bk = fmul nnan <4 x float> %i.bi, splat (float f0x37800080)
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index.1 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <4 x float> %i.bj, ptr %i.bl, align 4, !tbaa !461
  store <4 x float> %i.bk, ptr %i.bm, align 4, !tbaa !461
  %index.next.1 = add nuw i64 %index.1, 8         ; 2 uses
  %i.bn = icmp eq i64 %index.next.1, %n.vec.1
  br i1 %i.bn, label %middle.block.1, label %vector.body.1, !llvm.loop !1655

middle.block.1:                                   ; preds = %vector.body.1
  %cmp.n.1 = icmp eq i64 %n.vec.1, %wide.trip.count
  br i1 %cmp.n.1, label %._crit_edge.us.1, label %scalar.ph.preheader.1

scalar.ph.preheader.1:                            ; preds = %middle.block.1, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us
  %indvars.iv.ph.1 = phi i64 [ 0, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us ], [ %n.vec.1, %middle.block.1 ]
  br label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph.1, %scalar.ph.preheader.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %scalar.ph.1 ], [ %indvars.iv.ph.1, %scalar.ph.preheader.1 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %indvars.iv.1
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !464
  %i.bq = uitofp i16 %i.bp to float
  %i.br = fmul nnan float %i.bq, f0x37800080
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.1
  store float %i.br, ptr %i.bs, align 4, !tbaa !461
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond41.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond41.not.1, label %._crit_edge.us.1, label %scalar.ph.1, !llvm.loop !1656

._crit_edge.us.1:                                 ; preds = %scalar.ph.1, %middle.block.1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1 unwind label %.split38.us, !llvm.loop !1657

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1: ; preds = %._crit_edge.us.1
  %i.bt = load ptr, ptr %i.ab, align 8, !tbaa !458 ; 2 uses
  %min.iters.check.2 = icmp ult i32 %.sroa.speculated, 8
  br i1 %min.iters.check.2, label %scalar.ph.preheader.2, label %vector.ph.2

vector.ph.2:                                      ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1
  %n.vec.2 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.2, %vector.ph.2
  %index.2 = phi i64 [ 0, %vector.ph.2 ], [ %index.next.2, %vector.body.2 ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %index.2 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %wide.load.2 = load <4 x i16>, ptr %i.bu, align 2, !tbaa !464
  %wide.load4.2 = load <4 x i16>, ptr %i.bv, align 2, !tbaa !464
  %i.bw = uitofp <4 x i16> %wide.load.2 to <4 x float>
  %i.bx = uitofp <4 x i16> %wide.load4.2 to <4 x float>
  %i.by = fmul nnan <4 x float> %i.bw, splat (float f0x37800080)
  %i.bz = fmul nnan <4 x float> %i.bx, splat (float f0x37800080)
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index.2 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store <4 x float> %i.by, ptr %i.ca, align 8, !tbaa !461
  store <4 x float> %i.bz, ptr %i.cb, align 8, !tbaa !461
  %index.next.2 = add nuw i64 %index.2, 8         ; 2 uses
  %i.cc = icmp eq i64 %index.next.2, %n.vec.2
  br i1 %i.cc, label %middle.block.2, label %vector.body.2, !llvm.loop !1655

middle.block.2:                                   ; preds = %vector.body.2
  %cmp.n.2 = icmp eq i64 %n.vec.2, %wide.trip.count
  br i1 %cmp.n.2, label %._crit_edge.us.2, label %scalar.ph.preheader.2

scalar.ph.preheader.2:                            ; preds = %middle.block.2, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1
  %indvars.iv.ph.2 = phi i64 [ 0, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1 ], [ %n.vec.2, %middle.block.2 ]
  br label %scalar.ph.2

scalar.ph.2:                                      ; preds = %scalar.ph.2, %scalar.ph.preheader.2
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %scalar.ph.2 ], [ %indvars.iv.ph.2, %scalar.ph.preheader.2 ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %indvars.iv.2
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !464
  %i.cf = uitofp i16 %i.ce to float
  %i.cg = fmul nnan float %i.cf, f0x37800080
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.2
  store float %i.cg, ptr %i.ch, align 4, !tbaa !461
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1 ; 2 uses
  %exitcond41.not.2 = icmp eq i64 %indvars.iv.next.2, %wide.trip.count
  br i1 %exitcond41.not.2, label %._crit_edge.us.2, label %scalar.ph.2, !llvm.loop !1656

._crit_edge.us.2:                                 ; preds = %scalar.ph.2, %middle.block.2
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.2 unwind label %.split38.us, !llvm.loop !1657

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.2: ; preds = %._crit_edge.us.2
  %i.ci = load ptr, ptr %i.ab, align 8, !tbaa !458 ; 2 uses
  %min.iters.check.3 = icmp ult i32 %.sroa.speculated, 8
  br i1 %min.iters.check.3, label %scalar.ph.preheader.3, label %vector.ph.3

vector.ph.3:                                      ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.2
  %n.vec.3 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.3, %vector.ph.3
  %index.3 = phi i64 [ 0, %vector.ph.3 ], [ %index.next.3, %vector.body.3 ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %index.3 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %wide.load.3 = load <4 x i16>, ptr %i.cj, align 2, !tbaa !464
  %wide.load4.3 = load <4 x i16>, ptr %i.ck, align 2, !tbaa !464
  %i.cl = uitofp <4 x i16> %wide.load.3 to <4 x float>
  %i.cm = uitofp <4 x i16> %wide.load4.3 to <4 x float>
  %i.cn = fmul nnan <4 x float> %i.cl, splat (float f0x37800080)
  %i.co = fmul nnan <4 x float> %i.cm, splat (float f0x37800080)
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index.3 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store <4 x float> %i.cn, ptr %i.cp, align 4, !tbaa !461
  store <4 x float> %i.co, ptr %i.cq, align 4, !tbaa !461
  %index.next.3 = add nuw i64 %index.3, 8         ; 2 uses
  %i.cr = icmp eq i64 %index.next.3, %n.vec.3
  br i1 %i.cr, label %middle.block.3, label %vector.body.3, !llvm.loop !1655

middle.block.3:                                   ; preds = %vector.body.3
  %cmp.n.3 = icmp eq i64 %n.vec.3, %wide.trip.count
  br i1 %cmp.n.3, label %._crit_edge.us.3, label %scalar.ph.preheader.3

scalar.ph.preheader.3:                            ; preds = %middle.block.3, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.2
  %indvars.iv.ph.3 = phi i64 [ 0, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.2 ], [ %n.vec.3, %middle.block.3 ]
  br label %scalar.ph.3

scalar.ph.3:                                      ; preds = %scalar.ph.3, %scalar.ph.preheader.3
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3, %scalar.ph.3 ], [ %indvars.iv.ph.3, %scalar.ph.preheader.3 ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.3
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !464
  %i.cu = uitofp i16 %i.ct to float
  %i.cv = fmul nnan float %i.cu, f0x37800080
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.3
  store float %i.cv, ptr %i.cw, align 4, !tbaa !461
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1 ; 2 uses
  %exitcond41.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond41.not.3, label %._crit_edge.us.3, label %scalar.ph.3, !llvm.loop !1656

._crit_edge.us.3:                                 ; preds = %scalar.ph.3, %middle.block.3
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_1L12interppixel_ItEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE:bb.a
  %indvars.iv.ph = phi i64 [ 0, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.preheader ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us unwind label %.split38.us, !llvm.loop !1657

.split38.us:                                      ; preds = %._crit_edge.us.3, %._crit_edge.us.2, %._crit_edge.us.1, %._crit_edge.us
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split: ; preds = %.preheader
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.1 unwind label %.split38, !llvm.loop !1657

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.1: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.2 unwind label %.split38, !llvm.loop !1657

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.2: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %.split.us unwind label %.split38, !llvm.loop !1657

.preheader:                                       ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split unwind label %.split38, !llvm.loop !1657

.split.us:                                        ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.2, %._crit_edge.us.3
  %i.dm = fsub float 1.000000e+00, %i.w           ; 3 uses
  %i.dn = fsub float 1.000000e+00, %i.y           ; 2 uses
  br i1 %i.bc, label %.lr.ph.preheader.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit

.lr.ph.preheader.i:                               ; preds = %.split.us
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64 ; 3 uses
  %min.iters.check6 = icmp ult i32 %.sroa.speculated, 4
  br i1 %min.iters.check6, label %.lr.ph.i.preheader, label %vector.ph7

vector.ph7:                                       ; preds = %.lr.ph.preheader.i
  %n.vec9 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.w, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert10 = insertelement <4 x float> poison, float %i.dm, i64 0
  %broadcast.splat11 = shufflevector <4 x float> %broadcast.splatinsert10, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert12 = insertelement <4 x float> poison, float %i.y, i64 0
  %broadcast.splat13 = shufflevector <4 x float> %broadcast.splatinsert12, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert14 = insertelement <4 x float> poison, float %i.dn, i64 0
  %broadcast.splat15 = shufflevector <4 x float> %broadcast.splatinsert14, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body16

vector.body16:                                    ; preds = %vector.body16, %vector.ph7
  %index17 = phi i64 [ 0, %vector.ph7 ], [ %index.next22, %vector.body16 ] ; 6 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index17
  %wide.load18 = load <4 x float>, ptr %i.do, align 16, !tbaa !461
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index17
  %wide.load19 = load <4 x float>, ptr %i.dp, align 4, !tbaa !461
  %i.dq = fmul <4 x float> %broadcast.splat, %wide.load19
  %i.dr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load18, <4 x float> %broadcast.splat11, <4 x float> %i.dq)
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index17
  %wide.load20 = load <4 x float>, ptr %i.ds, align 8, !tbaa !461
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index17
  %wide.load21 = load <4 x float>, ptr %i.dt, align 4, !tbaa !461
  %i.du = fmul <4 x float> %broadcast.splat, %wide.load21
  %i.dv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load20, <4 x float> %broadcast.splat11, <4 x float> %i.du)
  %i.dw = fmul <4 x float> %broadcast.splat13, %i.dv
  %i.dx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat15, <4 x float> %i.dr, <4 x float> %i.dw)
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index17
  store <4 x float> %i.dx, ptr %i.dy, align 4, !tbaa !461
  %index.next22 = add nuw i64 %index17, 4         ; 2 uses
  %i.dz = icmp eq i64 %index.next22, %n.vec9
  br i1 %i.dz, label %middle.block23, label %vector.body16, !llvm.loop !1658

middle.block23:                                   ; preds = %vector.body16
  %cmp.n24 = icmp eq i64 %n.vec9, %wide.trip.count.i
  br i1 %cmp.n24, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block23
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec9, %middle.block23 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 6 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !461
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !461
  %i.ee = fmul float %i.w, %i.ed
  %i.ef = call float @llvm.fmuladd.f32(float %i.eb, float %i.dm, float %i.ee)
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !461
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !461
  %i.ek = fmul float %i.w, %i.ej
  %i.el = call float @llvm.fmuladd.f32(float %i.eh, float %i.dm, float %i.ek)
  %i.em = fmul float %i.y, %i.el
  %i.en = call float @llvm.fmuladd.f32(float %i.dn, float %i.ef, float %i.em)
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  store float %i.en, ptr %i.eo, align 4, !tbaa !461
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i, !llvm.loop !1659

_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit: ; preds = %.lr.ph.i, %middle.block23, %.split.us
  %i.ep = load ptr, ptr %i.aa, align 8, !tbaa !457
  %.not.i = icmp eq ptr %i.ep, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.eq = landingpad { ptr, i32 }
          catch ptr null
  %i.er = extractvalue { ptr, i32 } %i.eq, 0
  call void @__clang_call_terminate(ptr %i.er) #47
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #42
  ret void

.split38:                                         ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.2, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.1, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorItfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split, %.preheader
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.split38.us, %.split38
  %.us-phi = phi { ptr, i32 } [ %i.es, %.split38 ], [ %i.dl, %.split38.us ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %6) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #42
  resume { ptr, i32 } %.us-phi
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L12interppixel_IcEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, float noundef %2, ptr writeonly captures(none) %3, i64 %4, i32 noundef %5) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 8 uses
  %6 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.186", align 8 ; 27 uses
  %i.b = trunc i64 %4 to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !171  ; 2 uses
  %i.e = tail call noundef zeroext i1 @_ZNK11OpenImageIO4v3_112ImageBufImpl13validate_specENS0_6DoLockE(ptr noundef nonnull align 8 dereferenceable(696) %i.d, i8 1) ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  %i.g = load i32, ptr %i.f, align 4, !tbaa !3
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.g, i32 %i.b) ; 10 uses
  %.not = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = shl nsw i32 %.sroa.speculated, 2
  %i.i = sext i32 %i.h to i64
  %i.j = shl nsw i64 %i.i, 2
  %i.k = alloca i8, i64 %i.j, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.l = phi ptr [ %i.k, %bb.b ], [ null, %bb.a ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #42
  store ptr %i.l, ptr %i.a, align 16, !tbaa !1638
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.n = sext i32 %.sroa.speculated to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.n ; 3 uses
  store ptr %i.o, ptr %i.m, align 8, !tbaa !1638
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.q = shl nsw i32 %.sroa.speculated, 1
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.r ; 3 uses
  store ptr %i.s, ptr %i.p, align 16, !tbaa !1638
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.u = mul nsw i32 %.sroa.speculated, 3
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.v ; 3 uses
  store ptr %i.w, ptr %i.t, align 8, !tbaa !1638
  %i.x = fadd float %1, -5.000000e-01             ; 2 uses
  %i.y = fadd float %2, -5.000000e-01             ; 2 uses
  %i.z = call noundef float @llvm.floor.f32(float %i.x) ; 2 uses
  %i.aa = fsub float %i.x, %i.z                   ; 4 uses
  %i.ab = call noundef float @llvm.floor.f32(float %i.y) ; 2 uses
  %i.ac = fsub float %i.y, %i.ab                  ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #42
  store ptr %0, ptr %6, align 8, !tbaa !453
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store ptr null, ptr %i.ae, align 8, !tbaa !457
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 2 uses
  store ptr null, ptr %i.af, align 8, !tbaa !458
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i32 0, ptr %i.ad, align 8
  store i32 1, ptr %i.ag, align 8, !tbaa !459
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 124
  store i8 0, ptr %i.ah, align 4, !tbaa !460
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef %5, i1 zeroext poison)
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.al = insertelement <2 x float> poison, float %i.z, i64 0
  %i.am = insertelement <2 x float> %i.al, float %i.ab, i64 1
  %i.an = shufflevector <2 x float> %i.am, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ao = fptosi <4 x float> %i.an to <4 x i32>   ; 3 uses
  %i.ap = add nsw <4 x i32> %i.ao, <i32 0, i32 2, i32 0, i32 2>
  store <4 x i32> %i.ap, ptr %i.ai, align 4, !tbaa !3
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  store i32 0, ptr %i.aq, align 4, !tbaa !504
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 3 uses
  store i32 1, ptr %i.ar, align 8, !tbaa !505
  %i.as = extractelement <4 x i32> %i.ao, i64 0
  %i.at = extractelement <4 x i32> %i.ao, i64 2
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef %i.as, i32 noundef %i.at, i32 noundef 0)
  %i.au = load i32, ptr %i.ai, align 4, !tbaa !506 ; 2 uses
  %i.av = load i32, ptr %i.aj, align 8, !tbaa !507
  %i.aw = icmp eq i32 %i.au, %i.av
  %.pre.i.i = load i32, ptr %i.ak, align 4, !tbaa !508 ; 2 uses
  br i1 %i.aw, label %._crit_edge.i.i, label %bb.d

._crit_edge.i.i:                                  ; preds = %bb.c
  %.pre9.i.i = load i32, ptr %i.ar, align 8, !tbaa !505
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ax = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !509
  %i.az = icmp eq i32 %.pre.i.i, %i.ay
  %.pre10.i.i = load i32, ptr %i.ar, align 8, !tbaa !505 ; 2 uses
  %i.ba = load i32, ptr %i.aq, align 4
  %i.bb = icmp eq i32 %i.ba, %.pre10.i.i
  %or.cond.i.i = select i1 %i.az, i1 true, i1 %i.bb
  br i1 %or.cond.i.i, label %bb.e, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIcfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i
  %i.bc = phi i32 [ %.pre9.i.i, %._crit_edge.i.i ], [ %.pre10.i.i, %bb.d ]
  store i8 0, ptr %i.ad, align 8, !tbaa !510
  %i.bd = getelementptr inbounds nuw i8, ptr %6, i64 60
  store i32 %i.au, ptr %i.bd, align 4, !tbaa !511
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 %.pre.i.i, ptr %i.be, align 8, !tbaa !512
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 68
  store i32 %i.bc, ptr %i.bf, align 4, !tbaa !513
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIcfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIcfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit: ; preds = %bb.d, %bb.e
  %i.bg = icmp sgt i32 %.sroa.speculated, 0       ; 2 uses
  br i1 %i.bg, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIcfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.preheader, label %.preheader

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIcfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.preheader: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIcfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64 ; 7 uses
  %i.bh = shl nuw nsw i64 %wide.trip.count, 2
  %min.iters.check = icmp ult i32 %.sroa.speculated, 8
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.us

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIcfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us: ; preds = %._crit_edge.us
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv423, 1 ; 2 uses
  %exitcond45.not = icmp eq i64 %indvars.iv.next43, 4
  br i1 %exitcond45.not, label %.split.us, label %.preheader.us, !llvm.loop !1660

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !95
  %i.bk = sitofp i8 %i.bj to float
  %i.bl = fmul nnan float %i.bk, f0x3C010204
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv
  store float %i.bl, ptr %i.bm, align 4, !tbaa !461
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv.next
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !95
  %i.bp = sitofp i8 %i.bo to float
  %i.bq = fmul nnan float %i.bp, f0x3C010204
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.next
  store float %i.bq, ptr %i.br, align 4, !tbaa !461
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv.next.1
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !95
  %i.bu = sitofp i8 %i.bt to float
  %i.bv = fmul nnan float %i.bu, f0x3C010204
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.next.1
  store float %i.bv, ptr %i.bw, align 4, !tbaa !461
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv.next.2
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !95
  %i.bz = sitofp i8 %i.by to float
  %i.ca = fmul nnan float %i.bz, f0x3C010204
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.next.2
  store float %i.ca, ptr %i.cb, align 4, !tbaa !461
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond41.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond41.not.3, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1661

.preheader.us:                                    ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIcfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.preheader, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIcfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us
  %indvars.iv423 = phi i64 [ 0, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIcfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.preheader ], [ %indvars.iv.next43, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIcfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us ] ; 2 uses
  %i.cc = load ptr, ptr %i.af, align 8, !tbaa !458 ; 8 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv423
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !1638 ; 8 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us
  %scevgep = getelementptr i8, ptr %i.ce, i64 %i.bh
  %scevgep4 = getelementptr i8, ptr %i.cc, i64 %wide.trip.count
  %bound0 = icmp ult ptr %i.ce, %scevgep4
  %bound1 = icmp ult ptr %i.cc, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 %index ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %wide.load = load <4 x i8>, ptr %i.cf, align 1, !tbaa !95, !alias.scope !1662
  %wide.load5 = load <4 x i8>, ptr %i.cg, align 1, !tbaa !95, !alias.scope !1662
  %i.ch = sitofp <4 x i8> %wide.load to <4 x float>
  %i.ci = sitofp <4 x i8> %wide.load5 to <4 x float>
  %i.cj = fmul nnan <4 x float> %i.ch, splat (float f0x3C010204)
  %i.ck = fmul nnan <4 x float> %i.ci, splat (float f0x3C010204)
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %index ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store <4 x float> %i.cj, ptr %i.cl, align 4, !tbaa !461, !alias.scope !1665, !noalias !1662
  store <4 x float> %i.ck, ptr %i.cm, align 4, !tbaa !461, !alias.scope !1665, !noalias !1662
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !1667

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.us ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv.prol
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !95
  %i.cq = sitofp i8 %i.cp to float
  %i.cr = fmul nnan float %i.cq, f0x3C010204
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv.prol
  store float %i.cr, ptr %i.cs, align 4, !tbaa !461
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1668

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.ct = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.cu = icmp ugt i64 %i.ct, -4
  br i1 %i.cu, label %._crit_edge.us, label %scalar.ph

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIcfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us unwind label %.split38.us, !llvm.loop !1660

.split38.us:                                      ; preds = %._crit_edge.us
  %i.cv = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIcfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split: ; preds = %.preheader
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIcfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.1 unwind label %.split38, !llvm.loop !1660

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIcfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.1: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIcfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIcfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.2 unwind label %.split38, !llvm.loop !1660

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIcfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.2: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIcfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %.split.us unwind label %.split38, !llvm.loop !1660

.preheader:                                       ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIcfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIcfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split unwind label %.split38, !llvm.loop !1660

.split.us:                                        ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIcfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIcfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.2
  %i.cw = fsub float 1.000000e+00, %i.aa          ; 3 uses
  %i.cx = fsub float 1.000000e+00, %i.ac          ; 2 uses
  br i1 %i.bg, label %.lr.ph.preheader.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit

.lr.ph.preheader.i:                               ; preds = %.split.us
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64 ; 3 uses
  %min.iters.check7 = icmp ult i32 %.sroa.speculated, 4
  br i1 %min.iters.check7, label %.lr.ph.i.preheader, label %vector.ph8

vector.ph8:                                       ; preds = %.lr.ph.preheader.i
  %n.vec10 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.aa, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert11 = insertelement <4 x float> poison, float %i.cw, i64 0
  %broadcast.splat12 = shufflevector <4 x float> %broadcast.splatinsert11, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert13 = insertelement <4 x float> poison, float %i.ac, i64 0
  %broadcast.splat14 = shufflevector <4 x float> %broadcast.splatinsert13, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert15 = insertelement <4 x float> poison, float %i.cx, i64 0
  %broadcast.splat16 = shufflevector <4 x float> %broadcast.splatinsert15, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body17

vector.body17:                                    ; preds = %vector.body17, %vector.ph8
  %index18 = phi i64 [ 0, %vector.ph8 ], [ %index.next23, %vector.body17 ] ; 6 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index18
  %wide.load19 = load <4 x float>, ptr %i.cy, align 16, !tbaa !461
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index18
  %wide.load20 = load <4 x float>, ptr %i.cz, align 4, !tbaa !461
  %i.da = fmul <4 x float> %broadcast.splat, %wide.load20
  %i.db = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load19, <4 x float> %broadcast.splat12, <4 x float> %i.da)
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index18
  %wide.load21 = load <4 x float>, ptr %i.dc, align 8, !tbaa !461
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %index18
  %wide.load22 = load <4 x float>, ptr %i.dd, align 4, !tbaa !461
  %i.de = fmul <4 x float> %broadcast.splat, %wide.load22
  %i.df = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load21, <4 x float> %broadcast.splat12, <4 x float> %i.de)
  %i.dg = fmul <4 x float> %broadcast.splat14, %i.df
  %i.dh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat16, <4 x float> %i.db, <4 x float> %i.dg)
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index18
  store <4 x float> %i.dh, ptr %i.di, align 4, !tbaa !461
  %index.next23 = add nuw i64 %index18, 4         ; 2 uses
  %i.dj = icmp eq i64 %index.next23, %n.vec10
  br i1 %i.dj, label %middle.block24, label %vector.body17, !llvm.loop !1669

middle.block24:                                   ; preds = %vector.body17
  %cmp.n25 = icmp eq i64 %n.vec10, %wide.trip.count.i
  br i1 %cmp.n25, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block24
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec10, %middle.block24 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 6 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !461
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !461
  %i.do = fmul float %i.aa, %i.dn
  %i.dp = call float @llvm.fmuladd.f32(float %i.dl, float %i.cw, float %i.do)
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !461
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !461
  %i.du = fmul float %i.aa, %i.dt
  %i.dv = call float @llvm.fmuladd.f32(float %i.dr, float %i.cw, float %i.du)
  %i.dw = fmul float %i.ac, %i.dv
  %i.dx = call float @llvm.fmuladd.f32(float %i.cx, float %i.dp, float %i.dw)
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  store float %i.dx, ptr %i.dy, align 4, !tbaa !461
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i, !llvm.loop !1670

_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit: ; preds = %.lr.ph.i, %middle.block24, %.split.us
  %i.dz = load ptr, ptr %i.ae, align 8, !tbaa !457
  %.not.i = icmp eq ptr %i.dz, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ea = landingpad { ptr, i32 }
          catch ptr null
  %i.eb = extractvalue { ptr, i32 } %i.ea, 0
  call void @__clang_call_terminate(ptr %i.eb) #47
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #42
  ret void

.split38:                                         ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIcfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.2, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIcfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.1, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIcfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split, %.preheader
  %i.ec = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.split38.us, %.split38
  %.us-phi = phi { ptr, i32 } [ %i.ec, %.split38 ], [ %i.cv, %.split38.us ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %6) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #42
  resume { ptr, i32 } %.us-phi
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L12interppixel_IsEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, float noundef %2, ptr writeonly captures(none) %3, i64 %4, i32 noundef %5) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.189", align 8 ; 30 uses
  %i.a = trunc i64 %4 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !171  ; 2 uses
  %i.d = tail call noundef zeroext i1 @_ZNK11OpenImageIO4v3_112ImageBufImpl13validate_specENS0_6DoLockE(ptr noundef nonnull align 8 dereferenceable(696) %i.c, i8 1) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %i.a) ; 13 uses
  %.not = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = shl nsw i32 %.sroa.speculated, 2
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 2
  %i.j = alloca i8, i64 %i.i, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ] ; 7 uses
  %i.l = sext i32 %.sroa.speculated to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 4 uses
  %i.n = shl nsw i32 %.sroa.speculated, 1
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.o ; 4 uses
  %i.q = mul nsw i32 %.sroa.speculated, 3
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.r ; 4 uses
  %i.t = fadd float %1, -5.000000e-01             ; 2 uses
  %i.u = fadd float %2, -5.000000e-01             ; 2 uses
  %i.v = tail call noundef float @llvm.floor.f32(float %i.t) ; 2 uses
  %i.w = fsub float %i.t, %i.v                    ; 4 uses
  %i.x = tail call noundef float @llvm.floor.f32(float %i.u) ; 2 uses
  %i.y = fsub float %i.u, %i.x                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #42
  store ptr %0, ptr %6, align 8, !tbaa !453
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !457
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 5 uses
  store ptr null, ptr %i.ab, align 8, !tbaa !458
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i32 0, ptr %i.z, align 8
  store i32 1, ptr %i.ac, align 8, !tbaa !459
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 124
  store i8 0, ptr %i.ad, align 4, !tbaa !460
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef %5, i1 zeroext poison)
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.ah = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.x, i64 1
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ak = fptosi <4 x float> %i.aj to <4 x i32>   ; 3 uses
  %i.al = add nsw <4 x i32> %i.ak, <i32 0, i32 2, i32 0, i32 2>
  store <4 x i32> %i.al, ptr %i.ae, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  store i32 0, ptr %i.am, align 4, !tbaa !504
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 3 uses
  store i32 1, ptr %i.an, align 8, !tbaa !505
  %i.ao = extractelement <4 x i32> %i.ak, i64 0
  %i.ap = extractelement <4 x i32> %i.ak, i64 2
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef %i.ao, i32 noundef %i.ap, i32 noundef 0)
  %i.aq = load i32, ptr %i.ae, align 4, !tbaa !506 ; 2 uses
  %i.ar = load i32, ptr %i.af, align 8, !tbaa !507
  %i.as = icmp eq i32 %i.aq, %i.ar
  %.pre.i.i = load i32, ptr %i.ag, align 4, !tbaa !508 ; 2 uses
  br i1 %i.as, label %._crit_edge.i.i, label %bb.d

._crit_edge.i.i:                                  ; preds = %bb.c
  %.pre9.i.i = load i32, ptr %i.an, align 8, !tbaa !505
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.au = load i32, ptr %i.at, align 8, !tbaa !509
  %i.av = icmp eq i32 %.pre.i.i, %i.au
  %.pre10.i.i = load i32, ptr %i.an, align 8, !tbaa !505 ; 2 uses
  %i.aw = load i32, ptr %i.am, align 4
  %i.ax = icmp eq i32 %i.aw, %.pre10.i.i
  %or.cond.i.i = select i1 %i.av, i1 true, i1 %i.ax
  br i1 %or.cond.i.i, label %bb.e, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIsfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i
  %i.ay = phi i32 [ %.pre9.i.i, %._crit_edge.i.i ], [ %.pre10.i.i, %bb.d ]
  store i8 0, ptr %i.z, align 8, !tbaa !510
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 60
  store i32 %i.aq, ptr %i.az, align 4, !tbaa !511
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 %.pre.i.i, ptr %i.ba, align 8, !tbaa !512
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 68
  store i32 %i.ay, ptr %i.bb, align 4, !tbaa !513
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIsfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIsfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit: ; preds = %bb.d, %bb.e
  %i.bc = icmp sgt i32 %.sroa.speculated, 0       ; 2 uses
  br i1 %i.bc, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIsfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.preheader, label %.preheader

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIsfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.preheader: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIsfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64 ; 12 uses
  %i.bd = load ptr, ptr %i.ab, align 8, !tbaa !458 ; 2 uses
  %min.iters.check = icmp ult i32 %.sroa.speculated, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIsfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us: ; preds = %._crit_edge.us
  %i.be = load ptr, ptr %i.ab, align 8, !tbaa !458 ; 2 uses
  %min.iters.check.1 = icmp ult i32 %.sroa.speculated, 8
  br i1 %min.iters.check.1, label %scalar.ph.preheader.1, label %vector.ph.1

vector.ph.1:                                      ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIsfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us
  %n.vec.1 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body.1

vector.body.1:                                    ; preds = %vector.body.1, %vector.ph.1
  %index.1 = phi i64 [ 0, %vector.ph.1 ], [ %index.next.1, %vector.body.1 ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %index.1 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %wide.load.1 = load <4 x i16>, ptr %i.bf, align 2, !tbaa !464
  %wide.load4.1 = load <4 x i16>, ptr %i.bg, align 2, !tbaa !464
  %i.bh = sitofp <4 x i16> %wide.load.1 to <4 x float>
  %i.bi = sitofp <4 x i16> %wide.load4.1 to <4 x float>
  %i.bj = fmul nnan <4 x float> %i.bh, splat (float f0x38000100)
  %i.bk = fmul nnan <4 x float> %i.bi, splat (float f0x38000100)
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index.1 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <4 x float> %i.bj, ptr %i.bl, align 4, !tbaa !461
  store <4 x float> %i.bk, ptr %i.bm, align 4, !tbaa !461
  %index.next.1 = add nuw i64 %index.1, 8         ; 2 uses
  %i.bn = icmp eq i64 %index.next.1, %n.vec.1
  br i1 %i.bn, label %middle.block.1, label %vector.body.1, !llvm.loop !1671

middle.block.1:                                   ; preds = %vector.body.1
  %cmp.n.1 = icmp eq i64 %n.vec.1, %wide.trip.count
  br i1 %cmp.n.1, label %._crit_edge.us.1, label %scalar.ph.preheader.1

scalar.ph.preheader.1:                            ; preds = %middle.block.1, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIsfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us
  %indvars.iv.ph.1 = phi i64 [ 0, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIsfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us ], [ %n.vec.1, %middle.block.1 ]
  br label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph.1, %scalar.ph.preheader.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %scalar.ph.1 ], [ %indvars.iv.ph.1, %scalar.ph.preheader.1 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %indvars.iv.1
  %i.bp = load i16, ptr %i.bo, align 2, !tbaa !464
  %i.bq = sitofp i16 %i.bp to float
  %i.br = fmul nnan float %i.bq, f0x38000100
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.1
  store float %i.br, ptr %i.bs, align 4, !tbaa !461
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond41.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond41.not.1, label %._crit_edge.us.1, label %scalar.ph.1, !llvm.loop !1672

._crit_edge.us.1:                                 ; preds = %scalar.ph.1, %middle.block.1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIsfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1 unwind label %.split38.us, !llvm.loop !1673

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIsfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1: ; preds = %._crit_edge.us.1
  %i.bt = load ptr, ptr %i.ab, align 8, !tbaa !458 ; 2 uses
  %min.iters.check.2 = icmp ult i32 %.sroa.speculated, 8
  br i1 %min.iters.check.2, label %scalar.ph.preheader.2, label %vector.ph.2

vector.ph.2:                                      ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIsfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1
  %n.vec.2 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.2, %vector.ph.2
  %index.2 = phi i64 [ 0, %vector.ph.2 ], [ %index.next.2, %vector.body.2 ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %index.2 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %wide.load.2 = load <4 x i16>, ptr %i.bu, align 2, !tbaa !464
  %wide.load4.2 = load <4 x i16>, ptr %i.bv, align 2, !tbaa !464
  %i.bw = sitofp <4 x i16> %wide.load.2 to <4 x float>
  %i.bx = sitofp <4 x i16> %wide.load4.2 to <4 x float>
  %i.by = fmul nnan <4 x float> %i.bw, splat (float f0x38000100)
  %i.bz = fmul nnan <4 x float> %i.bx, splat (float f0x38000100)
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index.2 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store <4 x float> %i.by, ptr %i.ca, align 8, !tbaa !461
  store <4 x float> %i.bz, ptr %i.cb, align 8, !tbaa !461
  %index.next.2 = add nuw i64 %index.2, 8         ; 2 uses
  %i.cc = icmp eq i64 %index.next.2, %n.vec.2
  br i1 %i.cc, label %middle.block.2, label %vector.body.2, !llvm.loop !1671

middle.block.2:                                   ; preds = %vector.body.2
  %cmp.n.2 = icmp eq i64 %n.vec.2, %wide.trip.count
  br i1 %cmp.n.2, label %._crit_edge.us.2, label %scalar.ph.preheader.2

scalar.ph.preheader.2:                            ; preds = %middle.block.2, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIsfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1
  %indvars.iv.ph.2 = phi i64 [ 0, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIsfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1 ], [ %n.vec.2, %middle.block.2 ]
  br label %scalar.ph.2

scalar.ph.2:                                      ; preds = %scalar.ph.2, %scalar.ph.preheader.2
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %scalar.ph.2 ], [ %indvars.iv.ph.2, %scalar.ph.preheader.2 ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr %i.bt, i64 %indvars.iv.2
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !464
  %i.cf = sitofp i16 %i.ce to float
  %i.cg = fmul nnan float %i.cf, f0x38000100
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.2
  store float %i.cg, ptr %i.ch, align 4, !tbaa !461
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1 ; 2 uses
  %exitcond41.not.2 = icmp eq i64 %indvars.iv.next.2, %wide.trip.count
  br i1 %exitcond41.not.2, label %._crit_edge.us.2, label %scalar.ph.2, !llvm.loop !1672

._crit_edge.us.2:                                 ; preds = %scalar.ph.2, %middle.block.2
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIsfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.2 unwind label %.split38.us, !llvm.loop !1673

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIsfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.2: ; preds = %._crit_edge.us.2
  %i.ci = load ptr, ptr %i.ab, align 8, !tbaa !458 ; 2 uses
  %min.iters.check.3 = icmp ult i32 %.sroa.speculated, 8
  br i1 %min.iters.check.3, label %scalar.ph.preheader.3, label %vector.ph.3

vector.ph.3:                                      ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIsfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.2
  %n.vec.3 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.3, %vector.ph.3
  %index.3 = phi i64 [ 0, %vector.ph.3 ], [ %index.next.3, %vector.body.3 ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %index.3 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %wide.load.3 = load <4 x i16>, ptr %i.cj, align 2, !tbaa !464
  %wide.load4.3 = load <4 x i16>, ptr %i.ck, align 2, !tbaa !464
  %i.cl = sitofp <4 x i16> %wide.load.3 to <4 x float>
  %i.cm = sitofp <4 x i16> %wide.load4.3 to <4 x float>
  %i.cn = fmul nnan <4 x float> %i.cl, splat (float f0x38000100)
  %i.co = fmul nnan <4 x float> %i.cm, splat (float f0x38000100)
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index.3 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store <4 x float> %i.cn, ptr %i.cp, align 4, !tbaa !461
  store <4 x float> %i.co, ptr %i.cq, align 4, !tbaa !461
  %index.next.3 = add nuw i64 %index.3, 8         ; 2 uses
  %i.cr = icmp eq i64 %index.next.3, %n.vec.3
  br i1 %i.cr, label %middle.block.3, label %vector.body.3, !llvm.loop !1671

middle.block.3:                                   ; preds = %vector.body.3
  %cmp.n.3 = icmp eq i64 %n.vec.3, %wide.trip.count
  br i1 %cmp.n.3, label %._crit_edge.us.3, label %scalar.ph.preheader.3

scalar.ph.preheader.3:                            ; preds = %middle.block.3, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIsfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.2
  %indvars.iv.ph.3 = phi i64 [ 0, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIsfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.2 ], [ %n.vec.3, %middle.block.3 ]
  br label %scalar.ph.3

scalar.ph.3:                                      ; preds = %scalar.ph.3, %scalar.ph.preheader.3
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3, %scalar.ph.3 ], [ %indvars.iv.ph.3, %scalar.ph.preheader.3 ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr %i.ci, i64 %indvars.iv.3
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !464
  %i.cu = sitofp i16 %i.ct to float
  %i.cv = fmul nnan float %i.cu, f0x38000100
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.3
  store float %i.cv, ptr %i.cw, align 4, !tbaa !461
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1 ; 2 uses
  %exitcond41.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond41.not.3, label %._crit_edge.us.3, label %scalar.ph.3, !llvm.loop !1672

._crit_edge.us.3:                                 ; preds = %scalar.ph.3, %middle.block.3
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
end_hunk_3
begin_hunk_4_@_ZN11OpenImageIO4v3_1L12interppixel_IsEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE:bb.a
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !1671

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIsfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIsfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.preheader ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIsfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us unwind label %.split38.us, !llvm.loop !1673

.split38.us:                                      ; preds = %._crit_edge.us.3, %._crit_edge.us.2, %._crit_edge.us.1, %._crit_edge.us
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIsfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split: ; preds = %.preheader
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIsfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.1 unwind label %.split38, !llvm.loop !1673

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIsfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.1: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIsfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIsfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.2 unwind label %.split38, !llvm.loop !1673

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIsfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.2: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIsfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %.split.us unwind label %.split38, !llvm.loop !1673

.preheader:                                       ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIsfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIsfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split unwind label %.split38, !llvm.loop !1673

.split.us:                                        ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIsfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.2, %._crit_edge.us.3
  %i.dm = fsub float 1.000000e+00, %i.w           ; 3 uses
  %i.dn = fsub float 1.000000e+00, %i.y           ; 2 uses
  br i1 %i.bc, label %.lr.ph.preheader.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit

.lr.ph.preheader.i:                               ; preds = %.split.us
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64 ; 3 uses
  %min.iters.check6 = icmp ult i32 %.sroa.speculated, 4
  br i1 %min.iters.check6, label %.lr.ph.i.preheader, label %vector.ph7

vector.ph7:                                       ; preds = %.lr.ph.preheader.i
  %n.vec9 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.w, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert10 = insertelement <4 x float> poison, float %i.dm, i64 0
  %broadcast.splat11 = shufflevector <4 x float> %broadcast.splatinsert10, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert12 = insertelement <4 x float> poison, float %i.y, i64 0
  %broadcast.splat13 = shufflevector <4 x float> %broadcast.splatinsert12, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert14 = insertelement <4 x float> poison, float %i.dn, i64 0
  %broadcast.splat15 = shufflevector <4 x float> %broadcast.splatinsert14, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body16

vector.body16:                                    ; preds = %vector.body16, %vector.ph7
  %index17 = phi i64 [ 0, %vector.ph7 ], [ %index.next22, %vector.body16 ] ; 6 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index17
  %wide.load18 = load <4 x float>, ptr %i.do, align 16, !tbaa !461
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index17
  %wide.load19 = load <4 x float>, ptr %i.dp, align 4, !tbaa !461
  %i.dq = fmul <4 x float> %broadcast.splat, %wide.load19
  %i.dr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load18, <4 x float> %broadcast.splat11, <4 x float> %i.dq)
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index17
  %wide.load20 = load <4 x float>, ptr %i.ds, align 8, !tbaa !461
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index17
  %wide.load21 = load <4 x float>, ptr %i.dt, align 4, !tbaa !461
  %i.du = fmul <4 x float> %broadcast.splat, %wide.load21
  %i.dv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load20, <4 x float> %broadcast.splat11, <4 x float> %i.du)
  %i.dw = fmul <4 x float> %broadcast.splat13, %i.dv
  %i.dx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat15, <4 x float> %i.dr, <4 x float> %i.dw)
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index17
  store <4 x float> %i.dx, ptr %i.dy, align 4, !tbaa !461
  %index.next22 = add nuw i64 %index17, 4         ; 2 uses
  %i.dz = icmp eq i64 %index.next22, %n.vec9
  br i1 %i.dz, label %middle.block23, label %vector.body16, !llvm.loop !1674

middle.block23:                                   ; preds = %vector.body16
  %cmp.n24 = icmp eq i64 %n.vec9, %wide.trip.count.i
  br i1 %cmp.n24, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block23
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec9, %middle.block23 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 6 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !461
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !461
  %i.ee = fmul float %i.w, %i.ed
  %i.ef = call float @llvm.fmuladd.f32(float %i.eb, float %i.dm, float %i.ee)
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !461
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !461
  %i.ek = fmul float %i.w, %i.ej
  %i.el = call float @llvm.fmuladd.f32(float %i.eh, float %i.dm, float %i.ek)
  %i.em = fmul float %i.y, %i.el
  %i.en = call float @llvm.fmuladd.f32(float %i.dn, float %i.ef, float %i.em)
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  store float %i.en, ptr %i.eo, align 4, !tbaa !461
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i, !llvm.loop !1675

_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit: ; preds = %.lr.ph.i, %middle.block23, %.split.us
  %i.ep = load ptr, ptr %i.aa, align 8, !tbaa !457
  %.not.i = icmp eq ptr %i.ep, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.eq = landingpad { ptr, i32 }
          catch ptr null
  %i.er = extractvalue { ptr, i32 } %i.eq, 0
  call void @__clang_call_terminate(ptr %i.er) #47
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #42
  ret void

.split38:                                         ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIsfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.2, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIsfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.1, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIsfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split, %.preheader
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.split38.us, %.split38
  %.us-phi = phi { ptr, i32 } [ %i.es, %.split38 ], [ %i.dl, %.split38.us ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %6) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #42
  resume { ptr, i32 } %.us-phi
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L12interppixel_IjEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, float noundef %2, ptr writeonly captures(none) %3, i64 %4, i32 noundef %5) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.192", align 8 ; 30 uses
  %i.a = trunc i64 %4 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !171  ; 2 uses
  %i.d = tail call noundef zeroext i1 @_ZNK11OpenImageIO4v3_112ImageBufImpl13validate_specENS0_6DoLockE(ptr noundef nonnull align 8 dereferenceable(696) %i.c, i8 1) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %i.a) ; 13 uses
  %.not = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = shl nsw i32 %.sroa.speculated, 2
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 2
  %i.j = alloca i8, i64 %i.i, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ] ; 7 uses
  %i.l = sext i32 %.sroa.speculated to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 4 uses
  %i.n = shl nsw i32 %.sroa.speculated, 1
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.o ; 4 uses
  %i.q = mul nsw i32 %.sroa.speculated, 3
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.r ; 4 uses
  %i.t = fadd float %1, -5.000000e-01             ; 2 uses
  %i.u = fadd float %2, -5.000000e-01             ; 2 uses
  %i.v = tail call noundef float @llvm.floor.f32(float %i.t) ; 2 uses
  %i.w = fsub float %i.t, %i.v                    ; 4 uses
  %i.x = tail call noundef float @llvm.floor.f32(float %i.u) ; 2 uses
  %i.y = fsub float %i.u, %i.x                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #42
  store ptr %0, ptr %6, align 8, !tbaa !453
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !457
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 5 uses
  store ptr null, ptr %i.ab, align 8, !tbaa !458
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i32 0, ptr %i.z, align 8
  store i32 1, ptr %i.ac, align 8, !tbaa !459
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 124
  store i8 0, ptr %i.ad, align 4, !tbaa !460
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef %5, i1 zeroext poison)
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.ah = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.x, i64 1
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ak = fptosi <4 x float> %i.aj to <4 x i32>   ; 3 uses
  %i.al = add nsw <4 x i32> %i.ak, <i32 0, i32 2, i32 0, i32 2>
  store <4 x i32> %i.al, ptr %i.ae, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  store i32 0, ptr %i.am, align 4, !tbaa !504
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 3 uses
  store i32 1, ptr %i.an, align 8, !tbaa !505
  %i.ao = extractelement <4 x i32> %i.ak, i64 0
  %i.ap = extractelement <4 x i32> %i.ak, i64 2
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef %i.ao, i32 noundef %i.ap, i32 noundef 0)
  %i.aq = load i32, ptr %i.ae, align 4, !tbaa !506 ; 2 uses
  %i.ar = load i32, ptr %i.af, align 8, !tbaa !507
  %i.as = icmp eq i32 %i.aq, %i.ar
  %.pre.i.i = load i32, ptr %i.ag, align 4, !tbaa !508 ; 2 uses
  br i1 %i.as, label %._crit_edge.i.i, label %bb.d

._crit_edge.i.i:                                  ; preds = %bb.c
  %.pre9.i.i = load i32, ptr %i.an, align 8, !tbaa !505
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.au = load i32, ptr %i.at, align 8, !tbaa !509
  %i.av = icmp eq i32 %.pre.i.i, %i.au
  %.pre10.i.i = load i32, ptr %i.an, align 8, !tbaa !505 ; 2 uses
  %i.aw = load i32, ptr %i.am, align 4
  %i.ax = icmp eq i32 %i.aw, %.pre10.i.i
  %or.cond.i.i = select i1 %i.av, i1 true, i1 %i.ax
  br i1 %or.cond.i.i, label %bb.e, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIjfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i
  %i.ay = phi i32 [ %.pre9.i.i, %._crit_edge.i.i ], [ %.pre10.i.i, %bb.d ]
  store i8 0, ptr %i.z, align 8, !tbaa !510
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 60
  store i32 %i.aq, ptr %i.az, align 4, !tbaa !511
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 %.pre.i.i, ptr %i.ba, align 8, !tbaa !512
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 68
  store i32 %i.ay, ptr %i.bb, align 4, !tbaa !513
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIjfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIjfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit: ; preds = %bb.d, %bb.e
  %i.bc = icmp sgt i32 %.sroa.speculated, 0       ; 2 uses
  br i1 %i.bc, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIjfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.preheader, label %.preheader

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIjfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.preheader: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIjfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64 ; 12 uses
  %i.bd = load ptr, ptr %i.ab, align 8, !tbaa !458 ; 2 uses
  %min.iters.check = icmp ult i32 %.sroa.speculated, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIjfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us: ; preds = %._crit_edge.us
  %i.be = load ptr, ptr %i.ab, align 8, !tbaa !458 ; 2 uses
  %min.iters.check.1 = icmp ult i32 %.sroa.speculated, 8
  br i1 %min.iters.check.1, label %scalar.ph.preheader.1, label %vector.ph.1

vector.ph.1:                                      ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIjfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us
  %n.vec.1 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body.1

vector.body.1:                                    ; preds = %vector.body.1, %vector.ph.1
  %index.1 = phi i64 [ 0, %vector.ph.1 ], [ %index.next.1, %vector.body.1 ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %index.1 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load.1 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !3
  %wide.load4.1 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !3
  %i.bh = uitofp <4 x i32> %wide.load.1 to <4 x float>
  %i.bi = uitofp <4 x i32> %wide.load4.1 to <4 x float>
  %i.bj = fmul nnan <4 x float> %i.bh, splat (float f0x2F800000)
  %i.bk = fmul nnan <4 x float> %i.bi, splat (float f0x2F800000)
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index.1 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <4 x float> %i.bj, ptr %i.bl, align 4, !tbaa !461
  store <4 x float> %i.bk, ptr %i.bm, align 4, !tbaa !461
  %index.next.1 = add nuw i64 %index.1, 8         ; 2 uses
  %i.bn = icmp eq i64 %index.next.1, %n.vec.1
  br i1 %i.bn, label %middle.block.1, label %vector.body.1, !llvm.loop !1676

middle.block.1:                                   ; preds = %vector.body.1
  %cmp.n.1 = icmp eq i64 %n.vec.1, %wide.trip.count
  br i1 %cmp.n.1, label %._crit_edge.us.1, label %scalar.ph.preheader.1

scalar.ph.preheader.1:                            ; preds = %middle.block.1, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIjfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us
  %indvars.iv.ph.1 = phi i64 [ 0, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIjfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us ], [ %n.vec.1, %middle.block.1 ]
  br label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph.1, %scalar.ph.preheader.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %scalar.ph.1 ], [ %indvars.iv.ph.1, %scalar.ph.preheader.1 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.1
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  %i.bq = uitofp i32 %i.bp to float
  %i.br = fmul nnan float %i.bq, f0x2F800000
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.1
  store float %i.br, ptr %i.bs, align 4, !tbaa !461
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond41.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond41.not.1, label %._crit_edge.us.1, label %scalar.ph.1, !llvm.loop !1677

._crit_edge.us.1:                                 ; preds = %scalar.ph.1, %middle.block.1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIjfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1 unwind label %.split38.us, !llvm.loop !1678

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIjfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1: ; preds = %._crit_edge.us.1
  %i.bt = load ptr, ptr %i.ab, align 8, !tbaa !458 ; 2 uses
  %min.iters.check.2 = icmp ult i32 %.sroa.speculated, 8
  br i1 %min.iters.check.2, label %scalar.ph.preheader.2, label %vector.ph.2

vector.ph.2:                                      ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIjfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1
  %n.vec.2 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.2, %vector.ph.2
  %index.2 = phi i64 [ 0, %vector.ph.2 ], [ %index.next.2, %vector.body.2 ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %index.2 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %wide.load.2 = load <4 x i32>, ptr %i.bu, align 4, !tbaa !3
  %wide.load4.2 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !3
  %i.bw = uitofp <4 x i32> %wide.load.2 to <4 x float>
  %i.bx = uitofp <4 x i32> %wide.load4.2 to <4 x float>
  %i.by = fmul nnan <4 x float> %i.bw, splat (float f0x2F800000)
  %i.bz = fmul nnan <4 x float> %i.bx, splat (float f0x2F800000)
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index.2 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store <4 x float> %i.by, ptr %i.ca, align 8, !tbaa !461
  store <4 x float> %i.bz, ptr %i.cb, align 8, !tbaa !461
  %index.next.2 = add nuw i64 %index.2, 8         ; 2 uses
  %i.cc = icmp eq i64 %index.next.2, %n.vec.2
  br i1 %i.cc, label %middle.block.2, label %vector.body.2, !llvm.loop !1676

middle.block.2:                                   ; preds = %vector.body.2
  %cmp.n.2 = icmp eq i64 %n.vec.2, %wide.trip.count
  br i1 %cmp.n.2, label %._crit_edge.us.2, label %scalar.ph.preheader.2

scalar.ph.preheader.2:                            ; preds = %middle.block.2, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIjfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1
  %indvars.iv.ph.2 = phi i64 [ 0, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIjfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1 ], [ %n.vec.2, %middle.block.2 ]
  br label %scalar.ph.2

scalar.ph.2:                                      ; preds = %scalar.ph.2, %scalar.ph.preheader.2
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %scalar.ph.2 ], [ %indvars.iv.ph.2, %scalar.ph.preheader.2 ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.2
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = uitofp i32 %i.ce to float
  %i.cg = fmul nnan float %i.cf, f0x2F800000
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.2
  store float %i.cg, ptr %i.ch, align 4, !tbaa !461
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1 ; 2 uses
  %exitcond41.not.2 = icmp eq i64 %indvars.iv.next.2, %wide.trip.count
  br i1 %exitcond41.not.2, label %._crit_edge.us.2, label %scalar.ph.2, !llvm.loop !1677

._crit_edge.us.2:                                 ; preds = %scalar.ph.2, %middle.block.2
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIjfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.2 unwind label %.split38.us, !llvm.loop !1678

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIjfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.2: ; preds = %._crit_edge.us.2
  %i.ci = load ptr, ptr %i.ab, align 8, !tbaa !458 ; 2 uses
  %min.iters.check.3 = icmp ult i32 %.sroa.speculated, 8
  br i1 %min.iters.check.3, label %scalar.ph.preheader.3, label %vector.ph.3

vector.ph.3:                                      ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIjfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.2
  %n.vec.3 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.3, %vector.ph.3
  %index.3 = phi i64 [ 0, %vector.ph.3 ], [ %index.next.3, %vector.body.3 ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %index.3 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %wide.load.3 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !3
  %wide.load4.3 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !3
  %i.cl = uitofp <4 x i32> %wide.load.3 to <4 x float>
  %i.cm = uitofp <4 x i32> %wide.load4.3 to <4 x float>
  %i.cn = fmul nnan <4 x float> %i.cl, splat (float f0x2F800000)
  %i.co = fmul nnan <4 x float> %i.cm, splat (float f0x2F800000)
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index.3 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store <4 x float> %i.cn, ptr %i.cp, align 4, !tbaa !461
  store <4 x float> %i.co, ptr %i.cq, align 4, !tbaa !461
  %index.next.3 = add nuw i64 %index.3, 8         ; 2 uses
  %i.cr = icmp eq i64 %index.next.3, %n.vec.3
  br i1 %i.cr, label %middle.block.3, label %vector.body.3, !llvm.loop !1676

middle.block.3:                                   ; preds = %vector.body.3
  %cmp.n.3 = icmp eq i64 %n.vec.3, %wide.trip.count
  br i1 %cmp.n.3, label %._crit_edge.us.3, label %scalar.ph.preheader.3

scalar.ph.preheader.3:                            ; preds = %middle.block.3, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIjfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.2
  %indvars.iv.ph.3 = phi i64 [ 0, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIjfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.2 ], [ %n.vec.3, %middle.block.3 ]
  br label %scalar.ph.3

scalar.ph.3:                                      ; preds = %scalar.ph.3, %scalar.ph.preheader.3
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3, %scalar.ph.3 ], [ %indvars.iv.ph.3, %scalar.ph.preheader.3 ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.3
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cu = uitofp i32 %i.ct to float
  %i.cv = fmul nnan float %i.cu, f0x2F800000
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.3
  store float %i.cv, ptr %i.cw, align 4, !tbaa !461
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1 ; 2 uses
  %exitcond41.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond41.not.3, label %._crit_edge.us.3, label %scalar.ph.3, !llvm.loop !1677

._crit_edge.us.3:                                 ; preds = %scalar.ph.3, %middle.block.3
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
end_hunk_4
begin_hunk_5_@_ZN11OpenImageIO4v3_1L12interppixel_IjEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE:bb.a
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !1676

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIjfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIjfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.preheader ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIjfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us unwind label %.split38.us, !llvm.loop !1678

.split38.us:                                      ; preds = %._crit_edge.us.3, %._crit_edge.us.2, %._crit_edge.us.1, %._crit_edge.us
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIjfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split: ; preds = %.preheader
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIjfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.1 unwind label %.split38, !llvm.loop !1678

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIjfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.1: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIjfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIjfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.2 unwind label %.split38, !llvm.loop !1678

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIjfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.2: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIjfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %.split.us unwind label %.split38, !llvm.loop !1678

.preheader:                                       ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIjfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIjfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split unwind label %.split38, !llvm.loop !1678

.split.us:                                        ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIjfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.2, %._crit_edge.us.3
  %i.dm = fsub float 1.000000e+00, %i.w           ; 3 uses
  %i.dn = fsub float 1.000000e+00, %i.y           ; 2 uses
  br i1 %i.bc, label %.lr.ph.preheader.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit

.lr.ph.preheader.i:                               ; preds = %.split.us
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64 ; 3 uses
  %min.iters.check6 = icmp ult i32 %.sroa.speculated, 4
  br i1 %min.iters.check6, label %.lr.ph.i.preheader, label %vector.ph7

vector.ph7:                                       ; preds = %.lr.ph.preheader.i
  %n.vec9 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.w, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert10 = insertelement <4 x float> poison, float %i.dm, i64 0
  %broadcast.splat11 = shufflevector <4 x float> %broadcast.splatinsert10, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert12 = insertelement <4 x float> poison, float %i.y, i64 0
  %broadcast.splat13 = shufflevector <4 x float> %broadcast.splatinsert12, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert14 = insertelement <4 x float> poison, float %i.dn, i64 0
  %broadcast.splat15 = shufflevector <4 x float> %broadcast.splatinsert14, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body16

vector.body16:                                    ; preds = %vector.body16, %vector.ph7
  %index17 = phi i64 [ 0, %vector.ph7 ], [ %index.next22, %vector.body16 ] ; 6 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index17
  %wide.load18 = load <4 x float>, ptr %i.do, align 16, !tbaa !461
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index17
  %wide.load19 = load <4 x float>, ptr %i.dp, align 4, !tbaa !461
  %i.dq = fmul <4 x float> %broadcast.splat, %wide.load19
  %i.dr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load18, <4 x float> %broadcast.splat11, <4 x float> %i.dq)
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index17
  %wide.load20 = load <4 x float>, ptr %i.ds, align 8, !tbaa !461
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index17
  %wide.load21 = load <4 x float>, ptr %i.dt, align 4, !tbaa !461
  %i.du = fmul <4 x float> %broadcast.splat, %wide.load21
  %i.dv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load20, <4 x float> %broadcast.splat11, <4 x float> %i.du)
  %i.dw = fmul <4 x float> %broadcast.splat13, %i.dv
  %i.dx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat15, <4 x float> %i.dr, <4 x float> %i.dw)
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index17
  store <4 x float> %i.dx, ptr %i.dy, align 4, !tbaa !461
  %index.next22 = add nuw i64 %index17, 4         ; 2 uses
  %i.dz = icmp eq i64 %index.next22, %n.vec9
  br i1 %i.dz, label %middle.block23, label %vector.body16, !llvm.loop !1679

middle.block23:                                   ; preds = %vector.body16
  %cmp.n24 = icmp eq i64 %n.vec9, %wide.trip.count.i
  br i1 %cmp.n24, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block23
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec9, %middle.block23 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 6 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !461
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !461
  %i.ee = fmul float %i.w, %i.ed
  %i.ef = call float @llvm.fmuladd.f32(float %i.eb, float %i.dm, float %i.ee)
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !461
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !461
  %i.ek = fmul float %i.w, %i.ej
  %i.el = call float @llvm.fmuladd.f32(float %i.eh, float %i.dm, float %i.ek)
  %i.em = fmul float %i.y, %i.el
  %i.en = call float @llvm.fmuladd.f32(float %i.dn, float %i.ef, float %i.em)
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  store float %i.en, ptr %i.eo, align 4, !tbaa !461
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i, !llvm.loop !1680

_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit: ; preds = %.lr.ph.i, %middle.block23, %.split.us
  %i.ep = load ptr, ptr %i.aa, align 8, !tbaa !457
  %.not.i = icmp eq ptr %i.ep, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.eq = landingpad { ptr, i32 }
          catch ptr null
  %i.er = extractvalue { ptr, i32 } %i.eq, 0
  call void @__clang_call_terminate(ptr %i.er) #47
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #42
  ret void

.split38:                                         ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIjfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.2, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIjfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.1, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIjfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split, %.preheader
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.split38.us, %.split38
  %.us-phi = phi { ptr, i32 } [ %i.es, %.split38 ], [ %i.dl, %.split38.us ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %6) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #42
  resume { ptr, i32 } %.us-phi
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L12interppixel_IiEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, float noundef %2, ptr writeonly captures(none) %3, i64 %4, i32 noundef %5) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.195", align 8 ; 30 uses
  %i.a = trunc i64 %4 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !171  ; 2 uses
  %i.d = tail call noundef zeroext i1 @_ZNK11OpenImageIO4v3_112ImageBufImpl13validate_specENS0_6DoLockE(ptr noundef nonnull align 8 dereferenceable(696) %i.c, i8 1) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %i.a) ; 13 uses
  %.not = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = shl nsw i32 %.sroa.speculated, 2
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 2
  %i.j = alloca i8, i64 %i.i, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ] ; 7 uses
  %i.l = sext i32 %.sroa.speculated to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 4 uses
  %i.n = shl nsw i32 %.sroa.speculated, 1
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.o ; 4 uses
  %i.q = mul nsw i32 %.sroa.speculated, 3
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.r ; 4 uses
  %i.t = fadd float %1, -5.000000e-01             ; 2 uses
  %i.u = fadd float %2, -5.000000e-01             ; 2 uses
  %i.v = tail call noundef float @llvm.floor.f32(float %i.t) ; 2 uses
  %i.w = fsub float %i.t, %i.v                    ; 4 uses
  %i.x = tail call noundef float @llvm.floor.f32(float %i.u) ; 2 uses
  %i.y = fsub float %i.u, %i.x                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #42
  store ptr %0, ptr %6, align 8, !tbaa !453
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !457
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 5 uses
  store ptr null, ptr %i.ab, align 8, !tbaa !458
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i32 0, ptr %i.z, align 8
  store i32 1, ptr %i.ac, align 8, !tbaa !459
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 124
  store i8 0, ptr %i.ad, align 4, !tbaa !460
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef %5, i1 zeroext poison)
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.ah = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.x, i64 1
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ak = fptosi <4 x float> %i.aj to <4 x i32>   ; 3 uses
  %i.al = add nsw <4 x i32> %i.ak, <i32 0, i32 2, i32 0, i32 2>
  store <4 x i32> %i.al, ptr %i.ae, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  store i32 0, ptr %i.am, align 4, !tbaa !504
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 3 uses
  store i32 1, ptr %i.an, align 8, !tbaa !505
  %i.ao = extractelement <4 x i32> %i.ak, i64 0
  %i.ap = extractelement <4 x i32> %i.ak, i64 2
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef %i.ao, i32 noundef %i.ap, i32 noundef 0)
  %i.aq = load i32, ptr %i.ae, align 4, !tbaa !506 ; 2 uses
  %i.ar = load i32, ptr %i.af, align 8, !tbaa !507
  %i.as = icmp eq i32 %i.aq, %i.ar
  %.pre.i.i = load i32, ptr %i.ag, align 4, !tbaa !508 ; 2 uses
  br i1 %i.as, label %._crit_edge.i.i, label %bb.d

._crit_edge.i.i:                                  ; preds = %bb.c
  %.pre9.i.i = load i32, ptr %i.an, align 8, !tbaa !505
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.au = load i32, ptr %i.at, align 8, !tbaa !509
  %i.av = icmp eq i32 %.pre.i.i, %i.au
  %.pre10.i.i = load i32, ptr %i.an, align 8, !tbaa !505 ; 2 uses
  %i.aw = load i32, ptr %i.am, align 4
  %i.ax = icmp eq i32 %i.aw, %.pre10.i.i
  %or.cond.i.i = select i1 %i.av, i1 true, i1 %i.ax
  br i1 %or.cond.i.i, label %bb.e, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i
  %i.ay = phi i32 [ %.pre9.i.i, %._crit_edge.i.i ], [ %.pre10.i.i, %bb.d ]
  store i8 0, ptr %i.z, align 8, !tbaa !510
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 60
  store i32 %i.aq, ptr %i.az, align 4, !tbaa !511
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 %.pre.i.i, ptr %i.ba, align 8, !tbaa !512
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 68
  store i32 %i.ay, ptr %i.bb, align 4, !tbaa !513
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit: ; preds = %bb.d, %bb.e
  %i.bc = icmp sgt i32 %.sroa.speculated, 0       ; 2 uses
  br i1 %i.bc, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.preheader, label %.preheader

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.preheader: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64 ; 12 uses
  %i.bd = load ptr, ptr %i.ab, align 8, !tbaa !458 ; 2 uses
  %min.iters.check = icmp ult i32 %.sroa.speculated, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us: ; preds = %._crit_edge.us
  %i.be = load ptr, ptr %i.ab, align 8, !tbaa !458 ; 2 uses
  %min.iters.check.1 = icmp ult i32 %.sroa.speculated, 8
  br i1 %min.iters.check.1, label %scalar.ph.preheader.1, label %vector.ph.1

vector.ph.1:                                      ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us
  %n.vec.1 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body.1

vector.body.1:                                    ; preds = %vector.body.1, %vector.ph.1
  %index.1 = phi i64 [ 0, %vector.ph.1 ], [ %index.next.1, %vector.body.1 ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %index.1 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load.1 = load <4 x i32>, ptr %i.bf, align 4, !tbaa !3
  %wide.load4.1 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !3
  %i.bh = sitofp <4 x i32> %wide.load.1 to <4 x float>
  %i.bi = sitofp <4 x i32> %wide.load4.1 to <4 x float>
  %i.bj = fmul nnan <4 x float> %i.bh, splat (float f0x30000000)
  %i.bk = fmul nnan <4 x float> %i.bi, splat (float f0x30000000)
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index.1 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store <4 x float> %i.bj, ptr %i.bl, align 4, !tbaa !461
  store <4 x float> %i.bk, ptr %i.bm, align 4, !tbaa !461
  %index.next.1 = add nuw i64 %index.1, 8         ; 2 uses
  %i.bn = icmp eq i64 %index.next.1, %n.vec.1
  br i1 %i.bn, label %middle.block.1, label %vector.body.1, !llvm.loop !1681

middle.block.1:                                   ; preds = %vector.body.1
  %cmp.n.1 = icmp eq i64 %n.vec.1, %wide.trip.count
  br i1 %cmp.n.1, label %._crit_edge.us.1, label %scalar.ph.preheader.1

scalar.ph.preheader.1:                            ; preds = %middle.block.1, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us
  %indvars.iv.ph.1 = phi i64 [ 0, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us ], [ %n.vec.1, %middle.block.1 ]
  br label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph.1, %scalar.ph.preheader.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %scalar.ph.1 ], [ %indvars.iv.ph.1, %scalar.ph.preheader.1 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.1
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  %i.bq = sitofp i32 %i.bp to float
  %i.br = fmul nnan float %i.bq, f0x30000000
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.1
  store float %i.br, ptr %i.bs, align 4, !tbaa !461
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond41.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond41.not.1, label %._crit_edge.us.1, label %scalar.ph.1, !llvm.loop !1682

._crit_edge.us.1:                                 ; preds = %scalar.ph.1, %middle.block.1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1 unwind label %.split38.us, !llvm.loop !1683

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1: ; preds = %._crit_edge.us.1
  %i.bt = load ptr, ptr %i.ab, align 8, !tbaa !458 ; 2 uses
  %min.iters.check.2 = icmp ult i32 %.sroa.speculated, 8
  br i1 %min.iters.check.2, label %scalar.ph.preheader.2, label %vector.ph.2

vector.ph.2:                                      ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1
  %n.vec.2 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.2, %vector.ph.2
  %index.2 = phi i64 [ 0, %vector.ph.2 ], [ %index.next.2, %vector.body.2 ] ; 3 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %index.2 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %wide.load.2 = load <4 x i32>, ptr %i.bu, align 4, !tbaa !3
  %wide.load4.2 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !3
  %i.bw = sitofp <4 x i32> %wide.load.2 to <4 x float>
  %i.bx = sitofp <4 x i32> %wide.load4.2 to <4 x float>
  %i.by = fmul nnan <4 x float> %i.bw, splat (float f0x30000000)
  %i.bz = fmul nnan <4 x float> %i.bx, splat (float f0x30000000)
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index.2 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  store <4 x float> %i.by, ptr %i.ca, align 8, !tbaa !461
  store <4 x float> %i.bz, ptr %i.cb, align 8, !tbaa !461
  %index.next.2 = add nuw i64 %index.2, 8         ; 2 uses
  %i.cc = icmp eq i64 %index.next.2, %n.vec.2
  br i1 %i.cc, label %middle.block.2, label %vector.body.2, !llvm.loop !1681

middle.block.2:                                   ; preds = %vector.body.2
  %cmp.n.2 = icmp eq i64 %n.vec.2, %wide.trip.count
  br i1 %cmp.n.2, label %._crit_edge.us.2, label %scalar.ph.preheader.2

scalar.ph.preheader.2:                            ; preds = %middle.block.2, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1
  %indvars.iv.ph.2 = phi i64 [ 0, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1 ], [ %n.vec.2, %middle.block.2 ]
  br label %scalar.ph.2

scalar.ph.2:                                      ; preds = %scalar.ph.2, %scalar.ph.preheader.2
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %scalar.ph.2 ], [ %indvars.iv.ph.2, %scalar.ph.preheader.2 ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv.2
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !3
  %i.cf = sitofp i32 %i.ce to float
  %i.cg = fmul nnan float %i.cf, f0x30000000
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.2
  store float %i.cg, ptr %i.ch, align 4, !tbaa !461
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1 ; 2 uses
  %exitcond41.not.2 = icmp eq i64 %indvars.iv.next.2, %wide.trip.count
  br i1 %exitcond41.not.2, label %._crit_edge.us.2, label %scalar.ph.2, !llvm.loop !1682

._crit_edge.us.2:                                 ; preds = %scalar.ph.2, %middle.block.2
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.2 unwind label %.split38.us, !llvm.loop !1683

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.2: ; preds = %._crit_edge.us.2
  %i.ci = load ptr, ptr %i.ab, align 8, !tbaa !458 ; 2 uses
  %min.iters.check.3 = icmp ult i32 %.sroa.speculated, 8
  br i1 %min.iters.check.3, label %scalar.ph.preheader.3, label %vector.ph.3

vector.ph.3:                                      ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.2
  %n.vec.3 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.3, %vector.ph.3
  %index.3 = phi i64 [ 0, %vector.ph.3 ], [ %index.next.3, %vector.body.3 ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %index.3 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %wide.load.3 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !3
  %wide.load4.3 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !3
  %i.cl = sitofp <4 x i32> %wide.load.3 to <4 x float>
  %i.cm = sitofp <4 x i32> %wide.load4.3 to <4 x float>
  %i.cn = fmul nnan <4 x float> %i.cl, splat (float f0x30000000)
  %i.co = fmul nnan <4 x float> %i.cm, splat (float f0x30000000)
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index.3 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store <4 x float> %i.cn, ptr %i.cp, align 4, !tbaa !461
  store <4 x float> %i.co, ptr %i.cq, align 4, !tbaa !461
  %index.next.3 = add nuw i64 %index.3, 8         ; 2 uses
  %i.cr = icmp eq i64 %index.next.3, %n.vec.3
  br i1 %i.cr, label %middle.block.3, label %vector.body.3, !llvm.loop !1681

middle.block.3:                                   ; preds = %vector.body.3
  %cmp.n.3 = icmp eq i64 %n.vec.3, %wide.trip.count
  br i1 %cmp.n.3, label %._crit_edge.us.3, label %scalar.ph.preheader.3

scalar.ph.preheader.3:                            ; preds = %middle.block.3, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.2
  %indvars.iv.ph.3 = phi i64 [ 0, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.2 ], [ %n.vec.3, %middle.block.3 ]
  br label %scalar.ph.3

scalar.ph.3:                                      ; preds = %scalar.ph.3, %scalar.ph.preheader.3
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3, %scalar.ph.3 ], [ %indvars.iv.ph.3, %scalar.ph.preheader.3 ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.3
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !3
  %i.cu = sitofp i32 %i.ct to float
  %i.cv = fmul nnan float %i.cu, f0x30000000
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.3
  store float %i.cv, ptr %i.cw, align 4, !tbaa !461
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1 ; 2 uses
  %exitcond41.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond41.not.3, label %._crit_edge.us.3, label %scalar.ph.3, !llvm.loop !1682

._crit_edge.us.3:                                 ; preds = %scalar.ph.3, %middle.block.3
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
end_hunk_5
begin_hunk_6_@_ZN11OpenImageIO4v3_1L12interppixel_IiEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE:bb.a
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !1681

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.preheader ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge.us:                                   ; preds = %scalar.ph, %middle.block
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us unwind label %.split38.us, !llvm.loop !1683

.split38.us:                                      ; preds = %._crit_edge.us.3, %._crit_edge.us.2, %._crit_edge.us.1, %._crit_edge.us
  %i.dl = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split: ; preds = %.preheader
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.1 unwind label %.split38, !llvm.loop !1683

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.1: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.2 unwind label %.split38, !llvm.loop !1683

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.2: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %.split.us unwind label %.split38, !llvm.loop !1683

.preheader:                                       ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split unwind label %.split38, !llvm.loop !1683

.split.us:                                        ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.2, %._crit_edge.us.3
  %i.dm = fsub float 1.000000e+00, %i.w           ; 3 uses
  %i.dn = fsub float 1.000000e+00, %i.y           ; 2 uses
  br i1 %i.bc, label %.lr.ph.preheader.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit

.lr.ph.preheader.i:                               ; preds = %.split.us
  %wide.trip.count.i = zext nneg i32 %.sroa.speculated to i64 ; 3 uses
  %min.iters.check6 = icmp ult i32 %.sroa.speculated, 4
  br i1 %min.iters.check6, label %.lr.ph.i.preheader, label %vector.ph7

vector.ph7:                                       ; preds = %.lr.ph.preheader.i
  %n.vec9 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.w, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert10 = insertelement <4 x float> poison, float %i.dm, i64 0
  %broadcast.splat11 = shufflevector <4 x float> %broadcast.splatinsert10, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert12 = insertelement <4 x float> poison, float %i.y, i64 0
  %broadcast.splat13 = shufflevector <4 x float> %broadcast.splatinsert12, <4 x float> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert14 = insertelement <4 x float> poison, float %i.dn, i64 0
  %broadcast.splat15 = shufflevector <4 x float> %broadcast.splatinsert14, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body16

vector.body16:                                    ; preds = %vector.body16, %vector.ph7
  %index17 = phi i64 [ 0, %vector.ph7 ], [ %index.next22, %vector.body16 ] ; 6 uses
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %index17
  %wide.load18 = load <4 x float>, ptr %i.do, align 16, !tbaa !461
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index17
  %wide.load19 = load <4 x float>, ptr %i.dp, align 4, !tbaa !461
  %i.dq = fmul <4 x float> %broadcast.splat, %wide.load19
  %i.dr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load18, <4 x float> %broadcast.splat11, <4 x float> %i.dq)
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index17
  %wide.load20 = load <4 x float>, ptr %i.ds, align 8, !tbaa !461
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index17
  %wide.load21 = load <4 x float>, ptr %i.dt, align 4, !tbaa !461
  %i.du = fmul <4 x float> %broadcast.splat, %wide.load21
  %i.dv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %wide.load20, <4 x float> %broadcast.splat11, <4 x float> %i.du)
  %i.dw = fmul <4 x float> %broadcast.splat13, %i.dv
  %i.dx = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %broadcast.splat15, <4 x float> %i.dr, <4 x float> %i.dw)
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index17
  store <4 x float> %i.dx, ptr %i.dy, align 4, !tbaa !461
  %index.next22 = add nuw i64 %index17, 4         ; 2 uses
  %i.dz = icmp eq i64 %index.next22, %n.vec9
  br i1 %i.dz, label %middle.block23, label %vector.body16, !llvm.loop !1684

middle.block23:                                   ; preds = %vector.body16
  %cmp.n24 = icmp eq i64 %n.vec9, %wide.trip.count.i
  br i1 %cmp.n24, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block23
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec9, %middle.block23 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 6 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.eb = load float, ptr %i.ea, align 4, !tbaa !461
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !461
  %i.ee = fmul float %i.w, %i.ed
  %i.ef = call float @llvm.fmuladd.f32(float %i.eb, float %i.dm, float %i.ee)
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !461
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i
  %i.ej = load float, ptr %i.ei, align 4, !tbaa !461
  %i.ek = fmul float %i.w, %i.ej
  %i.el = call float @llvm.fmuladd.f32(float %i.eh, float %i.dm, float %i.ek)
  %i.em = fmul float %i.y, %i.el
  %i.en = call float @llvm.fmuladd.f32(float %i.dn, float %i.ef, float %i.em)
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i
  store float %i.en, ptr %i.eo, align 4, !tbaa !461
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, label %.lr.ph.i, !llvm.loop !1685

_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit: ; preds = %.lr.ph.i, %middle.block23, %.split.us
  %i.ep = load ptr, ptr %i.aa, align 8, !tbaa !457
  %.not.i = icmp eq ptr %i.ep, null
  br i1 %.not.i, label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit, label %bb.f

bb.f:                                             ; preds = %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase12release_tileEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.eq = landingpad { ptr, i32 }
          catch ptr null
  %i.er = extractvalue { ptr, i32 } %i.eq, 0
  call void @__clang_call_terminate(ptr %i.er) #47
  unreachable

_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev.exit: ; preds = %_ZN11OpenImageIO4v3_16bilerpIffEEvPKT_S4_S4_S4_T0_S5_iPS2_.exit, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #42
  ret void

.split38:                                         ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.2, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.1, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIifEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split, %.preheader
  %i.es = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.split38.us, %.split38
  %.us-phi = phi { ptr, i32 } [ %i.es, %.split38 ], [ %i.dl, %.split38.us ]
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseD2Ev(ptr noundef nonnull align 8 dereferenceable(126) %6) #42
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #42
  resume { ptr, i32 } %.us-phi
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN11OpenImageIO4v3_1L12interppixel_IdEEbRKNS0_8ImageBufEffNS0_4spanIfLm18446744073709551615EEENS2_8WrapModeE(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1, float noundef %2, ptr writeonly captures(none) %3, i64 %4, i32 noundef %5) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.OpenImageIO::v3_1::ImageBuf::ConstIterator.198", align 8 ; 30 uses
  %i.a = trunc i64 %4 to i32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !171  ; 2 uses
  %i.d = tail call noundef zeroext i1 @_ZNK11OpenImageIO4v3_112ImageBufImpl13validate_specENS0_6DoLockE(ptr noundef nonnull align 8 dereferenceable(696) %i.c, i8 1) ; 0 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 108
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.f, i32 %i.a) ; 13 uses
  %.not = icmp eq i32 %.sroa.speculated, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = shl nsw i32 %.sroa.speculated, 2
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 2
  %i.j = alloca i8, i64 %i.i, align 16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %i.j, %bb.b ], [ null, %bb.a ] ; 7 uses
  %i.l = sext i32 %.sroa.speculated to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.l ; 4 uses
  %i.n = shl nsw i32 %.sroa.speculated, 1
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.o ; 4 uses
  %i.q = mul nsw i32 %.sroa.speculated, 3
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.r ; 4 uses
  %i.t = fadd float %1, -5.000000e-01             ; 2 uses
  %i.u = fadd float %2, -5.000000e-01             ; 2 uses
  %i.v = tail call noundef float @llvm.floor.f32(float %i.t) ; 2 uses
  %i.w = fsub float %i.t, %i.v                    ; 4 uses
  %i.x = tail call noundef float @llvm.floor.f32(float %i.u) ; 2 uses
  %i.y = fsub float %i.u, %i.x                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #42
  store ptr %0, ptr %6, align 8, !tbaa !453
  %i.z = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  store ptr null, ptr %i.aa, align 8, !tbaa !457
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 112 ; 5 uses
  store ptr null, ptr %i.ab, align 8, !tbaa !458
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 120
  store i32 0, ptr %i.z, align 8
  store i32 1, ptr %i.ac, align 8, !tbaa !459
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 124
  store i8 0, ptr %i.ad, align 4, !tbaa !460
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase7init_ibENS1_8WrapModeEb(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef %5, i1 zeroext poison)
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 36 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 44
  %i.ah = insertelement <2 x float> poison, float %i.v, i64 0
  %i.ai = insertelement <2 x float> %i.ah, float %i.x, i64 1
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ak = fptosi <4 x float> %i.aj to <4 x i32>   ; 3 uses
  %i.al = add nsw <4 x i32> %i.ak, <i32 0, i32 2, i32 0, i32 2>
  store <4 x i32> %i.al, ptr %i.ae, align 4, !tbaa !3
  %i.am = getelementptr inbounds nuw i8, ptr %6, i64 52 ; 2 uses
  store i32 0, ptr %i.am, align 4, !tbaa !504
  %i.an = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 3 uses
  store i32 1, ptr %i.an, align 8, !tbaa !505
  %i.ao = extractelement <4 x i32> %i.ak, i64 0
  %i.ap = extractelement <4 x i32> %i.ak, i64 2
  call void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBase3posEiii(ptr noundef nonnull align 8 dereferenceable(126) %6, i32 noundef %i.ao, i32 noundef %i.ap, i32 noundef 0)
  %i.aq = load i32, ptr %i.ae, align 4, !tbaa !506 ; 2 uses
  %i.ar = load i32, ptr %i.af, align 8, !tbaa !507
  %i.as = icmp eq i32 %i.aq, %i.ar
  %.pre.i.i = load i32, ptr %i.ag, align 4, !tbaa !508 ; 2 uses
  br i1 %i.as, label %._crit_edge.i.i, label %bb.d

._crit_edge.i.i:                                  ; preds = %bb.c
  %.pre9.i.i = load i32, ptr %i.an, align 8, !tbaa !505
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.au = load i32, ptr %i.at, align 8, !tbaa !509
  %i.av = icmp eq i32 %.pre.i.i, %i.au
  %.pre10.i.i = load i32, ptr %i.an, align 8, !tbaa !505 ; 2 uses
  %i.aw = load i32, ptr %i.am, align 4
  %i.ax = icmp eq i32 %i.aw, %.pre10.i.i
  %or.cond.i.i = select i1 %i.av, i1 true, i1 %i.ax
  br i1 %or.cond.i.i, label %bb.e, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit

bb.e:                                             ; preds = %bb.d, %._crit_edge.i.i
  %i.ay = phi i32 [ %.pre9.i.i, %._crit_edge.i.i ], [ %.pre10.i.i, %bb.d ]
  store i8 0, ptr %i.z, align 8, !tbaa !510
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 60
  store i32 %i.aq, ptr %i.az, align 4, !tbaa !511
  %i.ba = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 %.pre.i.i, ptr %i.ba, align 8, !tbaa !512
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 68
  store i32 %i.ay, ptr %i.bb, align 4, !tbaa !513
  br label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit: ; preds = %bb.d, %bb.e
  %i.bc = icmp sgt i32 %.sroa.speculated, 0       ; 2 uses
  br i1 %i.bc, label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.preheader, label %.preheader

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.preheader: ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit
  %wide.trip.count = zext nneg i32 %.sroa.speculated to i64 ; 12 uses
  %i.bd = load ptr, ptr %i.ab, align 8, !tbaa !458 ; 2 uses
  %min.iters.check = icmp ult i32 %.sroa.speculated, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us: ; preds = %._crit_edge.us
  %i.be = load ptr, ptr %i.ab, align 8, !tbaa !458 ; 2 uses
  %min.iters.check.1 = icmp ult i32 %.sroa.speculated, 4
  br i1 %min.iters.check.1, label %scalar.ph.preheader.1, label %vector.ph.1

vector.ph.1:                                      ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us
  %n.vec.1 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vector.body.1

vector.body.1:                                    ; preds = %vector.body.1, %vector.ph.1
  %index.1 = phi i64 [ 0, %vector.ph.1 ], [ %index.next.1, %vector.body.1 ] ; 3 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index.1 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %wide.load.1 = load <2 x double>, ptr %i.bf, align 8, !tbaa !220
  %wide.load4.1 = load <2 x double>, ptr %i.bg, align 8, !tbaa !220
  %i.bh = fptrunc <2 x double> %wide.load.1 to <2 x float>
  %i.bi = fptrunc <2 x double> %wide.load4.1 to <2 x float>
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index.1 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store <2 x float> %i.bh, ptr %i.bj, align 4, !tbaa !461
  store <2 x float> %i.bi, ptr %i.bk, align 4, !tbaa !461
  %index.next.1 = add nuw i64 %index.1, 4         ; 2 uses
  %i.bl = icmp eq i64 %index.next.1, %n.vec.1
  br i1 %i.bl, label %middle.block.1, label %vector.body.1, !llvm.loop !1686

middle.block.1:                                   ; preds = %vector.body.1
  %cmp.n.1 = icmp eq i64 %n.vec.1, %wide.trip.count
  br i1 %cmp.n.1, label %._crit_edge.us.1, label %scalar.ph.preheader.1

scalar.ph.preheader.1:                            ; preds = %middle.block.1, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us
  %indvars.iv.ph.1 = phi i64 [ 0, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us ], [ %n.vec.1, %middle.block.1 ]
  br label %scalar.ph.1

scalar.ph.1:                                      ; preds = %scalar.ph.1, %scalar.ph.preheader.1
  %indvars.iv.1 = phi i64 [ %indvars.iv.next.1, %scalar.ph.1 ], [ %indvars.iv.ph.1, %scalar.ph.preheader.1 ] ; 3 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv.1
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !220
  %i.bo = fptrunc double %i.bn to float
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.1
  store float %i.bo, ptr %i.bp, align 4, !tbaa !461
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, 1 ; 2 uses
  %exitcond41.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond41.not.1, label %._crit_edge.us.1, label %scalar.ph.1, !llvm.loop !1687

._crit_edge.us.1:                                 ; preds = %scalar.ph.1, %middle.block.1
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1 unwind label %.split38.us, !llvm.loop !1688

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1: ; preds = %._crit_edge.us.1
  %i.bq = load ptr, ptr %i.ab, align 8, !tbaa !458 ; 2 uses
  %min.iters.check.2 = icmp ult i32 %.sroa.speculated, 4
  br i1 %min.iters.check.2, label %scalar.ph.preheader.2, label %vector.ph.2

vector.ph.2:                                      ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1
  %n.vec.2 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.2, %vector.ph.2
  %index.2 = phi i64 [ 0, %vector.ph.2 ], [ %index.next.2, %vector.body.2 ] ; 3 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %index.2 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load.2 = load <2 x double>, ptr %i.br, align 8, !tbaa !220
  %wide.load4.2 = load <2 x double>, ptr %i.bs, align 8, !tbaa !220
  %i.bt = fptrunc <2 x double> %wide.load.2 to <2 x float>
  %i.bu = fptrunc <2 x double> %wide.load4.2 to <2 x float>
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %index.2 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store <2 x float> %i.bt, ptr %i.bv, align 8, !tbaa !461
  store <2 x float> %i.bu, ptr %i.bw, align 8, !tbaa !461
  %index.next.2 = add nuw i64 %index.2, 4         ; 2 uses
  %i.bx = icmp eq i64 %index.next.2, %n.vec.2
  br i1 %i.bx, label %middle.block.2, label %vector.body.2, !llvm.loop !1686

middle.block.2:                                   ; preds = %vector.body.2
  %cmp.n.2 = icmp eq i64 %n.vec.2, %wide.trip.count
  br i1 %cmp.n.2, label %._crit_edge.us.2, label %scalar.ph.preheader.2

scalar.ph.preheader.2:                            ; preds = %middle.block.2, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1
  %indvars.iv.ph.2 = phi i64 [ 0, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.1 ], [ %n.vec.2, %middle.block.2 ]
  br label %scalar.ph.2

scalar.ph.2:                                      ; preds = %scalar.ph.2, %scalar.ph.preheader.2
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %scalar.ph.2 ], [ %indvars.iv.ph.2, %scalar.ph.preheader.2 ] ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %indvars.iv.2
  %i.bz = load double, ptr %i.by, align 8, !tbaa !220
  %i.ca = fptrunc double %i.bz to float
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.2
  store float %i.ca, ptr %i.cb, align 4, !tbaa !461
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, 1 ; 2 uses
  %exitcond41.not.2 = icmp eq i64 %indvars.iv.next.2, %wide.trip.count
  br i1 %exitcond41.not.2, label %._crit_edge.us.2, label %scalar.ph.2, !llvm.loop !1687

._crit_edge.us.2:                                 ; preds = %scalar.ph.2, %middle.block.2
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.2 unwind label %.split38.us, !llvm.loop !1688

_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.2: ; preds = %._crit_edge.us.2
  %i.cc = load ptr, ptr %i.ab, align 8, !tbaa !458 ; 2 uses
  %min.iters.check.3 = icmp ult i32 %.sroa.speculated, 4
  br i1 %min.iters.check.3, label %scalar.ph.preheader.3, label %vector.ph.3

vector.ph.3:                                      ; preds = %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.2
  %n.vec.3 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.3, %vector.ph.3
  %index.3 = phi i64 [ 0, %vector.ph.3 ], [ %index.next.3, %vector.body.3 ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %index.3 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %wide.load.3 = load <2 x double>, ptr %i.cd, align 8, !tbaa !220
  %wide.load4.3 = load <2 x double>, ptr %i.ce, align 8, !tbaa !220
  %i.cf = fptrunc <2 x double> %wide.load.3 to <2 x float>
  %i.cg = fptrunc <2 x double> %wide.load4.3 to <2 x float>
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %index.3 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store <2 x float> %i.cf, ptr %i.ch, align 4, !tbaa !461
  store <2 x float> %i.cg, ptr %i.ci, align 4, !tbaa !461
  %index.next.3 = add nuw i64 %index.3, 4         ; 2 uses
  %i.cj = icmp eq i64 %index.next.3, %n.vec.3
  br i1 %i.cj, label %middle.block.3, label %vector.body.3, !llvm.loop !1686

middle.block.3:                                   ; preds = %vector.body.3
  %cmp.n.3 = icmp eq i64 %n.vec.3, %wide.trip.count
  br i1 %cmp.n.3, label %._crit_edge.us.3, label %scalar.ph.preheader.3

scalar.ph.preheader.3:                            ; preds = %middle.block.3, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.2
  %indvars.iv.ph.3 = phi i64 [ 0, %_ZN11OpenImageIO4v3_18ImageBuf13ConstIteratorIdfEC2ERKS1_iiiiiiNS1_8WrapModeE.exit.split.us.2 ], [ %n.vec.3, %middle.block.3 ]
  br label %scalar.ph.3

scalar.ph.3:                                      ; preds = %scalar.ph.3, %scalar.ph.preheader.3
  %indvars.iv.3 = phi i64 [ %indvars.iv.next.3, %scalar.ph.3 ], [ %indvars.iv.ph.3, %scalar.ph.preheader.3 ] ; 3 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %indvars.iv.3
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !220
  %i.cm = fptrunc double %i.cl to float
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.3
  store float %i.cm, ptr %i.cn, align 4, !tbaa !461
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv.3, 1 ; 2 uses
  %exitcond41.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond41.not.3, label %._crit_edge.us.3, label %scalar.ph.3, !llvm.loop !1687

._crit_edge.us.3:                                 ; preds = %scalar.ph.3, %middle.block.3
  invoke void @_ZN11OpenImageIO4v3_18ImageBuf12IteratorBaseppEv(ptr noundef nonnull align 8 dereferenceable(126) %6)
          to label %.split.us unwind label %.split38.us, !llvm.loop !1688

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv
  %i.cp = load double, ptr %i.co, align 8, !tbaa !220
  %i.cq = fptrunc double %i.cp to float
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv
  store float %i.cq, ptr %i.cr, align 4, !tbaa !461
end_hunk_6
