Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/gdcmJPEGLSCodec?download=true
inline.NumInlined: 915
inline.NumDeleted: 505
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4gdcm11JPEGLSCodec13GetHeaderInfoERNSt3__113basic_istreamIcNS1_11char_traitsIcEEEERNS_14TransferSyntaxE:bb.a

bb.aa:                                            ; preds = %bb.y, %bb.s, %bb.h
  %.sink25 = phi ptr [ %i.aj, %bb.y ], [ %i.ac, %bb.s ], [ %i.q, %bb.h ]
  %.pn = phi { ptr, i32 } [ %i.ak, %bb.y ], [ %i.ad, %bb.s ], [ %i.r, %bb.h ]
  call void @__cxa_free_exception(ptr nonnull %.sink25) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  resume { ptr, i32 } %.pn
}

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5seekgExNS_8ios_base7seekdirE(ptr noundef nonnull align 8 dereferenceable(16), i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #8

declare { i64, i64 } @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE5tellgEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt3__113basic_istreamIcNS_11char_traitsIcEEE4readEPcl(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

declare i32 @JpegLsReadHeader(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #5

declare void @_ZN4gdcm11PixelFormatC1ENS0_10ScalarTypeE(ptr noundef nonnull align 2 dereferenceable(10), i32 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #8

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4gdcm9ExceptionE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  invoke void @_ZN4gdcm9Exception10CreateWhatEPKcS2_jS2_(ptr dead_on_unwind nonnull writable sret(%"class.std::logic_error") align 8 %i.a, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  invoke void @_ZNSt11logic_errorC1EPKc(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef %1)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  ret void

bb.d:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pn = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.c, %bb.d ]
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #24
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4gdcm9ExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4gdcm9ExceptionE, i64 16), ptr %0, align 8, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.a) #24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZNSt11logic_errorD1Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %i.b) #24
  tail call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #24
  ret void
}

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #11

declare noundef zeroext i1 @_ZNK4gdcm11PixelFormat7IsValidEv(ptr noundef nonnull align 2 dereferenceable(10)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4gdcm11JPEGLSCodec9CanDecodeERKNS_14TransferSyntaxE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !48
  %i.b = and i32 %i.a, -2
  %spec.select = icmp eq i32 %i.b, 12
  ret i1 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZThn8_NK4gdcm11JPEGLSCodec9CanDecodeERKNS_14TransferSyntaxE(ptr nofree readnone captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !48
  %i.b = and i32 %i.a, -2
  %spec.select.i = icmp eq i32 %i.b, 12
  ret i1 %spec.select.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK4gdcm11JPEGLSCodec7CanCodeERKNS_14TransferSyntaxE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #7 align 2 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !48
  %i.b = and i32 %i.a, -2
  %spec.select = icmp eq i32 %i.b, 12
  ret i1 %spec.select
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4gdcm11JPEGLSCodec21DecodeByStreamsCommonEPKcmRNSt3__16vectorIhNS3_9allocatorIhEEEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(84) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.JlsParameters, align 8      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %4, i8 0, i64 88, i1 false)
  %i.a = call i32 @JpegLsReadHeader(ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4, ptr noundef null)
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.c = load i32, ptr %i.b, align 4, !tbaa !45
  %i.d = icmp ne i32 %i.c, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = zext i1 %i.d to i8
  store i8 %i.f, ptr %i.e, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !49
  %i.i = load i32, ptr %4, align 8, !tbaa !50
  %i.j = mul nsw i32 %i.i, %i.h
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !38
  %i.m = add nsw i32 %i.l, 7
  %i.n = sdiv i32 %i.m, 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8, !tbaa !43
  %i.q = mul i32 %i.j, %i.p
  %i.r = mul i32 %i.q, %i.n
  %i.s = sext i32 %i.r to i64                     ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !55   ; 2 uses
  %i.v = load ptr, ptr %3, align 8, !tbaa !56     ; 4 uses
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = ptrtoint ptr %i.v to i64                 ; 3 uses
  %i.y = sub i64 %i.w, %i.x                       ; 3 uses
  %i.z = icmp ult i64 %i.y, %i.s
  br i1 %i.z, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.aa = sub nuw i64 %i.s, %i.y
  call void @_ZNSt3__16vectorIhNS_9allocatorIhEEE8__appendEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.aa)
  %.pre = load ptr, ptr %3, align 8, !tbaa !56    ; 2 uses
  %.pre24 = load ptr, ptr %i.t, align 8, !tbaa !55
  %.pre25 = ptrtoint ptr %.pre to i64
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = icmp ugt i64 %i.y, %i.s
  br i1 %i.ab, label %bb.e, label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 %i.s ; 2 uses
  store ptr %i.ac, ptr %i.t, align 8, !tbaa !55
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit: ; preds = %bb.c, %bb.d, %bb.e
  %.pre-phi = phi i64 [ %.pre25, %bb.c ], [ %i.x, %bb.d ], [ %i.x, %bb.e ]
  %i.ad = phi ptr [ %.pre24, %bb.c ], [ %i.u, %bb.d ], [ %i.ac, %bb.e ]
  %i.ae = phi ptr [ %.pre, %bb.c ], [ %i.v, %bb.d ], [ %i.v, %bb.e ]
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.af, %.pre-phi
  %i.ah = call i32 @JpegLsDecode(ptr noundef %i.ae, i64 noundef %i.ag, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4, ptr noundef null)
  %i.ai = load i32, ptr %i.o, align 8, !tbaa !43
  %i.aj = icmp eq i32 %i.ai, 3
  br i1 %i.aj, label %bb.f, label %bb.aa

bb.f:                                             ; preds = %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit
  %i.ak = load i32, ptr %i.k, align 8, !tbaa !38  ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.am = load i32, ptr %i.al, align 8, !tbaa !57
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.g, label %bb.aa

bb.g:                                             ; preds = %bb.f
  %.off = add i32 %i.ak, -1
  %i.ao = icmp ult i32 %.off, 8
  br i1 %i.ao, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ap = load ptr, ptr %i.t, align 8, !tbaa !55
  %i.aq = load ptr, ptr %3, align 8, !tbaa !56    ; 4 uses
  %i.ar = ptrtoint ptr %i.ap to i64
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = sub i64 %i.ar, %i.as                    ; 5 uses
  %i.au = urem i64 %i.at, 3
  %i.av = udiv i64 %i.at, 3                       ; 5 uses
  %i.aw = icmp eq i64 %i.au, 0
  br i1 %i.aw, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = call ptr @__cxa_allocate_exception(i64 40) #24 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ax, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef 161, ptr noundef nonnull @.str.2)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @__cxa_throw(ptr nonnull %i.ax, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
  unreachable

common.resume:                                    ; preds = %bb.z, %bb.w, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ay, %bb.k ], [ %.pn.i, %bb.w ], [ %i.ed, %bb.z ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ax) #24
  br label %common.resume

bb.l:                                             ; preds = %bb.h
  %i.az = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.at) #26 ; 5 uses
  %.not.i = icmp ult i64 %i.at, 3
  br i1 %.not.i, label %.sink.split, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.l
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.av ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.av ; 2 uses
  %xtraiter55 = and i64 %i.av, 1
  %.off58 = add i64 %i.at, -3
  %5 = icmp ult i64 %.off58, 3
  br i1 %5, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %i.av, 9223372036854775806
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %.02837.i = phi ptr [ %i.az, %.lr.ph.preheader.i.new ], [ %i.bt, %.lr.ph.i ] ; 7 uses
  %.02936.i = phi ptr [ %i.bb, %.lr.ph.preheader.i.new ], [ %i.br, %.lr.ph.i ] ; 3 uses
  %.03035.i = phi ptr [ %i.ba, %.lr.ph.preheader.i.new ], [ %i.bo, %.lr.ph.i ] ; 3 uses
  %.03134.i = phi ptr [ %i.aq, %.lr.ph.preheader.i.new ], [ %i.bl, %.lr.ph.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %.lr.ph.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.03134.i, i64 1
  %i.bd = load i8, ptr %.03134.i, align 1, !tbaa !58
  %i.be = getelementptr inbounds nuw i8, ptr %.02837.i, i64 1
  store i8 %i.bd, ptr %.02837.i, align 1, !tbaa !58
  %i.bf = getelementptr inbounds nuw i8, ptr %.03035.i, i64 1
  %i.bg = load i8, ptr %.03035.i, align 1, !tbaa !58
  %i.bh = getelementptr inbounds nuw i8, ptr %.02837.i, i64 2
  store i8 %i.bg, ptr %i.be, align 1, !tbaa !58
  %i.bi = getelementptr inbounds nuw i8, ptr %.02936.i, i64 1
  %i.bj = load i8, ptr %.02936.i, align 1, !tbaa !58
  %i.bk = getelementptr inbounds nuw i8, ptr %.02837.i, i64 3
  store i8 %i.bj, ptr %i.bh, align 1, !tbaa !58
  %i.bl = getelementptr inbounds nuw i8, ptr %.03134.i, i64 2 ; 2 uses
  %i.bm = load i8, ptr %i.bc, align 1, !tbaa !58
  %i.bn = getelementptr inbounds nuw i8, ptr %.02837.i, i64 4
  store i8 %i.bm, ptr %i.bk, align 1, !tbaa !58
  %i.bo = getelementptr inbounds nuw i8, ptr %.03035.i, i64 2 ; 2 uses
  %i.bp = load i8, ptr %i.bf, align 1, !tbaa !58
  %i.bq = getelementptr inbounds nuw i8, ptr %.02837.i, i64 5
  store i8 %i.bp, ptr %i.bn, align 1, !tbaa !58
  %i.br = getelementptr inbounds nuw i8, ptr %.02936.i, i64 2 ; 2 uses
  %i.bs = load i8, ptr %i.bi, align 1, !tbaa !58
  %i.bt = getelementptr inbounds nuw i8, ptr %.02837.i, i64 6 ; 2 uses
  store i8 %i.bs, ptr %i.bq, align 1, !tbaa !58
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.sink.split.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !111

bb.m:                                             ; preds = %bb.g
  %.off18 = add i32 %i.ak, -9
  %i.bu = icmp ult i32 %.off18, 8
  br i1 %i.bu, label %bb.n, label %bb.x

bb.n:                                             ; preds = %bb.m
  %i.bv = load ptr, ptr %i.t, align 8, !tbaa !55
  %i.bw = load ptr, ptr %3, align 8, !tbaa !56    ; 8 uses
  %i.bx = ptrtoint ptr %i.bv to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 6 uses
  %i.ca = and i64 %i.bz, 1
  %i.cb = icmp eq i64 %i.ca, 0
  br i1 %i.cb, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cc = call ptr @__cxa_allocate_exception(i64 40) #24 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.cc, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.1, i32 noundef 159, ptr noundef nonnull @.str.2)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @__cxa_throw(ptr nonnull %i.cc, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.r:                                             ; preds = %bb.n
  %i.ce = lshr exact i64 %i.bz, 1
  %i.cf = urem i64 %i.ce, 3
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ch = call ptr @__cxa_allocate_exception(i64 40) #24 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ch, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.1, i32 noundef 161, ptr noundef nonnull @.str.2)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @__cxa_throw(ptr nonnull %i.ch, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.v:                                             ; preds = %bb.r
  %6 = udiv i64 %i.bz, 6                          ; 8 uses
  %i.cj = call noalias noundef nonnull ptr @_Znam(i64 noundef %i.bz) #26 ; 12 uses
  %.not.i20 = icmp ult i64 %i.bz, 6
  br i1 %.not.i20, label %.sink.split, label %.lr.ph.preheader.i21

.lr.ph.preheader.i21:                             ; preds = %bb.v
  %i.ck = getelementptr [2 x i8], ptr %i.bw, i64 %6 ; 7 uses
  %i.cl = getelementptr [2 x i8], ptr %i.ck, i64 %6 ; 6 uses
  %min.iters.check = icmp ult i64 %i.bz, 240
  br i1 %min.iters.check, label %.lr.ph.i22.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader.i21
  %i.cm = mul nuw i64 %6, 6                       ; 2 uses
  %scevgep.a = getelementptr i8, ptr %i.cj, i64 %i.cm ; 3 uses
  %scevgep37 = getelementptr i8, ptr %i.bw, i64 %i.cm
  %bound0 = icmp ult ptr %i.cj, %scevgep37
  %bound1 = icmp ult ptr %i.cl, %scevgep.a
  %found.conflict = and i1 %bound0, %bound1
  %bound038 = icmp ult ptr %i.cj, %i.cl
  %bound139 = icmp ult ptr %i.ck, %scevgep.a
  %found.conflict40 = and i1 %bound038, %bound139
  %conflict.rdx = or i1 %found.conflict, %found.conflict40
  %bound041 = icmp ult ptr %i.cj, %i.ck
  %bound142 = icmp ult ptr %i.bw, %scevgep.a
  %found.conflict43 = and i1 %bound041, %bound142
  %conflict.rdx44 = or i1 %conflict.rdx, %found.conflict43
  br i1 %conflict.rdx44, label %.lr.ph.i22.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %6, 4611686018427387896        ; 5 uses
  %i.cn = mul i64 %n.vec, 6
  %i.co = getelementptr i8, ptr %i.cj, i64 %i.cn
  %i.cp = shl nuw nsw i64 %n.vec, 1               ; 3 uses
  %i.cq = getelementptr i8, ptr %i.cl, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.ck, i64 %i.cp
  %i.cs = getelementptr i8, ptr %i.bw, i64 %i.cp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ct = mul i64 %index, 6
  %next.gep = getelementptr i8, ptr %i.cj, i64 %i.ct
  %i.cu = shl i64 %index, 1                       ; 3 uses
  %next.gep45 = getelementptr i8, ptr %i.cl, i64 %i.cu
  %next.gep46 = getelementptr i8, ptr %i.ck, i64 %i.cu
  %next.gep47 = getelementptr i8, ptr %i.bw, i64 %i.cu
  %wide.load = load <8 x i16>, ptr %next.gep47, align 2, !tbaa !39, !alias.scope !119
  %wide.load48 = load <8 x i16>, ptr %next.gep46, align 2, !tbaa !39, !alias.scope !120
  %wide.load49 = load <8 x i16>, ptr %next.gep45, align 2, !tbaa !39, !alias.scope !121
  %i.cv = shufflevector <8 x i16> %wide.load, <8 x i16> %wide.load48, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.cw = shufflevector <8 x i16> %wide.load49, <8 x i16> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %interleaved.vec = shufflevector <16 x i16> %i.cv, <16 x i16> %i.cw, <24 x i32> <i32 0, i32 8, i32 16, i32 1, i32 9, i32 17, i32 2, i32 10, i32 18, i32 3, i32 11, i32 19, i32 4, i32 12, i32 20, i32 5, i32 13, i32 21, i32 6, i32 14, i32 22, i32 7, i32 15, i32 23>
  store <24 x i16> %interleaved.vec, ptr %next.gep, align 2, !tbaa !39, !alias.scope !122, !noalias !123
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cx = icmp eq i64 %index.next, %n.vec
  br i1 %i.cx, label %middle.block, label %vector.body, !llvm.loop !117

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %6, %n.vec
  br i1 %cmp.n, label %.sink.split, label %.lr.ph.i22.preheader

.lr.ph.i22.preheader:                             ; preds = %vector.memcheck, %.lr.ph.preheader.i21, %middle.block
  %.039.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader.i21 ], [ %n.vec, %middle.block ] ; 3 uses
  %.02838.i.ph = phi ptr [ %i.cj, %vector.memcheck ], [ %i.cj, %.lr.ph.preheader.i21 ], [ %i.co, %middle.block ] ; 5 uses
  %.02937.i.ph = phi ptr [ %i.cl, %vector.memcheck ], [ %i.cl, %.lr.ph.preheader.i21 ], [ %i.cq, %middle.block ] ; 3 uses
  %.03036.i.ph = phi ptr [ %i.ck, %vector.memcheck ], [ %i.ck, %.lr.ph.preheader.i21 ], [ %i.cr, %middle.block ] ; 3 uses
  %.03135.i.ph = phi ptr [ %i.bw, %vector.memcheck ], [ %i.bw, %.lr.ph.preheader.i21 ], [ %i.cs, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.039.i.ph, 1
  %xtraiter = and i64 %6, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i22.prol.loopexit, label %.lr.ph.i22.prol

.lr.ph.i22.prol:                                  ; preds = %.lr.ph.i22.preheader
  %i.cy = getelementptr inbounds nuw i8, ptr %.03135.i.ph, i64 2
  %i.cz = load i16, ptr %.03135.i.ph, align 2, !tbaa !39
  %i.da = getelementptr inbounds nuw i8, ptr %.02838.i.ph, i64 2
  store i16 %i.cz, ptr %.02838.i.ph, align 2, !tbaa !39
  %i.db = getelementptr inbounds nuw i8, ptr %.03036.i.ph, i64 2
  %i.dc = load i16, ptr %.03036.i.ph, align 2, !tbaa !39
  %i.dd = getelementptr inbounds nuw i8, ptr %.02838.i.ph, i64 4
  store i16 %i.dc, ptr %i.da, align 2, !tbaa !39
  %i.de = getelementptr inbounds nuw i8, ptr %.02937.i.ph, i64 2
  %i.df = load i16, ptr %.02937.i.ph, align 2, !tbaa !39
  %i.dg = getelementptr inbounds nuw i8, ptr %.02838.i.ph, i64 6
  store i16 %i.df, ptr %i.dd, align 2, !tbaa !39
  %i.dh = or disjoint i64 %.039.i.ph, 1
  br label %.lr.ph.i22.prol.loopexit

.lr.ph.i22.prol.loopexit:                         ; preds = %.lr.ph.i22.prol, %.lr.ph.i22.preheader
  %.039.i.unr = phi i64 [ %.039.i.ph, %.lr.ph.i22.preheader ], [ %i.dh, %.lr.ph.i22.prol ]
  %.02838.i.unr = phi ptr [ %.02838.i.ph, %.lr.ph.i22.preheader ], [ %i.dg, %.lr.ph.i22.prol ]
  %.02937.i.unr = phi ptr [ %.02937.i.ph, %.lr.ph.i22.preheader ], [ %i.de, %.lr.ph.i22.prol ]
  %.03036.i.unr = phi ptr [ %.03036.i.ph, %.lr.ph.i22.preheader ], [ %i.db, %.lr.ph.i22.prol ]
  %.03135.i.unr = phi ptr [ %.03135.i.ph, %.lr.ph.i22.preheader ], [ %i.cy, %.lr.ph.i22.prol ]
  %i.di = icmp eq i64 %6, %.neg
  br i1 %i.di, label %.sink.split, label %.lr.ph.i22

.lr.ph.i22:                                       ; preds = %.lr.ph.i22.prol.loopexit, %.lr.ph.i22
  %.039.i = phi i64 [ %i.eb, %.lr.ph.i22 ], [ %.039.i.unr, %.lr.ph.i22.prol.loopexit ]
  %.02838.i = phi ptr [ %i.ea, %.lr.ph.i22 ], [ %.02838.i.unr, %.lr.ph.i22.prol.loopexit ] ; 7 uses
  %.02937.i = phi ptr [ %i.dy, %.lr.ph.i22 ], [ %.02937.i.unr, %.lr.ph.i22.prol.loopexit ] ; 3 uses
  %.03036.i = phi ptr [ %i.dv, %.lr.ph.i22 ], [ %.03036.i.unr, %.lr.ph.i22.prol.loopexit ] ; 3 uses
  %.03135.i = phi ptr [ %i.ds, %.lr.ph.i22 ], [ %.03135.i.unr, %.lr.ph.i22.prol.loopexit ] ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.03135.i, i64 2
  %i.dk = load i16, ptr %.03135.i, align 2, !tbaa !39
  %i.dl = getelementptr inbounds nuw i8, ptr %.02838.i, i64 2
  store i16 %i.dk, ptr %.02838.i, align 2, !tbaa !39
  %i.dm = getelementptr inbounds nuw i8, ptr %.03036.i, i64 2
  %i.dn = load i16, ptr %.03036.i, align 2, !tbaa !39
  %i.do = getelementptr inbounds nuw i8, ptr %.02838.i, i64 4
  store i16 %i.dn, ptr %i.dl, align 2, !tbaa !39
  %i.dp = getelementptr inbounds nuw i8, ptr %.02937.i, i64 2
  %i.dq = load i16, ptr %.02937.i, align 2, !tbaa !39
  %i.dr = getelementptr inbounds nuw i8, ptr %.02838.i, i64 6
  store i16 %i.dq, ptr %i.do, align 2, !tbaa !39
  %i.ds = getelementptr inbounds nuw i8, ptr %.03135.i, i64 4
  %i.dt = load i16, ptr %i.dj, align 2, !tbaa !39
  %i.du = getelementptr inbounds nuw i8, ptr %.02838.i, i64 8
  store i16 %i.dt, ptr %i.dr, align 2, !tbaa !39
  %i.dv = getelementptr inbounds nuw i8, ptr %.03036.i, i64 4
  %i.dw = load i16, ptr %i.dm, align 2, !tbaa !39
  %i.dx = getelementptr inbounds nuw i8, ptr %.02838.i, i64 10
  store i16 %i.dw, ptr %i.du, align 2, !tbaa !39
  %i.dy = getelementptr inbounds nuw i8, ptr %.02937.i, i64 4
  %i.dz = load i16, ptr %i.dp, align 2, !tbaa !39
  %i.ea = getelementptr inbounds nuw i8, ptr %.02838.i, i64 12
  store i16 %i.dz, ptr %i.dx, align 2, !tbaa !39
  %i.eb = add nuw nsw i64 %.039.i, 2              ; 2 uses
  %exitcond.not.i23.1 = icmp eq i64 %i.eb, %6
  br i1 %exitcond.not.i23.1, label %.sink.split, label %.lr.ph.i22, !llvm.loop !118

bb.w:                                             ; preds = %bb.u, %bb.q
  %.sink.i = phi ptr [ %i.ch, %bb.u ], [ %i.cc, %bb.q ]
  %.pn.i = phi { ptr, i32 } [ %i.ci, %bb.u ], [ %i.cd, %bb.q ]
  call void @__cxa_free_exception(ptr nonnull %.sink.i) #24
  br label %common.resume

bb.x:                                             ; preds = %bb.m
  %i.ec = call ptr @__cxa_allocate_exception(i64 40) #24 ; 3 uses
  invoke void @_ZN4gdcm9ExceptionC2EPKcS2_jS2_(ptr noundef nonnull align 8 dereferenceable(40) %i.ec, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef 215, ptr noundef nonnull @.str.2)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @__cxa_throw(ptr nonnull %i.ec, ptr nonnull @_ZTIN4gdcm9ExceptionE, ptr nonnull @_ZN4gdcm9ExceptionD2Ev) #27
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.ed = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.ec) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %common.resume

.sink.split.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i
  %lcmp.mod56.not = icmp eq i64 %xtraiter55, 0
  br i1 %lcmp.mod56.not, label %.sink.split, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.sink.split.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %.02837.i.epil.init = phi ptr [ %i.az, %.lr.ph.preheader.i ], [ %i.bt, %.sink.split.loopexit.unr-lcssa ] ; 3 uses
  %.02936.i.epil.init = phi ptr [ %i.bb, %.lr.ph.preheader.i ], [ %i.br, %.sink.split.loopexit.unr-lcssa ]
  %.03035.i.epil.init = phi ptr [ %i.ba, %.lr.ph.preheader.i ], [ %i.bo, %.sink.split.loopexit.unr-lcssa ]
  %.03134.i.epil.init = phi ptr [ %i.aq, %.lr.ph.preheader.i ], [ %i.bl, %.sink.split.loopexit.unr-lcssa ]
  %lcmp.mod57 = trunc i64 %i.av to i1
  call void @llvm.assume(i1 %lcmp.mod57)
  %i.ee = load i8, ptr %.03134.i.epil.init, align 1, !tbaa !58
  %i.ef = getelementptr inbounds nuw i8, ptr %.02837.i.epil.init, i64 1
  store i8 %i.ee, ptr %.02837.i.epil.init, align 1, !tbaa !58
  %i.eg = load i8, ptr %.03035.i.epil.init, align 1, !tbaa !58
  %i.eh = getelementptr inbounds nuw i8, ptr %.02837.i.epil.init, i64 2
  store i8 %i.eg, ptr %i.ef, align 1, !tbaa !58
  %i.ei = load i8, ptr %.02936.i.epil.init, align 1, !tbaa !58
  store i8 %i.ei, ptr %i.eh, align 1, !tbaa !58
  br label %.sink.split

.sink.split:                                      ; preds = %.lr.ph.i22.prol.loopexit, %.lr.ph.i22, %.lr.ph.i.epil.preheader, %.sink.split.loopexit.unr-lcssa, %middle.block, %bb.v, %bb.l
  %.sink30 = phi ptr [ %i.az, %bb.l ], [ %i.cj, %bb.v ], [ %i.cj, %middle.block ], [ %i.az, %.lr.ph.i.epil.preheader ], [ %i.az, %.sink.split.loopexit.unr-lcssa ], [ %i.cj, %.lr.ph.i22 ], [ %i.cj, %.lr.ph.i22.prol.loopexit ] ; 2 uses
  %i.ej = load ptr, ptr %3, align 8, !tbaa !56    ; 2 uses
  %i.ek = load ptr, ptr %i.t, align 8, !tbaa !55
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = ptrtoint ptr %i.ej to i64
  %i.en = sub i64 %i.el, %i.em
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ej, ptr nonnull align 1 %.sink30, i64 %i.en, i1 false)
  call void @_ZdaPv(ptr noundef nonnull %.sink30) #25
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split, %bb.f, %_ZNSt3__16vectorIhNS_9allocatorIhEEE6resizeEm.exit
  %.not19 = icmp eq i32 %i.ah, 0
  br label %bb.ab

bb.ab:                                            ; preds = %bb.a, %bb.aa
  %.1 = phi i1 [ %.not19, %bb.aa ], [ false, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  ret i1 %.1
}

declare i32 @JpegLsDecode(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4gdcm11JPEGLSCodec6DecodeERKNS_11DataElementERS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(84) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__1::vector", align 8  ; 13 uses
  %4 = alloca %"class.std::__1::basic_stringstream", align 8 ; 19 uses
  %5 = alloca %struct.JlsParameters, align 8      ; 13 uses
  %6 = alloca %"class.std::__1::vector", align 8  ; 12 uses
  %7 = alloca %"class.std::__1::basic_string", align 8 ; 20 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.b = load i32, ptr %i.a, align 4, !tbaa !62
  switch i32 %i.b, label %bb.bp [
    i32 2, label %bb.b
    i32 3, label %bb.j
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_ZNK4gdcm11DataElement22GetSequenceOfFragmentsEv(ptr noundef nonnull align 8 dereferenceable(24) %1) ; 3 uses
  %.not111 = icmp eq ptr %i.c, null
  br i1 %.not111, label %bb.bp, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noundef i64 @_ZNK4gdcm19SequenceOfFragments17ComputeByteLengthEv(ptr noundef nonnull align 8 dereferenceable(72) %i.c) ; 3 uses
  %i.e = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.d) #26 ; 3 uses
  %i.f = tail call noundef zeroext i1 @_ZNK4gdcm19SequenceOfFragments9GetBufferEPcm(ptr noundef nonnull align 8 dereferenceable(72) %i.c, ptr noundef nonnull %i.e, i64 noundef %i.d) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.g = invoke noundef zeroext i1 @_ZN4gdcm11JPEGLSCodec21DecodeByStreamsCommonEPKcmRNSt3__16vectorIhNS3_9allocatorIhEEEE(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull %i.e, i64 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.d unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %bb.c
  br i1 %i.g, label %bb.g, label %bb.h

bb.e:                                             ; preds = %bb.g, %_ZN4gdcm11DataElementaSERKS0_.exit, %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %3, align 8, !tbaa !56     ; 4 uses
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !55
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !63
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.i to i64
  %i.o = sub i64 %i.m, %i.n
  call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef %i.o) #25
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.bq

bb.g:                                             ; preds = %bb.d
  call void @_ZdaPv(ptr noundef nonnull %i.e) #25
  %i.p = load i32, ptr %1, align 8, !tbaa !58
  store i32 %i.p, ptr %2, align 8, !tbaa !58
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.q, ptr noundef nonnull align 4 dereferenceable(12) %i.r, i64 12, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !66
  %i.v = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN4gdcm12SmartPointerINS_5ValueEEaSEPS1_(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef %i.u)
          to label %_ZN4gdcm11DataElementaSERKS0_.exit unwind label %bb.e ; 0 uses

_ZN4gdcm11DataElementaSERKS0_.exit:               ; preds = %bb.g
  %i.w = load ptr, ptr %3, align 8, !tbaa !56     ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !55
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = ptrtoint ptr %i.w to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = trunc i64 %i.ab to i32
  invoke void @_ZN4gdcm11DataElement12SetByteValueEPKcNS_2VLE(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %i.w, i32 %i.ac)
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %_ZN4gdcm11DataElementaSERKS0_.exit, %bb.d
  %i.ad = load ptr, ptr %3, align 8, !tbaa !56    ; 4 uses
  %.not.i.i121 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i121, label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit122, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !55
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !63
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ad to i64
  %i.aj = sub i64 %i.ah, %i.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.ad, i64 noundef %i.aj) #25
  br label %_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit122

_ZNSt3__16vectorIhNS_9allocatorIhEEED2B8ne180100Ev.exit122: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.bp

bb.j:                                             ; preds = %bb.a
  %i.ak = tail call noundef ptr @_ZNK4gdcm11DataElement22GetSequenceOfFragmentsEv(ptr noundef nonnull align 8 dereferenceable(24) %1) ; 4 uses
  %.not = icmp eq ptr %i.ak, null
  br i1 %.not, label %bb.bp, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = tail call noundef i64 @_ZNK4gdcm19SequenceOfFragments20GetNumberOfFragmentsEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ak)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.an = load i32, ptr %i.am, align 8, !tbaa !32
  %i.ao = zext i32 %i.an to i64
  %.not91 = icmp eq i64 %i.al, %i.ao
  br i1 %.not91, label %bb.l, label %bb.bp

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @_ZNSt3__118basic_stringstreamIcNS_11char_traitsIcEENS_9allocatorIcEEEC1B8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(128) %4)
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.ao, %bb.l
  %.054 = phi i32 [ 0, %bb.l ], [ %i.dp, %bb.ao ] ; 2 uses
  %i.ax = zext i32 %.054 to i64                   ; 2 uses
  %i.ay = invoke noundef i64 @_ZNK4gdcm19SequenceOfFragments20GetNumberOfFragmentsEv(ptr noundef nonnull align 8 dereferenceable(72) %i.ak)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  %.not106.not.not.not.not.not = icmp ule i64 %i.ay, %i.ax ; 2 uses
end_hunk_0
